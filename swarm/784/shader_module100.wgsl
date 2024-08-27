struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 26>;

var<private> global2: i32 = 0i;

var<private> global3: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(0u, 4294967295u, 4294967295u, 55556u), vec4<u32>(0u, 4294967295u, 0u, 55338u), vec4<u32>(0u, 60337u, 4294967295u, 45886u), vec4<u32>(21428u, 4294967295u, 4294967295u, 78333u), vec4<u32>(9406u, 48928u, 1u, 6115u), vec4<u32>(102802u, 1u, 4294967295u, 4294967295u), vec4<u32>(22639u, 1u, 0u, 105943u), vec4<u32>(5900u, 0u, 31257u, 18658u), vec4<u32>(1u, 57339u, 1u, 1u), vec4<u32>(4294967295u, 0u, 1u, 103722u), vec4<u32>(0u, 38517u, 0u, 4294967295u), vec4<u32>(12468u, 1u, 0u, 45291u), vec4<u32>(30256u, 45859u, 18922u, 1u), vec4<u32>(55884u, 1u, 18686u, 1u), vec4<u32>(0u, 34275u, 0u, 1u), vec4<u32>(51534u, 39604u, 48172u, 0u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(43114u, 5028u, 0u, 1u), vec4<u32>(1u, 8470u, 0u, 4294967295u), vec4<u32>(4294967295u, 9075u, 4294967295u, 6303u), vec4<u32>(0u, 1u, 4294967295u, 9441u), vec4<u32>(40393u, 61767u, 4294967295u, 8191u), vec4<u32>(19499u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 17060u, 4294967295u, 49421u), vec4<u32>(4294967295u, 3092u, 37793u, 7345u), vec4<u32>(4294967295u, 4294967295u, 1u, 96024u), vec4<u32>(4294967295u, 4294967295u, 19799u, 2135u), vec4<u32>(4175u, 4053u, 53025u, 11506u), vec4<u32>(49595u, 19112u, 16114u, 0u), vec4<u32>(9492u, 3611u, 107263u, 8306u), vec4<u32>(59876u, 1u, 0u, 53996u));

var<private> global4: f32 = -354f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    global1 = array<Struct_2, 26>();
    global0 = 27148u != arg_0.x;
    var var_0 = -1i != _wgslsmith_div_i32(max(abs(_wgslsmith_sub_i32(u_input.a.x, -2147483647i)), firstLeadingBit(countOneBits(u_input.a.x))), 9574i);
    var var_1 = u_input.a;
    global4 = 1000f;
    return vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(357f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1307f * -174f) + _wgslsmith_f_op_f32(-1459f + -1144f)))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1552f, -2064f) * _wgslsmith_div_f32(479f, _wgslsmith_f_op_f32(abs(-1544f)))), (arg_0.x ^ ~_wgslsmith_div_u32(4294967295u, 2204u)) > ~1u);
}

fn func_2() -> Struct_2 {
    var var_0 = func_3(~abs(~vec3<u32>(76173u, 1u, 4294967295u)));
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

fn func_1() -> vec2<u32> {
    var var_0 = func_2();
    global1 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f - -694f) - -383f), -1326f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1887f, -199f), vec2<f32>(2960f, -1494f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(413f, -519f)))))))), !select(vec2<bool>(all(vec3<bool>(false, false, false)), func_3(vec3<u32>(1u, var_0.b.x, var_0.a)).x), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_2 = Struct_1(func_3(var_0.b.wxw & _wgslsmith_div_vec3_u32(~vec3<u32>(7136u, var_0.b.x, 49944u), vec3<u32>(var_0.a, var_0.a, 1u))).x, _wgslsmith_add_i32(select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.e, var_0.e, -1i), u_input.a.x), u_input.b.x, (u_input.a.x > u_input.b.x) & true), ~(-1i)));
    let var_3 = vec2<bool>(all(!(!(!vec2<bool>(var_2.a, true)))), !(!any(vec2<bool>(true, true))));
    return var_0.b.zz;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> StorageBuffer {
    let var_0 = ~(~u_input.a.x << (arg_1.x % 32u)) ^ u_input.b.x;
    let var_1 = _wgslsmith_add_u32(85u, arg_0) | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, min(0u, arg_0), ~4294967295u, countOneBits(1u)), (firstLeadingBit(vec4<u32>(8827u, arg_0, arg_0, arg_0)) << (_wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(arg_1.x, 31u)], vec4<u32>(arg_0, 1u, 1u, 1u)) % vec4<u32>(32u))) << (reverseBits(~arg_1) % vec4<u32>(32u)));
    global3 = array<vec4<u32>, 31>();
    var var_2 = Struct_1(false, -select(2147483647i, -18060i, true));
    let var_3 = arg_0 & _wgslsmith_sub_u32(_wgslsmith_sub_u32(~arg_0, max(var_1, arg_0)) >> (~(~arg_1.x) % 32u), 50575u);
    return StorageBuffer(_wgslsmith_add_i32(min(-2147483647i, select(firstTrailingBit(var_2.b), -var_2.b, true)), func_2().e), ~(~(~arg_0)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1131f, 484f))))))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-181f, 1199f)) * _wgslsmith_f_op_f32(f32(-1f) * -995f)), func_2().d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, true, true, false);
    var var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(0i & _wgslsmith_sub_i32(u_input.b.x, u_input.a.x), u_input.a.x, ~(-442i), 1i), -_wgslsmith_mult_vec4_i32(vec4<i32>(-84467i, -41025i, -54878i, u_input.a.x) << (vec4<u32>(14886u, 73858u, 14770u, 11245u) % vec4<u32>(32u)), select(vec4<i32>(2147483647i, -16424i, -35473i, -12392i), vec4<i32>(7203i, -2147483647i, -55568i, u_input.a.x), vec4<bool>(var_0.x, true, true, true))));
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~func_1(), _wgslsmith_mult_vec2_u32(func_2().b.zw, vec2<u32>(1u, 1u))), ~(~45740u)), abs(_wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(select(1u, _wgslsmith_mult_u32(1u, 65938u), true), 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), false);
}

