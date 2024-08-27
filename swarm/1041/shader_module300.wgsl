struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: bool;

var<private> global2: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = -arg_0.a.yx;
    var var_1 = arg_3.a;
    var var_2 = arg_0;
    var var_3 = -_wgslsmith_add_i32(~(-14496i), -reverseBits(max(959i, -2147483647i)));
    var_2 = Struct_4((vec3<i32>(-1i) * -firstLeadingBit(var_2.a)) << (~(~vec3<u32>(642u, arg_3.c.c, u_input.c)) % vec3<u32>(32u)));
    return var_1.a.wx;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<u32>) -> vec3<u32> {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_1, Struct_3(arg_2.a.a, vec4<f32>(940f, arg_2.c.a.x, -694f, arg_2.c.a.x)), u_input.d >> (arg_3.x % 32u), Struct_2(global0[_wgslsmith_index_u32(arg_2.a.c, 20u)], arg_2.b, Struct_1(vec4<f32>(-192f, 1199f, arg_2.a.a.x, arg_2.c.a.x), arg_1.a.x, 0u), 1i, arg_2.e))) * vec2<f32>(_wgslsmith_f_op_f32(step(817f, arg_2.c.a.x)), _wgslsmith_f_op_f32(sign(arg_2.c.a.x)))))));
    var var_1 = arg_2.c;
    let var_2 = Struct_4(~firstLeadingBit(u_input.b));
    return abs(vec3<u32>(_wgslsmith_mult_u32(arg_3.x, 1u), _wgslsmith_dot_vec4_u32(~(~arg_3), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, arg_2.c.c, arg_2.c.c), arg_3)), ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 17992u), arg_3.ww))));
}

fn func_1() -> u32 {
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(reverseBits(_wgslsmith_clamp_vec3_u32(func_2(vec3<bool>(true, true, true), Struct_4(u_input.b), Struct_2(Struct_1(vec4<f32>(-1751f, -130f, -794f, 664f), global2.x, u_input.c), u_input.b, Struct_1(vec4<f32>(-706f, 385f, -1872f, 1590f), u_input.a, u_input.c), u_input.a, vec4<bool>(true, true, false, true)), vec4<u32>(u_input.c, 1u, 70284u, 18394u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(u_input.c, 0u, u_input.c)), vec3<u32>(4294967295u, u_input.c, u_input.c)))), firstTrailingBit(~(~vec3<u32>(1u, 19627u, u_input.c) >> (reverseBits(vec3<u32>(u_input.c, 26854u, 9546u)) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_1(), 20u)];
    global2 = u_input.b;
    var var_1 = reverseBits(14675u);
    var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 20u)];
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1710f), var_0.a))))), reverseBits(var_0.b), ~u_input.c | 32677u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(vec4<u32>(var_0.c, u_input.c, u_input.c, 47654u), vec4<u32>(27814u, 63713u, u_input.c, var_0.c), true))), firstTrailingBit(u_input.b.zy));
}

