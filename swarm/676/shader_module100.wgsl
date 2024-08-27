struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: vec2<i32>;

var<private> global2: array<bool, 5> = array<bool, 5>(false, true, true, true, true);

var<private> global3: array<Struct_5, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = abs(14172i);
    global2 = array<bool, 5>();
    global3 = array<Struct_5, 21>();
    let var_1 = !(!select(!select(vec4<bool>(arg_0.d, false, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 5u)]), true), vec4<bool>(global1.x < 0i, any(vec4<bool>(true, global2[_wgslsmith_index_u32(30827u, 5u)], true, arg_0.d)), true, !arg_0.d), !(!vec4<bool>(arg_0.d, arg_0.d, global2[_wgslsmith_index_u32(1u, 5u)], false))));
    let var_2 = ~select(reverseBits(1u) & _wgslsmith_add_u32(u_input.a.x, 4294967295u), u_input.a.x, any(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 5u)]))));
    return arg_0.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(800f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(610f, 655f) + _wgslsmith_f_op_f32(660f - 322f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-613f, -1000f, -1000f, -1161f), global1.x, vec4<f32>(-2160f, -2481f, -197f, -800f), false, vec2<f32>(700f, -565f)), -506f)), _wgslsmith_f_op_f32(406f + _wgslsmith_f_op_f32(trunc(1000f)))), -258f, -740f), _wgslsmith_add_i32(36232i << (firstLeadingBit(~u_input.b.x) % 32u), abs(~(-22923i >> (u_input.a.x % 32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(237f)), -1000f), -550f, -326f, _wgslsmith_f_op_f32(-863f + 1654f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-901f, -384f, 520f, 573f), vec4<f32>(-1657f, 1028f, -826f, -277f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-752f, 1092f, 3537f, -437f), vec4<f32>(-874f, 696f, 525f, -223f))), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 5u)], false, false, global2[_wgslsmith_index_u32(3629u, 5u)]))) - vec4<f32>(-994f, 1f, 585f, _wgslsmith_f_op_f32(f32(-1f) * -1112f)))), !global2[_wgslsmith_index_u32(select(9087u, ~_wgslsmith_clamp_u32(4294967295u, 17368u, 0u), true), 5u)], _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1347f, 2323f))));
    let var_1 = var_0.e.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.c), ~2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-489f - 640f), 605f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.e.x)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1296f) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, -1093f), var_0.e)))), !select(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 5u)], true, false, false), !vec4<bool>(var_0.d, global2[_wgslsmith_index_u32(31712u, 5u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 5u)], true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], false, false), true)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 5u)], global2[_wgslsmith_index_u32(1u, 5u)], false), select(vec4<bool>(false, false, var_0.d, global2[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(var_0.d, false, true, var_0.d), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], true, true)), any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 5u)]))), select(vec4<bool>(false, var_0.d, true, var_0.d), select(vec4<bool>(false, true, false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], true, false, true), false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 5u)], var_0.d))), ~(-1i), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.c, vec4<f32>(-562f, 589f, var_0.e.x, -1000f))) - var_0.a))), -_wgslsmith_div_i32(max(-35872i, global1.x), global1.x), _wgslsmith_f_op_vec4_f32(-var_0.a), var_0.d, _wgslsmith_f_op_vec2_f32(sign(var_0.a.ww))));
    var_0 = Struct_1(var_0.c, -56366i, vec4<f32>(var_2.d.a.x, 116f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.e.x, _wgslsmith_div_f32(-490f, 336f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - var_2.d.c.x)), _wgslsmith_f_op_f32(sign(908f))), 0u > _wgslsmith_mult_u32(~(u_input.a.x ^ 36017u), abs(u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(653f, 1000f)))), 625f)), _wgslsmith_f_op_f32(1302f * -1000f)));
    let var_3 = 738f;
    return Struct_1(var_0.c, var_0.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(-var_2.d.c.x))), var_2.d.e.x, var_2.d.e.x))), true, _wgslsmith_f_op_vec2_f32(var_0.a.zw - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.c.zy)))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> vec2<i32> {
    var var_0 = select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.b, vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_3, 26u)], 55156u)), select(vec3<u32>(arg_3, 1u, 69814u), ~vec3<u32>(global0[_wgslsmith_index_u32(4179u, 26u)], 46523u, 103788u), !global2[_wgslsmith_index_u32(1u, 5u)])), 26u)], u_input.a.x, true);
    var var_1 = global1.x;
    var var_2 = -global1.x;
    var_1 = firstTrailingBit(i32(-1i) * -_wgslsmith_mult_i32(global1.x, 2147483647i));
    let var_3 = Struct_2(func_2(), !select(vec4<bool>(false, false, all(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 5u)], global2[_wgslsmith_index_u32(52177u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)])), false), vec4<bool>(!global2[_wgslsmith_index_u32(41019u, 5u)], true, true, global2[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(arg_3, 26u)], 0u, true), 5u)]), true), -74493i, func_2());
    return ~_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(var_3.c, var_3.d.b) & _wgslsmith_div_vec2_i32(vec2<i32>(var_3.d.b, var_3.a.b), vec2<i32>(var_3.d.b, 1i))), ~vec2<i32>(func_2().b, _wgslsmith_add_i32(-1i, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~func_1(~u_input.a.x, _wgslsmith_add_vec4_u32(min(u_input.a, vec4<u32>(1u, 8886u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23255u, 26u)], 26u)])), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 16987u) & u_input.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1966f), _wgslsmith_f_op_f32(f32(-1f) * -543f), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42270u, 26u)], 26u)], 5u)], true, false)))), ~u_input.a.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, 261f, 529f) + vec3<f32>(1559f, -1000f, 398f)))))), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 5u)]), global2[_wgslsmith_index_u32(106406u, 5u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(35966u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(73796u, 5u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 5u)]), false)), vec3<bool>(!global2[_wgslsmith_index_u32(~1u, 5u)], true, false), !(all(vec2<bool>(true, false)) | true)));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(1i, 0i, -1i)), select(min(firstTrailingBit(vec3<i32>(var_0.a.x, global1.x, global1.x)), -vec3<i32>(15412i, -1i, 40442i)), countOneBits(vec3<i32>(global1.x, global1.x, global1.x) >> (u_input.a.ywz % vec3<u32>(32u))), any(!vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 5u)], false, true, false))), countOneBits(firstLeadingBit(min(vec3<i32>(5577i, 2147483647i, var_0.a.x), vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x))))));
    var var_2 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2615u, 26u)], 26u)], 26u)]), 26u)], _wgslsmith_mod_u32(~1u, firstLeadingBit(1u))) & global0[_wgslsmith_index_u32(abs(0u), 26u)], 26u)], 21u)];
    let var_3 = countOneBits(~u_input.a) | ~vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 26u)], u_input.a.x) & u_input.a.x, ~(4294967295u >> (u_input.b.x % 32u)), _wgslsmith_dot_vec4_u32(u_input.a & vec4<u32>(1u, 0u, 29988u, 4294967295u), ~vec4<u32>(41841u, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 1u, global0[_wgslsmith_index_u32(29404u, 26u)])), ~21163u);
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * var_0.b.x) * var_0.b.x)))));
    let var_5 = _wgslsmith_f_op_f32(1999f * -1294f);
    var var_6 = 1460f;
    let var_7 = Struct_5(vec2<i32>(~_wgslsmith_mult_i32(var_2.a.x, _wgslsmith_mult_i32(0i, -1i)), 1i), _wgslsmith_f_op_vec3_f32(step(var_0.b, vec3<f32>(298f, _wgslsmith_f_op_f32(f32(-1f) * -1824f), 1407f))), vec3<bool>(var_0.c.x, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_div_f32(var_2.b.x, var_4))) < 1f, true));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_sub_i32(1137i, var_2.a.x));
}

