struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), vec3<f32>(583f, 149f, -1699f), vec4<u32>(35275u, 16047u, 0u, 12701u));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), vec3<f32>(473f, 1051f, -750f), vec4<u32>(42088u, 921u, 23677u, 4294967295u));

var<private> global2: bool = true;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global0.b.x)), global1.b.x, _wgslsmith_div_f32(global1.b.x, -889f)))));
    global2 = global0.a.x;
    global0 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(var_0)))) * _wgslsmith_f_op_vec3_f32(global0.b + global1.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b), vec3<f32>(1861f, -208f, -675f), select(vec3<bool>(true, true, false), vec3<bool>(global1.a.x, global0.a.x, false), vec3<bool>(global0.a.x, global1.a.x, global0.a.x)))))), global0.c);
    var var_1 = Struct_1(select(vec2<bool>(true, _wgslsmith_f_op_f32(round(607f)) > _wgslsmith_f_op_f32(global1.b.x * 166f)), !select(vec2<bool>(global1.a.x, global0.a.x), global1.a, !vec2<bool>(false, global1.a.x)), select(global0.a.x, select(select(true, true, true), true, true), !(var_0.x >= 712f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + global0.b) - _wgslsmith_f_op_vec3_f32(-global0.b))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1512f, 232f, 1000f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1057f, 131f, 751f), global0.b))), global0.b, vec3<bool>(global0.a.x, global1.a.x, any(vec3<bool>(true, true, global1.a.x)))))), vec4<u32>(global1.c.x, ~global0.c.x, 4294967295u, global1.c.x & 86293u));
    var_1 = Struct_1(!global1.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2362f, 1000f, var_1.a.x))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(global1.b.x + global0.b.x))), var_0.x))), ~(~global1.c));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.x, 4294967295u, max(var_1.c.x, 0u), _wgslsmith_mult_u32(1u, 1u)), ~max(vec4<u32>(197u, 1u, 4294967295u, global1.c.x), vec4<u32>(26738u, 37246u, var_1.c.x, 75092u)), select(vec4<u32>(global1.c.x, var_1.c.x, 3803u, 76222u), var_1.c, !vec4<bool>(var_1.a.x, global1.a.x, false, true))), firstTrailingBit(global1.c)), var_1.c);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<f32>) -> bool {
    global0 = Struct_1(vec2<bool>((true && any(vec4<bool>(true, false, global0.a.x, global0.a.x))) & (true == !global0.a.x), true), arg_1, ~abs(global0.c));
    let var_0 = global1.c.x;
    global0 = Struct_1(vec2<bool>(global1.a.x, (-1476f > _wgslsmith_f_op_f32(min(-622f, arg_1.x))) || global0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1213f, -1179f, -925f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2.xwz)))) - arg_1), _wgslsmith_div_vec4_u32(global0.c, select(vec4<u32>(0u, global0.c.x, 47467u, arg_0), global0.c, global1.a.x) & ~vec4<u32>(arg_0, 14688u, arg_0, 4294967295u)) >> (func_3() % vec4<u32>(32u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-1528f, global0.b.x)), -1668f, 1000f);
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>((u_input.b ^ (u_input.b << (global1.c.x % 32u))) | ~_wgslsmith_add_i32(-55500i, 0i), _wgslsmith_mod_i32(firstTrailingBit(-66506i), min(abs(u_input.a.x), u_input.b))), _wgslsmith_mod_vec2_i32(-u_input.a.zx, u_input.a.ww));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> vec4<f32> {
    var var_0 = all(select(select(vec4<bool>(select(true, false, arg_1), global1.c.x >= 1u, false, 75569u > global1.c.x), !vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_1, select(false, false, false), true, all(vec4<bool>(arg_0.x, arg_1, true, arg_1)))), !select(select(vec4<bool>(false, arg_1, arg_0.x, global0.a.x), vec4<bool>(arg_0.x, true, true, true), vec4<bool>(false, false, global1.a.x, true)), vec4<bool>(global1.a.x, true, false, global1.a.x), func_2(23672u, vec3<f32>(540f, 1457f, 1598f), vec4<f32>(global1.b.x, global0.b.x, global1.b.x, -303f))), !(!vec4<bool>(false, true, global0.a.x, false))));
    var var_1 = _wgslsmith_mod_u32(firstTrailingBit(1u), ~1u);
    var var_2 = any(global0.a);
    let var_3 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(-2315f)), global1.b.x)), global0.c ^ select(func_3(), global1.c | (vec4<u32>(27948u, global0.c.x, 1u, global0.c.x) << (vec4<u32>(global1.c.x, global1.c.x, 1u, global1.c.x) % vec4<u32>(32u))), vec4<bool>(global1.a.x, arg_1, true, all(vec4<bool>(global1.a.x, true, global0.a.x, arg_0.x)))));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + 664f))), _wgslsmith_f_op_f32(step(622f, _wgslsmith_f_op_f32(abs(global1.b.x)))), var_3.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.x, -819f, _wgslsmith_f_op_f32(-1040f - _wgslsmith_f_op_f32(select(225f, global0.b.x, global0.a.x))), _wgslsmith_f_op_f32(sign(var_3.b.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(831f, -652f, global0.b.x, 1959f))))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.a.x, global1.a.x, global0.a.x, false), global0.a.x), select(vec4<bool>(false, global1.a.x, true, false), vec4<bool>(false, false, false, global0.a.x), vec4<bool>(false, false, global0.a.x, global1.a.x)), select(vec4<bool>(global0.a.x, global1.a.x, false, global1.a.x), vec4<bool>(global0.a.x, false, global0.a.x, global1.a.x), vec4<bool>(global1.a.x, true, global0.a.x, global0.a.x)))), global0.c.x != 4294967295u, func_2(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2283f, -547f, 740f))) * global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -239f, arg_0.x, 1000f)))), select(true, false & any(select(vec3<bool>(global1.a.x, false, global0.a.x), vec3<bool>(false, true, global1.a.x), vec3<bool>(global1.a.x, global0.a.x, false))), global0.a.x)));
    var var_1 = 2147483647i;
    let var_2 = global0.b.xy;
    let var_3 = vec4<f32>(-343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1112f, var_2.x, false)) * _wgslsmith_f_op_f32(floor(var_2.x))))), -1371f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, -251f, global1.a.x)), var_2.x)))));
    var var_4 = global1.c.zx;
    return Struct_1(vec2<bool>(false, true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1954f - -990f))) - -605f), _wgslsmith_f_op_f32(round(-237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))))), ~vec4<u32>(global1.c.x, 46867u, ~4294967295u & ~global1.c.x, abs(2743u)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> u32 {
    global0 = func_1(_wgslsmith_f_op_vec2_f32(global0.b.yx - _wgslsmith_f_op_vec2_f32(-arg_0.b.yx)));
    var var_0 = func_1(arg_2.b.zy);
    return countOneBits(62105u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.c.x <= func_5(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1169f, -212f) + global1.b.zz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 1309f) * vec2<f32>(global1.b.x, global1.b.x)))), 10331i, func_1(func_1(_wgslsmith_f_op_vec2_f32(round(global0.b.zz))).b.yx), !(func_1(vec2<f32>(global0.b.x, global1.b.x)).a.x | global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(146f, global1.b.x, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - global0.b.x))), _wgslsmith_clamp_u32(global1.c.x, _wgslsmith_sub_u32(global0.c.x, ~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, global0.c.x, global1.c.x, 33077u) >> (vec4<u32>(8170u, global1.c.x, global1.c.x, global1.c.x) % vec4<u32>(32u)), global0.c), ~vec4<u32>(global0.c.x, global1.c.x, global1.c.x, 66182u) | firstLeadingBit(vec4<u32>(77022u, global0.c.x, 1u, 28116u)))), _wgslsmith_mult_vec2_i32(u_input.a.zz, u_input.a.xw), _wgslsmith_f_op_f32(-473f * -633f), _wgslsmith_mod_i32(abs(0i), _wgslsmith_sub_i32(abs(1i), _wgslsmith_mod_i32(u_input.b, 2147483647i) >> (4294967295u % 32u))));
}

