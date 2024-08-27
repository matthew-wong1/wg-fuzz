struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: Struct_3;

var<private> global3: vec4<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = arg_1.c.b.c;
    var var_1 = arg_2.a.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.a.zx);
    global1 = vec4<bool>(!(!arg_1.c.c.x), false, arg_1.c.b.e.x || all(select(vec4<bool>(arg_1.c.a.a.x, global1.x, true, global2.c.x), select(vec4<bool>(global3.x, true, true, false), vec4<bool>(arg_1.c.b.e.x, false, global0.d, global1.x), arg_1.c.b.e), global2.a.e.x)), false);
    var var_3 = global2.b.b.b.x < _wgslsmith_dot_vec3_u32(var_0.b, global0.c.b);
    return global2.b.c.d.www;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec4<bool> {
    global3 = select(!global2.b.e, vec4<bool>(~abs(global0.c.b.x) < firstTrailingBit(6751u >> (global0.c.b.x % 32u)), false, true, true), select(select(global0.e, vec4<bool>(true, false | global1.x, false, any(global2.b.e)), !(global1.x && global3.x)), global0.e, false));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(273f, _wgslsmith_f_op_f32(-global2.a.c.c), global1.x)) * -1325f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c.a.x, global2.a.c.c)) - -871f), 486f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.c.c, -1398f))))), global0.b.b, -529f, vec4<i32>(((u_input.a ^ 0i) >> (_wgslsmith_sub_u32(global2.a.b.b.x, global2.a.c.b.x) % 32u)) << (global0.b.b.x % 32u), -50643i, global2.a.b.d.x, global0.c.d.x));
    global0 = Struct_2(select(global0.e.yy, select(vec2<bool>(!global3.x, any(vec4<bool>(false, true, true, global2.a.d))), vec2<bool>(global0.e.x, all(global2.b.e)), global1.x), !all(select(vec3<bool>(global3.x, false, global2.a.e.x), global1.xyy, global1.x))), global0.b, var_1, any(select(select(select(vec4<bool>(true, false, global1.x, global0.e.x), vec4<bool>(global0.e.x, true, global2.b.d, global2.b.d), false), vec4<bool>(global1.x, false, true, global1.x), any(global2.a.a)), select(!global2.a.e, select(global2.a.e, global2.b.e, vec4<bool>(global0.a.x, false, global2.c.x, global0.a.x)), -1310f == var_1.c), select(global2.b.e, vec4<bool>(true, global2.b.e.x, false, true), vec4<bool>(false, true, true, global0.a.x)))), global2.a.e);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b.a * vec3<f32>(-578f, -1197f, -1647f)), _wgslsmith_f_op_vec3_f32(global2.a.c.a - arg_1), arg_1.x != global2.b.c.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.a))))), _wgslsmith_add_vec3_u32(~min(~global2.b.b.b, global2.a.b.b), vec3<u32>(~global2.b.b.b.x ^ 1u, ~(~var_1.b.x), 3206u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-594f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(-1993f, global2.b.b.a.x))))), global0.c.d);
    return select(vec4<bool>(false, global2.c.x, any(vec4<bool>(any(vec4<bool>(global2.a.e.x, true, false, global3.x)), false, all(global0.a), global2.b.e.x)), global1.x), vec4<bool>(true, global3.x, false, select(global3.x, select(false, global0.d, true) || all(vec3<bool>(false, global1.x, false)), _wgslsmith_f_op_f32(select(var_1.c, arg_1.x, false)) > _wgslsmith_div_f32(arg_1.x, 804f))), global2.b.a.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = func_4(-select(func_3(~0u, Struct_5(global0.c.d.x, global0.b.d, Struct_3(global2.a, Struct_2(global3.xw, Struct_1(global0.c.a, vec3<u32>(4294967295u, arg_0.x, global2.a.b.b.x), global2.a.c.c, vec4<i32>(global2.d, global2.a.b.d.x, global0.c.d.x, global2.d)), Struct_1(vec3<f32>(163f, 917f, -318f), vec3<u32>(global2.a.c.b.x, 1u, 4294967295u), global2.a.b.a.x, vec4<i32>(-41147i, -3344i, global0.c.d.x, -2147483647i)), global2.c.x, global2.a.e), vec2<bool>(global2.a.e.x, global2.b.a.x), 2147483647i)), Struct_3(Struct_2(global3.wy, Struct_1(vec3<f32>(-1481f, -357f, global2.b.c.c), global2.a.b.b, 188f, global2.b.b.d), global0.b, global0.a.x, global2.b.e), global2.b, vec2<bool>(true, false), global2.b.c.d.x)), vec3<i32>(-20073i, global0.c.d.x, ~2147483647i), global2.c.x | false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b.b.a.x))), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.a.x)))));
    let var_1 = global0.c.d.zy;
    global2 = Struct_3(global2.a, Struct_2(global2.a.a, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.c.a * vec3<f32>(-784f, 840f, global0.b.a.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(947f, -1000f, global2.a.c.a.x))))), vec3<u32>(global2.a.b.b.x, 4294967295u, 1u), _wgslsmith_f_op_f32(floor(-180f)), ~(-global2.b.b.d)), Struct_1(global2.b.c.a, vec3<u32>(52714u | global2.b.c.b.x, arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(59004u, global2.b.b.b.x), vec2<u32>(0u, 1u))), 2532f, ~vec4<i32>(global0.c.d.x, -11344i, -2147483647i, global2.d)), true, vec4<bool>(false, global2.c.x, true, global3.x & false)), func_4(global0.b.d.xww, global0.c.a).yx, u_input.a);
    var var_2 = Struct_5(global2.d, ~vec4<i32>(924i, ~(-1i), -37789i, func_3(countOneBits(1u), Struct_5(25707i, global0.b.d, Struct_3(global2.b, Struct_2(vec2<bool>(true, false), Struct_1(vec3<f32>(global2.a.c.c, global0.b.c, global2.b.c.a.x), arg_0.xzy, global2.a.b.a.x, vec4<i32>(2147483647i, u_input.a, global2.b.b.d.x, global2.d)), Struct_1(global2.a.c.a, global0.c.b, -1625f, global0.b.d), false, global2.b.e), global0.a, 2147483647i)), Struct_3(global2.a, global2.b, vec2<bool>(true, global1.x), 9044i)).x), Struct_3(Struct_2(select(global3.yz, vec2<bool>(global0.a.x, false), !vec2<bool>(global0.d, global1.x)), global2.a.c, global0.c, global2.c.x, var_0), Struct_2(vec2<bool>(global3.x, global0.b.b.x > 1u), Struct_1(global2.a.c.a, _wgslsmith_clamp_vec3_u32(global0.b.b, global2.a.c.b, global2.b.b.b), global2.b.b.c, global0.b.d | global2.a.c.d), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.b.b.c, global2.b.c.c, global0.c.a.x))), global0.c.b, global2.b.b.c, -global0.c.d), any(!vec3<bool>(false, true, global3.x)), var_0), !func_4(countOneBits(vec3<i32>(global0.b.d.x, global2.d, 1i)), _wgslsmith_f_op_vec3_f32(-global0.c.a)).wy, u_input.a));
    var var_3 = -abs(-_wgslsmith_clamp_vec2_i32(-global2.a.c.d.xw, _wgslsmith_add_vec2_i32(global0.c.d.yz, global0.b.d.xz), vec2<i32>(u_input.a, -97352i)));
    return Struct_3(Struct_2(!(!vec2<bool>(true, var_2.c.b.a.x)), global0.b, global0.c, true, select(var_2.c.a.e, var_0, !var_2.c.a.e)), var_2.c.a, vec2<bool>(!(_wgslsmith_f_op_f32(global2.a.c.a.x + 1643f) == _wgslsmith_f_op_f32(select(-1000f, 729f, true))), global0.a.x), 1i);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_5(~54460i, _wgslsmith_mult_vec4_i32(reverseBits(-vec4<i32>(global0.c.d.x, 0i, 0i, global2.d) >> (select(vec4<u32>(4294967295u, 1u, arg_0.a.b.b.x, 58551u), vec4<u32>(arg_1.x, 93649u, global2.a.b.b.x, arg_1.x), vec4<bool>(arg_0.a.e.x, true, global1.x, arg_0.a.d)) % vec4<u32>(32u))), max((vec4<i32>(2147483647i, 26021i, arg_0.d, arg_0.d) ^ arg_0.a.c.d) | vec4<i32>(-1i, global0.c.d.x, 15971i, -1i), select(~vec4<i32>(arg_0.a.c.d.x, arg_0.d, 31927i, -2147483647i), vec4<i32>(global2.a.b.d.x, -10011i, -5458i, global0.c.d.x), !global0.e))), arg_0);
    var var_1 = max(global2.a.b.d.xx, ~vec2<i32>(min(global2.a.c.d.x, ~arg_0.b.c.d.x), ~global0.b.d.x & global2.b.b.d.x));
    global1 = func_4(vec3<i32>(u_input.a, countOneBits(-2147483647i), _wgslsmith_mult_i32(select(max(u_input.a, 1i), abs(8461i), true), reverseBits(-var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.c.c, -418f, global2.b.c.c) - global0.b.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.c.c, 404f, -828f) * vec3<f32>(2431f, arg_0.b.b.a.x, -961f)))))));
    global2 = arg_0;
    let var_2 = var_0.c.b;
    return Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(17340i, select(_wgslsmith_dot_vec2_i32(var_2.b.d.yy, var_0.b.yy), -2147483647i, var_2.e.x | false)), arg_0.b.b.d.xy), vec4<i32>(arg_0.a.c.d.x, countOneBits(firstTrailingBit(-43383i)), 1i, 1i) | abs(_wgslsmith_mod_vec4_i32(global2.b.b.d, vec4<i32>(var_0.a, 0i, global2.d, -2147483647i)) >> (vec4<u32>(48518u, var_0.c.b.c.b.x, global0.b.b.x, arg_0.a.c.b.x) % vec4<u32>(32u))), var_0.c);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = func_5(func_2(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(global2.b.b.b.x, arg_1.a.b.b.x, global0.b.b.x, 0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(9869u, global0.b.b.x, 13392u, global2.a.c.b.x), vec4<u32>(global0.b.b.x, global0.b.b.x, 0u, global2.b.b.b.x)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.b.b.x, 1u, global2.b.c.b.x), vec4<u32>(0u, global0.b.b.x, arg_1.a.b.b.x, 28477u))))), reverseBits(vec2<u32>(_wgslsmith_sub_u32(func_2(vec4<u32>(1u, 28758u, 4294967295u, 1u)).a.b.b.x, reverseBits(7807u)), arg_1.a.b.b.x)));
    let var_1 = firstLeadingBit(select(vec4<u32>(~firstTrailingBit(global0.b.b.x), ~(~2531u), 1u | _wgslsmith_sub_u32(32614u, var_0.c.a.b.b.x), ~arg_1.b.b.b.x), ~vec4<u32>(64480u >> (arg_1.b.b.b.x % 32u), ~var_0.c.b.b.b.x, _wgslsmith_dot_vec2_u32(global2.b.c.b.xx, vec2<u32>(global2.a.c.b.x, var_0.c.b.b.b.x)), 1u), func_2(countOneBits(~vec4<u32>(22697u, 4294967295u, 58014u, 8030u))).c.x));
    return _wgslsmith_f_op_f32(select(-804f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(697f - var_0.c.a.c.c), _wgslsmith_f_op_f32(-var_0.c.b.b.a.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_1(40414i, Struct_3(global2.b, Struct_2(global3.wy, Struct_1(global0.c.a, global0.b.b, -248f, vec4<i32>(global2.a.c.d.x, u_input.a, 37968i, -27124i)), Struct_1(vec3<f32>(global2.a.c.a.x, -1246f, -218f), global2.a.b.b, -1043f, vec4<i32>(global2.d, 0i, global0.c.d.x, global2.b.c.d.x)), global3.x, global0.e), vec2<bool>(global0.a.x, global2.a.e.x), global0.c.d.x), !global0.d)), _wgslsmith_f_op_f32(-func_5(Struct_3(global2.b, global2.a, vec2<bool>(global2.c.x, global1.x), global0.b.d.x), global2.a.b.b.yz).c.b.c.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) - global2.a.b.a.x), _wgslsmith_f_op_f32(-global2.a.c.c)))));
    global3 = !global2.a.e;
    let var_1 = global2.b.b.d.x;
    let var_2 = Struct_4(~global2.b.c.b.xy, vec4<bool>(any(select(func_5(Struct_3(Struct_2(global1.yy, Struct_1(global0.c.a, global0.c.b, 1699f, vec4<i32>(19640i, global0.c.d.x, -34686i, global0.c.d.x)), Struct_1(vec3<f32>(var_0.x, global2.b.b.c, global0.c.c), vec3<u32>(4294967295u, global2.b.b.b.x, 47297u), 2365f, global0.c.d), true, global2.a.e), global2.b, vec2<bool>(true, global2.b.e.x), -2147483647i), vec2<u32>(1189u, 2239u)).c.b.a, global2.a.a, vec2<bool>(global2.c.x, true))), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.c), global2.a.c.a.x) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1547f - 417f))), true), Struct_3(global2.b, Struct_2(global0.e.zy, func_5(func_5(Struct_3(Struct_2(global1.zz, Struct_1(vec3<f32>(var_0.x, global0.b.a.x, 276f), global2.b.c.b, global2.a.c.a.x, vec4<i32>(-15060i, u_input.a, -41409i, -1i)), global0.b, global2.c.x, vec4<bool>(false, global3.x, true, global2.c.x)), Struct_2(vec2<bool>(true, global0.d), Struct_1(vec3<f32>(global2.a.c.a.x, -220f, 2560f), vec3<u32>(global2.b.c.b.x, 4294967295u, global0.b.b.x), 791f, vec4<i32>(global0.b.d.x, global2.a.c.d.x, -1i, -6702i)), global2.a.b, global3.x, vec4<bool>(global1.x, global2.b.e.x, global2.c.x, global1.x)), vec2<bool>(false, false), -31969i), global0.c.b.zx).c, ~vec2<u32>(global2.b.b.b.x, 4294967295u)).c.b.b, func_2(_wgslsmith_div_vec4_u32(vec4<u32>(5435u, global2.b.c.b.x, 1u, 4294967295u), vec4<u32>(global0.b.b.x, global2.a.c.b.x, 4294967295u, 4294967295u))).a.c, global3.x, vec4<bool>(func_5(Struct_3(global2.a, global2.b, global3.zy, -35972i), vec2<u32>(4294967295u, global0.b.b.x)).c.b.a.x, global2.b.d, func_5(Struct_3(Struct_2(global3.xx, global2.a.c, Struct_1(global0.c.a, global2.b.c.b, global2.a.b.a.x, global2.b.b.d), global2.a.a.x, global2.b.e), global2.b, vec2<bool>(false, false), -34784i), vec2<u32>(global2.a.c.b.x, 6276u)).c.a.d, global2.a.a.x)), select(vec2<bool>(global2.b.b.b.x <= 9003u, all(global2.a.e.wz)), global3.yy, true), min(-(~global2.d), global2.d)), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(60658u, 6374u, global0.c.b.x), ~global2.a.b.b), ~global2.a.b.b.x));
    var var_3 = func_2(~max(vec4<u32>(reverseBits(var_2.d), firstLeadingBit(65783u), ~0u, ~1u), abs(~vec4<u32>(global2.b.c.b.x, 37647u, 1u, global0.b.b.x)))).a.c;
    global2 = var_2.c;
    global1 = vec4<bool>(any(vec2<bool>(true, true)), !all(global2.b.e.wz), false, any(global2.b.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, var_2.c.a.b.d, _wgslsmith_sub_vec3_u32(var_2.c.b.b.b, _wgslsmith_sub_vec3_u32(~vec3<u32>(1405u, 0u, var_2.a.x), vec3<u32>(1u, ~global2.a.b.b.x, func_5(Struct_3(Struct_2(global0.e.xx, Struct_1(var_2.c.b.c.a, var_2.c.b.c.b, 617f, global0.b.d), Struct_1(var_2.c.a.b.a, vec3<u32>(30212u, global0.c.b.x, 0u), var_0.x, global2.a.c.d), global1.x, global2.a.e), Struct_2(vec2<bool>(global0.a.x, global2.a.d), var_2.c.a.c, global0.c, true, vec4<bool>(global3.x, global1.x, global1.x, var_2.b.x)), var_2.c.c, u_input.a), vec2<u32>(1u, 56855u)).c.b.b.b.x))));
}

