struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 28337i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 25>;

var<private> global3: f32 = -519f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    return arg_2.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> bool {
    global1 = arg_1;
    global1 = global2[_wgslsmith_index_u32(countOneBits(global1.c), 25u)];
    var var_0 = Struct_1(-1i, global1.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.d.x >> (11195u % 32u), _wgslsmith_add_u32(arg_2, 1u), arg_2, ~global1.c), vec4<u32>(~67940u, arg_1.c, _wgslsmith_mod_u32(arg_2, 10548u), select(global1.c, 0u, false)) & ~vec4<u32>(34990u, arg_2, 1u, global1.c)), global1.d, countOneBits(_wgslsmith_mult_i32(~arg_3, arg_3)));
    let var_1 = !(any(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true)) && false);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1273f, var_0.b))))));
    return var_1;
}

fn func_2() -> bool {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(-2706f + _wgslsmith_f_op_f32(1057f + -1043f)) != global1.b, !func_4(_wgslsmith_f_op_f32(func_3(Struct_1(1i, global1.b, 15884u, vec2<u32>(u_input.b, global1.c), -1i), global1.b == 1175f, global2[_wgslsmith_index_u32(global1.c, 25u)], ~vec4<u32>(global1.d.x, 35914u, u_input.b, 1u))), Struct_1(u_input.c.x ^ global0.x, _wgslsmith_f_op_f32(647f - global1.b), global1.d.x, ~global1.d, -2894i), ~(~u_input.b), global0.x), true, false);
    var var_1 = select(var_0.yx, vec2<bool>(false, var_0.x), select(var_0.yw, vec2<bool>(var_0.x, true), vec2<bool>(any(!vec2<bool>(var_0.x, var_0.x)), true)));
    var var_2 = global2[_wgslsmith_index_u32(global1.c, 25u)];
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-30147i, u_input.c.x, 0i), vec3<i32>(global1.e, global1.e, 0i)) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, 0u, global1.d.x, var_2.d.x), vec4<u32>(0u, 1u, u_input.b, global1.c)), abs(global1.c)), ~max(6423u, u_input.b)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(665f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + var_2.b), -345f)) + global1.b), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(select(global1.d.x, u_input.b, true), ~u_input.b), var_2.d.x), ~select(vec2<u32>(~15726u, firstLeadingBit(4294967295u)), ~var_2.d, select(!var_0.yw, select(var_0.yw, var_0.ww, var_0.x), !var_0.yw)), countOneBits(~reverseBits(-2147483647i)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b, var_2.b, global1.b, global1.b), vec4<f32>(-464f, var_3.b, -579f, 1000f), vec4<bool>(false, var_0.x, var_0.x, true)))) + vec4<f32>(_wgslsmith_f_op_f32(1000f - var_3.b), 469f, _wgslsmith_f_op_f32(-global1.b), -1000f)))));
    return var_1.x != false;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_mod_vec2_i32(firstTrailingBit(-_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(global1.a, -4407i), u_input.a | u_input.a)), u_input.c);
    global2 = array<Struct_1, 25>();
    var var_0 = ~_wgslsmith_clamp_u32(0u, ~u_input.b, abs(abs(arg_2.x ^ 4294967295u)));
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = Struct_1(_wgslsmith_add_i32(min(-9960i << (~u_input.b % 32u), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c))), arg_1.e), global1.b, min(_wgslsmith_clamp_u32(61385u, arg_1.c, _wgslsmith_mod_u32(global1.c, arg_1.c)) | global1.d.x, 67373u), ~(reverseBits(vec2<u32>(arg_2.x, u_input.b)) >> (max(firstLeadingBit(vec2<u32>(arg_2.x, 60686u)), arg_2) % vec2<u32>(32u))), -firstLeadingBit(abs(-45558i)));
    return Struct_1(_wgslsmith_div_i32(-45435i, -2147483647i), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_mod_u32(~abs(1u), arg_2.x), var_2.d, _wgslsmith_dot_vec2_i32(min(countOneBits(u_input.c), ~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a, 0i), var_1)), _wgslsmith_mult_vec2_i32(-vec2<i32>(58869i, 6933i) & select(vec2<i32>(u_input.a.x, var_2.a), vec2<i32>(19711i, -1i), arg_0), select(var_1, vec2<i32>(global0.x, -16907i), vec2<bool>(true, arg_0.x)) << ((arg_2 | arg_1.d) % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = func_5(vec2<bool>(!func_2(), true), arg_0, select(vec2<u32>(_wgslsmith_div_u32(64318u, _wgslsmith_dot_vec2_u32(global1.d, vec2<u32>(10984u, 0u))), 35119u), ~(~vec2<u32>(5280u, arg_0.c)) | (vec2<u32>(arg_0.d.x, 21792u) << ((vec2<u32>(1u, 28419u) & vec2<u32>(25881u, arg_0.c)) % vec2<u32>(32u))), select(false, true, true)));
    let var_1 = countOneBits(_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.c, var_0.c, 0u), vec3<u32>(u_input.b, global1.c, 1u)), vec3<u32>(29050u, _wgslsmith_dot_vec2_u32(var_0.d, arg_0.d), global1.d.x))) & select(vec3<u32>(1u, 1u, u_input.b) >> (vec3<u32>(0u, var_0.d.x & var_0.d.x, 0u) % vec3<u32>(32u)), ~max(vec3<u32>(46645u, var_0.c, 72695u), vec3<u32>(0u, var_0.d.x, global1.d.x)) << (~vec3<u32>(8206u, 1u, 0u) % vec3<u32>(32u)), vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), firstLeadingBit(var_0.c) >= ~1u, true));
    let var_2 = arg_0;
    var var_3 = var_2.b;
    let var_4 = Struct_1(u_input.a.x, var_0.b, ~reverseBits(var_2.c), min(~(~(vec2<u32>(arg_0.c, var_1.x) ^ vec2<u32>(var_0.c, global1.c))), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(select(var_2.d, arg_0.d, vec2<bool>(false, false)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.c, 0u), var_1.zx), vec2<u32>(u_input.b, arg_0.c)), ~vec2<u32>(var_1.x, 0u))), select(global0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, -28961i, global1.a, -5940i), vec4<i32>(39241i, -1i, var_2.a, global1.a)) >> (vec4<u32>(var_0.c, 68097u, 1u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(44425i, var_0.a, -30497i, global1.e), ~vec4<i32>(arg_0.a, arg_0.e, var_2.a, global0.x))), func_2()));
    return 1683u | ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_1, vec3<u32>(9295u, 80657u, 0u)), vec3<u32>(var_0.c, var_0.d.x, var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(countOneBits(global0.x), -13685i);
    var var_0 = u_input.b;
    var var_1 = 1u;
    var var_2 = func_1(global2[_wgslsmith_index_u32(0u, 25u)], global1.b);
    let var_3 = global1.a;
    var var_4 = _wgslsmith_f_op_f32(-global1.b);
    var var_5 = global1.b;
    let var_6 = min(1i, abs(-1i));
    var var_7 = global2[_wgslsmith_index_u32(~u_input.b, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(2932u, 0u), vec2<u32>(var_7.d.x, global1.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b, var_7.b), vec2<f32>(-1180f, 1485f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-430f, global1.b) - vec2<f32>(-1000f, var_7.b)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_7.b, global1.b), vec2<f32>(-834f, 1020f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -356f) * vec2<f32>(787f, global1.b)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_7.b) + vec2<f32>(var_7.b, 1000f)))))), abs(_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(18351u, 1u, 0u, 1u))), ~(~vec4<u32>(75693u, 0u, 1u, global1.d.x)))), global1.d.x, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_7.b)))));
}

