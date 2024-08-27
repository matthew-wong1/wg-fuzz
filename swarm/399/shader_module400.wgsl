struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-197f, 236f, 467f), vec3<f32>(218f, 1000f, -1000f), vec3<f32>(1473f, -1352f, -1000f), vec3<f32>(-271f, -1352f, 837f), vec3<f32>(-361f, -624f, -488f), vec3<f32>(203f, -199f, -1188f), vec3<f32>(-201f, -443f, -117f), vec3<f32>(-198f, 1000f, -448f), vec3<f32>(447f, -821f, -1849f), vec3<f32>(-349f, 1041f, -1000f), vec3<f32>(1178f, 432f, -445f), vec3<f32>(2437f, 202f, -651f), vec3<f32>(373f, 1486f, -1419f), vec3<f32>(-514f, -881f, -569f), vec3<f32>(1730f, 1272f, 942f), vec3<f32>(735f, -493f, -852f), vec3<f32>(-277f, -493f, 898f), vec3<f32>(-386f, 2065f, 919f), vec3<f32>(1442f, 1345f, -962f), vec3<f32>(1130f, 1000f, 1106f), vec3<f32>(789f, 1125f, 1000f), vec3<f32>(1597f, 1268f, 1499f), vec3<f32>(336f, -1319f, -174f), vec3<f32>(-773f, -476f, 702f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)));
    let var_1 = _wgslsmith_div_vec3_i32(abs(countOneBits(~vec3<i32>(-2147483647i, 1i, -5792i) & (vec3<i32>(30324i, u_input.b.x, -1i) & vec3<i32>(u_input.b.x, -2147483647i, 1i)))), -firstLeadingBit(vec3<i32>(u_input.b.x | u_input.b.x, i32(-1i) * -8734i, 8624i)));
    let var_2 = select(all(select(vec2<bool>(all(vec4<bool>(false, true, true, false)), all(global1[_wgslsmith_index_u32(98192u, 2u)])), vec2<bool>(true, true), vec2<bool>(true, true))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)))), true);
    global1 = array<vec3<bool>, 2>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    return any(vec3<bool>(any(!(!vec2<bool>(var_2, var_2))), true, var_2));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_4(arg_2.a, vec3<bool>(false, true, func_3(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-arg_1));
    let var_1 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), countOneBits(vec2<u32>(u_input.a, u_input.a))), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4124u, 0u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(countOneBits(u_input.a >> (4294967295u % 32u)), 79006u));
    let var_2 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.c)), -1000f)) - var_0.c), _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-10494i, arg_2.c, arg_0.x, 46498i), vec4<i32>(arg_0.x, u_input.b.x, u_input.b.x, arg_0.x))), u_input.b << ((vec2<u32>(u_input.a, u_input.a) ^ (var_1 ^ var_1)) % vec2<u32>(32u))), var_0.b.x, max(countOneBits(1u), 32419u), vec2<i32>(-2147483647i, -2147483647i), 2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~42796u, ~var_1.x, ~var_1.x, ~u_input.a), vec4<u32>(0u, 0u, u_input.a, var_1.x << (var_1.x % 32u))) % 32u));
    var var_3 = arg_2;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-245f + _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-arg_1))), var_2.a.b);
    return 51769u;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: f32) -> vec4<u32> {
    let var_0 = vec3<bool>(true | (all(vec3<bool>(true, false, false)) & (41169u > func_2(vec4<i32>(u_input.b.x, 382i, 1i, 2147483647i), -1688f, Struct_1(true, -642f, u_input.b.x, vec2<i32>(u_input.b.x, 0i))))), true, u_input.b.x >= -u_input.b.x);
    global0 = _wgslsmith_add_u32(_wgslsmith_div_u32(arg_1, firstLeadingBit(4294967295u >> (u_input.a % 32u))), arg_1);
    global0 = abs(1540u);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(arg_1, arg_1, 86112u) << (vec3<u32>(arg_1, arg_1, u_input.a) % vec3<u32>(32u))), abs(firstTrailingBit(~vec3<u32>(arg_1, arg_1, arg_0.x)))), abs(firstTrailingBit(vec3<u32>(~4294967295u, u_input.a ^ arg_1, _wgslsmith_dot_vec2_u32(arg_0, arg_0)))));
    let var_2 = -u_input.b.x | _wgslsmith_div_i32(u_input.b.x, 58218i);
    return abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_1 & 0u, 36257u, ~var_1.x), ~select(vec4<u32>(arg_1, 4294967295u, arg_1, 4294967295u), vec4<u32>(u_input.a, 47674u, 20057u, 9863u), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2382f, 110f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(379f)), -871f))) + -741f), reverseBits(func_1(select(vec2<u32>(u_input.a, 448u), vec2<u32>(0u, u_input.a), false) | vec2<u32>(134292u, u_input.a), u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -216f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(218f * -1670f), _wgslsmith_f_op_f32(-825f - 606f))))), Struct_1(false, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(trunc(319f)))), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(-47062i, u_input.b.x)) ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.x, 1i), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b), vec2<i32>(1i, 38105i)), ~u_input.b)), !all(vec3<bool>(true, true, true)));
    global2 = array<vec3<f32>, 24>();
    global0 = ~1u >> (_wgslsmith_sub_u32(15926u, ~(_wgslsmith_dot_vec2_u32(var_0.b.yw, var_0.b.wy) | var_0.b.x)) % 32u);
    let var_1 = Struct_3(Struct_1(var_0.d, 923f, 0i | _wgslsmith_mult_i32(u_input.b.x, ~var_0.c.d.x), select(var_0.c.d ^ var_0.c.d, select(max(var_0.c.d, vec2<i32>(-2147483647i, var_0.c.c)), u_input.b, !vec2<bool>(var_0.d, true)), !(!vec2<bool>(var_0.c.a, true)))), !(!all(select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, false), vec2<bool>(false, var_0.d)))), ~var_0.b.x, reverseBits(var_0.c.d), var_0.c.d.x);
    let var_2 = Struct_1(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(171f + var_1.a.b) + -971f), u_input.b.x, vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, var_1.d.x, 2147483647i, -2147483647i), vec4<i32>(u_input.b.x, var_0.c.d.x, -50472i, var_1.d.x)))), var_0.c.c >> (_wgslsmith_clamp_u32(4294967295u, var_0.b.x, 45488u | var_0.b.x) % 32u)));
    global1 = array<vec3<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.b)))), var_2.b, var_0.a), _wgslsmith_mult_u32(firstLeadingBit(~var_0.b.x), abs(select(var_1.c, 1u, false))) << (27992u % 32u));
}

