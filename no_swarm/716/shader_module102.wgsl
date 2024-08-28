struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0i, Struct_1(vec3<bool>(false, true, false), 2147483647i, vec4<u32>(28255u, 0u, 1u, 41023u), 621f, -18648i), 0u, 29891i);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), 0i, vec4<u32>(1u, 1u, 4294967295u, 0u), 1836f, 2147483647i);

var<private> global2: vec2<bool>;

var<private> global3: array<bool, 15> = array<bool, 15>(true, true, false, false, true, true, false, true, false, true, false, false, false, true, false);

var<private> global4: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = ~35078i;
    global1 = arg_1.b;
    var var_1 = select(select(global1.a.zy, select(select(select(vec2<bool>(arg_1.b.a.x, true), vec2<bool>(global1.a.x, arg_1.b.a.x), true), !vec2<bool>(global0.b.a.x, global2.x), true), select(vec2<bool>(global3[_wgslsmith_index_u32(100660u, 15u)], global2.x), select(arg_1.b.a.zx, vec2<bool>(false, true), vec2<bool>(global2.x, true)), any(vec2<bool>(global0.b.a.x, global0.b.a.x))), !global1.a.x), true), global0.b.a.zz, vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 15u)], arg_1.b.a.x));
    global2 = vec2<bool>(!(u_input.c.x != u_input.a), select(false, false || arg_1.b.a.x, !all(vec4<bool>(false, false, true, global2.x))) && !var_1.x);
    global2 = select(arg_1.b.a.zx, !select(!select(vec2<bool>(true, global2.x), arg_1.b.a.zx, true), arg_1.b.a.xx, global4.a > ~4294967295u), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + global1.d) >= _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(max(arg_1.b.d, -255f))), true));
    return ~max(1u, 1u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_4) -> bool {
    global0 = Struct_2(-22580i, global0.b, max(~global1.c.x | _wgslsmith_sub_u32(~global1.c.x, 1u), arg_2.a), _wgslsmith_add_i32(_wgslsmith_clamp_i32(~arg_1.x, -10575i >> (_wgslsmith_add_u32(u_input.d, u_input.d) % 32u), u_input.e & arg_1.x), u_input.a));
    var var_0 = true;
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -arg_1, u_input.c.xw);
    let var_2 = ~_wgslsmith_mult_u32(1u, 20894u);
    var var_3 = Struct_1(global0.b.a, ~(~abs(_wgslsmith_mult_i32(u_input.a, u_input.e))), select(global1.c, global0.b.c, !global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-global1.d), Struct_2(global0.d, global0.b, global4.a, -43696i)), 15u)]), global0.b.d, 1i);
    return false;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.d), -374f, global0.b.d, global0.b.d) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -678f, global1.d, 715f))) * vec4<f32>(-1221f, _wgslsmith_div_f32(global1.d, 846f), 1000f, _wgslsmith_f_op_f32(-global0.b.d)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.d, 503f, global1.d, -1488f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1420f, 764f, global0.b.d, global1.d), vec4<f32>(410f, global0.b.d, 670f, global1.d))), select(vec4<bool>(global0.b.a.x, global0.b.a.x, global3[_wgslsmith_index_u32(arg_2, 15u)], true), vec4<bool>(global2.x, global3[_wgslsmith_index_u32(4294967295u, 15u)], true, global0.b.a.x), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_2, 15u)], true, true)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(global0.b.d)), _wgslsmith_f_op_f32(global0.b.d * global0.b.d), _wgslsmith_div_f32(global0.b.d, -1713f), _wgslsmith_f_op_f32(-336f + global1.d))))));
    global2 = global1.a.zy;
    global1 = Struct_1(select(global1.a, select(vec3<bool>(any(vec4<bool>(false, true, true, global1.a.x)), !global3[_wgslsmith_index_u32(u_input.d, 15u)], !global2.x), global1.a, global0.b.a), !(!func_2(vec3<u32>(0u, global1.c.x, 4294967295u), u_input.c.wz, Struct_4(39289u)))), _wgslsmith_sub_i32(34940i, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.e, ~34401i), u_input.c.x)), vec4<u32>(u_input.b, global0.c, 0u, abs(select(0u, 30292u, false)) ^ 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1022f - -1449f), global1.d)) * -1355f), 23909i ^ u_input.a);
    let var_1 = 27408u;
    global3 = array<bool, 15>();
    return Struct_3(vec2<u32>(~(4294967295u & arg_1), firstLeadingBit(_wgslsmith_mod_u32(global1.c.x, arg_2))), vec2<i32>(arg_0.x, 1i) | arg_0.zy, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec2<bool>(true, global0.b.a.x);
    let var_0 = Struct_1(!select(!vec3<bool>(global1.a.x, false, global2.x), !select(vec3<bool>(false, false, true), global0.b.a, false), !(!vec3<bool>(true, global1.a.x, false))), select(_wgslsmith_div_i32(-1i, max(-11306i, -41486i)), i32(-1i) * -10728i, !(!(!global1.a.x))), vec4<u32>(_wgslsmith_mod_u32(u_input.d, 24666u) | ~0u, _wgslsmith_sub_u32((global1.c.x << (14745u % 32u)) ^ 0u, 8581u), 1u, global0.c), global0.b.d, global1.b);
    var var_1 = func_1(~vec3<i32>(i32(-1i) * -6823i, _wgslsmith_add_i32(global0.a, var_0.b), _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, 0i)), global0.b.c.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(abs(global4.a), var_0.c.x), 4294967295u, global1.c.x));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xwx, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), 1u, countOneBits(abs(vec3<i32>(u_input.c.x, -var_2.e, global1.e))));
}

