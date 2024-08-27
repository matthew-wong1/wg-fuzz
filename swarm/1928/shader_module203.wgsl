struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: u32) -> vec3<bool> {
    let var_0 = true;
    let var_1 = select(vec4<i32>(i32(-1i) * -2147483647i, abs(u_input.c), 27717i, -(i32(-1i) * -u_input.c)), ~arg_0, select(((false & var_0) | !var_0) || (all(vec2<bool>(var_0, var_0)) || true), select(var_0, var_0, select(var_0, true, any(vec3<bool>(var_0, false, false)))), false));
    var var_2 = -abs(countOneBits(reverseBits(var_1.zzz)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(466f)) - -365f))));
    var var_4 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -66820i, -2147483647i), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_2.x, 1i, -13834i)), -(~vec3<i32>(20193i, arg_1.x, arg_1.x))));
    return !vec3<bool>(var_0, true, var_0);
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    var var_0 = 44549u;
    var_0 = 1u;
    var_0 = max(~countOneBits(4294967295u) & _wgslsmith_clamp_u32(1u, ~arg_0.b >> (u_input.d % 32u), ~arg_0.b ^ arg_0.b), _wgslsmith_clamp_u32(_wgslsmith_div_u32(min(~0u, abs(arg_0.b)), _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(37988u, 4294967295u, u_input.d, arg_0.b))), 4294967295u, 0u));
    let var_1 = 1u;
    var var_2 = 59007u;
    return var_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)) * _wgslsmith_f_op_f32(-260f - _wgslsmith_f_op_f32(select(739f, 1000f, false)))) - 720f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(f32(-1f) * -472f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(946f, -1328f))))));
    var var_1 = Struct_1(arg_0.x, u_input.b, select(vec3<bool>(!(2818u == u_input.d), false, arg_1), func_2(vec4<i32>(u_input.c, u_input.b.x, countOneBits(-44708i), countOneBits(u_input.b.x)), vec2<i32>(29361i, -33886i), ~firstLeadingBit(u_input.d)), arg_1));
    let var_2 = Struct_4(1450f, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(6226u, 35957u), ~abs(u_input.d)));
    var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, 55836i, ~(u_input.c & -1i)), arg_0), ~(-vec2<i32>(_wgslsmith_mult_i32(arg_0.x, arg_0.x), arg_0.x)), !func_2(vec4<i32>(-1i) * -vec4<i32>(var_1.b.x, 12496i, -15764i, u_input.b.x), -u_input.b, ~var_2.b));
    var var_3 = Struct_3(arg_0, Struct_1(-u_input.c >> (34982u % 32u), abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, var_1.b), u_input.b, u_input.b)), !vec3<bool>(arg_1, true, true)), -abs(-arg_0.x));
    return Struct_4(1065f, min(32748u, func_3(Struct_4(321f, var_2.b), 586f)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = 47323u;
    var_0 = min(arg_2.a.x, 21428u);
    var var_1 = false;
    var_1 = true;
    var_1 = true;
    return vec4<u32>(~firstTrailingBit(_wgslsmith_mod_u32(arg_1, u_input.d & 4294967295u)), arg_0.b, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), firstTrailingBit(select((arg_0.b << (arg_2.a.x % 32u)) ^ arg_2.a.x, countOneBits(arg_0.b), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.c, ~1i) & (abs(1i) ^ ~_wgslsmith_clamp_i32(u_input.c, 0i, 25553i)), ~abs(u_input.c));
    let var_1 = Struct_2(func_4(func_1(~vec3<i32>(var_0.x, 39074i, var_0.x), true), 4294967295u, Struct_2(reverseBits(u_input.a))));
    let var_2 = !(true && all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))) && all(vec4<bool>(false, var_1.a.x >= ~27693u, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(22328i, u_input.b.x, -abs(var_0.x), var_0.x), -vec4<i32>(countOneBits(u_input.b.x), i32(-1i) * -69069i, var_0.x ^ var_0.x, var_0.x)));
}

