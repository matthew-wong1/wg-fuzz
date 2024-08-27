struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, true, true, true, false, true, false, false, false, true, true, true, false, false, false, false, false, true, false);

var<private> global1: array<vec4<i32>, 21>;

var<private> global2: array<u32, 30>;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<i32>(46709i, 2147483647i, 1i, 0i)), Struct_1(vec4<i32>(15335i, 2147483647i, 1i, 18868i))), Struct_2(Struct_1(vec4<i32>(-44491i, -44469i, 5809i, 46795i)), Struct_1(vec4<i32>(1i, -6305i, -1i, 1i))), Struct_2(Struct_1(vec4<i32>(2147483647i, -21089i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(28222i, 2147483647i, 0i, -28253i))), Struct_2(Struct_1(vec4<i32>(15889i, 59067i, 1i, -1i)), Struct_1(vec4<i32>(-45749i, -42138i, -5487i, 1i))), Struct_2(Struct_1(vec4<i32>(36992i, -1i, 1i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 33823i, -50547i, 2147483647i))), Struct_2(Struct_1(vec4<i32>(0i, 15198i, i32(-2147483648), -7091i)), Struct_1(vec4<i32>(1i, 3898i, -35050i, 1294i))), Struct_2(Struct_1(vec4<i32>(32833i, 1i, 0i, 2147483647i)), Struct_1(vec4<i32>(-16866i, 12594i, i32(-2147483648), 1i))), Struct_2(Struct_1(vec4<i32>(-304i, -39209i, -29494i, 13730i)), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, 0i))), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 20137i)), Struct_1(vec4<i32>(0i, -6675i, -7308i, -21646i))), Struct_2(Struct_1(vec4<i32>(2147483647i, -5116i, -1i, 1i)), Struct_1(vec4<i32>(2147483647i, -35082i, 1i, 17998i))), Struct_2(Struct_1(vec4<i32>(8773i, 2147483647i, -151i, -19970i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 25682i))), Struct_2(Struct_1(vec4<i32>(5983i, 4113i, 82189i, -17484i)), Struct_1(vec4<i32>(-38392i, -4443i, -1i, -1i))), Struct_2(Struct_1(vec4<i32>(19325i, 0i, 38343i, -10605i)), Struct_1(vec4<i32>(24170i, -1i, 32279i, 12344i))), Struct_2(Struct_1(vec4<i32>(1i, 9581i, 23710i, 7875i)), Struct_1(vec4<i32>(23268i, 70061i, 140i, i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(59338i, -5587i, 0i, -5122i)), Struct_1(vec4<i32>(28355i, i32(-2147483648), 2147483647i, -29024i))), Struct_2(Struct_1(vec4<i32>(23343i, 1i, 0i, 0i)), Struct_1(vec4<i32>(43353i, 31108i, -29605i, 0i))), Struct_2(Struct_1(vec4<i32>(-8523i, -21288i, 1i, -1i)), Struct_1(vec4<i32>(0i, 0i, -70529i, 231i))), Struct_2(Struct_1(vec4<i32>(1i, 16408i, -19343i, -50531i)), Struct_1(vec4<i32>(-16225i, 45198i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, 0i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 37137i, -8154i, 2147483647i))), Struct_2(Struct_1(vec4<i32>(1i, 7708i, -33766i, -12590i)), Struct_1(vec4<i32>(-30231i, i32(-2147483648), 55517i, 1i))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -11551i, i32(-2147483648), 23850i)), Struct_1(vec4<i32>(28301i, 6571i, i32(-2147483648), 0i))), Struct_2(Struct_1(vec4<i32>(0i, -8641i, 7785i, 30462i)), Struct_1(vec4<i32>(-10982i, 38909i, -1i, -27502i))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -59696i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(36898i, -1i, 41802i, -24949i))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 13268i, -11961i)), Struct_1(vec4<i32>(26036i, 21229i, 30862i, i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(5172i, 0i, -1i, 65318i)), Struct_1(vec4<i32>(0i, -40167i, 0i, -1i))), Struct_2(Struct_1(vec4<i32>(15106i, 15740i, 1i, 0i)), Struct_1(vec4<i32>(-13855i, i32(-2147483648), -1i, 1i))), Struct_2(Struct_1(vec4<i32>(-39627i, 2147483647i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(i32(-2147483648), 5069i, 1i, i32(-2147483648)))));

var<private> global4: vec3<i32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    global4 = -vec3<i32>(-30986i | _wgslsmith_div_i32(~global4.x, 2147483647i), ~56128i, 6452i);
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(466f, -1277f, 1583f, -419f) + vec4<f32>(-833f, 1154f, -1775f, -1031f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1273f, -1421f, -410f, 243f) - vec4<f32>(-969f, 1620f, 316f, -876f))), vec4<f32>(_wgslsmith_f_op_f32(select(982f, -1121f, global0[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_f_op_f32(round(-1056f)), _wgslsmith_f_op_f32(step(383f, -1199f)), _wgslsmith_f_op_f32(sign(-1966f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(142f)), _wgslsmith_f_op_f32(floor(820f)), -613f, _wgslsmith_f_op_f32(-961f - -1000f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1421f, -721f, -117f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -1342f, -414f, -293f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-284f, -163f, 760f, -100f) + vec4<f32>(-212f, 126f, -1519f, -984f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-589f, 302f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(852f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)) * var_1.x)));
    var var_3 = arg_0;
    return arg_0.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~u_input.a, 21u)]);
    global0 = array<bool, 21>();
    let var_1 = Struct_2(Struct_1(func_3(Struct_1(vec4<i32>(-2147483647i, 2147483647i, -30761i, 1i)), 1i, ~31813u, Struct_1(vec4<i32>(u_input.b, var_0.a.x, 44239i, -2147483647i)))), Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(abs(var_0.a), global1[_wgslsmith_index_u32(~0u, 21u)]), vec4<i32>(31721i, 2147483647i, global4.x, global4.x) ^ (global1[_wgslsmith_index_u32(4294967295u, 21u)] & vec4<i32>(u_input.b, global4.x, u_input.b, 31199i)), vec4<i32>(global4.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(var_0.a.yz, global4.xx), _wgslsmith_mod_i32(0i, var_0.a.x)))));
    var var_2 = select(select(vec4<bool>(!(-1i < global4.x), global0[_wgslsmith_index_u32(58614u, 21u)], true & global0[_wgslsmith_index_u32(~u_input.a, 21u)], true), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], true, true), vec4<bool>(false, true, true, u_input.a <= 50325u), _wgslsmith_add_i32(-20866i, global4.x) < abs(var_0.a.x)), global0[_wgslsmith_index_u32(~1u, 21u)]), !vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(max(0u, ~14470u), 21u)]), true);
    let var_3 = global3[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(~56577u, 30u)] | ~(~u_input.a ^ 1u)), 27u)];
    return Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -8000i, -abs(0i), 17553i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -23586i, -23673i, -32660i), reverseBits(vec4<i32>(-27533i, var_3.a.a.x, 25367i, 2147483647i)))), -((vec4<i32>(1173i, var_1.a.a.x, u_input.b, var_1.a.a.x) & global1[_wgslsmith_index_u32(u_input.a, 21u)]) | _wgslsmith_sub_vec4_i32(var_1.b.a, var_0.a))));
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 21>();
    var var_0 = func_2();
    var var_1 = Struct_2(func_2(), func_2());
    global2 = array<u32, 30>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1161f * -1070f)));
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~reverseBits(u_input.a >> (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 30u)] % 32u)), reverseBits(1u)), 27u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(reverseBits(firstTrailingBit(vec4<u32>(arg_3, u_input.a, arg_3, arg_3)))), ~vec4<u32>(2850u, ~0u, max(u_input.a, 39634u), ~arg_3)) & _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_3, 83145u, arg_3, 4294967295u) << (abs(vec4<u32>(u_input.a, 4294967295u, 19305u, u_input.a)) % vec4<u32>(32u))), ~max(~vec4<u32>(arg_3, u_input.a, 12742u, 1u), firstTrailingBit(vec4<u32>(4294967295u, arg_3, 0u, arg_3))), vec4<u32>(min(47012u, u_input.a) >> (arg_3 % 32u), min(u_input.a, firstLeadingBit(u_input.a)), ~arg_3, ~countOneBits(arg_3)));
    var var_2 = any(vec4<bool>(arg_2.x != _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(91672u, ~select(22701u, 4294967295u, global0[_wgslsmith_index_u32(35502u, 21u)])), 21u)], global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, arg_3), vec2<u32>(global2[_wgslsmith_index_u32(48881u, 30u)], 4294967295u)), max(15091u, 19054u), global0[_wgslsmith_index_u32(0u & u_input.a, 21u)]) ^ _wgslsmith_mod_u32(max(arg_3, 0u), u_input.a), 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]));
    global4 = abs(reverseBits(vec3<i32>((-10647i | arg_0.b.a.x) & u_input.b, -1i, global4.x)));
    let var_3 = arg_0.a.a;
    return Struct_1(select(global1[_wgslsmith_index_u32(abs(~83213u), 21u)], vec4<i32>(~(global4.x & arg_1.b.a.x), _wgslsmith_sub_i32(-57038i, global4.x), func_2().a.x, u_input.b & 0i), true));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<i32>(reverseBits((_wgslsmith_sub_i32(u_input.b, -49759i) >> (19759u % 32u)) ^ -max(global4.x, -1266i)), reverseBits(u_input.b), -1i);
    let var_0 = vec4<bool>(true, all(vec3<bool>(!select(false, global0[_wgslsmith_index_u32(29344u, 21u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], 21u)]), global0[_wgslsmith_index_u32(0u, 21u)] || true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(43706u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], true), vec3<bool>(global0[_wgslsmith_index_u32(16511u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(29646u, 21u)]))))), global0[_wgslsmith_index_u32(18426u, 21u)], any(!(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)], false), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 21u)], true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 21u)]), global0[_wgslsmith_index_u32(u_input.a, 21u)]))));
    let var_1 = func_4(func_1(), global3[_wgslsmith_index_u32(2062u, 27u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(770f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1655f), _wgslsmith_f_op_f32(f32(-1f) * -317f))), _wgslsmith_div_f32(-1156f, _wgslsmith_f_op_f32(f32(-1f) * -2674f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.a) & _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(36440u, 30u)], u_input.a, global2[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], u_input.a, 1u, 4294967295u)), u_input.a, abs(0u)), countOneBits(~vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]))));
    let var_2 = var_1.a;
    global0 = array<bool, 21>();
    global2 = array<u32, 30>();
    var var_3 = ~(-7784i);
    let var_4 = func_4(func_1(), global3[_wgslsmith_index_u32(565u, 27u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f + 708f) + -153f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1982f, 473f, -1771f), vec3<f32>(1555f, -624f, -1216f)))), vec3<f32>(_wgslsmith_f_op_f32(max(-663f, -361f)), -1129f, -307f)))), u_input.a);
    let var_5 = ~(~(~(~6222u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, -1i, -(~39441i)), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(-304f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-882f, -1430f))))), vec3<u32>(~var_5, 7240u, 4294967295u), var_1.a.x);
}

