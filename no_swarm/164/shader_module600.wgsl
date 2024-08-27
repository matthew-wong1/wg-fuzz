struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(43448u), Struct_1(4294967295u), Struct_1(39776u), Struct_1(4993u), Struct_1(1u), Struct_1(4294967295u), Struct_1(67154u), Struct_1(4294967295u), Struct_1(6017u), Struct_1(41544u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(20206u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(48260u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u), Struct_1(0u), Struct_1(5412u), Struct_1(29885u), Struct_1(0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = arg_1;
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_1 = ~abs(13182u);
    let var_2 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), 45426u), _wgslsmith_sub_vec2_u32(u_input.b.xz, abs(~u_input.b.zx))), arg_0.b, 18u);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1450f))))), _wgslsmith_f_op_f32(abs(-790f)), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f - -570f)))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = vec2<f32>(-1229f, -366f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_2, Struct_3(arg_0.a.a, arg_2.b, 53689u), vec3<f32>(var_0.x, -845f, var_0.x))))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -379f, arg_2) * vec4<f32>(-813f, arg_2, -654f, -1000f)), vec4<f32>(-491f, arg_2, arg_2, arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1599f, arg_2, -735f)), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(1u)), true, Struct_3(69510u, arg_1.a, u_input.d))), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true))))));
    let var_1 = Struct_3(0u, Struct_1(arg_1.a.a), 75332u);
    var var_2 = Struct_2(arg_1.a);
    let var_3 = u_input.c << (max(~0u, ~var_1.b.a) % 32u);
    var var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(u_input.a), ~vec4<u32>(1u, arg_1.a.a, var_1.c, var_1.a)), vec4<u32>(0u, ~76381u | ~u_input.a.x, reverseBits(firstTrailingBit(u_input.a.x)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.a, 5980u), vec2<u32>(u_input.b.x, 66923u))))), var_2.a.a);
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_0 = func_1(min(~(~select(vec3<i32>(0i, -77214i, u_input.c), vec3<i32>(83473i, 1i, -1i), false)), vec3<i32>(firstTrailingBit(-1i), u_input.c, u_input.c)), Struct_2(Struct_1(18477u)), -1710f);
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(11293u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-599f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 285f)) - _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(1u)), true, Struct_3(59856u, global0[_wgslsmith_index_u32(var_0, 28u)], 4294967295u))).ww)))), ~u_input.d);
}

