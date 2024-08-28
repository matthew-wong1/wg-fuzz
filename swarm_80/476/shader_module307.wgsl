struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1107f, 424f, -671f);

var<private> global1: array<bool, 6> = array<bool, 6>(true, true, true, false, false, true);

var<private> global2: vec3<u32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    let var_0 = 582f;
    let var_1 = true;
    var var_2 = arg_1;
    let var_3 = Struct_1(select(select(arg_1.a << ((vec3<u32>(1u, 6664u, 40354u) << (vec3<u32>(u_input.a, 1u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(arg_0.a.x, _wgslsmith_mod_i32(arg_0.a.x, arg_1.a.x), _wgslsmith_clamp_i32(-1i, 1744i, -4543i)), false), vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, var_2.a.x, -1i, arg_0.a.x), vec4<i32>(arg_1.a.x, arg_0.a.x, var_2.a.x, var_2.a.x))), reverseBits(arg_0.a.x << (global2.x % 32u)), -var_2.a.x), !vec3<bool>(all(vec4<bool>(true, var_2.b.x, true, false)), all(vec3<bool>(true, var_1, arg_1.b.x)), arg_1.b.x || arg_0.b.x)), vec2<bool>(true, !var_2.b.x), 956f);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -741f, 1298f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_1.c, var_2.c))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, var_2.c, -482f)) + vec3<f32>(var_0, var_3.c, -787f)) + vec3<f32>(_wgslsmith_f_op_f32(var_2.c - var_0), -1638f, var_2.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(-arg_0.c)))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 66091u)), ~countOneBits(7576u)), global2.x, global2.x), select(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 95811u), vec3<u32>(u_input.a, 4294967295u, global2.x)), vec3<u32>(6654u, global2.x, global2.x) ^ vec3<u32>(global2.x, global2.x, 4294967295u), vec3<bool>(true, true, true)), vec3<u32>(~(global2.x ^ 0u), global2.x, 1u), !(!(!vec3<bool>(arg_2, false, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, firstLeadingBit(-42665i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, -4943i), vec3<i32>(arg_0.a.x, 10283i, 19488i)), -1i, 1i) ^ vec3<i32>(-1i, 12884i & arg_0.a.x, min(-1i, arg_0.a.x))), !arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-665f)))), global0.x));
    var var_1 = true;
    var_1 = global1[_wgslsmith_index_u32(global2.x, 6u)];
    var var_2 = firstLeadingBit(abs(~abs(-12733i)) >> (select(8127u, ~arg_3.x, all(!vec2<bool>(true, arg_0.b.x))) % 32u));
    global1 = array<bool, 6>();
    return !var_0.b;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mult_vec2_i32(-(~vec2<i32>(-1i, firstLeadingBit(2147483647i))), vec2<i32>(-1i) * -vec2<i32>(1i, 1i));
    let var_1 = Struct_1(-vec3<i32>(-(~var_0.x), _wgslsmith_mod_i32(~0i, min(var_0.x, 0i)), var_0.x << (u_input.a % 32u)), func_4(Struct_1((vec3<i32>(var_0.x, 13981i, var_0.x) >> (vec3<u32>(17401u, 57576u, u_input.a) % vec3<u32>(32u))) | countOneBits(vec3<i32>(-27013i, var_0.x, 32504i)), vec2<bool>(!global1[_wgslsmith_index_u32(0u, 6u)], true), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -508f), _wgslsmith_f_op_f32(f32(-1f) * -107f))), ~firstTrailingBit(vec4<u32>(0u, global2.x, 4294967295u, 4294967295u)), u_input.a >> (~4294967295u % 32u), func_3(Struct_1(~vec3<i32>(var_0.x, var_0.x, -18394i), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)])), _wgslsmith_f_op_f32(trunc(-1238f))), Struct_1(~vec3<i32>(6046i, var_0.x, var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(global2.x, 6u)]), true), global0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * global0.x));
    global2 = func_3(var_1, var_1, true);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1263f, global0.x)) * _wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c + -122f), _wgslsmith_f_op_f32(f32(-1f) * -913f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, -524f, global0.x, -1563f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-612f, 1000f, 428f, var_1.c)))))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2, vec4<f32>(-1429f, global0.x, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(-1160f, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(-462f)), _wgslsmith_f_op_f32(-912f - -1035f), _wgslsmith_f_op_f32(f32(-1f) * -981f), var_2.x))));
    return !(13517u <= firstLeadingBit(1962u ^ func_3(var_1, var_1, var_1.b.x).x));
}

fn func_1() -> vec4<i32> {
    let var_0 = func_2();
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(456f - 1000f))), _wgslsmith_f_op_f32(sign(global0.x))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1606f, -2025f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(931f, 387f, global0.x), vec3<f32>(-840f, 1000f, global0.x), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-914f, -966f, 456f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(497f, global0.x, -1053f) - vec3<f32>(global0.x, global0.x, -598f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -1644f, global0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -501f, 1262f)))))));
    global2 = countOneBits(_wgslsmith_add_vec3_u32(reverseBits(~abs(vec3<u32>(u_input.a, u_input.a, 36667u))), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.a, 94251u, global2.x)))));
    let var_1 = false;
    var var_2 = Struct_1(vec3<i32>(min(23524i, abs(countOneBits(2147483647i))), ~_wgslsmith_add_i32(-10835i, reverseBits(24907i)), firstLeadingBit(1i)), !(!select(!vec2<bool>(var_1, global1[_wgslsmith_index_u32(global2.x, 6u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 6u)]), any(vec4<bool>(false, var_1, var_0, true)))), _wgslsmith_f_op_f32(-global0.x));
    return -reverseBits(vec4<i32>(var_2.a.x, -var_2.a.x, var_2.a.x, 1i) | firstTrailingBit(-vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1217f, -158f, -282f, -290f), vec4<f32>(1416f, 2058f, global0.x, global0.x)), vec4<f32>(global0.x, global0.x, -248f, 271f)))), -vec4<i32>(_wgslsmith_mult_i32(var_0.x, 47928i) << (func_3(Struct_1(var_0.xyz, vec2<bool>(false, true), global0.x), Struct_1(var_0.wxx, vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)]), global0.x), global1[_wgslsmith_index_u32(0u, 6u)]).x % 32u), var_0.x, var_0.x, ~_wgslsmith_dot_vec3_i32(var_0.zzx, var_0.zzy)));
}

