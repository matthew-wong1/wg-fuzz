struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(59730i, 36280i));

var<private> global2: vec3<i32> = vec3<i32>(0i, 30144i, i32(-2147483648));

var<private> global3: array<u32, 9>;

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-587f, -645f), _wgslsmith_f_op_f32(f32(-1f) * -740f)))) * vec2<f32>(-864f, -706f));
    let var_1 = global4[_wgslsmith_index_u32(arg_0.x, 21u)];
    global3 = array<u32, 9>();
    let var_2 = vec4<bool>(false, global0.x, !all(global0.yxx), (global2.x >= 32676i) & (abs(-u_input.a) < -1i));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f) + _wgslsmith_f_op_f32(max(-1056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1471f)))))), var_2);
    return ~(min(~vec2<u32>(25655u, global3[_wgslsmith_index_u32(arg_1.x, 9u)]) ^ ~vec2<u32>(arg_0.x, 83918u), arg_1.xx) & firstLeadingBit(~(~vec2<u32>(1u, 0u))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_sub_vec2_u32(func_3(~vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38136u, 9u)], 9u)], 9u)], 9u)], reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)])), vec3<u32>(~reverseBits(24182u), 34841u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)])), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~min(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)])), func_3(vec2<u32>(21927u, global3[_wgslsmith_index_u32(29219u, 9u)]), vec3<u32>(67938u, 33176u, 1u)) | ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], global3[_wgslsmith_index_u32(53509u, 9u)])), vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, select(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58994u, 9u)], 9u)], false)), 9u)], global3[_wgslsmith_index_u32(1u, 9u)])));
    global3 = array<u32, 9>();
    var var_1 = Struct_1(120f, select(vec4<bool>(global0.x, true, true, true), !select(vec4<bool>(false, true, global0.x, global0.x), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, true, true, true), vec4<bool>(false, false, global0.x, global0.x))), !global0.x));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(56921u, 4294967295u, var_0.x), vec3<u32>(4294967295u, 47404u, 4294967295u), vec3<u32>(25387u, var_0.x, var_0.x)), ~vec3<u32>(5005u, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 9u)], 9u)])), ~(~(vec3<u32>(global3[_wgslsmith_index_u32(0u, 9u)], var_0.x, 37708u) ^ vec3<u32>(var_0.x, 35310u, var_0.x)))), _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(~var_0.x, 9u)], var_0.x), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(vec2<u32>(35229u, 0u) << (vec2<u32>(24323u, var_0.x) % vec2<u32>(32u)), min(vec3<u32>(1u, global3[_wgslsmith_index_u32(18273u, 9u)], 0u), vec3<u32>(0u, var_0.x, 30353u))).x & select(_wgslsmith_dot_vec4_u32(vec4<u32>(8987u, global3[_wgslsmith_index_u32(4294967295u, 9u)], 18705u, global3[_wgslsmith_index_u32(15771u, 9u)]), vec4<u32>(global3[_wgslsmith_index_u32(1u, 9u)], 99384u, 1u, var_0.x)), 1u, global3[_wgslsmith_index_u32(0u, 9u)] <= global3[_wgslsmith_index_u32(0u, 9u)]), ~0u), 9u)]);
    var var_3 = global4[_wgslsmith_index_u32(var_2.x, 21u)];
    return !(!select(all(select(var_1.b.ww, var_3.d.b.yx, var_1.b.wy)), var_3.a.b.x, 338f < _wgslsmith_f_op_f32(sign(1023f))));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global0 = select(vec4<bool>(global0.x, global0.x, !func_2(), !global0.x || func_2()), select(vec4<bool>(global0.x, true, global0.x, false), select(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, true, false, true), !global0.x), vec4<bool>(func_2(), true, false, true), !(!vec4<bool>(true, global0.x, global0.x, false))), select(vec4<bool>(!global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, true)), true, !global0.x), !vec4<bool>(global0.x, true, global0.x, false), !vec4<bool>(false, false, global0.x, global0.x))), !(true && any(global0.yw)) & global0.x);
    var var_0 = ~(~1u);
    global1 = array<vec2<i32>, 1>();
    let var_1 = Struct_1(-318f, !(!select(!vec4<bool>(true, global0.x, global0.x, true), select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, true, false, true), vec4<bool>(global0.x, global0.x, true, true)), vec4<bool>(true, global0.x, global0.x, false))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.a)));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1663f, 754f)))) == 268f, true, all(vec2<bool>(true, global0.x)), global0.x), select(!(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), vec4<bool>(true, global0.x | func_1(vec4<i32>(2147483647i, -4135i, 57166i, 2147483647i)), false, !global0.x), false), !func_1(vec4<i32>(u_input.a & -68129i, -10691i, global2.x & 0i, firstLeadingBit(u_input.a))));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-337f))) * -510f), !(!(!vec4<bool>(false, global0.x, global0.x, false)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1117f + _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(ceil(567f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1202f)) * -1502f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1989f + -262f), _wgslsmith_f_op_f32(sign(-127f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-708f + -627f))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -2050f)), 143f)), vec4<bool>(all(global0.xw), any(vec2<bool>(global0.x, global0.x)), !global0.x && false, false)), Struct_1(-391f, !(!vec4<bool>(true, global0.x, global0.x, global0.x))));
    var_0 = global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)] << (global3[_wgslsmith_index_u32(0u, 9u)] % 32u)) ^ max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6613u, 9u)], 9u)], 9u)], 9u)], 9u)])) >> (~_wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)]) % 32u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_3(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23143u, 9u)], 9u)], global3[_wgslsmith_index_u32(81291u, 9u)]) & vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6420u, 9u)], 9u)], 5664u), vec3<u32>(firstTrailingBit(1u), firstTrailingBit(83544u), 22140u)).x, 9u)], 9u)]) & _wgslsmith_div_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 9u)] | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), 9u)], ~1u), 9u)], global3[_wgslsmith_index_u32(~1u, 9u)]), 9u)], 21u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-507f))), vec4<bool>(~global3[_wgslsmith_index_u32(~1u, 9u)] < abs(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24536u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]), global0.x, all(!select(vec4<bool>(false, var_0.c.b.x, false, true), var_0.d.b, global0.x)), any(vec2<bool>(false, var_0.c.b.x))));
    global2 = vec3<i32>(~_wgslsmith_mod_i32(-20193i, -global2.x), 55180i, _wgslsmith_mult_i32(u_input.a, u_input.a));
    global0 = vec4<bool>(func_2(), false, global0.x, var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -2235f, var_1.a, -1675f)) * vec4<f32>(-822f, 1070f, 151f, var_0.a.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) * var_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -985f)))));
}

