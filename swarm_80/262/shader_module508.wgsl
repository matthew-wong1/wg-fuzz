struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    let var_0 = ~(u_input.d >> (min(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(17853u, 0u, global0.d.x), 38630u, 73488u & u_input.a.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 1u, global0.b, 19260u), vec4<u32>(u_input.d.x, 103481u, 6025u, global0.d.x))) % vec4<u32>(32u)));
    let var_1 = abs(~firstLeadingBit(~vec2<u32>(0u, global0.d.x) | vec2<u32>(0u, var_0.x)));
    var var_2 = countOneBits(~(-13975i));
    global0 = Struct_1(vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, global0.a.x, u_input.c.x)), 4294967295u, true, ~firstLeadingBit(~vec3<u32>(1u, 149192u, var_0.x)) | ~reverseBits(u_input.d.xzz));
    global0 = Struct_1(_wgslsmith_div_vec3_i32(reverseBits(u_input.c), ~_wgslsmith_div_vec3_i32(global0.a, _wgslsmith_add_vec3_i32(global0.a, vec3<i32>(global0.a.x, -27558i, global0.a.x)))), u_input.d.x, false, reverseBits(vec3<u32>(1u, ~124437u, _wgslsmith_sub_u32(0u, u_input.a.x | var_1.x))));
    return var_0.x;
}

fn func_3(arg_0: f32) -> i32 {
    global0 = Struct_1(u_input.c, 3653u >> (1u % 32u), global0.c, ~(vec3<u32>(global0.d.x, 11443u, 0u) >> (u_input.d.xxx % vec3<u32>(32u))));
    let var_0 = Struct_2(Struct_1((u_input.c & _wgslsmith_add_vec3_i32(vec3<i32>(-41594i, -26740i, global0.a.x), global0.a)) & ~vec3<i32>(-2147483647i, -18197i, 1i), ~0u, firstTrailingBit(global0.a.x | u_input.b) != global0.a.x, u_input.d.yyx), global0.c);
    let var_1 = min(vec4<i32>(min(~global0.a.x, -1i), i32(-1i) * -u_input.c.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a.x, global0.a.x, u_input.b, -2147483647i), ~vec4<i32>(var_0.a.a.x, -79517i, global0.a.x, -7949i)), i32(-1i) * -64038i) >> (u_input.d % vec4<u32>(32u)), ~(~(vec4<i32>(-1i, global0.a.x, var_0.a.a.x, u_input.b) | firstLeadingBit(vec4<i32>(0i, -37030i, u_input.c.x, 0i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), arg_0) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -207f))))))));
    var var_3 = !(!(!(!select(vec2<bool>(global0.c, false), vec2<bool>(var_0.a.c, var_0.b), vec2<bool>(true, var_0.b)))));
    return _wgslsmith_add_i32(var_1.x, 0i);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.d.x;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~(~0u), global0.d.x) & abs(_wgslsmith_clamp_u32(countOneBits(u_input.a.x), u_input.a.x, ~1u)), ~(~0u));
    var_0 = ~_wgslsmith_mod_u32(0u, 44308u);
    global0 = Struct_1(vec3<i32>(40607i, global0.a.x << (firstTrailingBit(1u) % 32u), func_3(-1136f) >> (1u % 32u)) & abs(vec3<i32>(-28652i, global0.a.x, -24051i)), 26140u, select(global0.c, true, true), ~(~(vec3<u32>(arg_0.x, arg_0.x, 2825u) >> (vec3<u32>(1u, 0u, 16808u) % vec3<u32>(32u))) << (arg_0 % vec3<u32>(32u))));
    var var_1 = Struct_1(global0.a, 1u, true, firstLeadingBit(~_wgslsmith_mod_vec3_u32(u_input.d.wyz, vec3<u32>(39911u, 1u, 0u))));
    return Struct_1(u_input.c | var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, countOneBits(_wgslsmith_mod_u32(var_1.b, arg_0.x)), 39844u), var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1560f)) + -702f) >= _wgslsmith_f_op_f32(select(497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1087f - -1510f) - _wgslsmith_f_op_f32(f32(-1f) * -1143f)), true)), ~reverseBits(global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~(~1u) & min(~u_input.a.x, global0.d.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1151f, 1655f))));
    let var_2 = (~global0.a.x << (~590u % 32u)) >> ((func_1() >> (~12302u % 32u)) % 32u);
    global0 = func_2(~u_input.d.ywy);
    var var_3 = _wgslsmith_div_u32(~(~global0.d.x ^ u_input.a.x), ~(0u ^ _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(4294967295u, global0.d.x))));
    var_3 = _wgslsmith_clamp_u32(global0.d.x, ~57589u, ~4294967295u);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(-1477f, var_1), _wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(ceil(var_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(947f, var_1, -920f) * vec3<f32>(-1494f, var_1, var_1)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, var_1, -334f))))), !vec3<bool>(func_2(u_input.d.zwz).c, true, false))));
    global0 = Struct_1(select(reverseBits(-u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(52697i << (0u % 32u), -9218i, ~var_2), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_2, 35394i), reverseBits(vec3<i32>(global0.a.x, u_input.c.x, -107030i)))), global0.c), ~(~(~(~4294967295u))), all(vec2<bool>(func_2(vec3<u32>(global0.d.x, 25133u, 24258u)).c, true)), ~reverseBits(global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec4<i32>(reverseBits(global0.a.x), _wgslsmith_mult_i32(global0.a.x, -2147483647i), ~global0.a.x, countOneBits(global0.a.x))), _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-32924i, var_2, var_2, 33578i), vec4<i32>(u_input.b, var_2, 2147483647i, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -24119i, var_2, u_input.c.x)), (global0.c && true) || global0.c));
}

