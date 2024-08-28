struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1658f;

var<private> global1: vec4<f32> = vec4<f32>(1031f, -372f, 345f, -169f);

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(13737u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 109901u), vec2<u32>(87831u, 0u), vec2<u32>(36919u, 4294967295u), vec2<u32>(70905u, 1u), vec2<u32>(50557u, 1u), vec2<u32>(63574u, 4294967295u), vec2<u32>(1u, 73227u), vec2<u32>(0u, 1u), vec2<u32>(0u, 86472u), vec2<u32>(18507u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(45859u, 1854u), vec2<u32>(76445u, 10097u), vec2<u32>(1u, 18123u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>) -> f32 {
    let var_0 = !arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1f)), 227f, _wgslsmith_f_op_f32(step(global1.x, global1.x)), -947f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, arg_1.x, arg_1.x, global1.x) + vec4<f32>(global1.x, global1.x, arg_1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1162f, -2095f, 1000f, 3152f)))) * vec4<f32>(_wgslsmith_f_op_f32(global1.x + arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x - 1879f), _wgslsmith_f_op_f32(step(730f, 762f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, 1232f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(728f, arg_1.x), _wgslsmith_f_op_f32(sign(300f)))), 1f, _wgslsmith_f_op_f32(-global1.x)), select(var_0, !arg_0, arg_0)));
    global1 = vec4<f32>(1044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1169f))), global1.x, -470f);
    var var_1 = Struct_1(false, _wgslsmith_sub_i32(0i, i32(-1i) * -25100i));
    var var_2 = Struct_3(Struct_1(true, select(firstTrailingBit(var_1.b), ~0i, all(arg_0))), Struct_2(u_input.e, Struct_1(var_0.x, _wgslsmith_add_i32(-var_1.b, _wgslsmith_add_i32(var_1.b, u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.x)))), global1.x, -1152f), Struct_1(false, u_input.d.x)), Struct_1(true, ~_wgslsmith_clamp_i32(-5089i, _wgslsmith_sub_i32(var_1.b, -1i), -20008i)), select(vec4<bool>(var_0.x, true, true, _wgslsmith_f_op_f32(-arg_1.x) > arg_1.x), arg_0, false));
    return global1.x;
}

fn func_2() -> vec4<u32> {
    let var_0 = u_input.e;
    global3 = array<vec2<u32>, 21>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.x, 492f) - vec3<f32>(global1.x, -156f, 1575f)))), global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(exp2(global1.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1536f, global1.x, global1.x, global1.x))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -2027f, 1000f, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, -887f, -1425f)) - vec4<f32>(710f, global1.x, global1.x, global1.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(708f, 1661f, 331f, global1.x) + vec4<f32>(global1.x, -1333f, -326f, global1.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, -351f, global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-400f, global1.x, global1.x, 565f) + vec4<f32>(-971f, global1.x, -545f, 315f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1578f, global1.x) + vec4<f32>(global1.x, global1.x, 1379f, global1.x)))))));
    let var_1 = true;
    return abs(var_0);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_clamp_vec4_u32(~func_2(), select(u_input.e, _wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(u_input.c.x, 0u, u_input.a, 25791u)), 1032f < global1.x), vec4<u32>(~u_input.e.x, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(2496u, 18170u, u_input.e.x), u_input.c), 1u)), Struct_1(true, countOneBits(select(u_input.d.x, firstTrailingBit(1i), true))), vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, 502f))))), _wgslsmith_f_op_f32(step(178f, global1.x)), _wgslsmith_f_op_f32(-global1.x)), Struct_1(select(true, !all(vec4<bool>(false, true, false, false)), true && any(vec2<bool>(true, false))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.d.x, -2147483647i), -vec4<i32>(u_input.b, 0i, u_input.b, 2147483647i))));
    var var_1 = var_0;
    var var_2 = 2361u;
    global3 = array<vec2<u32>, 21>();
    let var_3 = firstTrailingBit(min(firstTrailingBit(abs(vec4<u32>(var_1.a.x, var_0.a.x, 51220u, u_input.e.x)) << (vec4<u32>(46588u, u_input.a, 55404u, 1u) % vec4<u32>(32u))), max(~(~var_0.a), _wgslsmith_mod_vec4_u32(var_0.a, ~vec4<u32>(77146u, 22518u, var_1.a.x, 64367u)))));
    return var_1.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(37447u, u_input.a)), func_2().x), u_input.e.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - 193f), true)))) * -899f);
    let var_2 = u_input.e.wx >> (min(global3[_wgslsmith_index_u32(var_0, 21u)], _wgslsmith_mod_vec2_u32(~(u_input.c.xz | u_input.e.wz), global3[_wgslsmith_index_u32(var_0, 21u)])) % vec2<u32>(32u));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<u32>(~((97012u << (u_input.c.x % 32u)) ^ _wgslsmith_sub_u32(u_input.a, u_input.c.x)), 0u, 29995u, 4294967295u), Struct_1(true, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * _wgslsmith_f_op_f32(-global1.x)), func_1(), u_input.d)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, -1229f)), _wgslsmith_f_op_f32(f32(-1f) * -1147f), global1.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, global1.x, 296f)))))), Struct_1(all(vec2<bool>(true, true)), ~firstTrailingBit(1i)));
    global3 = array<vec2<u32>, 21>();
    let var_1 = Struct_1(!any(!select(vec3<bool>(var_0.d.a, var_0.d.a, true), vec3<bool>(var_0.d.a, var_0.b.a, false), vec3<bool>(true, var_0.d.a, var_0.b.a))), 22202i);
    global2 = var_0.c.x;
    let var_2 = Struct_2(~(~u_input.e), var_1, vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 1369f) + _wgslsmith_f_op_f32(abs(-1584f))) + _wgslsmith_f_op_f32(1566f * _wgslsmith_div_f32(-528f, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)))), var_1);
    var_0 = Struct_2(reverseBits(var_2.a), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2784f, -1040f, _wgslsmith_f_op_f32(-global1.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(1451f, -1355f), 1000f))), func_1());
    global3 = array<vec2<u32>, 21>();
    let var_3 = Struct_2(countOneBits(vec4<u32>(_wgslsmith_sub_u32(~40948u, u_input.c.x & 46146u), min(0u, u_input.c.x), var_2.a.x, _wgslsmith_mod_u32(4294967295u, max(u_input.c.x, 0u)))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(33477i, -2147483647i) & u_input.d.xx, u_input.d.wz) > countOneBits(_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(2147483647i, 0i))), ~var_1.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global1.zzw, vec3<f32>(_wgslsmith_f_op_f32(-328f * global1.x), _wgslsmith_div_f32(-739f, var_2.c.x), -838f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 986f, -168f), var_0.c) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c.x, var_2.c.x, -1147f)))))))), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, var_3.a.x, 9213u), var_0.a.wxx), ~_wgslsmith_mod_u32(var_0.a.x, u_input.e.x)), vec3<u32>(_wgslsmith_sub_u32(var_3.a.x, countOneBits(2236u)), 0u, (u_input.e.x ^ 1u) & ~69030u)), -min(vec3<i32>(var_1.b, var_0.b.b, var_2.b.b) & vec3<i32>(var_3.b.b, u_input.b, 11006i), max(u_input.d.xyw, u_input.d.wzx)) & ~(-u_input.d.zww | firstTrailingBit(u_input.d.wwx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.c.x)))), ~(~vec2<u32>(var_3.a.x, abs(var_0.a.x))));
}

