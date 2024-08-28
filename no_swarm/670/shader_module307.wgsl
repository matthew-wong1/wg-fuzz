struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(i32(-2147483648), 39770i, -23664i), vec3<i32>(-104863i, -10663i, -1i), vec3<i32>(i32(-2147483648), 383i, 2147483647i), vec3<i32>(-37693i, -14635i, 1i), vec3<i32>(-1i, i32(-2147483648), 1639i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(5517i, 1i, 35957i), vec3<i32>(-20432i, -1i, 65242i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_5) -> vec4<i32> {
    let var_0 = vec3<u32>(~firstTrailingBit(~(~81462u)), _wgslsmith_div_u32(~_wgslsmith_div_u32(~45409u, firstLeadingBit(1u)), ~(~(~1u))), ~(~(0u << (0u % 32u))) >> (_wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(13240u, 0u, 0u, 4294967295u)), ~vec4<u32>(18055u, 1u, 61376u, 9703u)), vec4<u32>(_wgslsmith_mult_u32(0u, 104360u), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 72840u, 56058u, 37671u), vec4<u32>(20246u, 31995u, 0u, 0u)), 13172u)) % 32u));
    var var_1 = Struct_2(arg_2.a, arg_2.a.a);
    global0 = array<vec3<f32>, 17>();
    var var_2 = select(vec4<bool>(arg_1, false, false, !arg_1), vec4<bool>(32088u > (var_0.x | _wgslsmith_sub_u32(4294967295u, var_0.x)), u_input.c.x >= u_input.b.x, all(select(!vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, arg_0, arg_0, false), vec4<bool>(true, true, true, true))), any(select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_1), true), select(vec2<bool>(false, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0)), false))), select(all(!(!vec4<bool>(true, false, arg_0, arg_0))), !any(!vec3<bool>(false, arg_1, false)), !arg_0));
    let var_3 = ~(u_input.b | vec3<i32>(u_input.a, _wgslsmith_mult_i32(-u_input.c.x, 1i), (i32(-1i) * -10853i) & reverseBits(u_input.a)));
    return -(~vec4<i32>(13040i, -_wgslsmith_clamp_i32(var_3.x, 28191i, 1i), var_3.x, 1i));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.b.x, -2147483647i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 7815i, 38489i, u_input.c.x))), -func_3(true, true, Struct_5(Struct_1(-576f))) >> (min(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 57202u, 75788u), vec4<u32>(4294967295u, 1u, 24411u, 23215u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 99502u), vec3<u32>(12793u, 27532u, 4294967295u)), 1u, ~14760u, select(27777u, 0u, false))) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(541f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-941f * arg_0) - _wgslsmith_f_op_f32(arg_0 - 638f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1458f)), 415f, _wgslsmith_f_op_f32(ceil(arg_0)) <= 409f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_1.a)))), 625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-var_1.a)));
    global1 = array<vec3<i32>, 8>();
    let var_3 = select(-49891i, min(firstLeadingBit(reverseBits(3738i & var_0.x)), u_input.b.x), (true == any(vec2<bool>(true, false))) == false);
    return ~1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    global1 = array<vec3<i32>, 8>();
    global0 = array<vec3<f32>, 17>();
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f))));
    let var_1 = vec3<bool>(min(~1u, ~(~arg_2)) <= arg_2, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.a)))));
    global1 = array<vec3<i32>, 8>();
    return Struct_3(var_1.x);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    var var_0 = -reverseBits(_wgslsmith_mod_i32(arg_0, ~(-u_input.b.x)));
    let var_1 = false;
    var var_2 = 1u;
    global1 = array<vec3<i32>, 8>();
    let var_3 = func_4(~vec3<u32>(33665u, 51323u, func_2(_wgslsmith_f_op_f32(-2065f + -455f))), -(~(-func_3(true, var_1, Struct_5(Struct_1(-345f))))), ~1u);
    return ~1u;
}

fn func_5(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = firstTrailingBit(abs(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c.x, arg_1, -1i, arg_1) << (vec4<u32>(1u, arg_0.x, arg_0.x, 35231u) % vec4<u32>(32u)), firstLeadingBit(~vec4<i32>(arg_1, 2147483647i, -1i, 2147483647i)))));
    var var_1 = 0i;
    var_1 = _wgslsmith_add_i32(-8922i, u_input.a);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u | _wgslsmith_clamp_u32(arg_0.x, ~arg_0.x, ~arg_0.x), 17u)]) + _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(arg_0.x, 17u)], _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 17u)] - _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(arg_0.x, 17u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(15948u, 17u)]))))));
    return Struct_1(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~vec3<u32>(func_1(-1i, u_input.b), countOneBits(4294967295u), _wgslsmith_add_u32(1u, 73171u)) & vec3<u32>(1u, 1u, 1u), ~(~_wgslsmith_div_i32(u_input.b.x, 0i)) ^ -2147483647i);
    var var_1 = func_5(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(abs(max(vec3<u32>(37802u, 0u, 3487u), vec3<u32>(0u, 1u, 0u))), vec3<u32>(46649u, 1u, 1u)), vec3<u32>(1u, 4294967295u, 13955u)), ~_wgslsmith_dot_vec3_i32(u_input.b ^ global1[_wgslsmith_index_u32(127732u, 8u)], u_input.b) >> (~(~4294967295u) % 32u));
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~(~27902u), 1u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -688f))), ~countOneBits(max(abs(16759u), ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~1u, 8u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, 321f), var_1.a), -665f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1135f)), -139f)), -1000f), vec4<f32>(var_1.a, _wgslsmith_f_op_f32(ceil(-584f)), var_0.a, 303f), false)), -931f);
}

