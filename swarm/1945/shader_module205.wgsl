struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -647f;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<vec2<f32>, 26>;

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global3 = array<vec2<f32>, 26>();
    let var_0 = Struct_1(any(arg_0.b.xy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1281f, _wgslsmith_f_op_f32(-arg_0.a.b))))), arg_1.b));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-204f)));
    global0 = arg_1.b;
    global4 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(floor(arg_1.b))), 566f) - arg_0.a.b));
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    global4 = false;
    let var_0 = Struct_2(Struct_1(global1.a, -429f), !(!vec3<bool>(global1.a, global1.a, true)), select((vec3<u32>(u_input.a, 4294967295u, 4294967295u) | vec3<u32>(u_input.a, 0u, u_input.a)) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 53006u), vec3<u32>(u_input.a, 4294967295u, 61672u) ^ vec3<u32>(u_input.a, u_input.a, 20705u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(56083u, 62126u), firstTrailingBit(u_input.a), u_input.a), true), u_input.a);
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - -1000f)));
    let var_3 = var_0.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1000f, 379f, -676f) * vec4<f32>(688f, -243f, var_3.b, var_3.b)))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.b), var_0.a.b, -133f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false, -109f), var_0.b, vec3<u32>(1u, 36179u, var_0.c.x), var_0.c.x), var_3))))))) - vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), var_0.a.b, 274f, var_3.b));
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = global1.a;
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(floor(arg_0.a.b));
    global1 = arg_0.a;
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.d, arg_0.c.x, u_input.a), arg_0.d, _wgslsmith_sub_u32(35259u, abs(min(5259u, arg_0.c.x)))), 16u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-592f, -2361f, 1000f, global1.b))), _wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(-386f, arg_0.a.b, global1.b))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-181f, global1.b, arg_0.a.b, var_3.a.b) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, -334f, var_3.a.b, var_2))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a) << (1u % 32u), 16u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 204f, global1.b, -437f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b, 1643f, global1.b, global1.b), vec4<f32>(global1.b, global1.b, global1.b, 522f), global1.a))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(u_input.a, 16u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, 381f, 2029f, -934f)))))));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(min(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a)), 16u)];
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_0.yxy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(var_1.c, vec3<u32>(0u, 13889u, 36024u)), firstLeadingBit(-u_input.c.x), var_1.c.xz, countOneBits(~vec4<u32>(var_1.c.x, 74066u << (0u % 32u), _wgslsmith_mult_u32(u_input.a, 90514u), select(4294967295u, u_input.a, false))));
}

