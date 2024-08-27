struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
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

var<private> global0: array<vec4<i32>, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = arg_3;
    var_0 = arg_1.c;
    let var_1 = arg_0;
    let var_2 = var_0.b;
    global0 = array<vec4<i32>, 1>();
    return any(select(!(!vec4<bool>(true, var_1, var_1, true)), !(!(!vec4<bool>(arg_0, arg_0, var_1, arg_0))), arg_0));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -668f) - arg_0.zz) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(-arg_0.x), ~_wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_mod_u32(u_input.a, 1u)), -u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.xz)) - vec2<f32>(arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec2_f32(-arg_0.xx)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.x)), 667f)))), u_input.d.x, u_input.b.x), 0u);
    global0 = array<vec4<i32>, 1>();
    var var_1 = vec4<u32>(u_input.a, _wgslsmith_sub_u32(~(~u_input.a), u_input.d.x), min(~(~(~u_input.a)), 4294967295u), _wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(var_0.b.c, 0u)));
    let var_2 = var_1.x;
    let var_3 = ~vec2<i32>(u_input.c, var_0.a.d);
    return countOneBits(min(var_0.a.c, 0u));
}

fn func_2(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(870f, -1031f, -1313f), vec3<f32>(-659f, 189f, 356f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(825f, -103f, 645f) - vec3<f32>(421f, -1174f, -802f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-299f, -238f, -292f))), func_3(true, Struct_3(Struct_1(vec2<f32>(904f, 719f), -1217f, 76047u, 40866i), 2674f, Struct_2(1i, Struct_1(vec2<f32>(-1963f, 1000f), 197f, u_input.a, u_input.c)), vec2<f32>(2231f, 434f)), u_input.b.x, Struct_2(0i, Struct_1(vec2<f32>(688f, 1000f), 954f, u_input.d.x, u_input.c))) || all(vec4<bool>(true, true, true, true))) << (7498u % 32u);
    let var_1 = _wgslsmith_sub_vec2_u32(~(~u_input.d.yz), select(reverseBits(~vec2<u32>(19777u, u_input.a) ^ reverseBits(vec2<u32>(80958u, u_input.a))), vec2<u32>(28605u, u_input.a) & (vec2<u32>(u_input.a, 35564u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true)));
    return Struct_5(_wgslsmith_add_u32(4294967295u >> (u_input.d.x % 32u), 1u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = func_2(vec3<i32>(_wgslsmith_sub_i32(~reverseBits(2147483647i), 1i), 0i, 21696i));
    var var_1 = vec2<i32>(arg_2.d, u_input.b.x);
    let var_2 = firstTrailingBit(0u << (arg_2.c % 32u));
    global0 = array<vec4<i32>, 1>();
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1205f - arg_2.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1369f)), true)), 818f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f * arg_2.a.x) + arg_2.a.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.a.x, 866f)) - _wgslsmith_f_op_f32(-arg_2.a.x))))), (~_wgslsmith_mod_u32(var_0.a, 6646u) << ((countOneBits(u_input.a) & (var_2 << (10107u % 32u))) % 32u)) | (select(~u_input.d.x, 53359u, true) >> (42121u % 32u)), abs(1i));
    return vec3<bool>(true, !arg_1.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 1>();
    var var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, false, false) && true), vec3<bool>(true, true, true)), select(vec3<bool>(all(vec4<bool>(false, true, false, false)), true, u_input.d.x > _wgslsmith_sub_u32(u_input.a, 4294967295u)), func_1(-vec3<i32>(-6004i, u_input.b.x, u_input.b.x) | (vec3<i32>(1i, u_input.c, -2147483647i) ^ vec3<i32>(u_input.c, 6663i, u_input.c)), vec2<bool>(true, true), Struct_1(vec2<f32>(-1278f, -2523f), 743f, ~u_input.d.x, i32(-1i) * -25795i)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), false)), select(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-106f)));
}

