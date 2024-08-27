struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27>;

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: array<vec3<i32>, 5>;

var<private> global4: vec3<f32> = vec3<f32>(758f, 1211f, 635f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> i32 {
    var var_0 = false;
    var var_1 = countOneBits(0i);
    var_0 = true;
    var var_2 = ~abs(~(0u ^ global1.e)) >> ((~(global1.e >> (~global1.e % 32u)) >> (((~global1.e | 13115u) << (4294967295u % 32u)) % 32u)) % 32u);
    var var_3 = Struct_1(-1i, i32(-1i) * -1i, !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(13575u << (1u % 32u), abs(global1.e), select(false, global1.a.c.x, global1.a.c.x)), 44548u), 27u)], _wgslsmith_f_op_f32(455f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2440f)))))));
    return 39348i;
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = global4.x;
    global2 = global4.x;
    var var_1 = _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1634f, 1448f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.x)))))));
    let var_2 = 4294967295u;
    var var_3 = Struct_2(global1.a, _wgslsmith_add_vec4_i32(global1.b | -countOneBits(vec4<i32>(-2147483647i, global1.b.x, -3238i, 0i)), abs(_wgslsmith_add_vec4_i32(global1.b, vec4<i32>(global1.d.x, -23492i, -1i, 18107i)) >> (~vec4<u32>(4294967295u, global1.e, global1.e, global1.e) % vec4<u32>(32u)))), -473f, global3[_wgslsmith_index_u32(max(global1.e, 53030u), 5u)], max(abs(65205u), select(~abs(global1.e), ~16276u, true)));
    return abs(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_3.e, firstLeadingBit(0u)), ~vec3<u32>(19152u, var_2, var_2)), ~(~(~vec3<u32>(26456u, 33723u, var_2)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = reverseBits(func_3(false));
    global1 = Struct_2(global1.a, vec4<i32>(0i, _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(func_1(), -18735i)), ~u_input.a, -1i), -665f, vec3<i32>(abs(1i), 16767i, 1i), ~_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.x, 10343u | global1.e), var_0.x));
    var var_1 = arg_0;
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(select(7601u, var_0.x, var_1.c.x), firstLeadingBit(var_0.x & var_0.x), abs(global1.e)), vec3<u32>(max(13622u, global1.e), _wgslsmith_dot_vec2_u32(countOneBits(var_0.yy), ~var_0.yz), reverseBits(var_0.x)));
    global3 = array<vec3<i32>, 5>();
    return Struct_2(global1.a, vec4<i32>(firstLeadingBit(firstLeadingBit(abs(global1.d.x))), arg_0.b, ~0i, _wgslsmith_clamp_i32(min(var_1.a, -44257i), abs(var_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-4347i, global1.a.a, arg_0.b, arg_0.b) & vec4<i32>(arg_0.a, arg_0.b, -9228i, var_1.a), global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1405f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global4.x))))))), ~(~vec3<i32>(~var_1.b, 6141i, abs(1i))), global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(-func_1(), -1i, !select(global0[_wgslsmith_index_u32(abs(global1.e), 27u)], vec3<bool>(global1.a.c.x, global1.a.c.x, global1.a.c.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 27u)]), global4.x), !(!(!(!global1.a.c.x))), all(vec2<bool>(false, !(global1.a.c.x || global1.a.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~min(vec2<u32>(global1.e, 41155u), vec2<u32>(var_0.e, global1.e)), ~min(vec2<u32>(global1.e, var_0.e), vec2<u32>(1u, var_0.e)), global1.a.c.yz) << ((~_wgslsmith_div_vec2_u32(vec2<u32>(global1.e, global1.e), vec2<u32>(var_0.e, 15011u)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.e, var_0.e), vec2<u32>(54751u, var_0.e) ^ vec2<u32>(4294967295u, global1.e), reverseBits(vec2<u32>(1u, 74816u)))) % vec2<u32>(32u)), 4649i & global1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1347f + -1014f), _wgslsmith_f_op_f32(select(-1659f, global1.a.d, any(global1.a.c.zz)))), firstLeadingBit(vec3<u32>(~global1.e, abs(global1.e), ~(~global1.e))), ~2147483647i);
}

