struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-23234i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -10055i), vec2<i32>(1i, -46189i), vec2<i32>(-13770i, -43898i), vec2<i32>(-10158i, -13021i));

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_2(-1i, Struct_1(-13185i, -1i), vec3<u32>(4294967295u, 57326u, 0u), vec2<f32>(-707f, 1161f)), true, 9704u, Struct_1(2147483647i, 1i)), Struct_3(Struct_2(0i, Struct_1(0i, 0i), vec3<u32>(45469u, 4294967295u, 0u), vec2<f32>(-638f, 1513f)), true, 13853u, Struct_1(20133i, i32(-2147483648))), Struct_3(Struct_2(2147483647i, Struct_1(2147483647i, 0i), vec3<u32>(1u, 4294967295u, 43505u), vec2<f32>(1000f, 353f)), false, 1u, Struct_1(-42721i, -1i)), Struct_3(Struct_2(-20464i, Struct_1(5566i, 0i), vec3<u32>(4294967295u, 1u, 1u), vec2<f32>(-104f, -449f)), true, 28999u, Struct_1(-1i, i32(-2147483648))), Struct_3(Struct_2(70i, Struct_1(3798i, -24567i), vec3<u32>(1u, 1583u, 4294967295u), vec2<f32>(107f, -536f)), true, 44659u, Struct_1(38134i, 1i)), Struct_3(Struct_2(-67900i, Struct_1(-9661i, 0i), vec3<u32>(1u, 4294967295u, 53383u), vec2<f32>(-1000f, -168f)), true, 71333u, Struct_1(3076i, i32(-2147483648))), Struct_3(Struct_2(14305i, Struct_1(i32(-2147483648), -28661i), vec3<u32>(20179u, 10811u, 3356u), vec2<f32>(967f, -524f)), false, 1u, Struct_1(1i, 13159i)), Struct_3(Struct_2(-1i, Struct_1(0i, -2458i), vec3<u32>(22530u, 4294967295u, 39159u), vec2<f32>(-709f, -153f)), true, 4446u, Struct_1(-1i, -1i)), Struct_3(Struct_2(-4228i, Struct_1(72707i, 3733i), vec3<u32>(23548u, 44908u, 43286u), vec2<f32>(2755f, -1878f)), false, 79977u, Struct_1(-46646i, -74773i)), Struct_3(Struct_2(55763i, Struct_1(0i, -48592i), vec3<u32>(39021u, 24968u, 0u), vec2<f32>(-977f, 363f)), true, 56058u, Struct_1(82270i, 12534i)), Struct_3(Struct_2(2147483647i, Struct_1(-20899i, -70504i), vec3<u32>(10837u, 4294967295u, 35616u), vec2<f32>(-1880f, -1581f)), true, 1u, Struct_1(2147483647i, 22310i)), Struct_3(Struct_2(0i, Struct_1(24088i, -9838i), vec3<u32>(1833u, 0u, 35097u), vec2<f32>(-577f, 3195f)), false, 0u, Struct_1(0i, 1i)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    let var_0 = 5193u;
    let var_1 = arg_1.d;
    let var_2 = abs(_wgslsmith_mult_u32(~(~var_1.c.x), 0u)) >= 1u;
    let var_3 = vec3<i32>(~22342i, var_1.b.a, firstTrailingBit(arg_0.b));
    global0 = array<vec2<i32>, 7>();
    return 4294967295u;
}

fn func_3() -> vec3<u32> {
    global1 = array<Struct_3, 12>();
    let var_0 = Struct_1(u_input.a.x, u_input.a.x);
    let var_1 = vec3<u32>(u_input.b, 1u, 22883u);
    global0 = array<vec2<i32>, 7>();
    var var_2 = Struct_4(~vec4<i32>(-1i, u_input.a.x, 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(51948i, var_0.b, 2147483647i, u_input.a.x), vec4<i32>(-2147483647i, var_0.a, -22249i, var_0.a)), -vec4<i32>(u_input.a.x, var_0.a, 16659i, 44471i))), Struct_2(19510i, var_0, var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, -195f) + vec2<f32>(-107f, -859f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2251f, -442f)))), _wgslsmith_div_f32(-237f, 669f), Struct_2(~countOneBits(~1i), var_0, countOneBits(var_1 >> (select(var_1, var_1, false) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(592f + 2635f)), _wgslsmith_f_op_f32(f32(-1f) * -557f))));
    return var_2.b.c;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = arg_1.xy;
    global1 = array<Struct_3, 12>();
    let var_1 = select(vec2<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_3, arg_3, arg_2), _wgslsmith_clamp_vec4_u32(arg_1, arg_1, vec4<u32>(var_0.x, arg_3, 0u, 8797u))) <= 1u), select(!vec2<bool>(true, select(false, false, true)), select(vec2<bool>(true, all(vec4<bool>(false, false, true, true))), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, true)))), true), all(vec4<bool>(!all(vec4<bool>(true, false, true, false)), true, true, true)));
    var var_2 = Struct_4(vec4<i32>(_wgslsmith_mod_i32(0i, ~(-2147483647i)), 45705i, ~(-u_input.a.x), 1i), Struct_2(_wgslsmith_mod_i32(arg_0, 2147483647i), Struct_1(31403i, arg_0), func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1629f, -568f), vec2<f32>(1818f, -676f))))), 1f, Struct_2(-1i, Struct_1(~_wgslsmith_sub_i32(arg_0, -1i), ~1i), countOneBits((vec3<u32>(4294967295u, arg_2, 4294967295u) >> (arg_1.yxx % vec3<u32>(32u))) | (vec3<u32>(var_0.x, arg_2, arg_2) | vec3<u32>(u_input.b, 41237u, 1u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-327f))), _wgslsmith_div_f32(-2382f, _wgslsmith_f_op_f32(trunc(1815f))))));
    var var_3 = Struct_4(_wgslsmith_clamp_vec4_i32(var_2.a >> (~(~vec4<u32>(1u, arg_1.x, 16901u, 4294967295u)) % vec4<u32>(32u)), var_2.a, ~(~reverseBits(vec4<i32>(1i, -1i, 0i, arg_0)))), var_2.b, var_2.b.d.x, var_2.b);
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, var_0.x, 94133u, arg_2) & countOneBits(vec4<u32>(0u, arg_2, 1u, 15918u))), select(firstLeadingBit(arg_1), ~min(vec4<u32>(34136u, 4294967295u, var_3.d.c.x, 4294967295u), arg_1), select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), all(vec4<bool>(true, true, var_1.x, var_1.x))))), var_2.d.c.x << (_wgslsmith_sub_u32(arg_3, ~countOneBits(4294967295u)) % 32u)), 12u)];
}

fn func_4(arg_0: Struct_3) -> vec4<u32> {
    global0 = array<vec2<i32>, 7>();
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1310f), arg_0.a.d.x))));
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0.a.d.x, -423f)))), var_1.d.x, arg_0.b)), _wgslsmith_f_op_f32(floor(-966f)), _wgslsmith_f_op_f32(arg_0.a.d.x - arg_0.a.d.x)));
    let var_3 = ~(~vec4<i32>(-33687i, ~(~(-22065i)), firstTrailingBit(_wgslsmith_clamp_i32(var_1.a, 0i, -24699i)), arg_0.a.a));
    return vec4<u32>(reverseBits(~(~u_input.b | abs(arg_0.c))), (~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) << (24314u % 32u)) << (max(1u, 17984u) % 32u), abs(~(~u_input.b)), arg_0.a.c.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(0i, arg_1.x);
    let var_1 = 34386i;
    let var_2 = Struct_4(vec4<i32>(u_input.a.x, reverseBits(var_1), i32(-1i) * -2147483647i, ~1i), Struct_2(var_0.a, func_2(-55321i << (func_2(66i, vec4<u32>(0u, 4294967295u, u_input.b, arg_0.x), 1u, 0u).a.c.x % 32u), vec4<u32>(u_input.b, 0u, 0u, u_input.b) & arg_0, 0u, 4294967295u).d, vec3<u32>(func_4(global1[_wgslsmith_index_u32(u_input.b, 12u)]).x, _wgslsmith_clamp_u32(arg_0.x, u_input.b << (4294967295u % 32u), u_input.b), firstLeadingBit(u_input.b) ^ u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1107f * -266f), _wgslsmith_f_op_f32(f32(-1f) * -539f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2084f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(516f * _wgslsmith_f_op_f32(step(-1186f, 1085f))))))), Struct_2(-22560i, func_2(-var_0.b << (~85691u % 32u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 9473u, 74056u, u_input.b), arg_0), func_4(func_2(-38191i, arg_0, 1u, 0u)).x, 1u).a.b, ~(~abs(arg_0.zyz)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(839f + 225f), _wgslsmith_f_op_f32(f32(-1f) * -1520f)), vec2<f32>(-2422f, -679f))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1263f, 869f))) - -1682f)), var_2.b.d.x, _wgslsmith_f_op_f32(min(var_2.b.d.x, _wgslsmith_f_op_f32(-func_2(0i, ~vec4<u32>(arg_0.x, 1u, 1u, var_2.b.c.x), u_input.b, 34363u & arg_0.x).a.d.x))));
    global0 = array<vec2<i32>, 7>();
    return Struct_2(0i, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, func_2(var_1, vec4<u32>(0u, 1u, u_input.b, 91280u), var_2.b.c.x, 4294967295u).d.a, _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-30758i, var_1)), var_1), select(~var_2.a, reverseBits(var_2.a), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))), vec4<u32>(countOneBits(7554u), max(~77321u, abs(1u)), 0u, 33224u), var_2.d.c.x, abs(1u ^ reverseBits(arg_0.x))).a.b, arg_0.zww, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.d - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1094f, -944f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(func_4(func_2(~(-18579i), vec4<u32>(u_input.b, u_input.b, 4294967295u, 64290u), u_input.b, func_1(Struct_1(u_input.a.x, u_input.a.x), Struct_4(vec4<i32>(-1i, u_input.a.x, -14702i, u_input.a.x), Struct_2(u_input.a.x, Struct_1(-46067i, 0i), vec3<u32>(u_input.b, 11139u, 27178u), vec2<f32>(-702f, -1677f)), 111f, Struct_2(u_input.a.x, Struct_1(2147483647i, 1i), vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<f32>(262f, 482f)))))), u_input.a), !(!any(vec4<bool>(false, true, false, true))), firstLeadingBit(_wgslsmith_mult_u32(~func_3().x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(9055u, u_input.b), vec2<u32>(40559u, u_input.b))))), Struct_1(u_input.a.x << ((~1u & _wgslsmith_sub_u32(u_input.b, u_input.b)) % 32u), 31526i));
    var var_1 = true;
    var var_2 = Struct_4(select(vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.zx, global0[_wgslsmith_index_u32(4704u, 7u)])), -min(var_0.a.b.a, -2147483647i), -var_0.d.a, -_wgslsmith_clamp_i32(u_input.a.x, var_0.a.b.a, u_input.a.x)), select(~(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(var_0.a.b.a, u_input.a.x, var_0.d.b, var_0.d.b)), vec4<i32>(45853i, func_2(var_0.a.b.b, vec4<u32>(10229u, 920u, u_input.b, 0u), 1u, u_input.b).a.a, var_0.a.a, ~var_0.a.b.a), var_0.b), !(_wgslsmith_sub_u32(u_input.b, 1u) < ~61443u)), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d.x)), var_0.a);
    var var_3 = 5921i;
    var var_4 = ~_wgslsmith_div_u32(1u, 14405u);
    var_2 = Struct_4(vec4<i32>(-_wgslsmith_dot_vec2_i32(min(u_input.a.xx, u_input.a.xz), max(vec2<i32>(-13844i, var_0.a.b.b), u_input.a.yz)), var_0.a.b.b, 1i, _wgslsmith_sub_i32(var_0.a.b.a, u_input.a.x)), func_2(16098i, func_4(Struct_3(func_2(var_2.d.b.b, vec4<u32>(1u, 11664u, var_0.c, u_input.b), var_2.d.c.x, 4294967295u).a, true, ~var_2.b.c.x, var_2.d.b)), u_input.b, 4294967295u).a, _wgslsmith_f_op_f32(f32(-1f) * -338f), func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.b.a, 2147483647i, -2147483647i), u_input.a) | vec3<i32>(28442i, -57465i, 470i), u_input.a), ~firstTrailingBit(vec4<u32>(var_2.d.c.x, 71207u, 4880u, var_0.a.c.x)), func_1(Struct_1(2147483647i, func_5(vec4<u32>(var_0.a.c.x, 0u, 0u, u_input.b), var_2.a.xxw).a), Struct_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, u_input.a.x, 10129i, 17449i), vec4<i32>(var_0.d.b, 1i, 2147483647i, var_0.d.b), vec4<i32>(var_0.a.a, -2147483647i, 25851i, var_0.a.b.b)), Struct_2(1i, var_2.d.b, var_2.b.c, vec2<f32>(var_0.a.d.x, -712f)), _wgslsmith_f_op_f32(627f * -766f), Struct_2(u_input.a.x, Struct_1(var_2.d.a, -42741i), var_2.b.c, vec2<f32>(var_2.b.d.x, var_2.c)))), var_2.d.c.x).a);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.c - 1073f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.d.x, 131f))));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.d.x, -2139f, var_0.a.d.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, 1f, var_5)));
    var var_7 = vec2<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.a.x, -2147483647i, -20322i), countOneBits(-vec4<i32>(-7304i, -1i, -22455i, var_0.a.a))), firstTrailingBit(-24522i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.x * _wgslsmith_f_op_f32(var_5 * -257f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.d.x) + 242f)))));
}

