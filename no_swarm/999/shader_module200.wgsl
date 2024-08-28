struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-868f + _wgslsmith_f_op_f32(floor(-839f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1071f * 417f) - _wgslsmith_f_op_f32(abs(-1038f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-533f)), _wgslsmith_f_op_f32(f32(-1f) * -152f), !global0.x))), global0.x, ~u_input.a, false, vec2<bool>(global0.x && (abs(arg_1) != reverseBits(u_input.b.x)), false));
    var var_1 = arg_0;
    return var_0.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5) -> Struct_4 {
    global0 = !(!vec4<bool>(arg_1.a < 1u, func_3(Struct_3(u_input.d.wzx), _wgslsmith_add_u32(59064u, arg_0.x)), false, all(!vec4<bool>(false, global0.x, true, global0.x))));
    let var_0 = Struct_3(vec3<i32>(u_input.e >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) % 32u), 51907i, -(u_input.c.x << (39541u % 32u))));
    let var_1 = ~u_input.d.xyw;
    global0 = !select(!(!vec4<bool>(global0.x, false, global0.x, global0.x)), vec4<bool>(global0.x, all(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x)), !(global0.x | global0.x), global0.x && true), false);
    var var_2 = Struct_4(u_input.b, !global0.zy, arg_0.zz, -193f, 51354i);
    return Struct_4(~select(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a, var_2.a.x, u_input.b.x, 54709u), vec4<u32>(1u, arg_1.a, u_input.b.x, 99u)), ~var_2.a, select(select(vec4<bool>(var_2.b.x, global0.x, false, true), vec4<bool>(var_2.b.x, true, global0.x, false), var_2.b.x), select(vec4<bool>(var_2.b.x, global0.x, true, var_2.b.x), vec4<bool>(false, var_2.b.x, global0.x, global0.x), vec4<bool>(true, true, true, var_2.b.x)), !vec4<bool>(false, var_2.b.x, global0.x, true))), select(global0.xw, !var_2.b, global0.x), abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.a.x, 23782u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.c.x, 26842u), vec2<u32>(arg_0.x, var_2.a.x), vec2<u32>(5980u, 0u)) % vec2<u32>(32u)), var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f + -437f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1373f)) * var_2.d), var_2.d)), -1i);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: Struct_4) -> u32 {
    var var_0 = arg_0.d;
    var_0 = arg_0.d;
    let var_1 = global1[_wgslsmith_index_u32(0u, 5u)];
    var var_2 = 0u >> (firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 62587u, u_input.b.x), vec3<u32>(4294967295u, 54409u, u_input.b.x)) >> (48590u % 32u)) % 32u);
    let var_3 = global0.www;
    return _wgslsmith_sub_u32(0u, arg_3.a.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_5(select(u_input.b.x, ~func_4(Struct_4(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec2<bool>(false, false), vec2<u32>(u_input.b.x, u_input.b.x), arg_1.x, 25414i), !global0.x, 34313u, func_2(u_input.b.yzy, Struct_5(4294967295u))), min(u_input.a, abs(1i)) != u_input.d.x));
    global0 = select(!select(!(!vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(!global0.x, global0.x, true, func_2(vec3<u32>(29819u, var_0.a, 31331u), Struct_5(u_input.b.x)).b.x), !select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), true)), select(!vec4<bool>(any(global0.wzy), global0.x, true, !global0.x), select(vec4<bool>(!global0.x, true, select(global0.x, global0.x, global0.x), func_2(vec3<u32>(u_input.b.x, 0u, var_0.a), Struct_5(56006u)).b.x), vec4<bool>(4294967295u < u_input.b.x, all(vec3<bool>(global0.x, true, true)), true, u_input.b.x >= 4294967295u), !vec4<bool>(global0.x, true, true, global0.x)), global0.x), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(true, false, global0.x, global0.x))));
    global0 = select(!(!select(!vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), all(vec2<bool>(global0.x, false)))), !(!select(!vec4<bool>(global0.x, true, false, global0.x), !vec4<bool>(global0.x, global0.x, true, false), !global0.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, any(vec2<bool>(false, false)), global0.x), false), !vec4<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, false)), true, !global0.x, all(global0.zwz)), !(!(!vec4<bool>(true, global0.x, false, false)))));
    global0 = !(!(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    let var_1 = u_input.b.x;
    return global1[_wgslsmith_index_u32(var_1, 5u)];
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(firstLeadingBit(vec3<i32>(-1i, 1i, _wgslsmith_add_i32(min(u_input.c.x, u_input.d.x), _wgslsmith_mod_i32(-28104i, 2147483647i)))));
    global0 = !(!(!vec4<bool>(global0.x, false, true, false)));
    var var_1 = Struct_1(any(!(!select(vec4<bool>(arg_1.a, false, arg_1.a, true), vec4<bool>(true, arg_1.a, arg_1.a, true), global0.x))));
    var var_2 = var_0;
    let var_3 = Struct_4(u_input.b, !(!global0.zw), vec2<u32>(~(max(arg_0.x, u_input.b.x) | 0u), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-701f))), 63841i);
    return select(!select(global0.wzw, !global0.wxy, global0.wxy), !vec3<bool>(true, !(!var_1.a), var_1.a && true), global0.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(countOneBits(~select(vec3<i32>(-41949i, u_input.a, 9210i), u_input.c, global0.xxz)), u_input.c, func_5(countOneBits(u_input.b << (u_input.b % vec4<u32>(32u))), func_1(vec4<i32>(u_input.e, -15671i, 0i, u_input.e) << (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1433f, -1106f, -704f, 281f) * vec4<f32>(249f, 1708f, -392f, 604f))))));
    global1 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(518f - 2028f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(811f - -1941f))));
    let var_2 = func_2(~reverseBits(vec3<u32>(u_input.b.x, 41732u, u_input.b.x)) >> (reverseBits(~(~u_input.b.wzy)) % vec3<u32>(32u)), Struct_5(~select(firstTrailingBit(23842u), ~4294967295u, true))).b.x;
    global1 = array<Struct_1, 5>();
    global0 = select(select(!vec4<bool>(false, var_2 != false, func_5(vec4<u32>(33328u, u_input.b.x, u_input.b.x, 5684u), global1[_wgslsmith_index_u32(4294967295u, 5u)]).x, true), select(!vec4<bool>(var_2, global0.x, var_2, false), select(select(vec4<bool>(false, var_2, false, global0.x), vec4<bool>(global0.x, global0.x, var_2, global0.x), vec4<bool>(var_2, false, var_2, global0.x)), vec4<bool>(true, true, true, true), !vec4<bool>(var_2, global0.x, global0.x, true)), !global0.x), !(!vec4<bool>(global0.x, global0.x, true, false))), vec4<bool>(true, !(!var_2), all(select(vec2<bool>(true, true), !global0.zy, vec2<bool>(var_2, true))), global0.x), select(select(select(!vec4<bool>(true, var_2, var_2, false), vec4<bool>(false, var_2, global0.x, true), vec4<bool>(var_2, global0.x, var_2, var_2)), select(select(vec4<bool>(true, var_2, global0.x, true), vec4<bool>(global0.x, false, false, false), false), vec4<bool>(global0.x, false, false, var_2), select(vec4<bool>(var_2, true, global0.x, false), vec4<bool>(var_2, true, false, true), global0.x)), all(select(vec4<bool>(false, var_2, var_2, false), vec4<bool>(false, false, var_2, false), vec4<bool>(false, true, var_2, false)))), vec4<bool>(false, !any(global0.zw), var_2, select(!var_2, var_2, !var_2)), !global0.x));
    global0 = select(select(vec4<bool>(var_2, var_2, !(!var_2), global0.x | any(global0.yzy)), select(vec4<bool>(true, false & global0.x, func_3(var_0, 34621u), true && var_2), !(!vec4<bool>(global0.x, false, false, var_2)), 12665u < u_input.b.x), vec4<bool>(true, any(!vec4<bool>(true, var_2, var_2, true)), true, select(true, true, false))), !select(vec4<bool>(false, all(vec3<bool>(false, false, true)), false, !var_2), select(select(vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(false, true, var_2, true), vec4<bool>(false, global0.x, global0.x, true)), vec4<bool>(false, false, var_2, global0.x), select(vec4<bool>(var_2, global0.x, var_2, true), vec4<bool>(false, true, var_2, false), global0.x)), !vec4<bool>(global0.x, true, false, global0.x)), true);
    global0 = !select(!(!vec4<bool>(global0.x, false, false, global0.x)), vec4<bool>(!(u_input.a > 0i), true, true, global0.x), select(select(select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, global0.x, true, var_2), global0.x), vec4<bool>(var_2, false, global0.x, true), global0.x & false), select(!vec4<bool>(var_2, global0.x, global0.x, var_2), vec4<bool>(global0.x, false, false, false), var_2 && false), true));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

