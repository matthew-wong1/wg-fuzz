struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = select(vec4<bool>(global1.c.x, global0.x > global0.x, _wgslsmith_dot_vec3_u32(u_input.a << (u_input.a % vec3<u32>(32u)), abs(u_input.a)) < ~select(86229u, 1u, true), all(!global1.c.yyw) != all(!global1.c.ww)), select(select(select(global1.c, !global1.c, vec4<bool>(true, false, true, global1.c.x)), select(!global1.c, global1.c, vec4<bool>(global1.c.x, false, true, global1.c.x)), all(!vec3<bool>(global1.c.x, global1.c.x, false))), vec4<bool>(global1.b.x <= _wgslsmith_f_op_f32(floor(-380f)), true & !global1.c.x, true, true), global1.c), global1.c.x);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(534f - 961f) - global0.x)), global1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1451f))))));
    var var_1 = global1.b.x;
    let var_2 = u_input.b & firstTrailingBit(u_input.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-189f, 1896f, global1.b.x), vec3<f32>(global0.x, 744f, 996f))))) * global1.a);
    return ~(~min(max(-24641i, u_input.c), -28352i));
}

fn func_2() -> bool {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(global1.a, global1.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(global1.b, vec4<f32>(global0.x, global1.b.x, global1.a.x, -1277f)))), global1.c);
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c, 31964i), _wgslsmith_mult_i32(-2147483647i, u_input.c), u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c)), ~(vec4<i32>(u_input.c, u_input.c, 43346i, u_input.c) & vec4<i32>(u_input.c, u_input.c, u_input.c, -37120i))), (~vec4<i32>(u_input.c, u_input.c, 10630i, -21126i) | min(vec4<i32>(-1i, -2147483647i, 117731i, u_input.c), vec4<i32>(u_input.c, -22260i, u_input.c, u_input.c))) & (~vec4<i32>(u_input.c, -1i, u_input.c, u_input.c) & vec4<i32>(1i, 0i, 1i, u_input.c))) ^ ~_wgslsmith_div_i32(~_wgslsmith_add_i32(u_input.c, u_input.c), -func_3(u_input.c));
    var var_2 = ~(1u >> (firstTrailingBit((1u | u_input.b) & u_input.b) % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(min(global1.b.xyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -319f, 1500f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(293f, global1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f), global0.x)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(-716f)), _wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(global0.x * -108f), 731f), _wgslsmith_f_op_vec4_f32(-global1.b)))), select(vec4<bool>(global1.c.x, global1.c.x, all(global1.c.yzz) != (global1.c.x & global1.c.x), true), global1.c, !global1.c));
    return !var_3.c.x & any(!var_3.c.yz);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, 932f, _wgslsmith_f_op_f32(floor(-1811f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global0.x, global0.x) * global1.b.zyx)), !global1.c.yyy)), global1.a), arg_1.b, arg_0);
    let var_1 = true;
    var var_2 = arg_1;
    let var_3 = -107f;
    var var_4 = u_input.c;
    return Struct_2(all(!select(!vec3<bool>(true, arg_0.x, true), vec3<bool>(false, var_1, false), arg_2)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f))), 1492f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = func_4(vec4<bool>((~u_input.a.x != ~u_input.b) & !(arg_0.a != false), arg_0.a, arg_1.c.x, func_2()), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + global0.x), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_div_f32(420f, -1436f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -984f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, var_0.b.x), -405f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x * global1.b.x))), !select(global1.c, select(vec4<bool>(arg_0.a, false, arg_0.a, true), arg_1.c, true), global1.c.x)), true || !(false & !arg_0.a));
    let var_2 = _wgslsmith_clamp_vec3_i32(~((vec3<i32>(-19385i, u_input.c, u_input.c) << ((u_input.a >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a.x, u_input.a.x)), u_input.a << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), (vec3<i32>(-u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 2147483647i)), ~(-32828i)) & abs(abs(vec3<i32>(2147483647i, u_input.c, u_input.c)))) ^ (vec3<i32>(countOneBits(-42107i), ~u_input.c, 0i) ^ ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -8613i), vec3<i32>(-1i, u_input.c, u_input.c))), _wgslsmith_sub_vec3_i32(vec3<i32>(2252i, _wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(u_input.c, u_input.c)), -_wgslsmith_add_i32(0i, -39880i)), min(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -3091i), -vec3<i32>(-1i, u_input.c, -7795i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c, 1642i, 0i), reverseBits(vec3<i32>(2147483647i, u_input.c, -1i)), select(vec3<i32>(-61734i, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c), var_0.c.x)))));
    global1 = arg_1;
    var var_3 = u_input.c;
    return -1i;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.yyy))) + global1.b.zxw), vec4<f32>(538f, _wgslsmith_f_op_f32(floor(global0.x)), 1f, func_4(vec4<bool>(true, arg_0 | global1.c.x, false, true), Struct_1(vec3<f32>(-556f, global1.b.x, -1755f), vec4<f32>(951f, -143f, 471f, -1584f), select(global1.c, vec4<bool>(global1.c.x, arg_0, arg_0, arg_0), false)), u_input.c > (u_input.c ^ 0i)).b.x), global1.c);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 957f, global1.b.x)) - _wgslsmith_f_op_vec3_f32(-global1.a)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_0.a)), var_0.a, true))), _wgslsmith_f_op_vec3_f32(-var_0.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.b))), global1.b, true)), vec4<bool>(!(true & all(global1.c.zxy)), !(arg_1.x == u_input.c) && func_2(), false, !(!var_0.c.x & true)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - var_1.b.xww) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, global0.x, global1.a.x)))) * var_0.a))) + var_0.b.zyx);
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-448f - var_1.a.x), -906f, _wgslsmith_f_op_f32(f32(-1f) * -311f))), vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 1000f) * _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -408f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_1.b)), _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(-global1.b))), vec4<bool>(true, select(all(vec2<bool>(true, true)), true, arg_0), var_0.c.x, !all(vec4<bool>(var_1.c.x, true, true, true)) && false));
    let var_2 = Struct_1(vec3<f32>(var_1.b.x, var_0.a.x, global0.x), var_1.b, !vec4<bool>(func_4(vec4<bool>(true, var_0.c.x, var_0.c.x, global1.c.x), var_1, arg_0).a, var_1.c.x, arg_0, !any(vec2<bool>(var_1.c.x, true))));
    return Struct_1(var_2.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-187f)), _wgslsmith_f_op_f32(var_0.b.x + 510f))), _wgslsmith_f_op_f32(abs(global0.x)), 1117f, global1.a.x), vec4<f32>(func_4(var_1.c, Struct_1(vec3<f32>(global0.x, 604f, var_2.a.x), var_0.b, vec4<bool>(var_0.c.x, true, true, var_0.c.x)), var_2.c.x).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x))), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 464f)))), !vec4<bool>(!all(var_1.c), _wgslsmith_f_op_f32(-161f + -265f) >= _wgslsmith_f_op_f32(-var_0.b.x), any(global1.c), !(!var_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.a;
    var var_0 = func_5(all(global1.c), vec3<i32>(18704i, -11504i, _wgslsmith_clamp_i32(reverseBits(_wgslsmith_add_i32(u_input.c, -2147483647i)), func_1(Struct_2(true, vec2<f32>(global1.a.x, global1.a.x)), Struct_1(global1.b.zwx, global1.b, vec4<bool>(true, true, false, global1.c.x))), func_1(Struct_2(global1.c.x, global1.a.xy), Struct_1(vec3<f32>(global1.a.x, -1127f, global1.b.x), vec4<f32>(-277f, 637f, -1017f, -267f), vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x))))));
    let var_1 = Struct_2(var_0.c.x, _wgslsmith_f_op_vec2_f32(global1.b.yw * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.b.x) + _wgslsmith_div_vec2_f32(global0.zx, vec2<f32>(-520f, 1000f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(global1.b.zz))))))));
    var_0 = func_5(!var_1.a | true, vec3<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), abs(vec2<i32>(u_input.c, u_input.c)))), -1i, ~_wgslsmith_mod_i32(u_input.c, u_input.c)));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1606f * _wgslsmith_f_op_f32(abs(686f)))), var_0.a.x, _wgslsmith_f_op_f32(trunc(1816f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 279f, -700f, var_1.b.x))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1390f)) * -1218f), _wgslsmith_f_op_f32(select(-186f, _wgslsmith_f_op_f32(-global1.a.x), !global1.c.x)), _wgslsmith_f_op_f32(-var_1.b.x), 258f)), !vec4<bool>(true, func_5(var_1.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, -5059i))).c.x, true, _wgslsmith_f_op_f32(max(var_0.b.x, -993f)) >= _wgslsmith_f_op_f32(select(var_0.b.x, global0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.x), vec4<i32>(firstTrailingBit(u_input.c), _wgslsmith_sub_i32(i32(-1i) * -16449i, i32(-1i) * -u_input.c), u_input.c << (~_wgslsmith_sub_u32(u_input.a.x, 4294967295u) % 32u), 1i), vec2<f32>(516f, _wgslsmith_f_op_f32(-var_1.b.x)));
}

