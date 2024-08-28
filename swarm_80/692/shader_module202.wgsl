struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: i32 = 17938i;

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-58334i, -49678i, -7255i, 2147483647i), vec4<i32>(2147483647i, -18851i, 11829i, -1i), vec4<i32>(-10713i, 0i, 1i, 1i), vec4<i32>(-19366i, 0i, -28682i, 1i), vec4<i32>(49863i, 0i, -27199i, i32(-2147483648)), vec4<i32>(12069i, 0i, 6278i, 1i), vec4<i32>(18092i, -62256i, 84708i, 10578i), vec4<i32>(1i, -1i, 1i, 47222i), vec4<i32>(1i, -2567i, 2147483647i, -26247i), vec4<i32>(i32(-2147483648), 7706i, 17673i, -14880i), vec4<i32>(-1i, 0i, i32(-2147483648), 4184i), vec4<i32>(2147483647i, -24806i, 0i, 2147483647i), vec4<i32>(-1i, -11473i, 10097i, 38925i), vec4<i32>(i32(-2147483648), -72799i, -17863i, 8208i), vec4<i32>(-1i, 0i, -1i, 0i), vec4<i32>(0i, 1i, 64844i, -33110i), vec4<i32>(-48124i, i32(-2147483648), 136i, -1i), vec4<i32>(-8777i, -15345i, 1i, -20741i), vec4<i32>(2147483647i, -1i, 0i, -34055i), vec4<i32>(16747i, 1i, 0i, 1i), vec4<i32>(-31930i, 2147483647i, -10947i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 1i), vec4<i32>(21259i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(2147483647i, -24364i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -1i, -66273i, 2147483647i), vec4<i32>(-31349i, i32(-2147483648), 20833i, 2147483647i), vec4<i32>(21008i, 19663i, 28668i, -40080i), vec4<i32>(4675i, 2147483647i, 1i, -13951i), vec4<i32>(2147483647i, -1i, 10627i, 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> i32 {
    global3 = array<vec4<i32>, 29>();
    return ~_wgslsmith_mod_i32(~16862i, select(select(_wgslsmith_clamp_i32(1935i, 13934i, 0i), _wgslsmith_add_i32(0i, -2147483647i), false), _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(~42923u, 29u)], vec4<i32>(4517i, 1i, -30942i, 72352i)), !select(false, false, false)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(-1i, -1i), vec3<bool>(all(vec3<bool>(false, arg_0, false)), arg_0, !all(!vec3<bool>(arg_0, true, true))));
    return u_input.d.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    let var_0 = abs(func_3(arg_1.x));
    global3 = array<vec4<i32>, 29>();
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(var_0, 29u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1105f * arg_2))), _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_2))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1636f), _wgslsmith_f_op_f32(floor(arg_2)), arg_2, _wgslsmith_f_op_f32(-arg_2))))), vec4<f32>(1449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)), _wgslsmith_f_op_f32(arg_2 * arg_2), _wgslsmith_f_op_f32(ceil(arg_2))), arg_1.x);
    let var_2 = _wgslsmith_mult_i32(var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, 1763i), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.a.wz >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 1i)), var_1.a.yz)));
    var var_3 = true;
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mult_i32(func_1(), min(abs(func_2(u_input.c, vec4<bool>(false, false, false, true), 408f)), -27207i)));
    var var_1 = Struct_2(2147483647i, Struct_1(min(~_wgslsmith_mult_i32(0i, -11219i), 17055i), vec3<bool>(any(vec2<bool>(true, false)), true, _wgslsmith_clamp_i32(-45260i, 34854i, 1i) == firstLeadingBit(0i))), vec2<i32>(firstLeadingBit(i32(-1i) * -18431i), -9072i), _wgslsmith_f_op_f32(floor(495f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(245f * -221f)))) - -1742f));
    let var_2 = var_1.b;
    global1 = var_2.a != _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_1.b.a, var_2.a) << (~(u_input.e ^ vec3<u32>(0u, u_input.a, 47435u)) % vec3<u32>(32u)), reverseBits(min(vec3<i32>(2147483647i, 0i, 20055i) & vec3<i32>(var_1.a, 59316i, var_2.a), vec3<i32>(var_2.a, -2147483647i, 2147483647i))));
    global3 = array<vec4<i32>, 29>();
    let var_3 = Struct_3(vec4<i32>(var_2.a ^ _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_2.a, var_2.a, 21636i), global3[_wgslsmith_index_u32(u_input.e.x, 29u)])), ~var_1.b.a, -20157i, -(~(-71416i) << (_wgslsmith_mult_u32(17177u, u_input.a) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1280f, 572f, var_1.d, var_1.e))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.e, 676f, 1000f, 730f), vec4<f32>(-740f, var_1.d, 1425f, var_1.d))))), vec4<f32>(233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f * -1135f))), _wgslsmith_f_op_f32(-1610f * 2397f), _wgslsmith_f_op_f32(sign(var_1.d))), !select(false, true, !all(vec3<bool>(var_2.b.x, var_1.b.b.x, true))));
    let var_4 = var_3.d;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(max(10980u, u_input.a), ~firstTrailingBit(select(81166u, u_input.d.x, true))), vec2<u32>(abs(select(u_input.e.x, 65596u, true)), 4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 1u, 1u), u_input.b.zwx) % 32u)) ^ vec2<u32>(~u_input.c.x, abs(4807u)));
}

