struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(Struct_2(true, 651f, vec3<bool>(true, true, false)), Struct_2(true, 2017f, vec3<bool>(false, false, false)));

var<private> global2: array<f32, 19>;

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(true, 185f, vec3<bool>(true, false, true)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-1371f - -733f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), 1625f, _wgslsmith_f_op_f32(step(510f, 596f)), _wgslsmith_f_op_f32(f32(-1f) * -228f))))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-u_input.a), 73384i, 9296i), ~(vec3<i32>(28963i, u_input.b, 6306i) ^ (vec3<i32>(u_input.a, u_input.b, 28688i) ^ vec3<i32>(u_input.a, 41260i, u_input.d)))), min(u_input.a, -1i));
    global3 = array<Struct_2, 1>();
    global0 = _wgslsmith_f_op_f32(floor(var_1.x));
    return ~(~(~(~firstTrailingBit(vec3<u32>(4807u, u_input.e, 1u)))));
}

fn func_2() -> vec3<i32> {
    let var_0 = true;
    global2 = array<f32, 19>();
    var var_1 = vec2<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, select(u_input.c.x, u_input.c.x, !global1.b.a)));
    let var_2 = Struct_1((vec3<u32>(0u, abs(var_1.x), u_input.e) & vec3<u32>(~27266u, u_input.c.x, 79423u)) | ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, u_input.e, 0u), vec3<u32>(78789u, 0u, u_input.c.x)), _wgslsmith_dot_vec3_u32(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.c.x), vec3<u32>(var_1.x, u_input.e, u_input.e)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, var_1.x, 17234u), vec3<u32>(4294967295u, var_1.x, var_1.x)), select(var_0, true, var_0)), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, u_input.c.x, u_input.c.x) ^ ~vec3<u32>(38794u, u_input.c.x, 28061u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 31433u, 0u), ~vec3<u32>(var_1.x, u_input.e, u_input.e), ~vec3<u32>(u_input.e, 35793u, 4294967295u)))), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, 1520f, global2[_wgslsmith_index_u32(56633u, 19u)], -888f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], -1152f, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(u_input.e, 19u)]), vec4<f32>(-1423f, 1000f, global1.a.b, 384f)))))), ~func_3());
    var_1 = u_input.c;
    return -_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.d, u_input.a), -vec3<i32>(u_input.d, u_input.a, u_input.d)), firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.d, 0i, 0i))) << (vec3<u32>(_wgslsmith_mod_u32(8471u, 55023u), 1u, _wgslsmith_dot_vec2_u32(var_2.a.xz, vec2<u32>(var_2.e.x, u_input.e))) % vec3<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = select(!select(vec3<bool>(false, false, false), select(select(vec3<bool>(true, true, false), vec3<bool>(global1.a.a, global1.a.c.x, false), vec3<bool>(global1.a.a, global1.a.c.x, global1.a.c.x)), global1.b.c, !global1.b.c), vec3<bool>(true, global1.b.a, false)), vec3<bool>(all(!(!vec2<bool>(global1.a.c.x, false))), global1.a.c.x, !any(!global1.b.c.xx)), global1.b.c.x);
    var var_1 = global1.b.a;
    var var_2 = Struct_2(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(831f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(355f, 279f))))), global1.b.c);
    global1 = Struct_3(Struct_2(!(var_0.x || all(vec2<bool>(var_0.x, false))), 1000f, var_2.c), Struct_2(var_0.x, 1f, select(vec3<bool>(!global1.a.c.x, var_0.x, true), vec3<bool>(global1.b.b > 1476f, 4294967295u != u_input.c.x, false), select(vec3<bool>(var_2.a, true, var_0.x), !vec3<bool>(true, false, var_0.x), !vec3<bool>(global1.b.c.x, var_0.x, false)))));
    var var_3 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(360f + -1569f) + -1909f) + _wgslsmith_f_op_f32(var_2.b * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.c;
    let var_1 = vec4<i32>(u_input.b, -u_input.d, u_input.a, -u_input.d);
    global2 = array<f32, 19>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var var_3 = _wgslsmith_div_i32(-2147483647i, 1i >> (_wgslsmith_clamp_u32(0u, 28577u, _wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c)) % 32u));
    let var_4 = Struct_3(global3[_wgslsmith_index_u32(0u, 1u)], Struct_2(any(vec2<bool>(any(vec4<bool>(false, true, var_0.x, var_0.x)), all(vec4<bool>(global1.a.a, global1.b.a, true, false)))), 1169f, vec3<bool>(!(1u < u_input.e), any(select(vec4<bool>(global1.b.c.x, false, true, true), vec4<bool>(false, var_0.x, global1.a.c.x, false), vec4<bool>(var_0.x, var_0.x, global1.a.c.x, var_0.x))), all(select(global1.a.c, vec3<bool>(false, true, var_0.x), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(376f, vec3<u32>(~reverseBits(u_input.c.x), u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(23583u >> (u_input.c.x % 32u), u_input.c.x), ~firstLeadingBit(vec2<u32>(u_input.e, u_input.e)))));
}

