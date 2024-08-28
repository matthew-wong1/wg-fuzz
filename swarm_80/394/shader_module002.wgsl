struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: Struct_2;

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global2 = -firstLeadingBit(-(~u_input.a));
    var var_0 = global1.a;
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a, _wgslsmith_clamp_u32(countOneBits(abs(1u)), 1u, select(_wgslsmith_add_u32(87169u, 36654u), 1u, true) ^ select(39420u, 1u, true))), 16u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(exp2(global1.c.a)), -259f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, -2369f, global1.d.x))))))));
    global0 = array<Struct_2, 16>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(855f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.e.a, global1.e.a)), _wgslsmith_f_op_f32(abs(854f)), true))))), global1.b));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(global1.e.a * _wgslsmith_f_op_f32(func_3()));
    var var_1 = 0i;
    global1 = Struct_2(4294967295u, 218f, global1.e, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -414f))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(func_3()))), global1.c);
    global0 = array<Struct_2, 16>();
    global2 = firstTrailingBit(arg_0) ^ (arg_0 & abs(u_input.c.x));
    return vec2<f32>(600f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(-global1.b))), var_0)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(-45482i)));
    let var_1 = ~min(u_input.e, reverseBits(global1.a));
    global1 = Struct_2(_wgslsmith_add_u32(arg_0.c.x, firstLeadingBit(~14723u & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 80987u, global1.a, u_input.e), vec4<u32>(0u, 0u, 0u, 4621u)))), var_0.x, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.a * arg_0.b.a)))))), _wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(arg_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -361f)), !select(!arg_1.yy, vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, arg_1.x)))), Struct_1(arg_0.b.a));
    let var_2 = 0u;
    global0 = array<Struct_2, 16>();
    return false & arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-761f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) - var_0.a), global1.c.a)), reverseBits(vec2<u32>(~5560u, _wgslsmith_div_u32(1u, u_input.e)) | vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 65304u), vec2<u32>(global1.a, global1.a)), u_input.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1480f, _wgslsmith_f_op_f32(select(-807f, _wgslsmith_f_op_f32(var_0.a - global1.c.a), func_1(Struct_3(vec3<i32>(4873i, -11917i, 2147483647i), Struct_1(global1.e.a), vec3<u32>(82585u, 15068u, u_input.e)), vec4<bool>(false, true, false, false)))), var_0.a, global1.e.a)), _wgslsmith_f_op_vec2_f32(round(global1.d)), 38679i);
}

