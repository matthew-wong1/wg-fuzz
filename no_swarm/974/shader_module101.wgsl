struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(0u, 15277u, 1u, 1u, 1u, 1u, 1u, 0u, 4294967295u, 21402u, 10355u, 43357u, 0u, 1u, 0u, 0u, 0u, 1u, 19506u, 1u, 15982u, 911u, 0u, 4294967295u, 5762u, 4294967295u, 0u, 4294967295u, 1u, 28805u, 14366u, 1u);

var<private> global1: array<i32, 32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: bool) -> vec2<u32> {
    var var_0 = select(vec3<bool>(false, select(true, any(arg_1.xyy), true), true), select(vec3<bool>(arg_1.x, ~u_input.a <= _wgslsmith_sub_i32(-42741i, u_input.a), all(arg_1) != true), select(vec3<bool>(arg_2, arg_2, !arg_2), vec3<bool>(true, true, true), true | !arg_1.x), true), false);
    let var_1 = 1665f;
    var_0 = select(!select(vec3<bool>(var_0.x, var_1 >= var_1, true), arg_1.zxz, any(arg_1)), vec3<bool>(((var_0.x & false) | arg_2) | arg_2, !(true != any(vec2<bool>(arg_1.x, true))), !(!all(vec4<bool>(arg_2, arg_2, false, var_0.x)))), vec3<bool>(any(select(arg_1, arg_1, arg_1)), arg_2, all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 32u)] != arg_0.x, true))));
    var var_2 = _wgslsmith_sub_i32(u_input.a, -45444i);
    let var_3 = Struct_1(-(vec2<i32>(-14734i, u_input.a) & vec2<i32>(min(u_input.a, 13459i), -global1[_wgslsmith_index_u32(24896u, 32u)])), !(all(select(arg_1.xwx, arg_1.xwz, true)) && (var_0.x & var_0.x)), ~vec2<i32>(-2147483647i, ~_wgslsmith_div_i32(2147483647i, u_input.a)));
    return ~vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 76875u), vec2<u32>(104353u, 54711u)), _wgslsmith_div_vec2_u32(arg_0.yy, vec2<u32>(0u, global0[_wgslsmith_index_u32(10487u, 32u)]))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(37040u, arg_0.x), reverseBits(vec2<u32>(1u, 8445u)), arg_0.yy)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = !select(!select(!vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), true), select(select(vec3<bool>(arg_0.b, true, arg_0.b), !vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, false)), vec3<bool>(false, any(vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b)), true), true), !vec3<bool>(any(vec4<bool>(true, true, arg_0.b, false)), true, all(vec4<bool>(arg_0.b, true, true, false))));
    var var_1 = Struct_3(1i);
    let var_2 = var_0.x | any(vec2<bool>(var_0.x, !(!arg_0.b)));
    global1 = array<i32, 32>();
    var var_3 = Struct_4(vec3<bool>(false, any(vec2<bool>(var_0.x, all(var_0.zy))), !(select(u_input.a, -2147483647i, var_0.x) > max(u_input.a, 1i))), 7229u);
    return select(!(!(!select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(var_0.x, false, true), false))), select(!var_0, vec3<bool>((1659u << (0u % 32u)) >= func_3(u_input.c.wzx, vec4<bool>(true, false, false, var_2), false).x, all(select(vec3<bool>(false, arg_0.b, true), var_3.a, var_0)), true), var_2), arg_0.b);
}

fn func_2() -> vec3<bool> {
    let var_0 = select(func_4(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-1i, 2147483647i)) >> (func_3(u_input.b, vec4<bool>(true, false, true, false), false) % vec2<u32>(32u)), true, vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(20054u, 32u)], 4294967295u), 32u)], _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(50228i, global1[_wgslsmith_index_u32(20694u, 32u)], -31562i)))), _wgslsmith_clamp_u32(firstLeadingBit(~global0[_wgslsmith_index_u32(0u, 32u)]), (4294967295u << (global0[_wgslsmith_index_u32(1u, 32u)] % 32u)) & 29613u, 4294967295u), 33644i, select(select(firstTrailingBit(vec3<i32>(-11959i, 19843i, 1i)), max(vec3<i32>(-18543i, -5685i, 1i), vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], global1[_wgslsmith_index_u32(1u, 32u)])), vec3<bool>(true, true, true)), ~(vec3<i32>(-2147483647i, u_input.a, u_input.a) ^ vec3<i32>(1i, 46583i, global1[_wgslsmith_index_u32(4294967295u, 32u)])), vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_div_i32(select(-38935i, global1[_wgslsmith_index_u32(1u, 32u)], true), _wgslsmith_mult_i32(u_input.a, -49794i)) < _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], 1i), vec3<i32>(-16073i, -31656i, 0i)), vec3<i32>(-2439i, 41467i, -124i) ^ vec3<i32>(2147483647i, u_input.a, u_input.a)), u_input.a < -u_input.a, select(-21958i != -u_input.a, !all(vec4<bool>(true, false, true, true)), !(global0[_wgslsmith_index_u32(0u, 32u)] == 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2123f), _wgslsmith_f_op_f32(759f - 1428f)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-756f)))));
    var var_1 = Struct_1(~vec2<i32>(global1[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), 32u)] << (~1u % 32u), 51898i), false, -(-vec2<i32>(17533i, 4925i) << (~(u_input.b.yy << (u_input.b.zx % vec2<u32>(32u))) % vec2<u32>(32u))));
    return var_0;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_4(select(vec3<bool>(true, true, true), select(func_2(), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !func_2())), ~(~28680u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2517f * -978f));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    return Struct_3(_wgslsmith_dot_vec2_i32(-vec2<i32>(~(-8293i), -46237i >> (1u % 32u)), -(~(~vec2<i32>(u_input.a, 1i)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_0.x;
    var var_1 = arg_2;
    global0 = array<u32, 32>();
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1806f)), _wgslsmith_f_op_f32(round(-350f)), all(!vec2<bool>(func_4(Struct_1(vec2<i32>(32246i, -1i), false, vec2<i32>(0i, u_input.a)), arg_1.x, -13132i, vec3<i32>(-22394i, -2147483647i, u_input.a)).x, true))));
    var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    return Struct_2(~global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(arg_1.x, 40575u)), 32u)], Struct_1(max(vec2<i32>(i32(-1i) * -14248i, 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(~u_input.c.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), true, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(19529i, 1i), vec2<i32>(var_1.a, 2147483647i) & vec2<i32>(var_1.a, -19542i)), -(~vec2<i32>(1i, arg_2.a)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1908f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(194f, arg_0.x, arg_0.x)))))))), vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(arg_2.a, -1i)), ~(-vec2<i32>(arg_2.a, global1[_wgslsmith_index_u32(4294967295u, 32u)]))), ~((arg_2.a << (107113u % 32u)) << (25829u % 32u))), _wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(907f - -452f)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-204f + 629f), _wgslsmith_f_op_f32(min(-160f, -834f))), _wgslsmith_f_op_f32(f32(-1f) * -302f)))), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 1u, 1u), func_1());
    global0 = array<u32, 32>();
    global1 = array<i32, 32>();
    global0 = array<u32, 32>();
    let var_1 = func_1();
    var var_2 = !(!vec3<bool>(var_0.b.b, true, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.a, -20652i, -2147483647i), vec4<i32>(-73570i, 41352i, u_input.a, var_0.d.x)) == u_input.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f + -616f), -1325f, _wgslsmith_f_op_f32(floor(-250f)), _wgslsmith_f_op_f32(sign(var_0.e))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e, -2572f, var_0.e, 1823f), vec4<f32>(var_0.e, 1762f, var_0.c.x, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 291f, 1000f, var_0.e) * vec4<f32>(var_0.c.x, var_0.c.x, 995f, var_0.e))) - vec4<f32>(var_0.c.x, func_5(vec4<f32>(1642f, -1225f, 734f, -1063f), u_input.b, var_1).c.x, _wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(-1347f + 285f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(597f, 206f, 700f, var_0.c.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.e, var_0.c.x, var_0.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1975f, _wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(853f * var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -943f, -934f, 304f)))))), u_input.c.x, u_input.a, 166f);
}

