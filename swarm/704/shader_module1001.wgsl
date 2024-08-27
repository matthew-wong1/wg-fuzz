struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.b.xxy, -abs(vec3<i32>(1i, -global0.b, _wgslsmith_div_i32(0i, -1i))), vec3<i32>(abs(_wgslsmith_add_i32(1i, -u_input.b.x)), ~firstTrailingBit(_wgslsmith_sub_i32(0i, -86520i)), select(_wgslsmith_div_i32(5697i, 5652i), u_input.b.x ^ 2147483647i, any(vec2<bool>(true, false))) >> (~(~1u) % 32u)));
    var var_1 = Struct_2(u_input.a.x, Struct_1(global0.c, -1i, 316f), 196f, vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-25054i, global0.b), -u_input.d.xz) << (~select(1u, u_input.a.x, arg_0) % 32u), _wgslsmith_mult_i32(26489i, global0.b)));
    let var_2 = Struct_2(4294967295u, var_1.b, global0.a, var_1.d);
    let var_3 = var_2;
    var_0 = vec3<i32>(-(2110i | _wgslsmith_mod_i32(global0.b, _wgslsmith_sub_i32(var_3.b.b, var_2.d.x))), -27524i, 29800i);
    return var_1.b;
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(step(arg_0.c, -349f))) + _wgslsmith_f_op_f32(-global0.a))));
    let var_0 = select(vec4<i32>(_wgslsmith_add_i32(u_input.b.x << (arg_0.a % 32u), arg_0.b.b), ~2147483647i, i32(-1i) * -31723i, global0.b), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.x, -44067i, u_input.d.x, arg_0.d.x), u_input.b), vec4<bool>(false, any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true)) << (vec4<u32>(3447u, _wgslsmith_div_u32(~1u, ~u_input.a.x << (arg_0.a % 32u)), ~arg_0.a, max(~select(4294967295u, 47796u, false), ~(~1u))) % vec4<u32>(32u));
    let var_1 = ~(-arg_0.d);
    let var_2 = select(arg_0.a > u_input.a.x, !(true != all(vec3<bool>(false, false, true))), !(!(0u == min(arg_0.a, arg_0.a))));
    var var_3 = any(select(select(vec3<bool>(true, -2147483647i <= u_input.b.x, all(vec4<bool>(false, var_2, true, true))), select(select(vec3<bool>(var_2, true, true), vec3<bool>(true, var_2, true), vec3<bool>(true, true, false)), vec3<bool>(var_2, var_2, false), !vec3<bool>(var_2, false, var_2)), vec3<bool>(all(vec2<bool>(var_2, var_2)), true, 2052f < arg_0.c)), vec3<bool>(true, !any(vec2<bool>(true, var_2)), var_2), vec3<bool>(true, any(vec2<bool>(var_2, var_2)), !select(false, false, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c + global0.c)) * 290f)) <= arg_0.b.a;
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_1 {
    global0 = func_2(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), !vec2<bool>(arg_0, false))), global0.a);
    var var_0 = false;
    global0 = func_2(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c - global0.c))), func_2(u_input.a.x < arg_1, _wgslsmith_f_op_f32(-global0.a)).a, _wgslsmith_f_op_f32(select(179f, global0.c, arg_0)) == 567f)))));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.a, firstTrailingBit(~vec2<u32>(arg_1, 53376u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, func_2(false, 315f).c)), 11780i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1185f)), global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1959f - -1482f))), -(~abs(vec2<i32>(global0.b, u_input.d.x))) << (vec2<u32>(u_input.a.x, firstLeadingBit(arg_1) >> (firstLeadingBit(4501u) % 32u)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1166f)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)), -select(firstTrailingBit(_wgslsmith_mult_i32(u_input.c.x, -11178i)), 2147483647i, all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)))), -1385f);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_4(func_3(Struct_2(u_input.a.x, func_2(true, _wgslsmith_f_op_f32(-global0.a)), global0.a, -(~vec2<i32>(-32469i, u_input.d.x)))), 53745u);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(f32(-1f) * -488f)) - -2224f)), 52797i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))));
    var var_1 = vec4<bool>(any(vec3<bool>(true, true, true)), true, !select(false, (global0.c <= -936f) || true, all(vec4<bool>(true, true, true, true))), true);
    let var_2 = !vec3<bool>(true, select(_wgslsmith_div_f32(global0.a, var_0.c) <= 281f, false, any(var_1.yxw)), func_3(Struct_2(u_input.a.x, func_2(true, var_0.a), _wgslsmith_f_op_f32(-global0.a), select(vec2<i32>(u_input.e, -38080i), vec2<i32>(var_0.b, u_input.c.x), var_1.x))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1696f)) + -1287f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1553f * _wgslsmith_f_op_f32(sign(134f))), 307f)));
    return select(!(!select(vec4<bool>(var_1.x, var_2.x, true, var_2.x), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(var_2.x, var_1.x, false, false)), all(vec4<bool>(false, var_2.x, var_1.x, var_1.x)))), select(select(select(!vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(true, true, var_2.x, var_1.x), var_2.x), vec4<bool>(true, true, var_1.x, false)), vec4<bool>(!var_2.x, var_2.x && true, var_2.x, any(vec2<bool>(var_1.x, false))), select(select(vec4<bool>(false, var_2.x, false, var_1.x), vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, true, false, var_1.x)), !vec4<bool>(true, var_1.x, var_2.x, true), !var_1.x)), !select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_2.x, false, var_1.x, var_1.x), var_1.x), !vec4<bool>(false, var_2.x, false, true), !vec4<bool>(false, var_1.x, var_2.x, false)), select(!select(vec4<bool>(true, var_1.x, var_2.x, false), vec4<bool>(true, var_1.x, var_2.x, var_2.x), vec4<bool>(var_1.x, false, var_2.x, var_2.x)), select(select(vec4<bool>(var_1.x, true, var_2.x, true), vec4<bool>(var_2.x, var_1.x, var_2.x, var_1.x), var_2.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, var_1.x, var_2.x, true), vec4<bool>(var_1.x, false, false, false), false)), !(true == var_1.x))), select(var_2.x, true, var_1.x));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global0 = func_4(_wgslsmith_f_op_f32(-global0.c) >= global0.a, firstTrailingBit(_wgslsmith_div_u32(~max(u_input.a.x, 4294967295u), 14080u)));
    var var_0 = 1i ^ ~global0.b;
    global0 = Struct_1(global0.c, ~global0.b, _wgslsmith_f_op_f32(abs(global0.a)));
    var var_1 = _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1696f));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f * 1000f)), _wgslsmith_div_f32(957f, global0.c), any(vec2<bool>(arg_1.x, arg_2)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    return Struct_1(global0.a, global0.b, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(min(0i, ~u_input.b.x), !select(vec4<bool>(true, true, true, true), select(func_1(), vec4<bool>(true, true, true, true), -180f <= global0.c), true), true);
    global0 = func_5(1i, select(!vec4<bool>(4294967295u == u_input.a.x, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), global0.a == 589f), vec4<bool>(any(vec2<bool>(false, false)), true | (1i <= u_input.b.x), !(global0.c > global0.c), true)), true);
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a))) + global0.a), _wgslsmith_f_op_f32(func_4(true, 1u).a - var_0.c)));
    var var_3 = firstLeadingBit(1u);
    let var_4 = 21184i;
    var_1 = ~_wgslsmith_mult_u32(u_input.a.x, ~(42785u ^ (0u << (u_input.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~(~firstLeadingBit(vec3<u32>(1u, u_input.a.x, u_input.a.x))), abs(vec3<u32>(~1u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)))), 2058u);
}

