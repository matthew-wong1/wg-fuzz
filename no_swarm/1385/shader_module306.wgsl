struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    return all(arg_1.b);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = countOneBits(reverseBits(-(~reverseBits(u_input.a))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f * arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, 886f))), arg_2.a);
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, u_input.a), ~countOneBits(arg_1.a));
    var_0 = -3448i >> (u_input.d % 32u);
    var_0 = ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-26231i, abs(arg_1.a.x)), _wgslsmith_clamp_i32(-arg_1.a.x, arg_1.a.x, ~u_input.b.x) >> (arg_3.x % 32u), _wgslsmith_mult_i32(~arg_1.a.x, 1i) << (4294967295u % 32u));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1844f * -878f)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + -1466f) + _wgslsmith_div_f32(arg_2.a, 396f)))), arg_2.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec3<bool>(true, false, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(752f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(709f * 1029f) * _wgslsmith_f_op_f32(step(arg_2, arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(sign(1000f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-arg_1), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_f_op_f32(-arg_1)) + vec3<f32>(_wgslsmith_f_op_f32(trunc(762f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_1))));
    let var_2 = 0i;
    return func_3(_wgslsmith_dot_vec4_u32(select(vec4<u32>(firstTrailingBit(0u), u_input.c.x, u_input.d, _wgslsmith_sub_u32(u_input.d, 94428u)), vec4<u32>(49250u, 0u, u_input.d, u_input.d), vec4<bool>(var_0.x, var_0.x, true, func_2(vec3<f32>(-1139f, -604f, -501f), Struct_1(var_1.x, vec4<bool>(var_0.x, false, var_0.x, var_0.x)), arg_3))), vec4<u32>(16099u, u_input.d, ~(~1u), _wgslsmith_clamp_u32(abs(4294967295u), ~86986u, ~u_input.d))), Struct_2(select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 13282i, -11516i) >> (vec3<u32>(0u, 30976u, 1u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(arg_3.a.x, u_input.a, u_input.a))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2, -2147483647i, arg_3.a.x), arg_3.a), vec3<i32>(-1i, u_input.b.x, arg_3.a.x) | arg_0.wxy), !(!var_0.x))), Struct_1(1000f, vec4<bool>(true, !(var_0.x | var_0.x), all(select(var_0.xz, var_0.xx, var_0.yy)), false)), abs(~(~vec4<u32>(u_input.c.x, 1u, 12227u, 46629u) | ~vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 4294967295u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = ~(~(~(~0u))) | u_input.c.x;
    global0 = ~((~(-u_input.a) >> ((abs(u_input.c.x) & countOneBits(36777u)) % 32u)) << ((_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.c.x, 86683u)), ~vec3<u32>(28125u, 1u, u_input.d)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(63333u, var_0), vec2<u32>(25015u, 88920u) ^ u_input.c)) % 32u));
    global0 = ~abs(firstLeadingBit(u_input.a)) & -34339i;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(488f, -202f, 1000f, arg_0.a)))))))));
    var var_2 = firstLeadingBit(vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_add_i32(25696i, -52812i), i32(-1i) * -14958i), 17627i, 40986i, ~(-arg_1.a.x | select(u_input.b.x, u_input.b.x, true))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(26273u, 46531u), ~u_input.c);
    let var_1 = u_input.a;
    var var_2 = -select(_wgslsmith_mod_i32(var_1, u_input.b.x), ~(~u_input.a), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
    var_2 = countOneBits(firstLeadingBit(u_input.a));
    var var_3 = true;
    var_2 = 0i;
    var var_4 = ~firstTrailingBit(i32(-1i) * -42940i);
    var_4 = -(~(~func_4(func_1(vec4<i32>(0i, -1i, var_1, -2147483647i), -1836f, -205f, Struct_2(vec3<i32>(1i, -4080i, 16529i))), Struct_2(vec3<i32>(-10685i, -20068i, u_input.a)))));
    var var_5 = _wgslsmith_add_i32(7531i << (_wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(27666u, u_input.d, var_0.x), vec3<u32>(0u, u_input.d, var_0.x) << (vec3<u32>(var_0.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))) % 32u), 26985i & u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

