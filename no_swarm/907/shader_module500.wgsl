struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1232f, 689f, 1188f), vec3<f32>(-1000f, -1265f, 579f), vec3<f32>(1216f, 1189f, -1251f), vec3<f32>(-176f, 397f, 659f), vec3<f32>(205f, -601f, 1023f));

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    let var_0 = 78610i;
    let var_1 = select(vec2<bool>(!(firstLeadingBit(u_input.c.x) < ~u_input.c.x), arg_0.x), !(!(!arg_0)), arg_0);
    let var_2 = -375f;
    var var_3 = select(!(true & all(vec3<bool>(arg_0.x, arg_0.x, var_1.x))), any(vec3<bool>(!all(vec3<bool>(true, arg_0.x, arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(ceil(var_2)) >= _wgslsmith_f_op_f32(sign(-1533f)))), all(select(!vec3<bool>(var_1.x, var_1.x, arg_0.x), select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, arg_0.x, true), var_1.x || arg_0.x), !(!vec3<bool>(false, false, var_1.x)))));
    var var_4 = Struct_1(abs(~_wgslsmith_div_vec2_u32(u_input.c, u_input.c) | (vec2<u32>(79795u, u_input.b) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x)) % vec2<u32>(32u)))), select(select(arg_0, arg_0, arg_0.x), var_1, arg_0));
    return -(~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_0, 19686i)) | select(u_input.a.xz, vec2<i32>(var_0, 1i), false), countOneBits(u_input.a.yy)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    var var_0 = vec2<bool>(all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !all(vec3<bool>(false, true, true)))), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))) || !all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))));
    var_0 = select(select(!(!(!vec2<bool>(var_0.x, var_0.x))), !vec2<bool>(select(var_0.x, var_0.x, var_0.x), var_0.x), any(!vec3<bool>(var_0.x, false, true))), vec2<bool>(!any(!vec2<bool>(var_0.x, var_0.x)), !(true && any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_0.x);
    var var_1 = global1[_wgslsmith_index_u32(abs(reverseBits(firstLeadingBit(u_input.b))), 7u)];
    var var_2 = var_1.d;
    let var_3 = var_1.e;
    return 16195i;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 5>();
    global1 = array<Struct_2, 7>();
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(u_input.b | u_input.c.x, 5u)], _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(u_input.b, 5u)])))))))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~func_3(arg_2.b), -u_input.a.zz), u_input.a.x >> ((_wgslsmith_div_u32(30547u, 1u) << (select(arg_2.a.x, 1u, false) % 32u)) % 32u)), _wgslsmith_add_vec2_u32(vec2<u32>(~arg_2.a.x, 1u), ~(~_wgslsmith_add_vec2_u32(arg_2.a, arg_2.a))));
    global1 = array<Struct_2, 7>();
    return Struct_1(firstLeadingBit(arg_2.a | vec2<u32>(~0u, ~102478u)), vec2<bool>(true, any(select(!vec3<bool>(arg_2.b.x, arg_2.b.x, false), select(vec3<bool>(false, false, arg_2.b.x), vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), true), -44897i <= arg_1))));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) + 854f))), u_input.d, Struct_1(max(vec2<u32>(20084u, 0u) << (firstTrailingBit(u_input.c) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.b, 1u))), vec2<bool>(false, select(all(vec4<bool>(true, true, true, false)), true, true))));
    var var_1 = 268f;
    let var_2 = global1[_wgslsmith_index_u32(0u, 7u)];
    var var_3 = false;
    var_1 = _wgslsmith_f_op_f32(abs(-890f));
    return vec3<u32>(u_input.c.x, 4294967295u | abs(~(var_2.e.a.x | 47231u)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.b), vec3<u32>(10568u, u_input.b, u_input.c.x)), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 1u) >> (~vec3<u32>(47594u, ~u_input.c.x, _wgslsmith_div_u32(0u, u_input.b)) % vec3<u32>(32u)), firstLeadingBit(func_1()));
    let var_1 = _wgslsmith_f_op_f32(1141f * 1f);
    var var_2 = vec3<i32>(u_input.a.x, select(2147483647i, select(_wgslsmith_mod_i32(47852i, _wgslsmith_mult_i32(-1i, u_input.a.x)), ~(~u_input.d), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))), true), ~(~u_input.a.x));
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, var_1)))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~(-(~select(vec4<i32>(var_2.x, -27504i, var_2.x, -1i), vec4<i32>(u_input.a.x, 2147483647i, u_input.d, var_2.x), true))));
}

