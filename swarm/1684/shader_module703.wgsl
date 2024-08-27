struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-8714i, i32(-2147483648), 13757i), vec3<i32>(33080i, 43732i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 42136i, -20967i), vec3<i32>(0i, -49742i, -39926i), vec3<i32>(64254i, 1i, 24541i), vec3<i32>(47028i, 2147483647i, 0i), vec3<i32>(-34104i, -28592i, 1i), vec3<i32>(-24927i, -11545i, 0i), vec3<i32>(24123i, i32(-2147483648), -30957i), vec3<i32>(i32(-2147483648), 15693i, 0i), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 9555i), vec3<i32>(31653i, -12272i, -12918i), vec3<i32>(0i, -36187i, 0i), vec3<i32>(-32962i, i32(-2147483648), -11703i), vec3<i32>(-5959i, 67972i, -1i), vec3<i32>(2147483647i, 47977i, -1i), vec3<i32>(0i, -7468i, 0i), vec3<i32>(1i, 1i, 27449i), vec3<i32>(51489i, 10862i, -1939i), vec3<i32>(2147483647i, 13833i, 6272i));

var<private> global3: array<vec4<bool>, 2>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = 1i;
    let var_1 = vec3<u32>(firstLeadingBit(countOneBits(~(~arg_0.x))), (~arg_0.x & firstTrailingBit(1u)) | 1764u, ~u_input.e);
    global1 = array<Struct_1, 3>();
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_0.zxz, u_input.c, var_1), u_input.c), 1u, reverseBits(~(~45776u)), 23744u));
    let var_3 = global1[_wgslsmith_index_u32(u_input.a, 3u)];
    return true;
}

fn func_3() -> vec4<u32> {
    return ~countOneBits(abs(~vec4<u32>(u_input.a, 9669u, u_input.e, u_input.e)) ^ vec4<u32>(10219u, 1u, u_input.d.x, u_input.b));
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1049f + _wgslsmith_f_op_f32(f32(-1f) * -2373f)))) - -1515f);
    global2 = array<vec3<i32>, 21>();
    let var_1 = global1[_wgslsmith_index_u32(arg_0, 3u)];
    global0 = !vec3<bool>(global0.x, _wgslsmith_mult_i32(min(-9907i, var_1.b.x), -27893i) < -var_1.b.x, func_2(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, 68514u, arg_0, 56659u), vec4<u32>(arg_0, 28274u, 4035u, var_1.c)), vec4<u32>(6243u, 4294967295u, u_input.c.x, var_1.c) << (vec4<u32>(var_1.c, 82145u, var_1.c, 22401u) % vec4<u32>(32u)), vec4<bool>(true, global0.x, global0.x, false))));
    global3 = array<vec4<bool>, 2>();
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(5051u);
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 0i, -2147483647i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-29188i, 2147483647i, 0i, -4279i), vec4<i32>(34514i, 18218i, -62476i, 1i), vec4<i32>(-3179i, 51976i, 621i, -1i))) | max(-(i32(-1i) * -2147483647i), -7505i), vec3<i32>(firstTrailingBit(~1i), -74314i << (~_wgslsmith_mult_u32(var_0.x, 4294967295u) % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-5456i, -1i), select(vec2<i32>(-1i, 0i), vec2<i32>(1i, 1i), global0.x))), var_0.x, vec4<i32>(-1i) * -firstLeadingBit(select(vec4<i32>(-21370i, 37819i, 0i, -6045i), vec4<i32>(-1i, -2147483647i, 2147483647i, 539i), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -(~abs(0i)));
}

