struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = global1.e.x;
    var var_0 = firstTrailingBit(~_wgslsmith_add_u32(u_input.b & 4294967295u, _wgslsmith_sub_u32(u_input.b, 34135u))) >= (~0u ^ _wgslsmith_mod_u32(16518u, _wgslsmith_sub_u32(1u, 72355u ^ u_input.b)));
    var_0 = any(!select(vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(global1.e.x + 900f) != global1.e.x));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(u_input.b, ~(~global1.a.x)) ^ global1.a.x, ~(~_wgslsmith_mod_u32(global1.a.x, u_input.b)), u_input.b, ~(_wgslsmith_add_u32(global1.a.x >> (global1.a.x % 32u), ~42642u) & abs(firstTrailingBit(49312u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.e.x, global1.e.x), global1.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -847f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.e.x, global1.e.x)) * _wgslsmith_f_op_f32(select(-222f, 419f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x))), global1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.e.x, 1000f)) - _wgslsmith_f_op_f32(global1.e.x + 364f)) * _wgslsmith_f_op_f32(-1980f - _wgslsmith_f_op_f32(min(global1.e.x, global1.e.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * var_2.x);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    var var_0 = -(~(-1i)) == _wgslsmith_mod_i32(-min(u_input.a.x | -82067i, 0i), firstLeadingBit(0i));
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.d, vec2<i32>(_wgslsmith_mod_i32(-1i, global1.d.x), global1.c)), global1.b.x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-35898i, global1.c, 0i, 1i), global1.b, vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), _wgslsmith_clamp_vec4_i32(global1.b, global1.b, vec4<i32>(32442i, -35024i, 3372i, -41648i))), u_input.a.x), global1.b);
    var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(func_3());
    return arg_2;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.e.x, _wgslsmith_f_op_f32(floor(global1.e.x))) + -3104f), !(u_input.b <= 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.e.x - _wgslsmith_f_op_f32(-global1.e.x)) + 107f), ~(~(~arg_0.b.a.a)))), _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.a.e.x))) + -395f))));
    global0 = _wgslsmith_f_op_f32(925f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-626f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.b.e.x))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-869f, var_0))), 638f)));
    global1 = Struct_1(reverseBits(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(4294967295u, arg_0.a.a.x, 0u, u_input.b)), vec4<u32>(0u, ~0u, u_input.b, _wgslsmith_mod_u32(global1.a.x, 0u)))), firstTrailingBit(global1.b), -(~(-u_input.a.x | -1i)), vec2<i32>(_wgslsmith_dot_vec4_i32(global1.b, ~abs(vec4<i32>(24667i, -29078i, -57383i, 7286i))), 25399i), arg_0.a.e);
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_1.b.e, global1.e))));
    return arg_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<bool> {
    global1 = Struct_1(~arg_1.b.a.a, countOneBits(_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.b.x, arg_0.b.b.x, u_input.a.x, 2147483647i), arg_2.b.b, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, arg_2.b.d.x))), select(vec4<i32>(global1.c, 2147483647i, 1i, 2147483647i), vec4<i32>(6946i, -33573i, 2147483647i, 1i), vec4<bool>(true, false, false, false)) << (vec4<u32>(global1.a.x, arg_3.x, 259u, arg_0.a.a.x) % vec4<u32>(32u)))), ~firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.c, u_input.a.x, 1i), vec3<i32>(arg_1.a.b.x, -1i, -12572i)), _wgslsmith_div_vec3_i32(arg_2.a.b.wwz, arg_2.b.b.wyx))), ~arg_2.b.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_2.a.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(359f, global1.e.x, arg_0.b.e.x), arg_0.a.e))))));
    var var_0 = Struct_3(arg_0.a.e.x, 1i);
    var var_1 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)))), all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(true, false, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true))));
    let var_2 = any(!select(!select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x)), !select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x), var_1.x), var_1.x));
    var var_3 = !(!vec4<bool>(true, any(select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_1.x), vec2<bool>(true, var_2))), var_1.x, false));
    return var_3.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(func_4(func_1(Struct_4(Struct_1(vec4<u32>(u_input.b, 68695u, 13290u, u_input.b), global1.b, u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), global1.e), Struct_2(Struct_1(vec4<u32>(5040u, u_input.b, u_input.b, 6325u), global1.b, -2147483647i, vec2<i32>(2147483647i, global1.b.x), global1.e), Struct_1(vec4<u32>(51979u, u_input.b, 20371u, u_input.b), global1.b, global1.d.x, vec2<i32>(2147483647i, global1.b.x), vec3<f32>(1328f, global1.e.x, 119f)))), vec2<bool>(false, true), global1.a.ww), Struct_4(Struct_1(global1.a, global1.b, u_input.a.x, vec2<i32>(17783i, -2147483647i), global1.e), Struct_2(Struct_1(vec4<u32>(u_input.b, global1.a.x, 18306u, 54512u), vec4<i32>(global1.d.x, 13417i, 50962i, global1.c), global1.b.x, u_input.a, global1.e), Struct_1(global1.a, vec4<i32>(global1.d.x, -6207i, -36032i, -35790i), 1i, global1.d, global1.e))), func_1(Struct_4(Struct_1(vec4<u32>(33861u, global1.a.x, 0u, global1.a.x), global1.b, -1i, vec2<i32>(u_input.a.x, global1.d.x), global1.e), Struct_2(Struct_1(global1.a, vec4<i32>(23489i, u_input.a.x, -2147483647i, -12180i), u_input.a.x, vec2<i32>(-2147483647i, -2147483647i), vec3<f32>(global1.e.x, global1.e.x, 444f)), Struct_1(vec4<u32>(120u, global1.a.x, u_input.b, global1.a.x), global1.b, global1.b.x, global1.b.xz, vec3<f32>(965f, global1.e.x, 1893f)))), vec2<bool>(false, true), global1.a.wx), ~vec3<u32>(u_input.b, u_input.b, 92973u)), vec2<bool>(false, true), true));
    global0 = _wgslsmith_f_op_f32(step(419f, _wgslsmith_f_op_f32(min(global1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1430f) * _wgslsmith_f_op_f32(max(global1.e.x, _wgslsmith_f_op_f32(-global1.e.x))))))));
    let var_1 = Struct_3(943f, _wgslsmith_div_i32(0i, u_input.a.x) << (firstTrailingBit(u_input.b) % 32u));
    let var_2 = vec4<i32>(2147483647i, ~(func_1(Struct_4(Struct_1(global1.a, global1.b, global1.c, vec2<i32>(u_input.a.x, 15163i), global1.e), Struct_2(Struct_1(vec4<u32>(1u, 0u, u_input.b, global1.a.x), vec4<i32>(1i, global1.c, -2147483647i, -24704i), -12699i, global1.d, vec3<f32>(198f, -340f, 2458f)), Struct_1(global1.a, vec4<i32>(-2147483647i, 36686i, 1i, global1.d.x), -2147483647i, u_input.a, global1.e))), select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(false, false)), global1.a.zz).b.b.x ^ _wgslsmith_div_i32(_wgslsmith_add_i32(1i, u_input.a.x), -1i)), ~(~var_1.b), u_input.a.x);
    global0 = var_1.a;
    let var_3 = Struct_4(func_1(Struct_4(Struct_1(firstTrailingBit(vec4<u32>(48078u, global1.a.x, 63453u, 17705u)), select(global1.b, vec4<i32>(-2147483647i, var_2.x, u_input.a.x, 1i), true), var_2.x, u_input.a >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 1000f, -126f) - global1.e)), func_1(Struct_4(Struct_1(global1.a, vec4<i32>(-1i, var_2.x, -64355i, 20428i), u_input.a.x, var_2.xw, global1.e), Struct_2(Struct_1(global1.a, global1.b, -23885i, u_input.a, vec3<f32>(-1637f, -362f, global1.e.x)), Struct_1(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<i32>(var_1.b, 49211i, -64733i, u_input.a.x), global1.b.x, vec2<i32>(2147483647i, u_input.a.x), vec3<f32>(-1000f, global1.e.x, -1312f)))), vec2<bool>(false, false), vec2<u32>(43397u, 17723u))), vec2<bool>(var_0, _wgslsmith_f_op_f32(-global1.e.x) != _wgslsmith_f_op_f32(abs(global1.e.x))), global1.a.zz).b, func_1(Struct_4(Struct_1(global1.a, _wgslsmith_add_vec4_i32(global1.b, global1.b), ~1i, -global1.d, vec3<f32>(global1.e.x, var_1.a, global1.e.x)), func_1(Struct_4(Struct_1(global1.a, vec4<i32>(var_2.x, global1.c, var_2.x, var_1.b), -41392i, vec2<i32>(var_1.b, -21271i), global1.e), Struct_2(Struct_1(global1.a, vec4<i32>(10007i, 1i, var_2.x, var_1.b), 0i, vec2<i32>(-1i, 80203i), vec3<f32>(global1.e.x, -596f, global1.e.x)), Struct_1(vec4<u32>(4363u, u_input.b, 4294967295u, u_input.b), var_2, u_input.a.x, var_2.wy, vec3<f32>(var_1.a, global1.e.x, var_1.a)))), func_4(Struct_2(Struct_1(global1.a, global1.b, -29478i, var_2.zy, global1.e), Struct_1(global1.a, vec4<i32>(var_1.b, u_input.a.x, 1i, 0i), var_2.x, vec2<i32>(global1.c, 12047i), global1.e)), Struct_4(Struct_1(global1.a, var_2, var_1.b, var_2.zz, global1.e), Struct_2(Struct_1(global1.a, vec4<i32>(global1.b.x, u_input.a.x, u_input.a.x, 0i), var_1.b, var_2.wx, global1.e), Struct_1(global1.a, vec4<i32>(global1.b.x, var_1.b, u_input.a.x, u_input.a.x), var_1.b, u_input.a, vec3<f32>(global1.e.x, global1.e.x, var_1.a)))), Struct_2(Struct_1(vec4<u32>(global1.a.x, 51232u, 47801u, 39616u), vec4<i32>(var_2.x, var_1.b, -47496i, var_1.b), 2147483647i, vec2<i32>(global1.b.x, -8020i), vec3<f32>(713f, -482f, global1.e.x)), Struct_1(vec4<u32>(global1.a.x, global1.a.x, 0u, 64596u), var_2, global1.c, global1.b.yy, vec3<f32>(879f, global1.e.x, -690f))), global1.a.wxw), vec2<u32>(u_input.b, global1.a.x))), vec2<bool>(var_0, true), min(firstLeadingBit(_wgslsmith_div_vec2_u32(global1.a.wy, global1.a.zy)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(global1.a.x, u_input.b)), max(global1.a.xw, vec2<u32>(u_input.b, u_input.b))))));
    let var_4 = func_1(Struct_4(Struct_1(vec4<u32>(~var_3.a.a.x, 1u, ~u_input.b, 90179u ^ global1.a.x), global1.b, -firstTrailingBit(u_input.a.x), firstTrailingBit(-vec2<i32>(-2147483647i, 0i)), global1.e), func_1(var_3, !(!vec2<bool>(false, var_0)), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_3.b.a.a.x, 1u), vec2<u32>(58567u, 19539u)))), select(!func_4(Struct_2(Struct_1(global1.a, var_3.b.a.b, var_2.x, vec2<i32>(1i, global1.b.x), var_3.a.e), var_3.b.b), Struct_4(Struct_1(global1.a, var_2, global1.d.x, u_input.a, vec3<f32>(-696f, var_1.a, -832f)), var_3.b), var_3.b, vec3<u32>(0u, global1.a.x, 1u)), !(!(!vec2<bool>(var_0, false))), !vec2<bool>(all(vec3<bool>(false, true, var_0)), true)), select(reverseBits(var_3.b.a.a.wy), var_3.a.a.xx ^ max(vec2<u32>(69684u, var_3.a.a.x), _wgslsmith_clamp_vec2_u32(global1.a.xx, vec2<u32>(u_input.b, var_3.b.b.a.x), global1.a.yz)), true));
    let var_5 = ~21593u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>((_wgslsmith_sub_u32(global1.a.x, global1.a.x) >> (_wgslsmith_mult_u32(1u, global1.a.x) % 32u)) ^ ((global1.a.x | u_input.b) & 43235u), ~var_4.a.a.x));
}

