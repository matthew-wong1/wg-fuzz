struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = arg_0.a.x;
    let var_1 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), true && (arg_2.a.x >= arg_2.a.x)));
    var var_2 = Struct_1(arg_0.c.a, countOneBits(arg_2.a.x), u_input.b << (firstTrailingBit(firstLeadingBit(arg_1.yw)) % vec2<u32>(32u)));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), var_2.a.x, -1045f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) * _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-948f)))), var_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_2.a.x)))))), reverseBits(_wgslsmith_div_i32(1877i, min(var_2.b, ~1i))), ~arg_0.a.xy);
    var_2 = arg_0.c;
    return -firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.b.x, -1i), 25145i), var_2.b));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = -abs(vec4<i32>(func_3(Struct_4(vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, 4294967295u), vec3<i32>(2147483647i, -2147483647i, 0i), Struct_1(vec4<f32>(-1307f, arg_0, arg_0, -1678f), 50859i, u_input.a)), ~vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.a.x), Struct_3(vec2<i32>(1i, -1i))), 1i, reverseBits(-66367i), ~1i));
    var var_1 = ~57386u;
    var_1 = _wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    var_1 = 4294967295u;
    var_1 = 6774u;
    return vec2<u32>(1u, _wgslsmith_mod_u32(26980u, ~(~u_input.b.x ^ u_input.b.x)));
}

fn func_1() -> f32 {
    let var_0 = ~5059u & u_input.b.x;
    let var_1 = min(vec2<u32>(25319u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_mult_u32(1u, 20091u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, var_0, var_0), vec4<u32>(4004u, 42078u, 1u, var_0)), 40936u), select(vec4<u32>(30027u, var_0, 20501u, 22673u), ~vec4<u32>(u_input.a.x, 10256u, 1u, var_0), vec4<bool>(false, false, false, false)))), _wgslsmith_sub_vec2_u32(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(849f + 295f)))), max(u_input.b, ~(~u_input.a))));
    var var_2 = 1i ^ _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-28472i, -30532i, 29907i), vec3<i32>(-2310i, -11254i, 3451i)))), abs(~_wgslsmith_div_i32(29658i, -1i)));
    let var_3 = ~_wgslsmith_clamp_vec3_i32(-min(-vec3<i32>(-611i, 18651i, 2147483647i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(0i, -1642i, -20897i), vec3<i32>(-57073i, 1i, 23148i) << (vec3<u32>(1u, 1u, var_0) % vec3<u32>(32u)))), -firstLeadingBit(select(vec3<i32>(-45183i, 31366i, -20156i), vec3<i32>(-19771i, 61395i, -11280i), vec3<bool>(false, false, true))));
    var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, -1i), _wgslsmith_div_i32(~(-var_3.x), -(var_3.x & abs(30458i))));
    return _wgslsmith_f_op_f32(step(-1305f, -1450f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~0u) ^ ((1u << (u_input.a.x % 32u)) & u_input.b.x), ~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(183f * 701f)))) * -1132f));
}

