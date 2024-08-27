struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_4,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec2<i32> {
    global0 = array<vec4<f32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-534f - arg_0), -202f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 558f))))));
    global0 = array<vec4<f32>, 23>();
    global0 = array<vec4<f32>, 23>();
    var var_1 = ~(~_wgslsmith_mult_u32(arg_1.a.b, arg_1.a.b));
    return _wgslsmith_add_vec2_i32(abs(u_input.a.yz), ~(vec2<i32>(-1i) * -u_input.a.zy));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(reverseBits(6352u), firstTrailingBit(min(1u, ~9850u)), ~vec3<u32>(_wgslsmith_div_u32(87980u, 4294967295u), reverseBits(0u), firstTrailingBit(50995u)), 2147483647i, all(!(!arg_3.wx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1327f)));
    var var_1 = Struct_4(Struct_3(arg_3, Struct_2(Struct_1(0u, 0u, vec3<u32>(var_0.a.c.x, 0u, var_0.a.a), u_input.a.x, !arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2051f)))), select(-func_3(var_0.b, Struct_2(var_0.a, arg_2.x)), select(min(u_input.a.xz, vec2<i32>(u_input.a.x, 22811i)), _wgslsmith_div_vec2_i32(vec2<i32>(8117i, var_0.a.d), vec2<i32>(var_0.a.d, 2147483647i)), select(arg_1, true, arg_0)), !vec2<bool>(arg_0, var_0.a.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(637f * arg_2.x), arg_2.x, -449f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, -551f, 1000f), vec3<f32>(171f, var_0.b, var_0.b))) + vec3<f32>(arg_2.x, 293f, var_0.b)))), var_0.a, vec4<i32>(var_0.a.d, _wgslsmith_div_i32(-var_0.a.d, -1i), 5358i, ~7180i), Struct_2(Struct_1(var_0.a.a, _wgslsmith_dot_vec3_u32(var_0.a.c, var_0.a.c), ~(~vec3<u32>(var_0.a.c.x, var_0.a.b, 4294967295u)), u_input.a.x, arg_1), -416f));
    var_1 = Struct_4(Struct_3(vec4<bool>(arg_3.x, any(select(var_1.a.a, var_1.a.a, vec4<bool>(arg_1, false, true, var_0.a.e))), !(u_input.a.x != var_0.a.d), false), var_1.a.b, _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a.x, 0i), vec2<i32>(var_1.c.x, select(-27672i, var_1.c.x, arg_0))), vec3<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(-arg_2.x))), var_0.a, firstTrailingBit(_wgslsmith_sub_vec4_i32(countOneBits(-var_1.c), var_1.c)), Struct_2(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1605f - _wgslsmith_f_op_f32(1863f - var_0.b))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(arg_2));
    var_1 = Struct_4(Struct_3(vec4<bool>(!(!var_0.a.e), var_0.a.e, _wgslsmith_sub_u32(6988u, 0u) > ~var_0.a.a, arg_1), var_1.a.b, ~reverseBits(var_1.c.zx), _wgslsmith_f_op_vec3_f32(ceil(var_1.a.d))), Struct_1(_wgslsmith_mod_u32(1u, var_1.a.b.a.b), var_1.a.b.a.c.x, _wgslsmith_clamp_vec3_u32(var_0.a.c, var_1.a.b.a.c, var_1.b.c), u_input.a.x, true), abs(firstLeadingBit(vec4<i32>(u_input.a.x, 65284i, u_input.a.x, var_1.a.c.x))), Struct_2(Struct_1(38351u, var_1.b.a, ~abs(vec3<u32>(var_1.d.a.c.x, 1u, 1u)), 22613i, ~10951u == var_1.b.a), var_0.b));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-189f, _wgslsmith_f_op_f32(f32(-1f) * -328f)), var_1.a.d.xy))) * _wgslsmith_f_op_vec2_f32(var_1.a.d.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.d.xz * var_2), _wgslsmith_f_op_vec2_f32(select(var_1.a.d.xx, arg_2, vec2<bool>(false, true)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> u32 {
    global0 = array<vec4<f32>, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zw * _wgslsmith_f_op_vec2_f32(func_2(true, true, vec2<f32>(arg_1.x, arg_1.x), vec4<bool>(false, true, true, false))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 145f);
    var var_1 = _wgslsmith_f_op_f32(arg_1.x * -847f);
    var var_2 = vec2<u32>(0u, 1u);
    return _wgslsmith_sub_u32(~var_2.x, 30929u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 23>();
    var var_0 = Struct_2(Struct_1(~min(firstLeadingBit(4294967295u), func_1(u_input.a.xz, global0[_wgslsmith_index_u32(1u, 23u)])), countOneBits(23992u), vec3<u32>(1u, 1u, 1u), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), 145f);
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(trunc(1483f)));
    var var_2 = var_1.a;
    var var_3 = min(-2147483647i >> (~_wgslsmith_sub_u32(var_1.a.a, 0u) % 32u), ~(-7060i));
    var_2 = Struct_1(var_2.b, ~1u, ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, 16318u), func_1(vec2<i32>(var_0.a.d, var_2.d), vec4<f32>(var_0.b, var_0.b, var_1.b, 658f)), _wgslsmith_sub_u32(var_1.a.a, 1u)), countOneBits(var_1.a.c | vec3<u32>(var_2.b, var_1.a.b, 21083u))), var_0.a.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_0.a.d, var_1.a.d), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_1.b, _wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f))))), 27365i, countOneBits(0u));
}

