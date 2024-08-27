struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-787f, 113f), vec2<f32>(-191f, -255f), vec2<f32>(-1000f, -670f), vec2<f32>(1442f, -375f), vec2<f32>(-911f, 927f), vec2<f32>(881f, 1194f), vec2<f32>(-519f, -2124f), vec2<f32>(788f, 1564f));

var<private> global1: array<bool, 22> = array<bool, 22>(false, false, true, false, true, false, true, true, true, true, false, true, true, true, false, false, true, false, true, false, true, false);

var<private> global2: array<f32, 23>;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-527f), Struct_1(456f), Struct_1(286f), Struct_1(-681f), Struct_1(-2310f), Struct_1(1151f), Struct_1(-648f), Struct_1(836f), Struct_1(-199f), Struct_1(-149f), Struct_1(1000f), Struct_1(-643f), Struct_1(-839f), Struct_1(-897f), Struct_1(-144f), Struct_1(515f), Struct_1(-201f), Struct_1(-508f), Struct_1(1000f), Struct_1(631f), Struct_1(637f), Struct_1(-1025f), Struct_1(-1640f), Struct_1(873f), Struct_1(-633f), Struct_1(1183f), Struct_1(1000f), Struct_1(1000f));

var<private> global4: u32 = 0u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f * 1025f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.a * 1000f), _wgslsmith_f_op_f32(-arg_2.a.a)))))));
    var var_1 = arg_3 | arg_3;
    global0 = array<vec2<f32>, 8>();
    global2 = array<f32, 23>();
    let var_2 = firstLeadingBit(~(~(~select(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(arg_1, 1u, u_input.c), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(45299u, 22u)])))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))) * arg_2.a.a), _wgslsmith_f_op_f32(-419f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * 156f) + -2197f)))) * _wgslsmith_f_op_f32(arg_2.a.a - _wgslsmith_f_op_f32(-arg_2.a.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(~u_input.a, 28u)]);
    global3 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1541f, 1010f, -710f), vec3<f32>(474f, var_0.a.a, 1000f)))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_3(var_0.a, 42921u, Struct_2(var_0.a), u_input.b.zw)), _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(-1761f - global2[_wgslsmith_index_u32(25541u, 23u)]))))));
    var var_2 = global1[_wgslsmith_index_u32(u_input.c, 22u)];
    global4 = _wgslsmith_sub_u32(abs(4294967295u) & u_input.a, ~u_input.c >> (firstLeadingBit(_wgslsmith_mod_u32(abs(9468u), u_input.a ^ 75599u)) % 32u));
    return var_0.a;
}

fn func_1() -> Struct_1 {
    global3 = array<Struct_1, 28>();
    let var_0 = func_2();
    global3 = array<Struct_1, 28>();
    let var_1 = !vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, 4294967295u, u_input.c) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, 1u, 17590u, u_input.a)), 23u)] > _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 23u)])), true);
    global1 = array<bool, 22>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(~1u), ~(~u_input.a)), 23u)]), _wgslsmith_f_op_f32(trunc(-1000f)));
    let var_1 = Struct_1(var_0.x);
    let var_2 = func_1();
    var var_3 = (firstTrailingBit(~u_input.a >> (64999u % 32u)) >> (1u % 32u)) <= _wgslsmith_add_u32(15217u, u_input.c);
    global2 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -968f, var_0.x) + vec4<f32>(var_0.x, var_2.a, 191f, 377f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], -1225f, var_2.a, 530f), vec4<f32>(-121f, var_1.a, var_0.x, var_2.a))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), 914f, var_1.a, _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a, Struct_2(var_1), vec2<i32>(-18005i, u_input.b.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_2.a, -1325f, var_0.x), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], 646f, -1014f, var_2.a)))))), -824f, -557f, _wgslsmith_div_i32(-(~u_input.b.x), ~u_input.b.x), 4644u);
}

