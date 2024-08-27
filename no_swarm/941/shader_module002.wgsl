struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 6>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> u32 {
    global2 = global3[_wgslsmith_index_u32(~min(50274u, _wgslsmith_sub_u32(1u, ~global2.c)), 28u)];
    var var_0 = max(_wgslsmith_div_vec3_i32(global2.d, vec3<i32>(u_input.c, _wgslsmith_div_i32(0i, u_input.c) >> (~24464u % 32u), min(1i, max(22979i, global2.d.x)))), ~firstTrailingBit(global2.d));
    let var_1 = Struct_3(select(select(select(vec3<bool>(true, global2.e, false), select(vec3<bool>(global2.b, global2.e, global1[_wgslsmith_index_u32(global2.c, 6u)]), vec3<bool>(global2.b, false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(57978u, 6u)])), false), select(vec3<bool>(true, true, false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(11940u, 6u)], false), vec3<bool>(false, global2.b, false), global1[_wgslsmith_index_u32(1u, 6u)]), true), !select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, global2.b), vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global2.e, false), global2.e)), select(!select(vec3<bool>(true, true, false), vec3<bool>(global2.e, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(88815u, 6u)]), !vec3<bool>(false, global2.b, global1[_wgslsmith_index_u32(95807u, 6u)]), !vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2.c, 6u)])), global1[_wgslsmith_index_u32(1u, 6u)]), true), _wgslsmith_dot_vec2_i32(-(-var_0.xy >> (firstLeadingBit(vec2<u32>(global2.c, 16397u)) % vec2<u32>(32u))), global2.d.zy));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(u_input.a), 4294967295u), ~countOneBits(vec2<u32>(76609u, arg_0)));
    global3 = array<Struct_1, 28>();
    return _wgslsmith_sub_u32(u_input.a, 12425u) >> (var_2.x % 32u);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = func_3(global2.c);
    var var_1 = any(vec2<bool>(!all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 6u)], false)), false));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(-451f)), !global2.b, u_input.b, select((vec3<i32>(-1i, global2.d.x, global2.d.x) | -u_input.d.zwz) >> (vec3<u32>(firstTrailingBit(arg_2), _wgslsmith_div_u32(11211u, 32092u), 4294967295u) % vec3<u32>(32u)), global2.d, select(!select(vec3<bool>(global2.e, true, true), vec3<bool>(global2.e, true, true), true), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, arg_0), false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], false), select(vec3<bool>(global2.e, arg_0, global1[_wgslsmith_index_u32(global2.c, 6u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_2, 6u)], true), vec3<bool>(false, true, arg_0))), vec3<bool>(true, true, global2.b))), !(abs(~arg_3) <= ((global2.c & u_input.a) << (~arg_2 % 32u))));
    global2 = Struct_1(-824f, global2.b, ~(~1u), -(global2.d & -vec3<i32>(1i, var_2.d.x, 1i)), false || global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, ~(var_2.c & global2.c)), 6u)]);
    var var_3 = arg_1.x << (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.x), abs(~vec2<u32>(u_input.b, u_input.b))) % 32u);
    return Struct_3(vec3<bool>(arg_0, global2.b, true), _wgslsmith_mod_i32(max(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), 6096i), _wgslsmith_mult_i32(-48749i, global2.d.x)) ^ (-2147483647i >> (arg_2 % 32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = vec2<bool>(!arg_2.a.x, global1[_wgslsmith_index_u32(func_3(35515u), 6u)]);
    return Struct_2(vec4<bool>(true, all(select(select(vec4<bool>(arg_0.x, false, arg_0.x, var_0.a.x), vec4<bool>(false, var_1.x, arg_1, true), global2.b), select(vec4<bool>(false, arg_0.x, arg_2.a.x, true), vec4<bool>(false, true, var_1.x, false), true), true)), global1[_wgslsmith_index_u32(1u & u_input.b, 6u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.c, u_input.b), 0u), ~_wgslsmith_mod_u32(4294967295u, 3471u)), 6u)]));
}

fn func_5(arg_0: Struct_2) -> bool {
    global2 = global3[_wgslsmith_index_u32(~((min(103981u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, 1u, 14521u), vec3<u32>(global2.c, global2.c, u_input.a))) | 84352u) & 4294967295u), 28u)];
    global2 = global3[_wgslsmith_index_u32(~u_input.b, 28u)];
    var var_0 = vec4<f32>(-1336f, _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2456f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1568f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1387f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a))), false))));
    let var_1 = any(vec3<bool>(global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(4294967295u, u_input.a), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, global2.c)))), 6u)], true & all(arg_0.a.wyz), !func_2(true & global1[_wgslsmith_index_u32(global2.c, 6u)], abs(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_sub_u32(2305u, global2.c), 1u).a.x));
    global0 = var_1;
    return !(_wgslsmith_sub_i32(-58048i, i32(-1i) * -global2.d.x) == -81596i);
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0.xx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - arg_2.x))) - _wgslsmith_f_op_f32(trunc(global2.a))))));
    var var_2 = _wgslsmith_mult_i32(arg_3, global2.d.x) << (~(~global2.c) % 32u);
    let var_3 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), -1331f)))) > _wgslsmith_f_op_f32(trunc(arg_2.x)), vec2<u32>(u_input.b | countOneBits(u_input.b), max(abs(global2.c), abs(global2.c))) >> (vec2<u32>(abs(u_input.a), countOneBits(u_input.b)) % vec2<u32>(32u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, u_input.a), u_input.b, _wgslsmith_mult_u32(1u, global2.c)), 1u);
    global3 = array<Struct_1, 28>();
    return Struct_2(vec4<bool>(func_2(global2.e, ~(~vec2<u32>(global2.c, 30808u)), _wgslsmith_clamp_u32(select(30826u, global2.c, true), abs(global2.c), u_input.a), 4987u).a.x, !all(select(vec2<bool>(arg_0.x, var_3.a.x), var_3.a.zz, vec2<bool>(var_3.a.x, true))), all(select(select(vec4<bool>(var_3.a.x, global1[_wgslsmith_index_u32(u_input.a, 6u)], true, var_3.a.x), vec4<bool>(false, global2.b, true, global2.b), vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], var_0.x, global2.b, true)), vec4<bool>(false, var_0.x, true, false), !vec4<bool>(true, true, var_3.a.x, true))), any(var_3.a)));
}

fn func_1() -> vec3<f32> {
    var var_0 = func_6(vec3<bool>(func_5(func_4(vec3<bool>(global1[_wgslsmith_index_u32(global2.c, 6u)], false, global1[_wgslsmith_index_u32(1u, 6u)]), true, func_2(global1[_wgslsmith_index_u32(u_input.b, 6u)], vec2<u32>(23381u, 0u), u_input.b, global2.c), _wgslsmith_div_f32(global2.a, global2.a))), false, !any(vec4<bool>(true, true, global2.e, true))), _wgslsmith_f_op_f32(floor(global2.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a * global2.a))), _wgslsmith_f_op_f32(-global2.a), global2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global2.a, global2.a)), _wgslsmith_f_op_f32(688f - global2.a)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(182f, global2.a, 854f, 249f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-276f, global2.a, global2.a, -247f))))))), select(!(!vec4<bool>(true, global2.e, global1[_wgslsmith_index_u32(u_input.b, 6u)], global2.b)), !select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 6u)], global2.b), vec4<bool>(true, false, global2.e, global2.b), vec4<bool>(true, false, false, global2.e)), true))), 49561i);
    var var_1 = Struct_3(select(!vec3<bool>(global2.e, !global1[_wgslsmith_index_u32(4294967295u, 6u)], all(var_0.a)), var_0.a.xxz, var_0.a.yxz), 2147483647i);
    global3 = array<Struct_1, 28>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global2.a)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-328f, 724f, global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))));
    var var_1 = ~reverseBits(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(global2.c, global2.c)), ~(~vec2<u32>(4294967295u, u_input.a))));
    global2 = global3[_wgslsmith_index_u32(5482u, 28u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a));
    global3 = array<Struct_1, 28>();
    let var_3 = global2.b | func_2(false, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, u_input.a))), select(vec2<u32>(u_input.b, 6806u), firstLeadingBit(vec2<u32>(0u, 4294967295u)), !vec2<bool>(global2.b, true))), 1u, 1u).a.x;
    global0 = global2.d.x == -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(570f, _wgslsmith_f_op_f32(max(var_0.x, global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -771f)), (1u ^ ~min(var_1.x, u_input.a)) << (11970u % 32u), _wgslsmith_mult_i32(u_input.d.x, global2.d.x) >> (~(~(~22463u)) % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, -1179f, 2556f, var_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-656f, -879f, global2.a, global2.a)) * vec4<f32>(694f, global2.a, -1664f, 860f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, var_0.x, global2.a, -629f))))), vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(11166u, var_1.x), 6u)] && (true || var_3), global1[_wgslsmith_index_u32(select(4294967295u, u_input.b, false), 6u)] && !global2.e, var_3))), -(~0i));
}

