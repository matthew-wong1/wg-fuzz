struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true));

var<private> global1: array<vec3<i32>, 19>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(true, vec2<bool>(true, false), -408f, vec4<i32>(0i, -7660i, -1i, 1i))), Struct_2(Struct_1(true, vec2<bool>(true, true), 1218f, vec4<i32>(-14595i, 61863i, 2147483647i, -7734i))), Struct_2(Struct_1(true, vec2<bool>(true, true), 1000f, vec4<i32>(5018i, 0i, -22288i, 2486i))), Struct_2(Struct_1(true, vec2<bool>(false, true), -458f, vec4<i32>(-1i, i32(-2147483648), -1i, 1i))), Struct_2(Struct_1(false, vec2<bool>(false, false), 402f, vec4<i32>(-32228i, -1i, 18479i, -46271i))), Struct_2(Struct_1(true, vec2<bool>(false, false), 1000f, vec4<i32>(-9974i, 2147483647i, -54692i, 117021i))), Struct_2(Struct_1(false, vec2<bool>(false, true), 1452f, vec4<i32>(-44328i, 82822i, 44774i, 1i))), Struct_2(Struct_1(true, vec2<bool>(true, false), 313f, vec4<i32>(5542i, i32(-2147483648), 2147483647i, 22101i))), Struct_2(Struct_1(true, vec2<bool>(true, false), -279f, vec4<i32>(13696i, -18239i, -1i, -28174i))), Struct_2(Struct_1(false, vec2<bool>(false, true), 362f, vec4<i32>(12199i, 20920i, 6395i, 0i))));

var<private> global3: array<f32, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = !select(true, true, false) || (global3[_wgslsmith_index_u32(1u, 10u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1340f))));
    var var_1 = u_input.a.x;
    let var_2 = Struct_2(Struct_1(any(vec2<bool>(all(vec3<bool>(true, true, true)), true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -805f))), u_input.a));
    var_1 = ~abs(u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(335f, 2114f, var_2.a.b.x)), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(108u, 10u)], var_2.a.c)))), var_2.a.c, global3[_wgslsmith_index_u32(19589u, 10u)])) + vec3<f32>(var_2.a.c, _wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(step(602f, -177f))));
    return 0u != (~(~1u) >> (~reverseBits(_wgslsmith_clamp_u32(1785u, 44735u, 1u)) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_2.x, vec2<bool>(func_3(), !any(vec3<bool>(false, true, arg_2.x))), 799f, ~vec4<i32>(firstLeadingBit(arg_0.a.d.x), arg_0.a.d.x, abs(-35315i), _wgslsmith_div_i32(1i, arg_0.a.d.x))));
    let var_1 = arg_1;
    let var_2 = 79708u;
    let var_3 = select(select(vec3<bool>(all(!vec3<bool>(arg_0.a.b.x, true, var_0.a.a)), true, select(false, true, 1000f < global3[_wgslsmith_index_u32(arg_1, 10u)])), select(!vec3<bool>(true, true, arg_2.x), select(vec3<bool>(arg_2.x, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, arg_2.x, arg_2.x), false), vec3<bool>(true, var_0.a.a, arg_2.x)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.a.a, false), arg_0.a.a))), !(!arg_2.x)), select(!(!select(vec3<bool>(true, true, var_0.a.b.x), vec3<bool>(false, var_0.a.a, var_0.a.a), vec3<bool>(false, arg_0.a.b.x, false))), select(vec3<bool>(!arg_0.a.a, !arg_0.a.b.x, all(vec4<bool>(false, false, var_0.a.b.x, arg_2.x))), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.x, true), select(true, false, var_0.a.b.x)), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(arg_0.a.b.x, false, true)), false, arg_0.a.b.x)), !(!vec3<bool>(arg_1 == 0u, true, func_3())));
    var var_4 = 5788i >= var_0.a.d.x;
    return var_0.a.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, arg_1), 12u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)) + 630f), 917f, global3[_wgslsmith_index_u32(~arg_1, 10u)], _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1662f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(arg_1, 10u)], arg_1, vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, var_0.x)), _wgslsmith_f_op_f32(870f - arg_0.x), _wgslsmith_f_op_f32(select(1335f, global3[_wgslsmith_index_u32(1u, 10u)], false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(941f, arg_0.x, global3[_wgslsmith_index_u32(54205u, 10u)], arg_0.x) - vec4<f32>(arg_0.x, -1004f, arg_0.x, 1000f)) - vec4<f32>(-187f, _wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x))), all(vec4<bool>(!any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true, var_0.x, true))));
    let var_2 = ~(~vec4<u32>(_wgslsmith_clamp_u32(1u, arg_1, 1u), ~arg_1, 1u, ~arg_1) | ~(~vec4<u32>(arg_1, 0u, arg_1, arg_1) & ~vec4<u32>(arg_1, 0u, arg_1, arg_1)));
    var_1 = vec4<f32>(800f, -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(747f * 440f))), 1539f);
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(arg_2.x, arg_2.x, 3689i, arg_2.x)), -(~((u_input.a << (vec4<u32>(0u, var_2.x, arg_1, 72984u) % vec4<u32>(32u))) ^ u_input.a)));
    return (1u >> (~arg_1 % 32u)) & _wgslsmith_dot_vec4_u32(var_2, _wgslsmith_mult_vec4_u32(var_2, ~(~vec4<u32>(arg_1, var_2.x, 26228u, 125712u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    var var_0 = ~vec4<u32>(~func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1485f, global3[_wgslsmith_index_u32(1u, 10u)]))), 0u, ~global1[_wgslsmith_index_u32(84226u, 19u)]), ~_wgslsmith_mod_u32(min(15563u, 44821u), _wgslsmith_sub_u32(98329u, 18332u)), ~abs(1u), ~_wgslsmith_add_u32(~0u, 0u >> (0u % 32u)));
    let var_1 = Struct_1(false, !select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(394f - global3[_wgslsmith_index_u32(~var_0.x, 10u)]))))), -_wgslsmith_mod_vec4_i32(-u_input.a, max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -86489i, u_input.a.x, u_input.a.x))) | vec4<i32>(u_input.a.x, abs(abs(2147483647i)), u_input.a.x, 0i));
    let var_2 = Struct_2(var_1);
    var var_3 = var_2.a;
    global0 = array<vec4<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1208f, 827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c * -463f)))), vec4<i32>(31858i, var_2.a.d.x, 48155i, u_input.a.x), 66987u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-820f, var_1.c, -328f) - vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 10u)], var_2.a.c, global3[_wgslsmith_index_u32(32106u, 10u)])))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-958f, 936f, var_1.c), vec3<f32>(global3[_wgslsmith_index_u32(27207u, 10u)], global3[_wgslsmith_index_u32(var_0.x, 10u)], var_1.c)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(641f, -676f, -1369f))))));
}

