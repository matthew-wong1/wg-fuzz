struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 283f;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0u), Struct_1(21813u), Struct_1(1u), Struct_1(8551u), Struct_1(11767u), Struct_1(0u), Struct_1(58802u), Struct_1(38286u), Struct_1(32107u), Struct_1(8015u), Struct_1(21690u), Struct_1(4294967295u), Struct_1(27643u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(101288u), Struct_1(12951u), Struct_1(14508u));

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> f32 {
    global3 = array<Struct_1, 19>();
    let var_0 = 104f;
    global4 = vec2<f32>(-387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, -513f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(var_0 - global4.x)))));
    var var_1 = (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, 346u)), ~u_input.c.yy), firstLeadingBit(u_input.c.x)) | u_input.c.x) == ~max(1u, ~(~0u));
    var_1 = -u_input.a.x >= -(~u_input.d.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.x)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<i32> {
    global3 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_1, arg_0, Struct_1(16974u), global4.x >= 1108f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * -740f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2799f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, global4.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-1527f - arg_0))))));
    let var_2 = ~u_input.a.x;
    var var_3 = _wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.yz) < 1u;
    return vec3<i32>(~u_input.b, reverseBits(38408i), ~(-36033i));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    let var_0 = abs(~_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(14538u, global2.a, 1u), vec3<u32>(u_input.c.x, global0.a, 19369u)), u_input.c));
    var var_1 = -587f;
    global3 = array<Struct_1, 19>();
    var var_2 = 1i << (abs(~(~var_0.x ^ (u_input.c.x ^ global2.a))) % 32u);
    global2 = Struct_1(global0.a >> (_wgslsmith_div_u32(global0.a, ~(~43167u)) % 32u));
    return -max(max(u_input.a, ~u_input.d.zzw), func_2(-216f, Struct_1(1u)));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1754f)), _wgslsmith_f_op_f32(func_3(Struct_1(1825u), arg_0, Struct_1(global0.a), false)))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.x)) + -811f)))));
    return global3[_wgslsmith_index_u32(global2.a, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<f32>(-544f, global4.x);
    var var_0 = func_4(global4.x, func_1(select(~19478u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a, 0u, 46065u), vec4<u32>(global2.a, u_input.c.x, 1u, global0.a)) % 32u), global2.a, false)), global2.a);
    var_0 = global3[_wgslsmith_index_u32(~min(75644u, global0.a), 19u)];
    var var_1 = _wgslsmith_add_i32(firstTrailingBit(-(~3493i)), max(u_input.a.x, 47977i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(428f)));
    var_1 = u_input.b ^ ~48889i;
    global3 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(1i & u_input.d.x, vec4<u32>(func_4(global4.x, u_input.d.zxw, var_0.a).a, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_div_u32(var_0.a, firstTrailingBit(global0.a & 12740u)), firstTrailingBit(firstLeadingBit(~32850u))), u_input.d.xxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1397f, global4.x)) * global4.x));
}

