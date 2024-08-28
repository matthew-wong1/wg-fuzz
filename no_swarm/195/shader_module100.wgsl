struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: array<u32, 24>;

var<private> global2: array<Struct_3, 15>;

var<private> global3: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 97249u, 10269u, 1u), vec4<u32>(22429u, 0u, 70195u, 80557u), vec4<u32>(16666u, 30050u, 0u, 75026u), vec4<u32>(4294967295u, 0u, 123350u, 33730u), vec4<u32>(0u, 4294967295u, 1u, 59398u), vec4<u32>(55048u, 0u, 0u, 0u), vec4<u32>(1u, 4294967295u, 0u, 47614u), vec4<u32>(0u, 1u, 47681u, 46573u), vec4<u32>(22820u, 51796u, 1u, 55484u), vec4<u32>(0u, 0u, 4294967295u, 58911u), vec4<u32>(1u, 33726u, 1u, 42955u), vec4<u32>(73231u, 12276u, 71006u, 16u), vec4<u32>(1u, 0u, 1u, 14220u), vec4<u32>(4294967295u, 44449u, 105987u, 4294967295u), vec4<u32>(4750u, 1u, 95204u, 11126u), vec4<u32>(4294967295u, 32426u, 0u, 1u), vec4<u32>(97783u, 0u, 1u, 1u), vec4<u32>(53151u, 51284u, 72864u, 4294967295u), vec4<u32>(0u, 4294967295u, 28882u, 28223u), vec4<u32>(44381u, 131132u, 12564u, 1u), vec4<u32>(1u, 40519u, 7512u, 0u), vec4<u32>(1u, 1u, 26527u, 12913u), vec4<u32>(29078u, 53185u, 0u, 1u), vec4<u32>(70539u, 4294967295u, 4027u, 1u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_3(u_input.a, Struct_2(~23331u > global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, u_input.a.x), 24u)], Struct_1(all(vec4<bool>(false, true, false, true)), max(1i, _wgslsmith_add_i32(11245i, 25584i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(min(-322f, 2902f))), ~u_input.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, firstTrailingBit(4294967295u)), ~u_input.a), 15u)]);
    var var_1 = global2[_wgslsmith_index_u32(~firstLeadingBit(min(min(countOneBits(var_0.c.b.d), _wgslsmith_clamp_u32(70094u, u_input.a.x, 2059u)), ~4294967295u)), 15u)];
    global0 = array<Struct_2, 15>();
    let var_2 = var_0.b.b.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-734f, -1976f, var_0.b.b.c), vec3<f32>(var_0.c.b.c, var_0.c.b.c, -2054f)) + vec3<f32>(var_1.b.b.c, var_0.c.b.c, var_1.b.b.c)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.c, var_1.b.b.c, 1000f) - vec3<f32>(-299f, 951f, var_0.c.b.c)), vec3<f32>(var_1.c.b.c, -408f, -873f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b.c), -910f, var_0.b.b.c))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.b.c)) * -137f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-649f * -141f)), 2242f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.b.c), 181f, _wgslsmith_f_op_f32(-var_0.c.b.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.c, var_0.c.b.c, var_1.c.b.c) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1232f, var_1.c.b.c, 674f)))))))));
    return u_input.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = arg_0.x;
    var var_1 = global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~func_3(), ~(~arg_0.xz)), 24u)], 15u)];
    global2 = array<Struct_3, 15>();
    var var_2 = select(vec2<bool>(!all(vec3<bool>(true, var_1.b.b.a, var_1.b.b.a)), true), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), !(53313u == global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 24u)], 24u)])), true), vec2<bool>(all(!(!vec2<bool>(false, var_1.c.b.a))), var_1.b.b.a));
    let var_3 = _wgslsmith_dot_vec3_u32(arg_0.zyx, select(~arg_0.wxx, _wgslsmith_sub_vec3_u32(select(~arg_0.wyx, arg_0.wyz, all(vec2<bool>(true, false))), ~vec3<u32>(u_input.a.x, 58231u, var_0)), !any(vec4<bool>(var_2.x, true, var_2.x, var_2.x))));
    return global3[_wgslsmith_index_u32(0u, 24u)];
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_2(!(_wgslsmith_dot_vec4_u32(func_2(global3[_wgslsmith_index_u32(53293u, 24u)], vec4<f32>(301f, 884f, -701f, -242f)), global3[_wgslsmith_index_u32(5482u, 24u)] | global3[_wgslsmith_index_u32(14333u, 24u)]) == _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(7010u, 24u)], 24u)], 1u, _wgslsmith_add_u32(60373u, 61694u))), Struct_1(all(vec2<bool>(true, true)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 0i, 9295i), vec3<i32>(1i, 1i, 1i)), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-592f, 338f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1259f, 1000f, true)))), ~(~11840u)));
    global0 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(max(1u, _wgslsmith_mult_u32(var_0.b.d, 4294967295u)) & ((u_input.a.x & u_input.a.x) & ~u_input.a.x), ~24622u));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_2(~global3[_wgslsmith_index_u32(121879u, 24u)] >> (~vec4<u32>(0u, var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, var_0.b.c, -1363f, var_0.b.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(413f, var_0.b.c, -430f, var_0.b.c)))).x, func_2(global3[_wgslsmith_index_u32(~max(4294967295u, var_0.b.d), 24u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(249f, 342f, 1116f, -750f) * vec4<f32>(-1329f, var_0.b.c, -1000f, -383f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, var_0.b.c, var_0.b.c, 500f))))).x), 15u)];
    var var_3 = Struct_2(var_0.b.a, Struct_1(var_0.b.a, -1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-439f, _wgslsmith_f_op_f32(round(751f)))))), _wgslsmith_mod_u32(~36635u, var_0.b.d << (~var_1.x % 32u))));
    return Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b.c, var_2.b.c), vec2<f32>(362f, var_0.b.c))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.b.c, var_2.b.c))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b.c, var_0.b.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, 446f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b.c, -414f)))))), Struct_2(any(select(select(vec2<bool>(false, false), vec2<bool>(var_2.b.a, false), false), vec2<bool>(var_2.b.a, var_2.b.a), var_0.b.a)), Struct_1(true, var_2.b.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1512f))), var_1.x)), select(!(!vec4<bool>(var_3.b.a, false, false, false)), vec4<bool>(~var_2.b.d >= 0u, ~var_3.b.b >= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.b.b), vec2<i32>(var_2.b.b, 1i)), any(select(vec4<bool>(var_3.a, var_3.b.a, false, var_3.b.a), vec4<bool>(true, var_3.b.a, true, false), vec4<bool>(var_3.a, false, true, false))), var_2.a), true), vec3<bool>(false, !(!var_0.a), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<Struct_3, 15>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.b.c);
    var var_2 = var_0;
    let var_3 = Struct_2(!all(func_1().d.yx), Struct_1(true, countOneBits(-38915i), _wgslsmith_f_op_f32(sign(var_0.a.x)), ~var_2.b.b.d));
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(var_0.b.b.c)))))), Struct_2(select(var_2.d.x, !var_0.b.a, any(func_1().c.xzx)), func_1().b.b), func_1().c, var_2.c.zyx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(reverseBits(_wgslsmith_mod_u32(var_2.b.b.d, u_input.a.x))), 4294967295u), _wgslsmith_mult_vec3_u32(~min(vec3<u32>(var_3.b.d, global1[_wgslsmith_index_u32(var_2.b.b.d, 24u)], global1[_wgslsmith_index_u32(12407u, 24u)]), vec3<u32>(global1[_wgslsmith_index_u32(var_3.b.d, 24u)], global1[_wgslsmith_index_u32(101606u, 24u)], u_input.a.x) | vec3<u32>(var_0.b.b.d, 0u, global1[_wgslsmith_index_u32(4294967295u, 24u)])), select(vec3<u32>(global1[_wgslsmith_index_u32(var_0.b.b.d, 24u)], 7200u, global1[_wgslsmith_index_u32(var_3.b.d, 24u)]) ^ vec3<u32>(0u, global1[_wgslsmith_index_u32(var_2.b.b.d, 24u)], u_input.a.x), func_2(~vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(var_2.b.b.d, 24u)], 1u, 44170u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b.c, var_0.b.b.c, 296f, var_2.b.b.c)))).zzy, vec3<bool>(var_0.b.b.a, all(var_0.c), func_1().c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369f - -225f) - _wgslsmith_f_op_f32(min(var_3.b.c, -328f)))) + _wgslsmith_f_op_f32(-var_3.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.b.c, var_1, 292f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1561f, var_0.b.b.c, var_1, 428f) + vec4<f32>(1564f, -253f, var_2.a.x, var_3.b.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.c, -1091f, 258f, var_0.b.b.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-651f, 2129f, var_0.a.x, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.b.c)) + -249f));
}

