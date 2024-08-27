struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 1548i);

var<private> global1: bool;

var<private> global2: vec2<bool>;

var<private> global3: array<f32, 25> = array<f32, 25>(228f, 209f, 415f, -1000f, -1782f, -438f, -1306f, -2739f, -1599f, 2411f, 1000f, 122f, -1491f, -848f, 1438f, 297f, 214f, -391f, -668f, -801f, -673f, 2161f, 1437f, -127f, 1354f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: i32) -> vec2<i32> {
    global3 = array<f32, 25>();
    let var_0 = 8059u;
    var var_1 = u_input.a.wz;
    global0 = vec2<i32>(-57475i, global0.x);
    global3 = array<f32, 25>();
    return firstLeadingBit(~u_input.b.zy);
}

fn func_3() -> i32 {
    var var_0 = global0.x >> (~(0u ^ firstTrailingBit(u_input.a.x)) % 32u);
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, 4294967295u) & vec2<u32>(1u, u_input.a.x)), ~(~u_input.a.ww)) << (vec2<u32>(122641u, ~u_input.a.x) % vec2<u32>(32u)), firstTrailingBit(u_input.c.x), select(!(!(!vec4<bool>(global2.x, global2.x, false, true))), !select(select(vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(true, true, global2.x, false)), select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(true, false, false, global2.x)), vec4<bool>(true, true, true, true)), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)] <= 344f, global2.x, true, true)));
    var var_2 = var_1.a.x;
    var var_3 = u_input.a.x;
    var_2 = 1u;
    return abs(select(global0.x, i32(-1i) * -57140i, !global2.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    global0 = min(-(abs(u_input.c.xx) ^ (u_input.b.xx & u_input.c.xz)), _wgslsmith_div_vec2_i32(~func_2(global0.x, vec3<f32>(-2198f, 1000f, -1570f), arg_0.c.yz, arg_0.b), vec2<i32>(global0.x, u_input.b.x))) >> (~((reverseBits(vec2<u32>(28084u, 0u)) & ~vec2<u32>(u_input.a.x, arg_0.a.x)) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 10309u, arg_0.a.x), vec3<u32>(arg_0.a.x, 0u, arg_0.a.x)), u_input.a.x)) % vec2<u32>(32u));
    var var_0 = ~(~(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -60130i, global0.x), vec3<i32>(47578i, u_input.c.x, -1i)), _wgslsmith_mult_i32(arg_0.b, 1068i), -25785i)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~(~u_input.a)), 1u), var_1.a.x >> (0u % 32u));
    var var_3 = vec2<f32>(-1242f, 278f);
    return select(select(arg_0.c.wx, arg_0.c.yz, vec2<bool>(var_1.c.x, !global2.x)), !vec2<bool>(all(select(vec2<bool>(false, var_1.c.x), arg_0.c.zy, global2.x)), firstLeadingBit(-45022i) != func_3()), all(arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(28954u, 25u)];
    let var_1 = u_input.a.xxw ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(54410u, _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, u_input.a.x)), u_input.a.x), ~_wgslsmith_sub_vec3_u32(u_input.a.xww, vec3<u32>(u_input.a.x, 0u, 4294967295u)) >> (u_input.a.yzx % vec3<u32>(32u)));
    var var_2 = _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, -1i, -2147483647i, -_wgslsmith_sub_i32(-2147483647i, u_input.c.x)), -vec4<i32>(min(_wgslsmith_add_i32(1i, global0.x), u_input.c.x), 0i, global0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(36351i, -1i, u_input.c.x, -23017i), vec4<i32>(18588i, 38136i, -62772i, 11270i))));
    global3 = array<f32, 25>();
    global0 = vec2<i32>(~(i32(-1i) * -max(-1i, u_input.c.x)), select(global0.x, global0.x << (select(4294967295u, var_1.x, global2.x) % 32u), any(func_1(Struct_1(u_input.a.yz, -2147483647i, vec4<bool>(false, global2.x, true, global2.x)), vec2<f32>(global3[_wgslsmith_index_u32(1990u, 25u)], -745f)))) & var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-max(var_2.x, global0.x) >> (~abs(3611u) % 32u)), firstLeadingBit(firstLeadingBit(4294967295u)), ~reverseBits(firstTrailingBit(vec2<u32>(u_input.a.x, 0u))), firstTrailingBit(u_input.b.x));
}

