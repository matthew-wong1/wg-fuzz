struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<u32>(10225u, 4294967295u)), Struct_1(vec2<u32>(11133u, 1u)), Struct_1(vec2<u32>(0u, 8694u)), Struct_1(vec2<u32>(59171u, 0u)), Struct_1(vec2<u32>(20434u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 23017u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(14938u, 1u)));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(30782u, 0u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(global3.a.x, 28u)];
    return !(!(true || (_wgslsmith_add_u32(global3.a.x, global3.a.x) != ~global3.a.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(543f))) * _wgslsmith_f_op_f32(-192f * _wgslsmith_f_op_f32(min(-1079f, 195f))))));
    global0 = array<Struct_1, 9>();
    var var_1 = global2[_wgslsmith_index_u32(0u, 28u)];
    let var_2 = global0[_wgslsmith_index_u32(arg_1.a.x, 9u)];
    let var_3 = !func_3(u_input.e.x);
    return Struct_1(_wgslsmith_add_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, 29062u), vec2<u32>(13727u, u_input.d))), _wgslsmith_clamp_vec2_u32(var_1.a, ~global3.a, vec2<u32>(firstLeadingBit(0u), 70595u))));
}

fn func_1(arg_0: bool) -> u32 {
    global1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global3.a, vec2<u32>(global3.a.x, u_input.a.x)), global1.x), 4294967295u);
    let var_0 = func_2(4294967295u, global0[_wgslsmith_index_u32(77855u, 9u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f + 836f))) * _wgslsmith_f_op_f32(f32(-1f) * -1566f)));
    var var_2 = func_2(~(~select(_wgslsmith_mod_u32(global3.a.x, 6552u), u_input.b.x ^ var_0.a.x, arg_0)), func_2(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.a.x, 11350u, 0u, global3.a.x)), vec4<u32>(u_input.a.x, 4294967295u, global3.a.x, 4294967295u)) & ~(~6784u), Struct_1(min(vec2<u32>(1u, 1u), vec2<u32>(u_input.b.x, global1.x))))).a.x;
    let var_3 = func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(4640u), abs(global1.x), ~global1.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) << (~vec4<u32>(4294967295u, 1u, global1.x, var_0.a.x) % vec4<u32>(32u)), vec4<u32>(func_2(min(4294967295u, 0u), var_0).a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, var_0.a.x), 4294967295u), global1.x, 4294967295u)), var_0);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 28>();
    var var_0 = global2[_wgslsmith_index_u32(10464u, 28u)];
    var var_1 = global2[_wgslsmith_index_u32(1u, 28u)];
    var var_2 = u_input.e.zx;
    let var_3 = ~(~11574u) & _wgslsmith_mod_u32(func_1(true != (u_input.b.x < global1.x)), var_0.a.x);
    var var_4 = global2[_wgslsmith_index_u32(1u, 28u)];
    let var_5 = global0[_wgslsmith_index_u32(~36137u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-248f, -178f, -482f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, -621f, -1088f))))), _wgslsmith_f_op_f32(-282f * _wgslsmith_f_op_f32(f32(-1f) * -321f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-775f, 533f))))))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(36273u, _wgslsmith_mult_u32(min(var_3, 0u), var_1.a.x)), 4294967295u, _wgslsmith_clamp_u32(73456u, global1.x >> (_wgslsmith_clamp_u32(var_3, 1u, 1u) % 32u), ~42603u)));
}

