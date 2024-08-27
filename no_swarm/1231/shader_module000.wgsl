struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(34041i, -28796i, 4953i, -4041i, -11931i, -5340i, -1i, 0i, 49828i, 1i, 2147483647i, i32(-2147483648), 1i, 1i, 2147483647i, 2147483647i, -4834i, -1i);

var<private> global1: u32 = 0u;

var<private> global2: array<bool, 6> = array<bool, 6>(true, true, true, false, true, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: u32) -> vec4<u32> {
    var var_0 = min(_wgslsmith_add_vec2_u32(u_input.b, select(select(~vec2<u32>(45970u, 63256u), ~vec2<u32>(4294967295u, arg_1.x), select(true, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(arg_1.x, 6u)])), vec2<u32>(_wgslsmith_div_u32(u_input.d, 31109u), _wgslsmith_sub_u32(u_input.b.x, 29698u)), any(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 6u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(14420u, 6u)], true, true), vec3<bool>(false, false, false))))), vec2<u32>(_wgslsmith_clamp_u32(~u_input.d, 58738u & arg_2, 0u) ^ arg_2, max(_wgslsmith_clamp_u32(1u, arg_1.x, 0u), ~u_input.d) ^ (~14473u & arg_1.x)));
    global2 = array<bool, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f - -138f) - _wgslsmith_f_op_f32(ceil(861f))), -834f, true)), -101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(549f, -1166f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) - _wgslsmith_f_op_f32(-955f - 1584f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f))))));
    let var_2 = var_0.x | firstTrailingBit(~(~_wgslsmith_mult_u32(arg_2, u_input.b.x)));
    let var_3 = var_1.yxy;
    return vec4<u32>(reverseBits(~u_input.b.x), ~(~0u), _wgslsmith_sub_u32(arg_2, var_0.x), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 55127u, 1u) ^ vec3<u32>(arg_2, 35367u, arg_2), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, arg_1.x, arg_1.x), vec3<u32>(var_0.x, var_2, 0u))), 1u));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_5) -> f32 {
    var var_0 = select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(arg_2.a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 9140u, 4294967295u), arg_2.a.a), ~0u, 41784u), _wgslsmith_sub_vec4_u32(func_3(vec4<i32>(-21612i, 0i, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_0), arg_2.a.a.yx, u_input.d), ~vec4<u32>(67575u, arg_2.a.b, arg_2.a.b, 70276u))), 7930u, _wgslsmith_div_u32(8778u, _wgslsmith_clamp_u32(0u, 33147u, 5626u)) & (arg_2.a.b >> (countOneBits(15996u) % 32u)), 4294967295u), vec4<u32>(u_input.d, ~_wgslsmith_clamp_u32(4294967295u, 1u, 1u), _wgslsmith_mod_u32(u_input.d, _wgslsmith_add_u32(arg_2.a.b, 61904u)), reverseBits(firstLeadingBit(u_input.d))) >> (vec4<u32>(39079u, arg_2.a.b, select(~9184u, u_input.b.x, select(global2[_wgslsmith_index_u32(arg_2.a.b, 6u)], arg_2.a.d, global2[_wgslsmith_index_u32(25247u, 6u)])), u_input.b.x) % vec4<u32>(32u)), vec4<bool>(arg_2.a.d || all(vec3<bool>(global2[_wgslsmith_index_u32(19688u, 6u)], false, global2[_wgslsmith_index_u32(arg_2.a.a.x, 6u)])), true, global2[_wgslsmith_index_u32(~1u, 6u)], all(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_2.a.a.x, 6u)], arg_1, arg_2.a.d, false), vec4<bool>(true, arg_1, false, false), vec4<bool>(arg_1, global2[_wgslsmith_index_u32(1u, 6u)], false, true))) == arg_2.a.d));
    let var_1 = _wgslsmith_f_op_f32(select(arg_2.a.c.x, _wgslsmith_f_op_f32(round(-2920f)), arg_2.a.c.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_2.a.c.x)) - arg_2.a.c.x)));
    global2 = array<bool, 6>();
    var var_2 = false;
    var var_3 = true;
    return var_1;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> StorageBuffer {
    global1 = 1u >> (u_input.b.x % 32u);
    global2 = array<bool, 6>();
    global0 = array<i32, 18>();
    let var_0 = Struct_5(Struct_4(vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, max(u_input.d, 1u)), ~u_input.b.x, u_input.d), u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, -2306f, -1000f, -191f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -2215f, -408f, 1309f)))), false));
    var var_1 = var_0;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) * _wgslsmith_f_op_f32(max(var_1.a.c.x, var_0.a.c.x)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1410f + 1000f), -256f) * _wgslsmith_f_op_f32(trunc(1832f)))), arg_2.wy);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = Struct_1(vec4<bool>(!global2[_wgslsmith_index_u32(u_input.b.x, 6u)] | true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, arg_0) | (arg_0 | _wgslsmith_mod_u32(0u, 1u)), 6u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, arg_0), 6u)], true), u_input.a, -1805i);
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.c.x, false, Struct_5(Struct_4(vec3<u32>(arg_0, arg_0, 72031u), 43472u, vec4<f32>(-1573f, 537f, 778f, -1680f), global2[_wgslsmith_index_u32(0u, 6u)])))) + 790f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(382f - -903f)), _wgslsmith_f_op_f32(f32(-1f) * -1503f)) - _wgslsmith_f_op_f32(398f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2108f, 1528f))))), vec4<i32>(-64670i, u_input.a, abs(-11529i), _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(var_0.b, u_input.a << (u_input.b.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_4(vec3<u32>(u_input.b.x, abs(~0u), countOneBits(u_input.b.x)), ~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1443f, 186f, -413f, 1000f), vec4<f32>(-1437f, -1061f, -389f, 420f)))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24764u, 1u, u_input.b.x, u_input.b.x) ^ vec4<u32>(31099u, u_input.d, u_input.b.x, u_input.b.x), abs(vec4<u32>(0u, u_input.d, 1u, 58710u))), 6u)] || global2[_wgslsmith_index_u32(~min(u_input.b.x, u_input.b.x), 6u)]));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -422f);
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-33864i, _wgslsmith_div_i32(0i, -(global0[_wgslsmith_index_u32(u_input.b.x, 18u)] << (1u % 32u)))), global0[_wgslsmith_index_u32(40544u, 18u)]);
    global0 = array<i32, 18>();
    global2 = array<bool, 6>();
    let x = u_input.a;
    s_output = func_1(68834u);
}

