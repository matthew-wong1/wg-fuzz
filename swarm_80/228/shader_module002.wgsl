struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(i32(-2147483648), 1i, 4677i));

var<private> global2: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true));

var<private> global3: vec4<i32> = vec4<i32>(-32045i, 0i, 55674i, -56902i);

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<i32> {
    global3 = vec4<i32>(_wgslsmith_add_i32(0i, _wgslsmith_div_i32(global3.x, 7476i)), global3.x, 71626i, ~arg_1.a.x);
    let var_0 = arg_1;
    let var_1 = select(true, all(vec3<bool>(false, arg_0 | false, all(vec3<bool>(arg_0, arg_0, false)))) || false, arg_1.d);
    var var_2 = true;
    global2 = array<vec4<bool>, 22>();
    return u_input.e;
}

fn func_2() -> i32 {
    global1 = array<vec3<i32>, 1>();
    var var_0 = global3.x > _wgslsmith_div_i32(u_input.b.x, i32(-1i) * -4562i);
    global3 = u_input.e & select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-22766i, global3.x, 0i, -1i), u_input.e >> (vec4<u32>(4294967295u, u_input.c, global0.a.x, global0.a.x) % vec4<u32>(32u)), ~u_input.e) | -vec4<i32>(global3.x, 42525i, 1i, -38561i), countOneBits(func_3(true, Struct_1(vec4<i32>(-1i, 2147483647i, u_input.b.x, 3943i), -1102f, vec4<f32>(-1212f, -261f, -182f, 162f), true), _wgslsmith_div_vec3_f32(vec3<f32>(1872f, 381f, -281f), vec3<f32>(-736f, 474f, -143f)))), true);
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(1u), ~global0.a.x)), _wgslsmith_mod_u32(_wgslsmith_div_u32(min(117998u >> (u_input.c % 32u), ~u_input.c), ~0u), u_input.c)), 24u)];
    var var_2 = u_input.e;
    return 0i;
}

fn func_1(arg_0: f32) -> Struct_4 {
    global3 = ~vec4<i32>(~0i, func_2(), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.x, global3.x), u_input.b.x), max(~global3.x, -global3.x)), countOneBits(u_input.d));
    let var_0 = Struct_1(vec4<i32>(-_wgslsmith_mult_i32(-1i, global3.x), u_input.a, global3.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e.x, u_input.e.x, 66063i), _wgslsmith_sub_vec3_i32(vec3<i32>(-64277i, 2147483647i, u_input.d), vec3<i32>(global3.x, u_input.b.x, -1i)), vec3<i32>(-1i, u_input.d, u_input.a)), vec3<i32>(~(-2147483647i), _wgslsmith_add_i32(u_input.d, -2147483647i), _wgslsmith_mod_i32(u_input.d, global3.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1670f, 918f, select(true, select(true, true, false), true))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1088f, -129f, 188f, -535f), vec4<f32>(302f, -1000f, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-961f, arg_0, arg_0, -1000f))))))), true);
    global3 = var_0.a;
    var var_1 = ~(-var_0.a.xzy);
    var_1 = u_input.e.ywx;
    return Struct_4(vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(10066u, ~global0.a.x)), u_input.c, ~(~(~4294967295u)), ~global0.a.x), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1495f, -355f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1117f - -641f), 1611f)) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-940f)), -1087f)), _wgslsmith_f_op_f32(f32(-1f) * -1631f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(420f - _wgslsmith_f_op_f32(select(-441f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -752f))), all(vec4<bool>(true, arg_3.d, true, arg_3.d)))));
    var var_1 = global3.xy;
    var_0 = arg_2.c.x;
    global0 = global4[_wgslsmith_index_u32(u_input.c, 24u)];
    let var_2 = !global2[_wgslsmith_index_u32(func_1(-282f).a.x, 22u)];
    return func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.c.x, -772f, arg_3.d))) * -410f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c.x + arg_2.c.x), 1000f, select(arg_2.b, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec2<u32>(~global0.a.x, u_input.c));
    let var_0 = func_4(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1406u, 30802u, global0.a.x, u_input.c), vec4<u32>(790u, u_input.c, 8449u, u_input.c)) | ~vec4<u32>(global0.a.x, 12900u, u_input.c, u_input.c), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, u_input.c, u_input.c, global0.a.x), vec4<u32>(global0.a.x, global0.a.x, 0u, global0.a.x), global2[_wgslsmith_index_u32(0u, 22u)]), ~vec4<u32>(u_input.c, 1u, 34898u, u_input.c))), global3.zww, func_1(_wgslsmith_f_op_f32(round(-1025f))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-global3.x, -34447i, 1i, min(-29010i, u_input.b.x)), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(158f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1305f, -1243f, -546f, -1333f)))), any(vec2<bool>(any(vec4<bool>(false, false, false, true)), false))));
    global4 = array<Struct_2, 24>();
    var var_1 = ~_wgslsmith_mult_i32(-34820i, 29654i);
    var var_2 = 757f;
    let x = u_input.a;
    s_output = StorageBuffer(20310u, firstTrailingBit(var_0.a), ~select(_wgslsmith_add_vec4_i32(~u_input.e, vec4<i32>(8581i, global3.x, -1i, u_input.d)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 14535i, u_input.e.x), u_input.e)), _wgslsmith_f_op_f32(var_0.c.x - -1308f) <= 247f));
}

