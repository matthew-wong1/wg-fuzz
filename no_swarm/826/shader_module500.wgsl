struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37168u;

var<private> global1: array<u32, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    var var_0 = select(-46761i, 1i, all(vec2<bool>(true, true)) || !(!any(vec2<bool>(false, true))));
    var var_1 = ~0i;
    var var_2 = vec4<u32>(~reverseBits(~global1[_wgslsmith_index_u32(4294967295u, 16u)]), 1u, abs(38634u), global1[_wgslsmith_index_u32(~u_input.c.x, 16u)]) ^ firstLeadingBit(u_input.b);
    return reverseBits(~(~(u_input.c.x ^ 1u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec4<u32> {
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    let var_0 = -14947i;
    var var_1 = Struct_3(1500u | (~4294967295u << (~global1[_wgslsmith_index_u32(65311u, 16u)] % 32u)), Struct_1(362f, ~arg_0.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(584f)), -1575f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-601f, _wgslsmith_f_op_f32(f32(-1f) * -1024f)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(arg_1, 16u)] >= 4294967295u), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), vec3<bool>(!all(vec3<bool>(true, false, true)), select(true, true, true) != all(vec3<bool>(true, false, false)), false)));
    return ~(~(u_input.b << (~vec4<u32>(arg_0.x, arg_1, u_input.d, global1[_wgslsmith_index_u32(arg_0.x, 16u)]) % vec4<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    global1 = array<u32, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1023f)) - 584f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) + -369f), _wgslsmith_f_op_f32(-222f - _wgslsmith_f_op_f32(ceil(1916f)))))));
    let var_1 = u_input.e.xw;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(260f)) * var_0.x), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 3172f) - _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(step(-1540f, var_0.x)));
    global1 = array<u32, 16>();
    return firstTrailingBit(_wgslsmith_mult_i32(countOneBits(~66547i), _wgslsmith_div_i32(2784i >> (arg_1.x % 32u), ~10049i))) ^ 1i;
}

fn func_1() -> f32 {
    global0 = 3301u;
    global0 = ~42026u;
    var var_0 = ~(~countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -10741i, 1i, 0i), vec4<i32>(-10141i, -2147483647i, 1i, -68492i))));
    global1 = array<u32, 16>();
    var_0 = func_4(~func_2(), max(func_3(abs(u_input.e.zxw), 4294967295u), vec4<u32>(u_input.b.x, 2587u, 4294967295u, 108949u | global1[_wgslsmith_index_u32(1u, 16u)]))) >> ((1u | (u_input.c.x << (11358u % 32u))) % 32u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f) * -364f))), -2055f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, _wgslsmith_mod_u32(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 16u)]) & ~15451u, 10414u)), select(~_wgslsmith_mod_u32(u_input.c.x, ~global1[_wgslsmith_index_u32(38324u, 16u)]), ~_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(15396u, u_input.c.x, 58992u, 0u)), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_1()), global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.zzw, vec3<u32>(52944u, 34229u, var_0))), 16u)] & abs(~global1[_wgslsmith_index_u32(~u_input.d, 16u)]), select(select(vec4<bool>(true, true, 0u == global1[_wgslsmith_index_u32(23516u, 16u)], true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), false), -505f);
    let var_2 = false & var_1.c.x;
    global1 = array<u32, 16>();
    var var_3 = Struct_2(~countOneBits(vec4<u32>(1u, _wgslsmith_div_u32(1u, 44291u), 4294967295u, 1u)), var_1, var_1.c.ww);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~max(_wgslsmith_sub_vec3_i32(vec3<i32>(26897i, 2147483647i, 0i), vec3<i32>(2147483647i, 29947i, 30523i)), -vec3<i32>(1i, 70732i, -16198i))), ~(firstTrailingBit(~var_3.a) << (max(vec4<u32>(36206u, u_input.d, 70505u, global1[_wgslsmith_index_u32(u_input.e.x, 16u)]), vec4<u32>(u_input.a.x, var_3.b.b, 43262u, 5187u)) % vec4<u32>(32u))), var_3.b.a);
}

