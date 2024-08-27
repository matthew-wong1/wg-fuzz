struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32> = vec2<f32>(-432f, 1315f);

var<private> global2: vec2<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<bool> {
    return vec4<bool>(!(!all(vec4<bool>(arg_2.b.x, arg_1.x, arg_2.b.x, arg_0.c))), true, !(_wgslsmith_f_op_f32(abs(global1.x)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.x)), -1542f)), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> vec2<u32> {
    var var_0 = firstTrailingBit(vec4<i32>(-7028i | ~u_input.a.x, max(u_input.a.x, abs(1i)), 13968i, 1i) | select(-vec4<i32>(-185i, -30510i, 2147483647i, u_input.a.x) | firstLeadingBit(vec4<i32>(0i, -106428i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, -1i, ~u_input.a.x, _wgslsmith_mult_i32(11303i, u_input.a.x)), select(func_2(Struct_2(true, arg_1.x, false, vec3<i32>(u_input.a.x, 55076i, u_input.a.x)), vec3<bool>(true, arg_2, true), arg_0), select(vec4<bool>(true, arg_0.b.x, true, false), vec4<bool>(true, true, arg_0.b.x, true), arg_2), arg_1.x != arg_0.c)));
    var var_1 = arg_1.xx;
    global1 = arg_0.a.yz;
    global2 = arg_0.d;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, 369f, global1.x, 1063f)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.x, 2952f, arg_0.a.x, global1.x))))), !(!arg_0.b), 1u, _wgslsmith_mod_vec2_u32(min(arg_0.d & _wgslsmith_mult_vec2_u32(arg_1.wy, arg_1.wy), vec2<u32>(var_1.x, 1u)), ~vec2<u32>(1u, ~50436u)));
    return ~(~arg_0.d);
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    global2 = arg_0.d;
    global2 = arg_0.d;
    var var_0 = vec4<i32>(-57415i, 0i, u_input.a.x, u_input.a.x) << (vec4<u32>(~(~(35136u << (0u % 32u))), _wgslsmith_div_u32(~44462u, 114986u), ~(~(arg_0.d.x | 0u)), _wgslsmith_dot_vec4_u32((vec4<u32>(arg_0.c, arg_0.c, 9949u, 30524u) & vec4<u32>(global2.x, arg_0.c, global2.x, arg_0.c)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.x, 27915u, 99358u, 1u), vec4<u32>(62819u, global2.x, global2.x, global2.x)) % vec4<u32>(32u)), abs(~vec4<u32>(36824u, 48126u, 1644u, 4294967295u)))) % vec4<u32>(32u));
    global0 = arg_0.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 1536f, -1000f) + arg_0.a))))));
    return Struct_2(true, 34756u, arg_0.b.x, ~vec3<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, -41066i), -53319i >> (global2.x % 32u)), _wgslsmith_add_i32(firstLeadingBit(var_0.x), -551i)));
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = vec3<bool>(true, ((1u ^ ~global2.x) >= ~arg_0.b) != any(vec4<bool>(func_2(Struct_2(true, arg_0.b, true, arg_0.d), vec3<bool>(true, false, true), Struct_1(vec4<f32>(667f, global1.x, global1.x, 1000f), vec3<bool>(false, arg_0.c, true), global2.x, vec2<u32>(1u, global2.x))).x, func_2(arg_0, vec3<bool>(arg_0.c, arg_0.a, false), Struct_1(vec4<f32>(1537f, -1000f, global1.x, 406f), vec3<bool>(arg_0.a, arg_0.a, arg_0.c), global2.x, vec2<u32>(global2.x, 1u))).x, true, global1.x != global1.x)), false);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, _wgslsmith_div_f32(-722f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(global1.x, -200f, var_0.x || var_0.x)), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x + global1.x))), global1.x), all(vec3<bool>(!arg_0.c, select(arg_0.c, arg_0.a, true), arg_0.c)))), select(vec3<bool>(any(vec2<bool>(false, arg_0.c)), all(vec4<bool>(true, true, arg_0.a, arg_0.c)), true | (u_input.a.x == -4805i)), !select(vec3<bool>(false, var_0.x, true), func_2(arg_0, vec3<bool>(false, arg_0.a, false), Struct_1(vec4<f32>(1439f, 1000f, global1.x, global1.x), vec3<bool>(false, arg_0.c, var_0.x), 0u, vec2<u32>(arg_0.b, arg_0.b))).zyx, true), vec3<bool>(func_3(Struct_1(vec4<f32>(180f, global1.x, 408f, global1.x), vec3<bool>(true, false, true), 105304u, vec2<u32>(global2.x, global2.x))).a, var_0.x, true)), global2.x, ~vec2<u32>(countOneBits(arg_0.b), arg_0.b));
    let var_2 = ~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_1.d, var_1.d) << (_wgslsmith_add_u32(25771u, 84653u) % 32u)) ^ 4294967295u;
    let var_3 = Struct_1(var_1.a, var_1.b, ~_wgslsmith_mult_u32(firstTrailingBit(var_2), 8119u), ~(var_1.d & (vec2<u32>(arg_0.b, 22723u) | var_1.d)));
    let var_4 = ~1u;
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1000f, -1414f) + vec4<f32>(global1.x, -1526f, global1.x, -1904f))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), global2.x, _wgslsmith_clamp_vec2_u32(~vec2<u32>(global2.x, global2.x), func_1(Struct_1(vec4<f32>(global1.x, global1.x, -201f, -2182f), vec3<bool>(true, true, true), 0u, vec2<u32>(global2.x, 4294967295u)), vec4<u32>(51163u, global2.x, 4294967295u, global2.x), false), vec2<u32>(60182u, global2.x) & vec2<u32>(4294967295u, global2.x)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -762f, global1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1300f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, global1.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1812f, global1.x))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1609f, 215f, _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(719f, var_0.x, -1527f, 998f)))))))), !(!func_2(Struct_2(false, 0u, false, vec3<i32>(2748i, u_input.a.x, -25315i)), func_2(Struct_2(false, global2.x, true, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<bool>(true, false, false), Struct_1(vec4<f32>(177f, var_0.x, global1.x, -671f), vec3<bool>(true, true, true), 0u, vec2<u32>(global2.x, 23576u))).zww, Struct_1(vec4<f32>(-842f, -800f, global1.x, -704f), vec3<bool>(true, true, true), global2.x, vec2<u32>(global2.x, 19390u))).yyx), 12064u, firstLeadingBit(select(~reverseBits(vec2<u32>(global2.x, global2.x)), ~(~vec2<u32>(global2.x, global2.x)), true)));
    let var_2 = vec4<u32>(var_1.d.x >> (var_1.d.x % 32u), global2.x, ~(global2.x ^ ~_wgslsmith_mod_u32(var_1.c, var_1.c)), _wgslsmith_dot_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(66092u, 1u, 42182u), vec3<u32>(44673u, global2.x, 74152u)) & firstTrailingBit(vec3<u32>(var_1.d.x, var_1.d.x, global2.x))), firstTrailingBit((vec3<u32>(global2.x, 0u, 4294967295u) & vec3<u32>(4294967295u, 1u, 80417u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, var_1.c, global2.x), vec3<u32>(global2.x, global2.x, var_1.c)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -1575f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.a.x))))));
    let var_3 = min(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), _wgslsmith_div_i32(-990i, 2147483647i) & _wgslsmith_add_i32(u_input.a.x, u_input.a.x))) << (var_1.d.x % 32u);
    let var_4 = ~(~vec2<u32>(var_2.x, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(76890i, -_wgslsmith_div_vec3_i32(min(vec3<i32>(5138i, var_3, 44578i), vec3<i32>(u_input.a.x, u_input.a.x, 17325i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 19211i), vec3<i32>(2147483647i, u_input.a.x, -5315i))) ^ ~(select(vec3<i32>(10642i, 6278i, u_input.a.x), vec3<i32>(var_3, var_3, var_3), false) & vec3<i32>(1i, 1i, 1i)));
}

