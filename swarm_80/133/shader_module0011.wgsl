struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 6>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: array<Struct_5, 4>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_0), _wgslsmith_f_op_f32(-498f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -115f))))), vec3<u32>(~(~firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60406u, 6u)], 6u)], 6u)])), u_input.b.x, countOneBits(global1[_wgslsmith_index_u32(231u, 6u)])));
    var var_1 = Struct_2(Struct_1(arg_1 != _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.c), u_input.a.yy | u_input.c)), _wgslsmith_f_op_f32(1230f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(sign(var_0.b))))), ~(var_0.c ^ var_0.c));
    global2 = !vec4<bool>(true, all(!select(vec4<bool>(var_0.a.a, var_1.a.a, true, arg_0), vec4<bool>(global2.x, true, var_0.a.a, var_1.a.a), true)), true, !all(select(vec4<bool>(arg_0, true, global2.x, var_0.a.a), vec4<bool>(var_1.a.a, true, var_0.a.a, global2.x), vec4<bool>(arg_0, var_0.a.a, false, var_0.a.a))));
    var var_2 = ~(-2147483647i);
    let var_3 = !(!vec3<bool>(var_1.a.a, any(vec2<bool>(global2.x, var_0.a.a)), !(false & var_0.a.a)));
    return _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(u_input.d, 29080u)), 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_4(arg_0);
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, func_3(global2.x, 4322i), 1u, ~global1[_wgslsmith_index_u32(41760u, 6u)]), vec4<u32>(u_input.b.x, firstTrailingBit(59287u), global1[_wgslsmith_index_u32(u_input.b.x, 6u)] << (1u % 32u), countOneBits(arg_1))), abs(abs(arg_1)) | _wgslsmith_mod_u32(4294967295u, 80473u), ~arg_1, 1u), countOneBits(abs(vec4<u32>(arg_1, u_input.b.x, _wgslsmith_add_u32(43018u, 8166u), 13859u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1827f - 1000f), _wgslsmith_div_f32(-169f, -491f)))), -1006f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1191f, 1378f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1241f, -1004f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, -1888f) - vec2<f32>(619f, 338f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1129f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1540f, 606f)))), !global2.x)), vec2<bool>(global2.x, all(global2.wyw))));
    var var_3 = !(!vec4<bool>(all(global2.xww), true, !any(vec4<bool>(false, global2.x, global2.x, true)), global2.x));
    global0 = -2147483647i;
    return min(_wgslsmith_mod_u32(51606u, ~(~arg_1)), 71972u) < _wgslsmith_add_u32(_wgslsmith_mod_u32(1208u, abs(global1[_wgslsmith_index_u32(var_1.x, 6u)]) << (select(arg_2.x, arg_2.x, false) % 32u)), ~1u);
}

fn func_1() -> i32 {
    let var_0 = func_2(countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-9186i, u_input.a.x, 40157i) >> (vec3<u32>(global1[_wgslsmith_index_u32(u_input.d, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], u_input.b.x) % vec3<u32>(32u)), u_input.a), 12665i, u_input.c.x, u_input.c.x)), ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98335u, 6u)], 6u)], 6u)], 51646u, u_input.d)), 6u)], global1[_wgslsmith_index_u32(~firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41308u, 6u)], 6u)], 6u)]), 6u)]), ~u_input.b.zz);
    let var_1 = u_input.a.x;
    var var_2 = global3[_wgslsmith_index_u32(select(max(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23995u, 6u)], 6u)], 0u, 19350u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)], 0u, 4294967295u))), _wgslsmith_mult_u32(31008u, ~(~36670u))), ~_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.b), u_input.b & vec3<u32>(global1[_wgslsmith_index_u32(0u, 6u)], u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)]))), func_2(~(~vec4<i32>(var_1, 9785i, u_input.c.x, 32843i)), ~(~16394u), u_input.b.zz)), 4u)];
    var var_3 = vec3<bool>(!global2.x, true, false);
    let var_4 = -u_input.a.x;
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>((i32(-1i) * -26598i) << (var_2.b.x % 32u), 590i, _wgslsmith_mult_i32(-var_1, ~(-4203i))), u_input.a), -8485i);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(7558i, 1i, -2147483647i, -1691i), vec4<i32>(1i, u_input.a.x, -2147483647i, arg_3.x)), arg_2.x), arg_3.x) > (-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, -1i, -20101i, u_input.a.x), vec4<i32>(-1i, arg_2.x, arg_2.x, arg_3.x)) >> ((0u ^ abs(arg_0.x)) % 32u)));
    var var_1 = u_input.d | ~(~_wgslsmith_mult_u32(arg_0.x, _wgslsmith_sub_u32(1u, u_input.b.x)));
    var var_2 = reverseBits(~(~abs(arg_0.x) ^ abs(firstLeadingBit(u_input.d))));
    var var_3 = Struct_3(~func_3(global2.x, -1i));
    var_3 = Struct_3(~(~0u));
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(func_3(!global2.x, ~(arg_3.x << (0u % 32u))), 25105u, _wgslsmith_mod_u32(0u, var_3.a))), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(~0u, 6u)], select(_wgslsmith_add_u32(8230u, min(34349u, u_input.d)), _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 6u)]), !global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1012f, 1000f) + vec2<f32>(-889f, -130f)) + vec2<f32>(-298f, 2582f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1381f, -1067f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-661f, -479f)))))), ~vec3<i32>(abs(func_1()), u_input.a.x, 1i), u_input.c);
    var var_1 = vec2<u32>(66758u, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(abs(~1u), countOneBits(71573u))));
    let var_2 = Struct_2(func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, u_input.b.x, 0u) ^ vec3<u32>(u_input.d, var_0.b.x, 1u), ~var_0.b.yxx) ^ u_input.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.d.xx))), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(~2459i, u_input.a.x), abs(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), vec2<i32>(-_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x)).c, 484f, reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~65643u, _wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(87247u, 6u)]), func_4(var_0.b.zxz, var_0.e.xz, vec3<i32>(2147483647i, u_input.c.x, u_input.a.x), u_input.a.zz).b.x), u_input.b)));
    var_1 = vec2<u32>(var_2.c.x, 0u);
    var var_3 = Struct_1(false);
    var var_4 = var_0.e;
    var var_5 = ~u_input.b.xx;
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(3279i));
}

