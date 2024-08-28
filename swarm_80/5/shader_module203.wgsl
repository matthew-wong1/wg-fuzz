struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(0u);

var<private> global1: vec3<f32> = vec3<f32>(-1005f, 890f, 1628f);

var<private> global2: array<vec4<bool>, 26>;

var<private> global3: u32 = 49278u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = select(u_input.a.x, global0[_wgslsmith_index_u32(13284u, 1u)], !(!all(vec2<bool>(true, true))));
    let var_1 = Struct_2(Struct_1(firstTrailingBit(0u), 50170u, u_input.c.x), 464f);
    return 289f;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(max(1u, 0u), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], arg_1.x, 36445u)), u_input.a.x), _wgslsmith_add_vec3_u32(u_input.d.zzy, u_input.d.wxy) << (arg_1.yww % vec3<u32>(32u))), arg_1.xww), ~_wgslsmith_add_vec3_u32(abs(~vec3<u32>(1u, 4294967295u, 52873u)), u_input.d.wwz));
    let var_1 = Struct_2(Struct_1(6508u << (_wgslsmith_add_u32(0u & var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(30260u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9816u, 1u)], 1u)], var_0.x), arg_1.ywz)) % 32u), arg_1.x, arg_2.a.x), 1436f);
    global3 = var_1.a.a;
    global2 = array<vec4<bool>, 26>();
    global0 = array<u32, 1>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.xyx) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(round(119f))))), global1.x, _wgslsmith_f_op_f32(select(839f, 154f, true))));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(func_2(~countOneBits(u_input.d.yyz))) < global1.x;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-175f, global1.x, 1000f)) + _wgslsmith_f_op_vec3_f32(func_3(u_input.c.x, u_input.d, Struct_3(vec4<i32>(2147483647i, 16748i, u_input.b, u_input.c.x), vec4<f32>(global1.x, -230f, global1.x, global1.x))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(global1.x + -189f), 1054f)))));
    global3 = global0[_wgslsmith_index_u32(4294967295u, 1u)] << (~((~global0[_wgslsmith_index_u32(u_input.a.x, 1u)] >> (24329u % 32u)) | ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36697u, 1u)], 1u)])) % 32u);
    global3 = 1u;
    return StorageBuffer(~countOneBits(22731u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = select(~(~(firstTrailingBit(vec4<u32>(46897u, u_input.d.x, u_input.a.x, 4294967295u)) >> (_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(51594u, 4294967295u, 57482u, 0u)) % vec4<u32>(32u)))), ~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 104807u, 39591u, 0u), vec4<u32>(1u, 0u, 0u, u_input.a.x)), u_input.a.x, _wgslsmith_add_u32(var_0.x, global0[_wgslsmith_index_u32(35951u, 1u)]), select(19698u, u_input.a.x, true)) >> (_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u, global0[_wgslsmith_index_u32(116665u, 1u)], 12704u)) % vec4<u32>(32u))), !all(vec4<bool>(u_input.a.x > var_0.x, true, -857f <= global1.x, false)));
    global2 = array<vec4<bool>, 26>();
    let x = u_input.a;
    s_output = func_1(true);
}

