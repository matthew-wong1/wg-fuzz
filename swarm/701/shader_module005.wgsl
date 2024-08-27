struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: array<i32, 20> = array<i32, 20>(i32(-2147483648), -40848i, -956i, i32(-2147483648), -18562i, -56368i, 54845i, i32(-2147483648), 0i, 2147483647i, 52523i, 375i, 74030i, -1i, -27112i, 2147483647i, -1i, 0i, 15258i, 72606i);

var<private> global2: array<Struct_2, 32>;

var<private> global3: Struct_1 = Struct_1(0i, -1000f, vec3<f32>(-544f, -357f, -1223f));

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), -126f, vec3<f32>(-1382f, -454f, -309f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~0u, 32u)];
    var var_1 = -1i;
    return 53415u;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = global3.c.yz;
    var var_1 = Struct_2(arg_2.zx, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-573f, global4.b, var_0.x, -331f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.c.x, -427f, -526f, -1312f))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b, arg_0.b, 744f, var_0.x)))))))), arg_0, max(24317u, ~abs(func_1())));
    global2 = array<Struct_2, 32>();
    global1 = array<i32, 20>();
    global3 = arg_0;
    return -vec3<i32>(u_input.b, -12517i, 8207i);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = global3.c.x;
    global3 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, u_input.c, global3.a), abs(func_3(Struct_1(-2147483647i, global4.c.x, global4.c), arg_0, vec3<bool>(false, true, false))) >> (vec3<u32>(arg_0, arg_0 >> (u_input.d % 32u), 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.c.x))), global3.c.x)), vec3<f32>(_wgslsmith_f_op_f32(325f - global3.b), _wgslsmith_f_op_f32(global3.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.c.x)))), -1219f));
    let var_1 = global2[_wgslsmith_index_u32(4059u, 32u)];
    var var_2 = 739f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(round(-1453f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f + global3.c.x) * 1000f)), var_1.b.x)));
    return min(var_1.d, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 26>();
    var var_0 = reverseBits(u_input.d & func_2(func_1()));
    var var_1 = ~(~(~u_input.d));
    var var_2 = Struct_1(global4.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.c.x)))), -602f)), global4.c);
    var_1 = ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~(~u_input.d), 4294967295u), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u), vec4<u32>(u_input.d, 1u, 1u, 60335u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~41477u), vec2<f32>(var_2.b, 833f), firstLeadingBit(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(var_2.a, -16015i), -2579i)));
}

