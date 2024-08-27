struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(1i, 52859i, i32(-2147483648), 2147483647i, 1i, 1i, 0i, 590i, 0i, -5444i);

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> global3: Struct_2 = Struct_2(4294967295u, vec3<u32>(3199u, 1u, 1u));

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = global2.a << (~abs(~vec4<u32>(global4.b, 0u, u_input.a, 51891u)) % vec4<u32>(32u));
    var var_1 = Struct_3(max(~global2.a, _wgslsmith_mult_vec4_i32(~firstLeadingBit(global2.a), vec4<i32>(_wgslsmith_mult_i32(-6128i, global0[_wgslsmith_index_u32(global3.a, 10u)]), var_0.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-11525i, -2147483647i, 1i, u_input.c.x), vec4<i32>(u_input.c.x, 4144i, 0i, var_0.x))))), global2.b);
    global1 = true;
    let var_2 = Struct_2(arg_0.b.x << (1u % 32u), vec3<u32>(35848u, ~_wgslsmith_add_u32(46510u, global2.b.b.x), ~max(global3.b.x & global2.b.b.x, 36458u)));
    global4 = Struct_1(global4.a, 4294967295u, -_wgslsmith_mult_i32(~(~var_0.x), -global4.c));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, 335f, global4.a.x, global4.a.x)), abs(abs(_wgslsmith_sub_u32(global4.b ^ u_input.b, ~19360u))), -_wgslsmith_dot_vec2_i32(arg_1.wy, vec2<i32>(1i, 1i)));
    let var_0 = true;
    global2 = Struct_3(~min(vec4<i32>(global0[_wgslsmith_index_u32(global4.b, 10u)], 1i, 1i, global0[_wgslsmith_index_u32(arg_0.b.x, 10u)]), min(vec4<i32>(global2.a.x, global4.c, global0[_wgslsmith_index_u32(global3.b.x, 10u)], 7397i), _wgslsmith_mod_vec4_i32(vec4<i32>(39780i, u_input.c.x, u_input.c.x, -14291i), global2.a))), Struct_2(arg_0.a, ~vec3<u32>(4294967295u, 0u, 1u) ^ ~min(global3.b, vec3<u32>(4294967295u, global4.b, 140u))));
    global1 = func_3(arg_0);
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 97286u, u_input.a, 4294967295u) & (vec4<u32>(38557u, 27687u, arg_0.a, global4.b) & vec4<u32>(89561u, global4.b, global3.a, global4.b)), firstLeadingBit(~vec4<u32>(global2.b.b.x, 43318u, 1u, global3.a))), vec4<u32>(global3.a >> (24130u % 32u), 5504u, global4.b, global4.b)));
    return Struct_2(~(u_input.b << (~4294967295u % 32u)), vec3<u32>(arg_0.a, countOneBits(0u), ~var_1.x));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> u32 {
    global1 = true;
    global0 = array<i32, 10>();
    let var_0 = global2.a.wz | global2.a.ww;
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(global4.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(global4.a)))))), ~(~global3.b.x), -5832i);
    let var_1 = func_2(Struct_2(52309u, abs(~arg_1.b)), global2.a);
    return 55112u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0u | ~_wgslsmith_mod_u32(u_input.a & 14898u, global4.b), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.b, 96014u, global3.a ^ global3.a), global2.b.b)));
    global4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global4.a.x, global4.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(122f, -118f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(539f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - global4.a.x) * _wgslsmith_f_op_f32(517f * global4.a.x)), -610f), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(~23538u, max(vec3<u32>(u_input.a, global4.b, 1583u), global2.b.b) >> (_wgslsmith_clamp_vec3_u32(global2.b.b, vec3<u32>(1u, 1u, 4294967295u), global3.b) % vec3<u32>(32u)))), u_input.c.x);
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.a - vec4<f32>(-332f, 2274f, global4.a.x, global4.a.x)) * _wgslsmith_f_op_vec4_f32(-global4.a)), global4.a, all(vec3<bool>(true, false, false)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-231f)), 494f, 288f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global4.a.x))))))), ~(~var_0.b.x), firstTrailingBit(_wgslsmith_mod_i32(min(-u_input.c.x, global2.a.x), min(1i, 1i))));
    var_0 = Struct_2(_wgslsmith_div_u32(34001u & firstTrailingBit(10676u), global2.b.b.x), ~(~(~vec3<u32>(u_input.b, global4.b, 4294967295u))));
    let var_1 = u_input.c.x;
    global4 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.a.x + 1535f), -1103f, -459f, global4.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.a.x, global4.a.x, 986f, -521f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, 1534f, global4.a.x, global4.a.x)))))), reverseBits(4400u ^ max(68055u, global2.b.b.x)), 35556i);
    let var_2 = func_2(global2.b, global2.a);
    global0 = array<i32, 10>();
    let var_3 = _wgslsmith_div_u32(0u, global2.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 424f))), global4.a.ywz)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-368f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global4.a.x)))), _wgslsmith_f_op_f32(global4.a.x * _wgslsmith_f_op_f32(-global4.a.x))))), global3.b.yx);
}

