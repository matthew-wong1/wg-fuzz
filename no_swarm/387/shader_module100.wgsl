struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.a;
    let var_1 = 107342u;
    let var_2 = true;
    global0 = array<Struct_1, 27>();
    var var_3 = Struct_1(arg_0.a, arg_0.b);
    return vec2<bool>(var_2, all(select(!select(vec2<bool>(var_2, true), vec2<bool>(false, false), var_2), vec2<bool>(true, var_2 || var_2), vec2<bool>(true, var_2 != true))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, select(any(func_3(global0[_wgslsmith_index_u32(~1u, 27u)])), (i32(-1i) * -53034i) >= arg_2.x, firstTrailingBit(arg_2.x) > 1i));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 27u)];
    global0 = array<Struct_1, 27>();
    return Struct_1(abs(~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-666f * var_1.b), _wgslsmith_f_op_f32(trunc(-1657f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(arg_2.x), u_input.a.x, 23456u, 51436u), u_input.a);
    let var_1 = arg_3;
    let var_2 = true;
    var_0 = vec4<u32>(min(firstTrailingBit(~(~38542u)), arg_2.x), 1u << (u_input.a.x % 32u), 0u, 43383u);
    global0 = array<Struct_1, 27>();
    return true;
}

fn func_1() -> f32 {
    let var_0 = vec4<bool>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, _wgslsmith_f_op_f32(167f + -484f), _wgslsmith_f_op_f32(-690f - 366f))), func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, 103f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1451f, 536f), vec2<f32>(-1000f, 209f))))), vec3<u32>(u_input.a.x, 50724u, ~34815u), firstTrailingBit(vec3<i32>(19530i, 1i, -13224i))), ~u_input.a.wy, Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f + -176f)))), all(vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), (_wgslsmith_f_op_f32(132f * _wgslsmith_f_op_f32(f32(-1f) * -562f)) < _wgslsmith_f_op_f32(round(-2456f))) || select(all(vec3<bool>(true, true, false)) & true, false, func_2(vec2<f32>(638f, 483f), u_input.a.yxx, vec3<i32>(1006i, 1i, 21875i)).b != _wgslsmith_f_op_f32(select(745f, -1000f, false))), (select(all(vec3<bool>(true, false, true)), false, u_input.a.x == u_input.a.x) && false) && any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -4201i), vec2<i32>(25415i, 27301i), vec2<i32>(-2147483647i, -2147483647i)) | vec2<i32>(1i, 1i))) << (1u % 32u);
    global0 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-366f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1346f)))));
    global0 = array<Struct_1, 27>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1853f - 1f) + -971f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-1728f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))), 789f, true)));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -1951f, 4294967295u);
}

