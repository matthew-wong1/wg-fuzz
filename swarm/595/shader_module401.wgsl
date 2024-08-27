struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: Struct_2;

var<private> global1: array<u32, 10>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(firstLeadingBit(vec2<u32>(arg_0.c.x, 22957u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-424f)) - 396f), var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(907f - 1029f), _wgslsmith_f_op_f32(select(1119f, var_0.d.a.x, false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.a.x, 114f) * _wgslsmith_f_op_vec2_f32(select(arg_0.d.a, global0.d.a, true))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.d.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.d.a))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(614f, arg_1.x)))))));
    let var_3 = 2147483647i;
    return _wgslsmith_mult_u32(~0u, global0.a.x >> (11010u % 32u));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    global1 = array<u32, 10>();
    let var_0 = -2147483647i;
    global0 = Struct_2(~vec2<u32>(func_3(Struct_2(global0.a, global0.b, global0.c, global0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a.x, -729f, 136f)), -u_input.a.x, countOneBits(u_input.b)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), global0.a), 9417u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1066f))), global0.c, global0.d);
    var var_1 = var_0;
    let var_2 = false;
    return global0.d.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    global0 = Struct_2(vec2<u32>(firstTrailingBit(~global0.a.x), ~global1[_wgslsmith_index_u32(global0.a.x >> (~u_input.b % 32u), 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f * arg_1.x))), countOneBits(global0.c), Struct_1(arg_0.a));
    global1 = array<u32, 10>();
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.ww, arg_1.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(438f, arg_1.x)))));
    let var_1 = arg_1.x;
    let var_2 = firstTrailingBit(-max(-u_input.a.wy, u_input.a.yx));
    return Struct_2(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(global0.c), vec4<u32>(40576u, 0u, global0.a.x, u_input.b)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~global0.c.xz), 10u)])), global0.d.a.x, select(_wgslsmith_add_vec4_u32(global0.c | global0.c, vec4<u32>(global0.a.x, 4294967295u, global0.a.x, 1u)), (vec4<u32>(4294967295u, 4294967295u, u_input.b, 34956u) & vec4<u32>(4294967295u, 1u, 1u, u_input.b)) << (firstLeadingBit(vec4<u32>(u_input.b, 8407u, 27057u, 0u)) % vec4<u32>(32u)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))) | global0.c, arg_0);
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_2(u_input.a.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-464f, global0.d.a.x, -854f, 1000f), vec4<f32>(global0.b, 368f, -479f, -1167f), vec4<bool>(arg_0, false, arg_0, arg_0))) + vec4<f32>(1409f, global0.b, global0.d.a.x, -1944f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, -720f, -742f, 2761f)), vec4<f32>(global0.d.a.x, global0.d.a.x, -607f, 542f))))));
    var var_0 = Struct_2(countOneBits(vec2<u32>(1u, ~abs(u_input.b))), -893f, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(global1[_wgslsmith_index_u32(6474u, 10u)], 6808u, global1[_wgslsmith_index_u32(u_input.b, 10u)], u_input.b), ~global0.c), vec4<u32>(global1[_wgslsmith_index_u32(2852u, 10u)], global0.c.x, 22921u, 48902u)), global0.c), global0.d);
    var var_1 = !select(!select(vec4<bool>(true, false, arg_0, true), vec4<bool>(true, true, true, true), var_0.b < var_0.d.a.x), !select(!vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, false, true, arg_0)), !select(!vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, arg_0, false, arg_0), select(vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, arg_0, arg_0), arg_0)));
    var var_2 = u_input.a.xzy;
    var var_3 = (-vec3<i32>(~11296i, var_2.x, i32(-1i) * -1i) ^ vec3<i32>(-1i, ~reverseBits(3557i), 79415i)) | vec3<i32>(i32(-1i) * -62879i, -1i, 2147483647i);
    return StorageBuffer(global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zx;
    let x = u_input.a;
    s_output = func_1(true);
}

