struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false));

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec4<bool>, 28>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = 43035i;
    let var_1 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a.x, ~u_input.a.x, firstLeadingBit(~u_input.a.x), 65790u)), (countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 19921u), vec4<u32>(0u, 1u, 1u, 16074u))) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 56381u, 1u, 1u), vec4<u32>(54514u, 0u, u_input.a.x, 12800u)), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u))) << (((~vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x) << (firstTrailingBit(vec4<u32>(u_input.a.x, 92260u, u_input.a.x, 13294u)) % vec4<u32>(32u))) << (vec4<u32>(0u, ~u_input.a.x, 63640u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> f32 {
    global0 = array<vec4<bool>, 14>();
    var var_0 = vec2<bool>(func_3(global1[_wgslsmith_index_u32(~(~(~0u)), 31u)]), false);
    var var_1 = var_0.x;
    return _wgslsmith_f_op_f32(sign(1525f));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_f_op_f32(floor(-1062f));
    let var_1 = Struct_1(false);
    var var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(-1161f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(546f, -1320f, -1165f))), vec2<f32>(-1000f, 205f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)))))));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global3[_wgslsmith_index_u32(~(~u_input.a.x), 11u)]);
    global3 = array<Struct_1, 11>();
    let var_1 = Struct_1((firstLeadingBit(reverseBits(u_input.a.x)) ^ _wgslsmith_mult_u32(u_input.a.x, reverseBits(u_input.a.x))) < ~_wgslsmith_mult_u32(0u, 55894u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(14972i, 15830i, ~reverseBits(u_input.b), abs(u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(837f)), _wgslsmith_f_op_f32(f32(-1f) * -1786f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, 336f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1051f, 870f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1858f, 1474f, -228f) * vec4<f32>(166f, 267f, -1000f, 648f))))));
}

