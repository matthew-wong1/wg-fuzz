struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> u32 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(972f * -528f) * arg_3), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -1076f) - _wgslsmith_f_op_f32(arg_3 + arg_3))), -501f), Struct_1((vec3<i32>(1i, 0i, 41981i) ^ ~arg_0) ^ _wgslsmith_mod_vec3_i32(~arg_2.b.a, _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.b.a.x, 72126i, arg_2.a.a.x), vec3<i32>(u_input.b.x, 34773i, u_input.b.x)))));
    var var_2 = ~vec2<i32>(-_wgslsmith_div_i32(arg_2.b.a.x, arg_2.b.a.x), -1i) ^ arg_2.b.a.xz;
    var_0 = arg_0.x;
    return 4554u & u_input.a.x;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(vec3<i32>(arg_1.a.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), 2147483647i));
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32(u_input.b.yz, vec2<i32>(arg_1.a.x, _wgslsmith_div_i32(17035i >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)))), !(u_input.a.x != 1u), var_0.a);
    var var_2 = Struct_3(Struct_2(_wgslsmith_mult_vec2_i32(arg_1.a.yx, arg_1.a.yx), !any(vec3<bool>(var_1.b, false, var_1.b)), abs(vec3<i32>(reverseBits(0i), firstTrailingBit(-35204i), ~0i))), _wgslsmith_f_op_f32(-arg_0));
    var var_3 = u_input.a;
    var_2 = Struct_3(Struct_2(var_1.c.zx, false, vec3<i32>(-71883i, min(var_2.a.c.x, -78528i), var_2.a.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - 162f)))));
    return _wgslsmith_div_u32(u_input.a.x, ~var_3.x);
}

fn func_1() -> StorageBuffer {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, u_input.a.x, 47109u) << (~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, firstTrailingBit(u_input.a.x), func_2(select(u_input.b.zyz, u_input.b.xyz, true), max(u_input.a.x, u_input.a.x), Struct_4(Struct_1(u_input.b.xzz), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), 1146f)));
    var_0 = ~(~(~func_3(_wgslsmith_f_op_f32(floor(-465f)), Struct_1(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)))));
    let var_1 = ~u_input.a.x;
    let var_2 = -vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xyw, -(~u_input.b.xzw)), -2147483647i);
    let var_3 = vec4<bool>(!(select(true, true, u_input.b.x == -67836i) && true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2225f)))) * 1010f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f + _wgslsmith_f_op_f32(f32(-1f) * -307f))), any(vec2<bool>(true, true)), all(select(vec3<bool>(true, 30331u >= var_1, true), vec3<bool>(true, false, true), all(vec2<bool>(false, false)))));
    return StorageBuffer(~var_2, _wgslsmith_add_vec3_u32(~max(vec3<u32>(u_input.a.x, var_1, var_1), ~vec3<u32>(u_input.a.x, 0u, 4294967295u)), ~reverseBits(~vec3<u32>(u_input.a.x, 6157u, var_1))), u_input.b.x, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

