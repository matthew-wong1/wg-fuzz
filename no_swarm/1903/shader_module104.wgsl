struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(35224u, 1u, 53495u);

var<private> global1: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), 8748i, 21642i, 2147483647i), 4294967295u, vec4<bool>(false, true, false, false), -644f);

var<private> global2: array<i32, 13>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d), global1.d, true)), 745f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.yz - var_0.yy))))), select(firstLeadingBit(-897i), _wgslsmith_clamp_i32(abs(~u_input.b), -25211i, global2[_wgslsmith_index_u32(4294967295u, 13u)]), all(global1.c) & true), ~(~min(~vec3<u32>(0u, 57070u, 61511u), ~arg_0)));
    global0 = _wgslsmith_sub_vec3_u32((firstLeadingBit(arg_0) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b, 0u, global1.b), var_1.c, var_1.c), ~vec3<u32>(1u, 0u, 20448u)) % vec3<u32>(32u))) ^ ~select(firstLeadingBit(vec3<u32>(var_1.c.x, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(23960u, 1u, u_input.a), vec3<u32>(global0.x, arg_0.x, arg_0.x), arg_1.zxz), global1.c.zzz), vec3<u32>(0u, ~min(167497u, ~1674u), ~11567u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1283f + _wgslsmith_f_op_f32(f32(-1f) * -681f))))));
    let var_3 = Struct_2(vec4<i32>(-2147483647i, -3672i, -1i, -1i), ~_wgslsmith_mod_u32(1u, global1.b), !vec4<bool>(true | global1.c.x, true, global1.c.x, !(var_1.b >= -1i)), var_2);
    return ~select(_wgslsmith_dot_vec4_u32(~arg_1, select(arg_1, vec4<u32>(57874u, arg_1.x, var_3.b, 1u), var_3.c)), ~abs(28631u), global1.c.x);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    global0 = min(vec3<u32>(firstLeadingBit(~func_3(vec3<u32>(global1.b, 25888u, 19378u), vec4<u32>(76461u, 18081u, 1u, 4294967295u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_2.b, 34555u, 27138u), firstTrailingBit(vec4<u32>(1u, global1.b, arg_2.b, 30517u))), abs(vec4<u32>(global0.x, u_input.a, arg_2.b, u_input.a))), 27804u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(39496u ^ global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(25616u, 4294967295u, u_input.d), vec3<u32>(0u, 39885u, global0.x))), arg_2.b), max(4294967295u | arg_2.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(global0.zy), global0.zz)), u_input.d));
    let var_0 = Struct_1(arg_2.c.zy, -2626f);
    var var_1 = select(~firstLeadingBit(reverseBits(firstTrailingBit(vec3<u32>(global0.x, 70003u, u_input.a)))), vec3<u32>(arg_2.b, ~arg_2.b, ~18156u), vec3<bool>(!(!all(arg_2.c.yyy)), true, false));
    var var_2 = arg_1;
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.d, var_0.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d * arg_2.d) + arg_2.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.d))))), -2147483647i | -(min(arg_2.a.x, arg_0) >> (1287u % 32u)), vec3<u32>(global0.x, global1.b, ~firstLeadingBit(countOneBits(4294967295u))));
    return arg_2.c.yz;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = !select(!vec2<bool>(global1.c.x, any(global1.c)), select(func_2(_wgslsmith_mod_i32(2147483647i, global2[_wgslsmith_index_u32(u_input.d, 13u)]), -43924i << (u_input.a % 32u), Struct_2(global1.a, global0.x, vec4<bool>(true, true, global1.c.x, false), arg_0.x)), vec2<bool>(true, true), !all(vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x))), vec2<bool>(global1.c.x, func_2(u_input.b, 28712i, Struct_2(global1.a, global1.b, global1.c, 482f)).x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(911f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * -1000f), global1.d);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1672f, arg_0.x))) * _wgslsmith_f_op_vec2_f32(-arg_0))))), -(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 17152i, 0i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 13u)], -2147483647i, -9864i, u_input.b) << (vec4<u32>(global0.x, global0.x, 13604u, global1.b) % vec4<u32>(32u))) >> (1u % 32u)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b, global1.b, u_input.d) | vec3<u32>(30u, global1.b, 1u), vec3<u32>(17114u, 2479u, 82585u)), firstLeadingBit(~vec3<u32>(u_input.a, 13788u, global1.b))));
    global0 = abs(var_2.c);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))) + global1.d)));
    return global2[_wgslsmith_index_u32(u_input.d, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-432f, global1.d)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1432f, -426f)))), -countOneBits(~u_input.e) & func_1(vec2<f32>(global1.d, global1.d)), ~(~(~min(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(108936u, 30256u, global0.x)))));
    let var_1 = vec3<u32>(4294967295u, ~min(~(56823u >> (global1.b % 32u)), _wgslsmith_mult_u32(countOneBits(1u), ~global1.b)), _wgslsmith_add_u32(~49604u, u_input.a) << (u_input.a % 32u));
    var var_2 = ~18969i & global1.a.x;
    let var_3 = -2397f;
    let var_4 = -(countOneBits(global1.a.xy) ^ _wgslsmith_mod_vec2_i32(global1.a.wx, ~vec2<i32>(1i, 1i)));
    var var_5 = reverseBits(~var_0.c) << (var_1 % vec3<u32>(32u));
    global0 = ~(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(6938u, 1u, 4294967295u, global0.x), ~vec4<u32>(global0.x, global0.x, global0.x, 0u)), 1u, 89946u | ~var_0.c.x) | var_0.c);
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(1276f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) - _wgslsmith_f_op_f32(f32(-1f) * -483f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)) + 336f) + -135f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(global1.d, var_0.a.x)) * _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(941f, var_0.a.x)))) + vec2<f32>(var_0.a.x, var_0.a.x)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(reverseBits(var_0.b), -2147483647i), _wgslsmith_add_i32(0i, 17380i ^ var_4.x), global2[_wgslsmith_index_u32(~global1.b, 13u)] | 1i), ~(-var_4.x | var_0.b), _wgslsmith_mod_i32(func_1(var_0.a), 0i) & 13191i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(349f - -672f) + 559f))));
}

