struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(60203i, -31050i, i32(-2147483648), i32(-2147483648), -1217i, -1i);

var<private> global1: vec2<f32>;

var<private> global2: array<f32, 17> = array<f32, 17>(-476f, -939f, 278f, -1302f, -1037f, 1000f, 2689f, -584f, -1240f, 1496f, 443f, -470f, 753f, 832f, -471f, 1831f, 372f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global1.x) * vec3<f32>(229f, global1.x, global2[_wgslsmith_index_u32(0u, 17u)]))))), false, ~(firstTrailingBit(abs(u_input.a.ywy)) << (select(~vec3<u32>(0u, 1u, u_input.a.x), ~vec3<u32>(u_input.b, 0u, 23518u), true) % vec3<u32>(32u))), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(5593u, u_input.a.x), vec2<u32>(_wgslsmith_mod_u32(u_input.b, 34613u), ~1u)), 17u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x)));
    global0 = array<i32, 6>();
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(63799u, 1u, u_input.a.x)), _wgslsmith_add_vec3_u32(u_input.a.zzy, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(var_0.c.x, var_0.c.x, u_input.b), vec3<u32>(1u, 1u, u_input.b))), !(!vec3<bool>(var_0.b, var_0.b, var_0.b))), firstTrailingBit(var_0.c)), ~29627u);
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, true)))))))), _wgslsmith_add_i32(-global0[_wgslsmith_index_u32(func_3(), 6u)], reverseBits(global0[_wgslsmith_index_u32(61410u >> (0u % 32u), 6u)])) <= ~(~max(global0[_wgslsmith_index_u32(53390u, 6u)], -1i)), u_input.a.ywz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zx * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-arg_0.yz), false)))));
    let var_1 = Struct_1(arg_0, var_0.b, select(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), 4294967295u, u_input.a.x), firstLeadingBit(var_0.c), vec3<bool>(true, false, var_0.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.zx) * _wgslsmith_f_op_vec2_f32(-var_0.a.xx))), _wgslsmith_f_op_vec2_f32(-arg_0.yz), ~(-2147483647i) <= global0[_wgslsmith_index_u32(~var_0.c.x << (_wgslsmith_mult_u32(var_0.c.x, 0u) % 32u), 6u)])));
    let var_2 = 4294967295u;
    var var_3 = Struct_2(!(!(!select(vec2<bool>(var_0.b, true), vec2<bool>(false, true), true))), ~vec4<u32>(firstLeadingBit(~4294967295u), 40612u, 1u, 1u), var_1);
    var var_4 = Struct_2(select(!select(select(vec2<bool>(true, var_0.b), vec2<bool>(var_3.c.b, var_1.b), vec2<bool>(var_0.b, false)), select(var_3.a, var_3.a, var_3.c.b), vec2<bool>(var_0.b, false)), select(select(vec2<bool>(true, true), vec2<bool>(var_0.b, false), var_1.b), vec2<bool>(any(vec2<bool>(var_1.b, true)), !var_0.b), !(var_1.b & var_0.b)), vec2<bool>(all(var_3.a), true)), vec4<u32>(var_0.c.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(9333u, var_2), 4294967295u) | 1u, ~var_3.b.x, 93607u), Struct_1(vec3<f32>(305f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-738f + 1000f))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(step(-180f, 181f)))), false, vec3<u32>(var_2 << (~u_input.a.x % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, var_1.c.x), ~var_1.c.x), var_1.c.x >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d * var_3.c.a.zz) * var_1.a.xy) + vec2<f32>(_wgslsmith_f_op_f32(var_3.c.a.x - -1286f), _wgslsmith_f_op_f32(ceil(arg_0.x))))));
    return !(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_4.c.d.x >= -873f, !var_3.a.x, var_4.a.x, !var_1.b), _wgslsmith_mod_u32(u_input.b, 25837u) >= _wgslsmith_sub_u32(var_2, var_0.c.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    global2 = array<f32, 17>();
    let var_0 = !(!select(select(func_2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 17u)], -1571f, global2[_wgslsmith_index_u32(4294967295u, 17u)])), func_2(vec3<f32>(global1.x, 712f, -673f)), func_2(arg_0)), func_2(_wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 17u)] * global1.x) != -639f));
    let var_1 = abs(_wgslsmith_mod_vec2_u32(~firstTrailingBit(select(u_input.a.xx, vec2<u32>(21409u, 65608u), false)), ~u_input.a.wy));
    global2 = array<f32, 17>();
    let var_2 = _wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1907f))), -1334f));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global2[_wgslsmith_index_u32(7523u, 17u)])) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.x))))), global1.x, 1598f), !(!all(vec4<bool>(var_0.x, false, false, true))), vec3<u32>(~1u, ~firstTrailingBit(u_input.a.x), var_1.x) << (vec3<u32>(firstLeadingBit(~u_input.b), ~_wgslsmith_add_u32(u_input.b, 12205u), abs(4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global2[_wgslsmith_index_u32(0u, 17u)]) * global1.x), 1163f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_sub_vec2_u32(arg_0.c.xz, ~arg_0.c.zz);
    let var_1 = all(!select(vec2<bool>(!arg_1.a.x, arg_1.c.b), vec2<bool>(arg_0.b, all(vec3<bool>(true, true, arg_0.b))), vec2<bool>(arg_1.c.b && arg_1.a.x, arg_0.b)));
    global0 = array<i32, 6>();
    var var_2 = arg_1;
    var var_3 = arg_1;
    return -(~min(vec3<i32>(-6709i, -2147483647i, -1315i) | max(vec3<i32>(0i, -1i, -13891i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(arg_1.c.c.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, global0[_wgslsmith_index_u32(var_2.c.c.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec3<i32>(global0[_wgslsmith_index_u32(arg_1.c.c.x, 6u)], global0[_wgslsmith_index_u32(75726u, 6u)], 21036i))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    global1 = arg_2.c.a.yz;
    global1 = arg_0.a.xx;
    var var_0 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(firstTrailingBit(-142i), ~_wgslsmith_clamp_i32(arg_1.x, -41325i, arg_1.x)), _wgslsmith_mult_vec2_i32(arg_1.yy, arg_1.zx) | _wgslsmith_mult_vec2_i32(max(vec2<i32>(-12251i, 24651i), vec2<i32>(-60999i, 11910i)), vec2<i32>(47445i, 5892i)), arg_2.a), vec2<i32>(-max(~arg_1.x, 1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -2147483647i, arg_1.x), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, global0[_wgslsmith_index_u32(arg_2.c.c.x, 6u)], global0[_wgslsmith_index_u32(66917u, 6u)]), arg_1))));
    let var_1 = select(abs(_wgslsmith_sub_vec4_u32(~u_input.a, ~arg_2.b)), arg_2.b, true) ^ (arg_2.b & vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b) << (22550u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 15633u, 17880u, arg_0.c.x), vec4<u32>(arg_0.c.x, 4294967295u, 9700u, 1u)), 1u, 16107u));
    var var_2 = arg_2;
    return Struct_2(var_2.a, var_2.b, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(754f, global1.x, _wgslsmith_div_f32(global1.x, 124f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], -843f))), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)] != -1i, any(vec2<bool>(true, false)))), ~u_input.a.wxy, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(590f)), 2167f))), func_4(func_1(vec3<f32>(-493f, global2[_wgslsmith_index_u32(17913u, 17u)], -339f), ~vec2<i32>(21871i, -2147483647i)), Struct_2(vec2<bool>(false, false), ~u_input.a, func_1(vec3<f32>(750f, global1.x, 348f), vec2<i32>(-1i, -1i)))) >> (vec3<u32>(_wgslsmith_div_u32(~u_input.b, 4294967295u), ~_wgslsmith_mult_u32(u_input.a.x, 38674u), _wgslsmith_div_u32(u_input.b, u_input.b ^ 4294967295u)) % vec3<u32>(32u)), Struct_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), ~(~(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) ^ u_input.a)), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -612f, -1760f) - vec3<f32>(1259f, global1.x, -322f)), vec3<f32>(-262f, global2[_wgslsmith_index_u32(2684u, 17u)], global1.x)), _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, 1i), -vec2<i32>(global0[_wgslsmith_index_u32(51862u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)])))));
    global2 = array<f32, 17>();
    let var_1 = -349f;
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 6u)];
    var_2 = (i32(-1i) * -15911i) | func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c.a), !var_0.c.b, firstTrailingBit(abs(vec3<u32>(u_input.b, 22730u, u_input.b))), _wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(var_0.c.a.x, -113f, -1466f), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], -55880i)).a.xx * var_0.c.a.zz)), Struct_2(vec2<bool>(all(vec4<bool>(false, var_0.c.b, var_0.a.x, var_0.c.b)), true), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 63635u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(29778u, 44712u, var_0.b.x, 3403u), vec4<u32>(66699u, 1u, 69218u, var_0.b.x), var_0.b)), var_0.c)).x;
    let var_3 = global0[_wgslsmith_index_u32(1u, 6u)] & _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_mod_vec2_i32(vec2<i32>(21829i, 3214i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -18038i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], -2147483647i))), ~1i, -2147483647i);
    let var_4 = 4294967295u;
    global2 = array<f32, 17>();
    var var_5 = select(vec3<bool>(select(-2147483647i == global0[_wgslsmith_index_u32(4294967295u, 6u)], !(!var_0.c.b), any(select(vec4<bool>(var_0.c.b, var_0.c.b, false, var_0.c.b), vec4<bool>(false, false, var_0.a.x, var_0.a.x), false))), !all(func_2(var_0.c.a)), true), vec3<bool>(var_0.c.b, !all(vec4<bool>(true, true, var_0.a.x, false)), var_0.c.b), _wgslsmith_add_i32(1i, abs(global0[_wgslsmith_index_u32(func_1(var_0.c.a, vec2<i32>(var_3, var_3)).c.x, 6u)])) < global0[_wgslsmith_index_u32(countOneBits(func_3()), 6u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, 35602u, _wgslsmith_f_op_vec2_f32(func_5(func_5(var_0.c, -vec3<i32>(21479i, -19688i, var_3), Struct_2(vec2<bool>(var_0.a.x, var_0.c.b), u_input.a, Struct_1(var_0.c.a, var_0.c.b, var_0.c.c, var_0.c.a.zx))).c, vec3<i32>(-27967i, _wgslsmith_div_i32(var_3, var_3), -2147483647i), var_0).c.a.zx * var_0.c.a.zz), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(390f, -1000f)), -724f, global2[_wgslsmith_index_u32(var_4 << (var_0.b.x % 32u), 17u)], -313f))))));
}

