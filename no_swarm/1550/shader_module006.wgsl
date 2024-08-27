struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec4<f32> = vec4<f32>(-421f, 1004f, -139f, -1198f);

var<private> global1: array<vec3<u32>, 14>;

var<private> global2: array<i32, 10> = array<i32, 10>(-1i, 7600i, 34431i, i32(-2147483648), i32(-2147483648), 1i, 2147483647i, 30346i, 53216i, -1i);

var<private> global3: vec4<f32> = vec4<f32>(-595f, 1414f, 781f, -545f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1950f, global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global3.x)), global3.x);
    var var_1 = _wgslsmith_add_vec2_u32(~(~(~select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(13631u, 21931u), vec2<bool>(false, true)))), ~vec2<u32>(33276u, 5814u));
    let var_2 = Struct_3(Struct_1(_wgslsmith_add_u32(u_input.a << (~43750u % 32u), u_input.a)), Struct_2(select(vec2<bool>(false, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), vec2<bool>(all(vec4<bool>(true, true, true, true)), select(false, true, false))), Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.a >> (4294967295u % 32u))), vec2<i32>(~global2[_wgslsmith_index_u32(~u_input.a, 10u)], global2[_wgslsmith_index_u32(~(~4294967295u), 10u)]), vec3<i32>(~_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(8921u, 10u)], -41296i, 18788i), abs(_wgslsmith_sub_i32(45536i, global2[_wgslsmith_index_u32(10095u, 10u)])), _wgslsmith_clamp_i32(0i, 45941i, global2[_wgslsmith_index_u32(0u, 10u)]) << ((var_1.x << (45803u % 32u)) % 32u))), Struct_1(u_input.a), select(~(~vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(var_1.x, 10u)], 40570i) << ((vec4<u32>(1u, var_1.x, 4294967295u, u_input.a) ^ vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u))), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], -1i, -14514i, global2[_wgslsmith_index_u32(var_1.x, 10u)]), vec4<i32>(2147483647i, -2147483647i, global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)])), -(~vec4<i32>(global2[_wgslsmith_index_u32(40792u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], 5485i, 33597i)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), !vec4<bool>(all(vec4<bool>(true, false, false, false)), false, true, any(vec4<bool>(false, false, true, true)))));
    global2 = array<i32, 10>();
    let var_3 = var_2.b.a.x;
    return vec2<u32>(min(0u, _wgslsmith_sub_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, var_2.c.a))), u_input.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> bool {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - global3.x))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 1120f)) - _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(690f)))));
    global2 = array<i32, 10>();
    let var_0 = _wgslsmith_div_vec2_u32(min(~(vec2<u32>(4294967295u, u_input.a) & vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.a, arg_1.b.b.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_1.b.b.a, arg_1.b.b.a)) | vec2<u32>(1u, 1u), vec2<u32>(~arg_1.a.a, 1223u)), func_3());
    let var_1 = vec4<bool>(arg_1.b.a.x, !all(vec4<bool>(false, arg_1.b.a.x, true, all(vec3<bool>(arg_1.b.a.x, arg_1.b.a.x, true)))), true, !all(arg_1.b.a));
    let var_2 = var_0;
    return false;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(Struct_1(abs(~(~u_input.a))), Struct_2(!vec2<bool>(true, func_2(vec3<i32>(99i, -46065i, global2[_wgslsmith_index_u32(u_input.a, 10u)]), Struct_3(Struct_1(u_input.a), Struct_2(vec2<bool>(true, false), Struct_1(64512u), vec2<i32>(0i, global2[_wgslsmith_index_u32(13315u, 10u)]), vec3<i32>(-2147483647i, 2147483647i, global2[_wgslsmith_index_u32(1u, 10u)])), Struct_1(0u), vec4<i32>(-29993i, global2[_wgslsmith_index_u32(4294967295u, 10u)], -6497i, global2[_wgslsmith_index_u32(u_input.a, 10u)])))), Struct_1(abs(~1u)), select(vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), 10u)], global2[_wgslsmith_index_u32(~u_input.a, 10u)]), abs(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], 2147483647i)), false), firstTrailingBit(~_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], -62608i, 0i), vec3<i32>(-2147483647i, -2147483647i, -2147483647i)))), Struct_1(0u), ~min(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], 21094i, -58783i, global2[_wgslsmith_index_u32(70319u, 10u)]) << (~vec4<u32>(38176u, 1u, 36689u, 0u) % vec4<u32>(32u)), vec4<i32>(2147483647i, 1i, -global2[_wgslsmith_index_u32(1u, 10u)], -global2[_wgslsmith_index_u32(18566u, 10u)])));
    let var_1 = firstLeadingBit(vec2<i32>(firstTrailingBit(~17085i | -var_0.d.x), max(-1i, max(~global2[_wgslsmith_index_u32(u_input.a, 10u)], 15836i))));
    global2 = array<i32, 10>();
    var var_2 = Struct_1(var_0.c.a);
    var_2 = Struct_1(~(~_wgslsmith_sub_u32(func_3().x, 54947u >> (var_2.a % 32u))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.x)))) * 255f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

