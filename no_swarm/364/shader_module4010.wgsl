struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = 1339f;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: vec4<u32>;

var<private> global4: array<i32, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: bool, arg_1: f32) -> i32 {
    var var_0 = Struct_1(global3.zw);
    var_0 = Struct_1(global3.wz);
    let var_1 = Struct_3(Struct_2(min(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, var_0.a.x, 1u), global3.wxw), vec3<u32>(global3.x, var_0.a.x, global3.x)), ~global3.www), 1354f), Struct_2(reverseBits(global3.wwy >> (global3.yxx % vec3<u32>(32u))), _wgslsmith_f_op_f32(ceil(504f))), _wgslsmith_div_i32(~u_input.b, _wgslsmith_div_i32(-global4[_wgslsmith_index_u32(var_0.a.x, 14u)], global4[_wgslsmith_index_u32(var_0.a.x & 1u, 14u)])));
    let var_2 = Struct_3(Struct_2(vec3<u32>(21751u, ~54176u, var_1.a.a.x) & ~(var_1.b.a & vec3<u32>(var_0.a.x, global3.x, var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.b * -878f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - -589f))))), var_1.b, u_input.a);
    global0 = var_2.a.b;
    return var_1.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1325f) * -814f), _wgslsmith_f_op_f32(select(-3698f, -131f, false))), 729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-328f, 687f, global2.x)) + _wgslsmith_f_op_f32(-856f * -1000f)) + _wgslsmith_f_op_f32(1353f * _wgslsmith_f_op_f32(f32(-1f) * -192f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f - -384f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -570f))), any(vec2<bool>(arg_1.x, false))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1367f, 1648f, -395f, var_0.x), vec4<f32>(var_0.x, var_0.x, 338f, var_0.x), arg_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, 314f)), -2043f, var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1123f))))), any(vec2<bool>(false, all(arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1769f, -305f, var_0.x, var_0.x))) - vec4<f32>(_wgslsmith_div_f32(1999f, -555f), -798f, 1259f, _wgslsmith_f_op_f32(153f + 1593f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -456f, _wgslsmith_div_f32(var_0.x, -1262f), 316f))))));
    var var_2 = Struct_1(vec2<u32>(~(min(0u, 26274u) | arg_2), _wgslsmith_mod_u32(arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1711u), arg_0.a) ^ 11079u)));
    let var_3 = Struct_3(Struct_2(global3.xxz, -1409f), Struct_2(global3.zzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * 281f))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(24944i, _wgslsmith_dot_vec2_i32(vec2<i32>(80i, u_input.b), abs(vec2<i32>(0i, 22227i))), 1i), ~0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(38768i, global4[_wgslsmith_index_u32(arg_2, 14u)], -45482i, u_input.b), vec4<i32>(u_input.a, global4[_wgslsmith_index_u32(1u, 14u)], 1i, global4[_wgslsmith_index_u32(0u, 14u)]) | vec4<i32>(global4[_wgslsmith_index_u32(arg_2, 14u)], -5844i, u_input.b, -1i)), ~(~vec4<i32>(u_input.b, global4[_wgslsmith_index_u32(0u, 14u)], u_input.b, global4[_wgslsmith_index_u32(arg_2, 14u)])))));
    var var_4 = var_3.b.a.xz;
    return firstTrailingBit(_wgslsmith_mod_u32(var_2.a.x, arg_2));
}

fn func_1(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f));
    global4 = array<i32, 14>();
    let var_1 = -(~global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~16031u, global3.x)), 14u)]);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(60203i, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(1i, global4[_wgslsmith_index_u32(0u, 14u)])) >> (firstTrailingBit(vec2<u32>(34055u, global3.x)) % vec2<u32>(32u))), _wgslsmith_mult_i32(min(var_1, global4[_wgslsmith_index_u32(3156u, 14u)]) << (1u % 32u), -var_1), 24761i) ^ vec3<i32>(global4[_wgslsmith_index_u32(21545u, 14u)], func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f * 1342f) + _wgslsmith_f_op_f32(floor(-1000f)))), 1i);
    global3 = _wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, firstTrailingBit(max(_wgslsmith_mult_u32(global3.x, global3.x), func_3(Struct_1(vec2<u32>(global3.x, global3.x)), arg_0.ywz, global3.x)))), firstTrailingBit(min(vec4<u32>(4294967295u ^ global3.x, func_3(Struct_1(global3.yx), vec3<bool>(arg_0.x, arg_0.x, false), 0u), 9870u, ~global3.x), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, global3.x, global3.x, 4294967295u)), vec4<u32>(global3.x, 68873u, global3.x, 4294967295u)))));
    return !(!vec2<bool>(true && select(global2.x, false, global2.x), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> f32 {
    global3 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_add_u32(global3.x, 1u), 0u), global3.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, firstTrailingBit(0u), global3.x, 4294967295u), vec4<u32>(global3.x, countOneBits(36678u), min(global3.x, global3.x), 0u)), _wgslsmith_add_u32(28227u, _wgslsmith_mod_u32(~global3.x, 0u))), global3.x);
    var var_0 = Struct_1(min(global3.yw, vec2<u32>(1u, ~global3.x)) >> (vec2<u32>(1u, _wgslsmith_add_u32(1u, 57824u)) % vec2<u32>(32u)));
    global2 = arg_1;
    var var_1 = Struct_1(abs(~vec2<u32>(29556u, 24697u)));
    let var_2 = countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(var_0.a.x, 14u)], global4[_wgslsmith_index_u32(var_0.a.x, 14u)], u_input.b), vec3<i32>(u_input.a, -2147483647i, u_input.b)), _wgslsmith_mult_i32(u_input.b, -20382i), u_input.b, 1i), vec4<i32>(abs(global4[_wgslsmith_index_u32(var_1.a.x, 14u)]), max(global4[_wgslsmith_index_u32(var_1.a.x, 14u)], u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(var_1.a.x, 14u)], global4[_wgslsmith_index_u32(var_1.a.x, 14u)], u_input.b, -22708i), vec4<i32>(0i, 2147483647i, global4[_wgslsmith_index_u32(var_0.a.x, 14u)], -2147483647i)), u_input.b & u_input.a)), global4[_wgslsmith_index_u32(var_0.a.x, 14u)], _wgslsmith_sub_i32(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(57757u, 14u)], global4[_wgslsmith_index_u32(var_0.a.x, 14u)]) | -51710i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -3042i, global4[_wgslsmith_index_u32(var_0.a.x, 14u)]), vec3<i32>(-1i, -1i, global4[_wgslsmith_index_u32(var_1.a.x, 14u)])) >> (firstTrailingBit(var_0.a.x) % 32u)), u_input.a));
    return 1629f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(vec4<bool>(true, true, true, true)), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, false, global2.x), !vec3<bool>(true, true, global2.x)))) * _wgslsmith_f_op_f32(step(321f, -229f))) * -720f);
    global4 = array<i32, 14>();
    var var_1 = select(!vec3<bool>(global2.x, !global2.x, false), vec3<bool>(!global2.x, false | !(global2.x | true), true), any(!select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, true, true, false), select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, false, true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(872f, 110f)), 422f));
    global2 = select(select(select(!select(vec3<bool>(false, global2.x, var_1.x), vec3<bool>(true, false, true), var_1.x), select(vec3<bool>(var_1.x, var_1.x, global2.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(global2.x, global2.x, true), false), select(vec3<bool>(false, global2.x, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, false, true))), true), vec3<bool>(true, var_0 == 609f, 256f >= _wgslsmith_f_op_f32(trunc(-842f))), vec3<bool>(false, true, !func_1(vec4<bool>(global2.x, var_1.x, global2.x, var_1.x)).x)), !vec3<bool>(global2.x, true, true), vec3<bool>(var_1.x, !select(false, any(vec3<bool>(true, var_1.x, global2.x)), global2.x && var_1.x), any(select(vec3<bool>(var_1.x, false, false), vec3<bool>(global2.x, false, true), -11706i == global4[_wgslsmith_index_u32(1u, 14u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(1071f);
}

