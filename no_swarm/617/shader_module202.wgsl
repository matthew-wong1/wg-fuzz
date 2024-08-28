struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_2, 8>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = select(vec3<i32>(u_input.a, abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(44943i, -21581i, u_input.a, global1.x), vec4<i32>(u_input.d.x, 2147483647i, global1.x, global1.x))), 2147483647i), vec3<i32>(firstTrailingBit(-u_input.d.x | global1.x), i32(-1i) * -14710i, _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_add_vec3_i32(abs(u_input.d), u_input.d))), all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], false), vec2<bool>(false, true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), true)), vec2<bool>(true, global0[_wgslsmith_index_u32(1986u, 1u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true)))));
    global1 = u_input.d.zz << (vec2<u32>(u_input.b.x | u_input.b.x, u_input.c.x) % vec2<u32>(32u));
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 8u)];
    global1 = vec2<i32>(min(0i << (~select(u_input.b.x, u_input.b.x, false) % 32u), firstLeadingBit(-2147483647i)), -max(-20115i, var_1.a));
    var_1 = Struct_2(global1.x ^ ~(~0i));
    return -30491i;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_2(u_input.d.x);
    var_0 = global2[_wgslsmith_index_u32(arg_1.x, 8u)];
    var var_1 = u_input.a >> (~_wgslsmith_mod_u32(34447u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 1u), _wgslsmith_clamp_vec2_u32(arg_1.zw, vec2<u32>(arg_1.x, u_input.c.x), vec2<u32>(u_input.c.x, 1u)))) % 32u);
    global0 = array<bool, 1>();
    let var_2 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_mult_i32(countOneBits(func_3()), var_0.a), max(reverseBits(firstTrailingBit(-1i)), ~(-15023i) ^ u_input.a)));
    return u_input.c;
}

fn func_1() -> f32 {
    var var_0 = 1u;
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(15469u, u_input.c.x), 8u)];
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 4294967295u) | vec4<u32>(1u, 17265u, 141007u, 1u), vec4<u32>(u_input.b.x, u_input.c.x, 25412u, u_input.c.x), all(vec3<bool>(global0[_wgslsmith_index_u32(56058u, 1u)], true, global0[_wgslsmith_index_u32(16775u, 1u)]))), abs(~vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 1u))), u_input.b.x) ^ reverseBits(~firstLeadingBit(func_2(-804f, vec4<u32>(u_input.b.x, 110669u, u_input.b.x, 1u), vec2<i32>(37415i, global1.x))));
    return -1256f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 8>();
    var var_0 = u_input.c;
    var var_1 = firstTrailingBit(vec2<i32>(min(global1.x, abs(0i)) << (~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) % 32u), global1.x));
    global0 = array<bool, 1>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(-267f, 745f))))) + _wgslsmith_f_op_f32(select(766f, _wgslsmith_f_op_f32(1000f * -1727f), global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 1u)]))));
    let var_3 = ~(~firstTrailingBit(vec4<u32>(select(var_0.x, var_0.x, global0[_wgslsmith_index_u32(49764u, 1u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 63549u), vec3<u32>(24880u, var_0.x, 35989u)), u_input.b.x >> (1u % 32u), 76702u >> (u_input.c.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32((vec2<i32>(0i, var_1.x) ^ u_input.d.zz) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(u_input.c.x, 5252u), u_input.b.xx) % vec2<u32>(32u)), countOneBits(u_input.d.xy)), ~(~(~var_3.ww)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 - -1297f))), _wgslsmith_f_op_f32(round(-2409f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), -345f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(-var_2), 989f, 946f)))), reverseBits(32249u), _wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, u_input.c.x, 23550u, var_3.x), vec4<u32>(0u, 4294967295u, 4294967295u, 60042u), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true, false, global0[_wgslsmith_index_u32(var_3.x, 1u)])) ^ var_3, ((vec4<u32>(var_0.x, 0u, 1689u, u_input.b.x) | vec4<u32>(u_input.b.x, 0u, 30140u, 14189u)) & var_3) | vec4<u32>(max(u_input.c.x, 33158u), abs(var_3.x), 49745u, _wgslsmith_mult_u32(u_input.c.x, var_0.x))));
}

