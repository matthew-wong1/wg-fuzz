struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(1u, 1u, 1u, 44410u, 74345u, 1u, 0u, 73882u, 52904u, 36035u, 66767u, 1u, 1u, 20808u, 1u, 1u, 4294967295u, 881u, 0u, 10481u, 0u, 75592u, 1u, 35388u);

var<private> global1: vec2<bool>;

var<private> global2: vec2<u32>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: Struct_3 = Struct_3(Struct_1(vec2<f32>(-368f, 1127f), vec3<bool>(true, false, false), vec2<f32>(-772f, -2412f), 31153u), vec2<f32>(1482f, -1296f), vec2<u32>(1u, 1u), 42310u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = Struct_3(Struct_1(arg_0.yx, global4.a.b, _wgslsmith_f_op_vec2_f32(select(global4.a.c, _wgslsmith_div_vec2_f32(arg_1.a.a, _wgslsmith_f_op_vec2_f32(-arg_1.a.a)), !all(vec4<bool>(global1.x, false, global4.a.b.x, false)))), ~47562u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c.x - arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1375f)), -277f, arg_1.a.b.x))))), _wgslsmith_sub_vec2_u32(global4.c, ~_wgslsmith_add_vec2_u32(~global4.c, firstTrailingBit(vec2<u32>(global2.x, global4.c.x)))), ~global0[_wgslsmith_index_u32(60302u, 24u)]);
    return ~_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global4.a.d, 1u), global4.c), vec2<u32>(0u, 13915u)), global4.c);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> vec2<u32> {
    var var_0 = ~global4.c.x;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.zx, global4.a.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(1625f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b.x * 587f), arg_1.x)), arg_1.xz)));
    var var_2 = Struct_3(global4.a, _wgslsmith_f_op_vec2_f32(round(var_1)), firstLeadingBit(~(~vec2<u32>(global2.x, 4294967295u))) << (_wgslsmith_mult_vec2_u32(min(func_3(arg_1, Struct_2(Struct_1(global4.b, vec3<bool>(arg_2, false, arg_0), vec2<f32>(506f, 335f), 6098u))), global4.c), global4.c) % vec2<u32>(32u)), 7691u);
    global3 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 10263i, u_input.b), vec3<i32>(-3788i, _wgslsmith_sub_i32(u_input.a, 1i), 22715i | u_input.d.x)), u_input.c), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(56887i, -1i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.d.x), vec3<i32>(u_input.d.x, -12597i, 1i)) | ~vec3<i32>(u_input.d.x, u_input.a, u_input.a), vec3<i32>(u_input.a, ~u_input.d.x, u_input.d.x ^ u_input.b)) << (~var_2.a.d % 32u));
    var var_3 = Struct_2(global4.a);
    return global4.c;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global0 = array<u32, 24>();
    global2 = func_2(!all(vec4<bool>(global1.x, global1.x, true, global4.a.d == global2.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-237f * global4.a.c.x), global4.b.x, global4.a.a.x) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(152f, global4.b.x, -644f)))))))), true);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a.c), vec3<bool>(global1.x, true, true && any(select(global4.a.b.zx, global4.a.b.xz, global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global4.b, global4.a.a), vec2<f32>(arg_0.x, -968f))) + _wgslsmith_f_op_vec2_f32(-global4.b)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1143f))), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_sub_u32(0u, countOneBits(_wgslsmith_add_u32(~69370u, 38926u & global2.x))));
    let var_1 = 805f;
    global0 = array<u32, 24>();
    return Struct_2(global4.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = abs(~1u) >> ((_wgslsmith_sub_u32(reverseBits(7688u), arg_1.a.d) | (0u << ((_wgslsmith_clamp_u32(arg_1.a.d, global2.x, global4.c.x) >> (~0u % 32u)) % 32u))) % 32u);
    global1 = !vec2<bool>(arg_0.a.b.x, all(!(!vec4<bool>(true, true, global1.x, true))));
    global2 = global4.c;
    var var_1 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.a.x)), arg_1.a.c.x), global4.a.b, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.c.x), _wgslsmith_f_op_f32(-arg_1.a.a.x)), global2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(trunc(arg_1.a.a.x))), _wgslsmith_f_op_vec2_f32(-arg_1.a.a)))), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(0u ^ arg_1.a.d), global4.a.d >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 17879u), vec2<u32>(0u, arg_1.a.d)) % 32u)), 24u)], 41773u), 76240u);
    var var_2 = var_1.a.b.x;
    return (firstLeadingBit(20311u) & _wgslsmith_dot_vec3_u32(min(~vec3<u32>(global2.x, 4294967295u, 21824u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.a.d, 12751u), vec3<u32>(80520u, global2.x, 1u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(41912u, 24u)], 4294967295u, 68479u), vec3<u32>(global2.x, var_1.c.x, arg_1.a.d)))) >> (5461u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1318f * global4.a.a.x), _wgslsmith_f_op_f32(step(385f, 247f)))), global4.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global4.b)))), _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 88222u, 53706u), vec3<u32>(32734u, 0u, 4294967295u)))));
    global4 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(select(var_0.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.b)), var_0.a.b.yz)), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, _wgslsmith_div_u32(37743u, global2.x)), 24u)], global0[_wgslsmith_index_u32(global4.a.d, 24u)]), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global4.a.d, 1u & var_0.a.d), ~reverseBits(32979u), 4294967295u));
    let var_1 = u_input.c;
    global1 = vec2<bool>(!global4.a.b.x, true);
    var var_2 = func_4(func_1(var_0.a.c), Struct_2(var_0.a));
    var_2 = 41009u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, 225f, global4.a.c.x, -1032f)), vec4<f32>(-2145f, global4.b.x, global4.a.c.x, 1881f), !vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, global4.a.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.a.c.x, 594f, -214f, var_0.a.c.x), vec4<f32>(var_0.a.a.x, var_0.a.c.x, global4.b.x, var_0.a.a.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, true))))))));
}

