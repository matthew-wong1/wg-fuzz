struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(26035i, -1i, 1i, 16228i, -13341i, -9011i, 25733i, 0i, 1i, -1965i, i32(-2147483648), 42238i, -8667i);

var<private> global1: array<f32, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(u_input.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(149f, _wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(4294967295u, 8u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, global1[_wgslsmith_index_u32(var_0.a, 8u)])) * vec2<f32>(-186f, global1[_wgslsmith_index_u32(u_input.b, 8u)]))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(259f, -566f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(1u ^ ~u_input.b, 8u)], _wgslsmith_f_op_f32(ceil(-967f)))))));
    let var_2 = Struct_1(reverseBits(var_0.a));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(200f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(var_1.x, global1[_wgslsmith_index_u32(1u, 8u)]))))), vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_2.a, 8u)], _wgslsmith_f_op_f32(select(var_1.x, 836f, arg_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1657f - 372f), var_1.x)))));
    let var_3 = Struct_1(firstTrailingBit(~_wgslsmith_div_u32(7130u << (u_input.b % 32u), ~var_2.a)));
    return firstTrailingBit(arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = vec4<u32>(firstLeadingBit(arg_0.a), arg_2, arg_0.a, _wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(46841u, u_input.b)), 4294967295u));
    let var_1 = firstTrailingBit(firstTrailingBit(arg_2));
    global1 = array<f32, 8>();
    var var_2 = 23243u;
    var var_3 = Struct_1(_wgslsmith_clamp_u32(46930u, abs(u_input.b << (~arg_2 % 32u)), abs(arg_2)));
    return -2488f;
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_sub_u32(0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(99424u, 0u, 0u, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(32888u, u_input.b, u_input.b, 0u)))));
    var var_1 = abs(((_wgslsmith_add_vec4_u32(vec4<u32>(47307u, 71074u, 23800u, 33996u), vec4<u32>(var_0.a, 4294967295u, 19685u, 69370u)) & vec4<u32>(16926u, 1u, var_0.a, 4294967295u)) >> (abs(~vec4<u32>(u_input.b, var_0.a, 0u, var_0.a)) % vec4<u32>(32u))) | min(vec4<u32>(13355u, u_input.b, u_input.b, 56858u), max(~vec4<u32>(u_input.b, 4294967295u, 56969u, var_0.a), firstLeadingBit(vec4<u32>(var_0.a, 0u, 1u, u_input.b)))));
    var var_2 = arg_1;
    let var_3 = 9631u << (~(~_wgslsmith_mod_u32(select(0u, 9067u, false), ~var_0.a)) % 32u);
    global1 = array<f32, 8>();
    return vec4<i32>(func_3(_wgslsmith_clamp_vec4_i32(-min(vec4<i32>(u_input.c.x, 13647i, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<i32>(-27603i, -2147483647i, u_input.c.x, arg_0.x)), firstLeadingBit(min(vec4<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(0u, 13u)], -41229i), vec4<i32>(u_input.a, -1i, arg_0.x, arg_0.x))), _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 13u)], 0i, arg_0.x), -vec4<i32>(arg_0.x, u_input.a, global0[_wgslsmith_index_u32(var_3, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]))), vec4<bool>(true, true, true, true)), -21782i, -(_wgslsmith_mod_i32(1i, min(u_input.a, -35306i)) & u_input.c.x), arg_0.x);
}

fn func_2() -> vec3<i32> {
    let var_0 = func_5(~vec3<i32>(0i, u_input.c.x, 1i) ^ abs(~vec3<i32>(11734i, 37296i, u_input.c.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b, 8u)] * _wgslsmith_f_op_f32(func_4(Struct_1(~u_input.b), func_3(~vec4<i32>(-22259i, 1i, 1i, 33457i), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), ~57172u))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~u_input.b, 8u)])), _wgslsmith_f_op_f32(455f + -366f), global1[_wgslsmith_index_u32(0u, 8u)]))));
    global1 = array<f32, 8>();
    var var_1 = ~min(firstLeadingBit(vec4<u32>(~u_input.b, u_input.b, _wgslsmith_mult_u32(6062u, 32499u), u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 16305u, u_input.b, 70087u), max(vec4<u32>(u_input.b, u_input.b, 0u, 37782u), vec4<u32>(4294967295u, 26360u, u_input.b, 4294967295u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(12450u, 0u, 4546u, u_input.b), vec4<u32>(6777u, 0u, 14247u, u_input.b), vec4<u32>(4294967295u, u_input.b, 101260u, 1u) ^ vec4<u32>(42625u, u_input.b, u_input.b, 1u)) % vec4<u32>(32u)));
    global1 = array<f32, 8>();
    let var_2 = Struct_1(var_1.x);
    return -vec3<i32>(global0[_wgslsmith_index_u32(~var_1.x, 13u)], _wgslsmith_sub_i32(~(-2147483647i) << (var_1.x % 32u), var_0.x), 2147483647i);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(~2147483647i, 1i), reverseBits(-2147483647i), -272i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(64213u, 13u)], -1i), vec2<i32>(-39646i, u_input.c.x)), global0[_wgslsmith_index_u32(~44607u, 13u)]), func_2())), vec3<i32>(_wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(select(~0u, u_input.b, false), 13u)]), _wgslsmith_div_i32(-41933i, _wgslsmith_div_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(50096u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)]), -global0[_wgslsmith_index_u32(u_input.b, 13u)])), abs(func_5(func_2(), global1[_wgslsmith_index_u32(~1u, 8u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], -905f, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]))).x)));
    global1 = array<f32, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(~u_input.b, 8u)], _wgslsmith_f_op_f32(min(-132f, -902f)), 1109f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1316f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~8579u, 8u)]), _wgslsmith_f_op_f32(func_4(Struct_1(u_input.b ^ u_input.b), var_0.x, ~_wgslsmith_mod_u32(0u, 4294967295u))))));
    let var_2 = Struct_1(u_input.b);
    var_0 = func_2();
    return Struct_1(select(u_input.b, var_2.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], -262f, global1[_wgslsmith_index_u32(u_input.b, 8u)], -498f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], 939f, global1[_wgslsmith_index_u32(u_input.b, 8u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1201f, global1[_wgslsmith_index_u32(u_input.b, 8u)], -761f, 1069f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, 981f, 462f, global1[_wgslsmith_index_u32(u_input.b, 8u)])) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1480f, global1[_wgslsmith_index_u32(4593u, 8u)], -112f, global1[_wgslsmith_index_u32(1u, 8u)]))))), !(-2147483647i != (global0[_wgslsmith_index_u32(u_input.b, 13u)] | u_input.c.x)))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(~u_input.b, 8787u));
    global0 = array<i32, 13>();
    var var_2 = func_1(false);
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(12752i, 47872i, 2147483647i, -2147483647i), (vec4<i32>(global0[_wgslsmith_index_u32(abs(4294967295u), 13u)], global0[_wgslsmith_index_u32(max(var_2.a, var_2.a), 13u)], u_input.a, -u_input.c.x) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2362i, global0[_wgslsmith_index_u32(21690u, 13u)], 6797i, global0[_wgslsmith_index_u32(1u, 13u)]), vec4<i32>(-27119i, 0i, 0i, 29185i))) | select(vec4<i32>(78247i, 0i, 12247i, -19508i) | _wgslsmith_sub_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(24998u, 13u)], 0i, -2147483647i), vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(var_1.a, 13u)], -40604i, u_input.c.x)), -vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(var_1.a, 13u)], global0[_wgslsmith_index_u32(var_2.a, 13u)]), vec4<bool>(true, select(false, true, true), all(vec4<bool>(false, true, false, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~9354u, vec2<i32>(u_input.c.x, u_input.c.x) ^ vec2<i32>(0i, var_3.x), u_input.c, abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, select(0u, 12576u, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(48950u, 33569u), vec2<u32>(u_input.b, 8483u)) ^ ~vec2<u32>(var_2.a, var_1.a), vec2<u32>(var_2.a, _wgslsmith_mult_u32(var_2.a, var_2.a)))));
}

