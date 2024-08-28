struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(2898u, 36905u, 1u, 3080u), 844f);

var<private> global1: array<vec3<u32>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(~vec4<u32>(_wgslsmith_mult_u32(53723u, global0.a.x), global0.a.x, ~(~46357u), ~(~global0.a.x)), _wgslsmith_f_op_f32(trunc(global0.b)));
    var var_1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(select(-1605f, 948f, true)));
    let var_2 = 4294967295u;
    let var_3 = ~u_input.a.x;
    var var_4 = false;
    return vec4<bool>(true, true, select(all(vec4<bool>(true, true, true, true)), global0.b < var_1.b, true), select(false, all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), true));
}

fn func_2() -> vec4<i32> {
    var var_0 = !select(select(func_3(), vec4<bool>(true, true, true, true), vec4<bool>(global0.a.x < global0.a.x, true, true, u_input.e.x >= 16856i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, any(func_3()), func_3().x));
    var var_1 = -2147483647i;
    var var_2 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, ~vec4<i32>(u_input.e.x, u_input.d, u_input.b, u_input.d)), u_input.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-333f * global0.b))), global0.a.zyw, vec2<i32>(-2147483647i, -abs(~u_input.b)), vec2<bool>((~global0.a.x >> (~global0.a.x % 32u)) < global0.a.x, !(!var_0.x) | any(!vec2<bool>(false, var_0.x))));
    var var_3 = -select(min(vec2<i32>(abs(2147483647i), _wgslsmith_clamp_i32(u_input.c.x, -9105i, -61227i)), u_input.e.xy), u_input.e.zz, var_0.zw);
    var_0 = vec4<bool>(false, var_2.d.x > select((var_2.a.x ^ 16445i) | var_2.a.x, var_3.x, func_3().x & false), select((i32(-1i) * -var_3.x) <= u_input.d, true, var_0.x), var_2.e.x);
    return countOneBits(vec4<i32>(firstLeadingBit(~var_3.x), var_3.x, countOneBits(abs(~var_2.a.x)), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d, 0i), ~(-1i))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = Struct_1(min(~func_2(), vec4<i32>(_wgslsmith_sub_i32(arg_1.d.x, 2147483647i), _wgslsmith_div_i32(2147483647i, 2147483647i), _wgslsmith_mod_i32(arg_2.d.x, arg_1.d.x), -62440i ^ arg_1.d.x)) << (global0.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~vec3<u32>(countOneBits(global0.a.x), arg_2.c.x, arg_1.c.x), _wgslsmith_add_vec2_i32(abs(firstLeadingBit(abs(vec2<i32>(arg_2.a.x, 0i)))), vec2<i32>(1i, 0i)), !(!(!arg_2.e)));
    let var_1 = select(!select(!(!vec4<bool>(arg_2.e.x, false, false, false)), !vec4<bool>(false, false, arg_2.e.x, arg_1.e.x), select(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_3, true, true, false), var_0.e.x), select(vec4<bool>(var_0.e.x, true, false, true), vec4<bool>(arg_1.e.x, arg_3, false, true), vec4<bool>(arg_3, arg_1.e.x, true, false)), true)), vec4<bool>(true, true, any(arg_2.e), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(346f, 513f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + var_0.b))), var_0.e.x);
    var var_2 = vec3<f32>(var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), -176f, any(vec2<bool>(var_1.x, false))))))), var_0.b);
    var var_3 = all(vec4<bool>(true, !(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(12617u, var_0.c.x)) < var_0.c.x), arg_1.e.x, -1097f == arg_1.b));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_2.x, arg_1.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, arg_2.b, arg_2.b))))));
    return ~(~1u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(56806u, arg_2.a.x), ~global0.a.x, arg_3, ~arg_2.a.x), vec4<u32>(arg_1.x, arg_2.a.x >> (1u % 32u), _wgslsmith_add_u32(1u, arg_1.x), arg_2.a.x)), ~countOneBits(min(_wgslsmith_sub_u32(arg_1.x, 1u), 1u)));
    var var_1 = 0u;
    let var_2 = Struct_1(u_input.c, 1006f, select(~select(~vec3<u32>(arg_2.a.x, 14047u, 1u), arg_2.a.wxy ^ vec3<u32>(arg_3, global0.a.x, 4294967295u), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), vec3<u32>(~arg_3, ~_wgslsmith_mod_u32(0u, arg_2.a.x), 4294967295u), vec3<bool>(any(vec4<bool>(false, false, true, false)), (9913i >> (var_0 % 32u)) <= ~20262i, true)), firstLeadingBit((vec2<i32>(-1i) * -u_input.c.yx) >> (~_wgslsmith_sub_vec2_u32(arg_2.a.yz, arg_1.xz) % vec2<u32>(32u))), func_3().yx);
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(9218i, 40355i, 2147483647i, u_input.a.x), vec4<i32>(_wgslsmith_div_i32(u_input.e.x, -2147483647i), u_input.b | arg_0.x, abs(1i), 1i)), var_2.d.x, arg_0.x, u_input.e.x >> (firstTrailingBit(reverseBits(27598u)) % 32u)), arg_2.b, global0.a.xzy, _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, var_2.d.x), ~select(~var_2.d, vec2<i32>(80881i, u_input.c.x), true)), func_3().xx);
    var var_4 = _wgslsmith_sub_i32(reverseBits(select(countOneBits(countOneBits(-2147483647i)), abs(~u_input.c.x), var_3.e.x)), _wgslsmith_add_i32(arg_0.x, 29483i));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1816f, -1671f, -433f, var_2.b)))) + vec4<f32>(915f, -1490f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, -793f, var_3.e.x)) * _wgslsmith_f_op_f32(step(global0.b, global0.b))), -1386f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(-u_input.e >> (vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 55418u), global0.a.ww), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, global0.a.x), vec3<u32>(1u, global0.a.x, 1u))), global0.a.x, 52732u) % vec3<u32>(32u)), vec3<u32>(~(~global0.a.x), ~global0.a.x >> (_wgslsmith_add_u32(1u, 0u) % 32u), 86775u) << ((global1[_wgslsmith_index_u32(func_1(global0.a.ww, Struct_1(vec4<i32>(u_input.b, -1i, u_input.b, u_input.c.x), global0.b, vec3<u32>(27041u, 23935u, 0u), u_input.c.xx, vec2<bool>(false, false)), Struct_1(vec4<i32>(-21703i, 54364i, -1232i, 1i), 846f, global0.a.zww, vec2<i32>(u_input.c.x, u_input.d), vec2<bool>(true, false)), true) | _wgslsmith_sub_u32(global0.a.x, 1u), 6u)] << (abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 59981u, 52447u), global1[_wgslsmith_index_u32(90443u, 6u)]), 6u)]) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_2(vec4<u32>(global0.a.x, _wgslsmith_dot_vec2_u32(global0.a.yx, min(vec2<u32>(0u, global0.a.x), global0.a.xx)), 102487u, max(min(global0.a.x, global0.a.x), 67823u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.b)))), abs(global0.a.x));
}

