struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<u32, 21>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(0i, -2633i, i32(-2147483648), 14i), vec4<bool>(false, true, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<f32> {
    let var_0 = global0.b.x;
    global2 = Struct_1(global2.a, vec4<bool>(u_input.a.x > global2.a.x, any(select(!global2.b.wzx, select(global2.b.xzw, global2.b.yyx, global0.b.x), select(vec3<bool>(true, global0.b.x, global0.e), vec3<bool>(global2.b.x, global0.e, global2.b.x), global2.b.xxy))), !select(any(global2.b.xxw), any(vec3<bool>(false, true, global0.e)), true), !all(vec2<bool>(true, global2.b.x))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~((4294967295u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13216u, 21u)], 21u)]) & (global1[_wgslsmith_index_u32(4294967295u, 21u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5751u, 21u)], 21u)] % 32u))), global1[_wgslsmith_index_u32(select(80608u, _wgslsmith_add_u32(~30007u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2497u, 21u)], 21u)], 21u)] | 78697u, 21u)], 21u)]), any(select(global2.b.zxy, global2.b.ywy, global2.b.x))), 21u)]), ~5930u);
    var var_2 = select(vec3<bool>(true, true, true), global2.b.zyz, global2.b.x);
    var var_3 = Struct_5(~_wgslsmith_add_vec4_u32(~vec4<u32>(16432u, 0u, 40192u, global1[_wgslsmith_index_u32(61592u, 21u)]), vec4<u32>(~8030u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60245u, 21u)], 21u)], 21u)], 21u)], 0u, _wgslsmith_clamp_u32(0u, 1u, 0u))), 43883u, Struct_4(-5095i, !(!(!vec2<bool>(global0.e, true))), ~global2.a.xx >> (((vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 0u) | vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30057u, 21u)], 21u)], 0u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(64027u, 21u)], 51105u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)])) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<i32>(23402i, -2147483647i, 1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -30668i), global2.a.zw)), true), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-573f, -1973f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(469f * 1000f)))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(min(var_3.d.a.x, 545f))), 1261f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.d.a.x, -756f), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - var_3.d.a.x), _wgslsmith_f_op_f32(var_3.d.a.x - var_3.d.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.a.x - -443f) - var_3.d.a.x))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f * _wgslsmith_f_op_f32(floor(-761f))) + _wgslsmith_f_op_f32(-1161f - _wgslsmith_f_op_f32(min(826f, -887f))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~global2.a.x, _wgslsmith_dot_vec4_i32(u_input.a, global0.d)))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_0))))));
    global1 = array<u32, 21>();
    global2 = Struct_1(~firstLeadingBit(vec4<i32>(global2.a.x, global0.d.x | -14370i, firstLeadingBit(724i), countOneBits(u_input.a.x))), vec4<bool>(any(select(!global2.b, !vec4<bool>(false, global0.b.x, true, global0.b.x), true)), true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~111919u), 21u)], 21u)], 21u)] <= (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90088u, 21u)], 21u)], 21u)], 21u)] >> (~global1[_wgslsmith_index_u32(21332u, 21u)] % 32u)), !(!(global1[_wgslsmith_index_u32(1u, 21u)] > 0u))));
    let var_2 = vec2<bool>(101f > var_0, all(!(!global0.b)));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = reverseBits(firstLeadingBit(select(global0.d.yxy, ~global2.a.yzw, false && all(global2.b))));
    var var_1 = global0.b.x;
    var var_2 = select(!global2.b, vec4<bool>(global0.b.x, select(global2.b.x & true, func_2(), false), global2.b.x | any(!vec3<bool>(global0.e, global0.e, true)), global2.b.x), select(true, select(!(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44740u, 21u)], 21u)], 21u)], 21u)] > 0u), true, true), global2.b.x));
    var var_3 = Struct_5(~(~(~(vec4<u32>(global1[_wgslsmith_index_u32(81371u, 21u)], 36283u, global1[_wgslsmith_index_u32(1u, 21u)], 4294967295u) << (vec4<u32>(1147u, global1[_wgslsmith_index_u32(73115u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 0u) % vec4<u32>(32u))))), _wgslsmith_sub_u32(max(0u, _wgslsmith_add_u32(7714u, 1u)) | firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3475u, 21u)] & 1u, 21u)]), 4294967295u), Struct_4(u_input.a.x, global2.b.xy, global0.c, select(global2.a, -_wgslsmith_mod_vec4_i32(global2.a, vec4<i32>(5051i, -28188i, var_0.x, global0.a)), select(vec4<bool>(false, var_2.x, true, false), global2.b, select(global2.b, vec4<bool>(false, global2.b.x, false, global2.b.x), var_2.x))), all(select(select(var_2.xxx, var_2.zzw, vec3<bool>(true, global2.b.x, global0.e)), !vec3<bool>(var_2.x, global0.e, true), true))), Struct_3(vec2<f32>(-276f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1059f)), _wgslsmith_f_op_f32(f32(-1f) * -542f))))));
    global0 = Struct_4(-7896i, vec2<bool>(all(select(var_2.xxw, vec3<bool>(global0.e, var_2.x, global2.b.x), !vec3<bool>(var_2.x, var_3.c.e, var_3.c.e))), true), reverseBits(u_input.a.yx), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -1i, -1i, u_input.a.x), u_input.a | vec4<i32>(2497i, -44612i, global0.c.x, var_0.x)), -2147483647i, ~1i, u_input.a.x), global0.e);
    return Struct_1(u_input.a, global2.b);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    global2 = func_1();
    global2 = func_1();
    let var_0 = arg_0;
    let var_1 = any(var_0.b.b.yx);
    global1 = array<u32, 21>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 21>();
    var var_0 = func_4(Struct_2(func_1(), func_1(), func_1(), ~select(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42540u, 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24394u, 21u)], 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)]), vec4<u32>(69253u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 87557u, 5424u) << (vec4<u32>(global1[_wgslsmith_index_u32(5u, 21u)], 83441u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12918u, 21u)], 21u)]) % vec4<u32>(32u)), global2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1038f), 999f)), _wgslsmith_f_op_f32(-1250f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(660f + -494f) * _wgslsmith_f_op_f32(select(1745f, -639f, global0.b.x))))), global2.b);
    global1 = array<u32, 21>();
    var var_1 = ~global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(4668u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16325u, 21u)], 21u)], 21u)], 21u)]) ^ max(67344u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7889u, 21u)], 21u)])) & _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17904u, 21u)], 21u)] >> (0u % 32u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 21u)], 322u), _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)]), _wgslsmith_mod_u32(12647u, 61841u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(40711u, 21u)], 4294967295u, 24240u, global1[_wgslsmith_index_u32(71245u, 21u)]), vec4<u32>(32156u, 1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54932u, 21u)], 21u)], 21u)], 21u)]), vec4<u32>(6498u, 53662u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 4294967295u)) & vec4<u32>(28680u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 16755u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)])), 21u)];
    var var_2 = any(vec2<bool>(!(_wgslsmith_sub_u32(27588u, 1317u) == ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3380u, 21u)], 21u)], 21u)]), !var_0.b.x));
    global0 = Struct_4(0i, !vec2<bool>(!var_0.b.x, true), vec2<i32>(~(-(global0.d.x & var_0.a.x)), func_4(Struct_2(func_4(Struct_2(Struct_1(vec4<i32>(2147483647i, var_0.a.x, global2.a.x, global2.a.x), var_0.b), Struct_1(vec4<i32>(1i, 2147483647i, -1i, var_0.a.x), global2.b), Struct_1(vec4<i32>(-1i, 174i, 5787i, global2.a.x), vec4<bool>(true, true, false, true)), vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u)), -1267f, vec4<bool>(global2.b.x, global0.e, false, true)), Struct_1(u_input.a, global2.b), func_4(Struct_2(Struct_1(u_input.a, var_0.b), Struct_1(global2.a, vec4<bool>(false, true, true, true)), Struct_1(global0.d, global2.b), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1463u, 21u)], 21u)], 21u)], 21u)], 60494u, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)])), 225f, global2.b), _wgslsmith_mod_vec4_u32(vec4<u32>(2397u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 22116u, 30251u), vec4<u32>(13861u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54803u, 21u)], 21u)], 21u)], 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19403u, 21u)], 21u)], global1[_wgslsmith_index_u32(0u, 21u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(681f, -1728f))), global2.b).a.x), global0.d, 39273i >= global2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(min(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 4294967295u, 4294967295u, 53627u) ^ vec4<u32>(4294967295u, 34800u, global1[_wgslsmith_index_u32(23358u, 21u)], global1[_wgslsmith_index_u32(679u, 21u)]), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 1u) | vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(96125u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)])), ~_wgslsmith_mod_vec4_u32(vec4<u32>(2645u, 1u, global1[_wgslsmith_index_u32(48918u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24175u, 21u)], 21u)], 21u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44583u, 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40529u, 21u)], 21u)], 11897u, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1635f, -507f, 449f) - vec3<f32>(-391f, -734f, -1709f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1476f, 1000f, 1416f), vec3<f32>(958f, 471f, 1436f))))) + vec3<f32>(1131f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -149f))), 1892f)), u_input.a, 2147483647i);
}

