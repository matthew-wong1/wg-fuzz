struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

var<private> global0: vec4<u32>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32) -> f32 {
    global1 = Struct_4(global1.a, Struct_2(firstLeadingBit(_wgslsmith_mod_vec4_i32(global1.b.a << (vec4<u32>(1u, 0u, global0.x, global0.x) % vec4<u32>(32u)), vec4<i32>(-35450i, -47791i, global1.d.a.x, global1.d.a.x)))), !vec3<bool>(!select(global1.c.x, true, false), global0.x == _wgslsmith_mod_u32(48739u, global0.x), _wgslsmith_f_op_f32(global1.a * 1015f) <= -1455f), Struct_2(~(~vec4<i32>(0i, arg_0, 1087i, arg_0))));
    let var_0 = Struct_2(select(~abs(global1.b.a), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, -7282i, global1.d.a.x, -8888i), vec4<i32>(global1.d.a.x, arg_0, global1.b.a.x, u_input.c)) ^ vec4<i32>(_wgslsmith_add_i32(-1i, global1.d.a.x), i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(global1.d.a.x, 0i, arg_0), -30923i), vec4<bool>(!(global1.c.x | true), global1.c.x, true, global1.c.x)));
    global2 = array<Struct_1, 19>();
    let var_1 = Struct_3(Struct_1(firstTrailingBit(~vec4<u32>(1u, 17001u, global0.x, 45537u))), global1.a, reverseBits(u_input.a), Struct_2(abs(vec4<i32>(global1.d.a.x, -2147483647i, arg_0, 18137i))));
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1.a)))), _wgslsmith_f_op_f32(abs(var_1.b)))), global1.d, select(vec3<bool>(max(var_1.a.a.x, 42960u) > 4294967295u, !select(global1.c.x, global1.c.x, false), false), select(select(select(vec3<bool>(true, global1.c.x, global1.c.x), vec3<bool>(true, false, global1.c.x), global1.c.x), select(global1.c, vec3<bool>(false, global1.c.x, global1.c.x), false), any(vec4<bool>(false, global1.c.x, true, global1.c.x))), !global1.c, vec3<bool>(true, false && global1.c.x, any(vec2<bool>(false, false)))), !select(vec3<bool>(false, global1.c.x, true), global1.c, var_1.a.a.x >= var_1.a.a.x)), global1.b);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(382f, var_1.b))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3) -> i32 {
    var var_0 = !(!vec4<bool>(global1.c.x, false | (true && global1.c.x), !global1.c.x, !global1.c.x));
    let var_1 = -(~((vec2<i32>(-45061i, -2147483647i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.a.a.x, 1703u), vec2<u32>(8594u, global0.x)) % vec2<u32>(32u))) << (global0.zz % vec2<u32>(32u))));
    global1 = Struct_4(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1734f - _wgslsmith_f_op_f32(max(1543f, arg_2.b))) * -1000f))), arg_2.d, !(!var_0.zwy), Struct_2(~(~(arg_2.d.a & vec4<i32>(-40891i, arg_2.c, arg_1, global1.d.a.x)))));
    let var_2 = arg_2.a.a;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_2.a.a.x, 14526u), 19u)];
    return -2147483647i;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = !(!(!global1.c.x));
    let var_1 = -_wgslsmith_mult_vec2_i32(reverseBits(arg_0.ww), vec2<i32>(arg_0.x, 0i));
    let var_2 = !(!(!global1.c.x & global1.c.x));
    let var_3 = Struct_3(global2[_wgslsmith_index_u32(24235u, 19u)], global1.a, _wgslsmith_mod_i32(var_1.x, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a, 1277f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2087f, -1075f), vec2<f32>(-595f, 1205f)))), var_1.x, Struct_3(global2[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(func_3(var_1.x)), select(3221i, global1.b.a.x, var_0), Struct_2(vec4<i32>(1i, 27085i, 2147483647i, 98050i))))), Struct_2(_wgslsmith_sub_vec4_i32(~vec4<i32>(-26697i, -2147483647i, -26164i, arg_0.x), arg_0) & countOneBits(vec4<i32>(arg_0.x, -2147483647i, -58810i, 2087i))));
    var var_4 = Struct_4(_wgslsmith_div_f32(-522f, var_3.b), var_3.d, select(!(!(!global1.c)), vec3<bool>(!global1.c.x, var_0, 2147483647i > max(global1.d.a.x, arg_0.x)), select(!select(vec3<bool>(false, var_2, global1.c.x), vec3<bool>(false, true, true), var_0), !select(global1.c, vec3<bool>(false, var_0, true), global1.c), !(!var_2))), var_3.d);
    return Struct_2(firstTrailingBit(-(~vec4<i32>(-35832i, 59467i, 51415i, var_3.c))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<i32> {
    global1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -145f), func_2(vec4<i32>(~_wgslsmith_mult_i32(arg_2.x, 77970i), arg_2.x, _wgslsmith_add_i32(u_input.b, 45216i) & 2147483647i, arg_2.x)), vec3<bool>(global1.c.x, any(global1.c), true), global1.d);
    global1 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-139f + global1.a))), func_2(min(global1.b.a, reverseBits(global1.d.a)) & firstTrailingBit(min(vec4<i32>(2147483647i, global1.b.a.x, -1i, u_input.a), global1.d.a))), vec3<bool>(global1.c.x, any(select(vec4<bool>(true, global1.c.x, global1.c.x, true), vec4<bool>(global1.c.x, true, global1.c.x, false), 1634f <= global1.a)), any(select(!vec3<bool>(true, global1.c.x, false), global1.c, !vec3<bool>(global1.c.x, true, true)))), global1.d);
    let var_0 = -global1.d.a.x;
    var var_1 = Struct_3(Struct_1(arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -394f), global1.b.a.x, Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, u_input.a, 10670i, var_0), vec4<i32>(35248i, u_input.a, 0i, 1i))));
    global1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(913f, _wgslsmith_f_op_f32(-1509f - _wgslsmith_f_op_f32(func_3(var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 931f)))), global1.d, vec3<bool>(true, global1.c.x, global1.c.x), global1.b);
    return var_1.d.a.xwy;
}

fn func_5(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = -vec4<i32>(~0i, 14548i, 1i, func_1(global1.a, Struct_1(vec4<u32>(global0.x, 0u, 77354u, global0.x)), vec3<i32>(-2147483647i, 0i, -215i)).x);
    var var_1 = false;
    global0 = ~(~vec4<u32>(_wgslsmith_div_u32(4294967295u, ~global0.x), ~(~68122u), global0.x, global0.x >> (~global0.x % 32u)));
    var var_2 = Struct_1(firstTrailingBit(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(55342u, 1u, global0.x, global0.x), vec4<u32>(global0.x, 22009u, global0.x, global0.x)))));
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + global1.a), Struct_2(global1.b.a), global1.c, func_2(vec4<i32>(0i, func_2(vec4<i32>(-2147483647i, u_input.c, 12008i, 50633i)).a.x, func_4(vec2<f32>(global1.a, -1661f), 16565i, Struct_3(Struct_1(vec4<u32>(var_2.a.x, 1u, 26268u, var_2.a.x)), global1.a, 7943i, Struct_2(vec4<i32>(-1i, var_0.x, 4940i, arg_1)))), _wgslsmith_mod_i32(arg_0.x, 1i)) & global1.d.a));
    return Struct_2(global1.b.a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 19u)];
    var var_1 = Struct_4(global1.a, func_5(vec3<i32>(~_wgslsmith_mult_i32(-4637i, 1i), arg_0.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_2.d.a.wy, arg_1.d.a.yw), ~arg_2.b.a.x)), 0i), vec3<bool>(arg_2.c.x, arg_2.c.x & arg_2.c.x, true), Struct_2(arg_1.d.a));
    var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(arg_2.a - -603f))))), Struct_2(vec4<i32>(u_input.b, _wgslsmith_clamp_i32(1i, -2147483647i, arg_1.c), arg_2.d.a.x, var_1.d.a.x)), select(!var_1.c, select(select(select(vec3<bool>(true, global1.c.x, global1.c.x), vec3<bool>(false, true, false), vec3<bool>(global1.c.x, arg_2.c.x, var_1.c.x)), !global1.c, vec3<bool>(false, false, false)), vec3<bool>(any(vec4<bool>(false, false, true, true)), true, select(false, false, global1.c.x)), select(vec3<bool>(global1.c.x, global1.c.x, false), vec3<bool>(true, arg_2.c.x, false), true)), vec3<bool>(all(!vec3<bool>(var_1.c.x, var_1.c.x, true)), true, !var_1.c.x)), func_5(arg_2.d.a.zwx, -_wgslsmith_mod_i32(-var_1.b.a.x, 2147483647i)));
    let var_2 = arg_2;
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, ~56850u), 19u)];
    return arg_1;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = global1.b.a.xyx;
    global1 = Struct_4(global1.a, arg_1.d, select(vec3<bool>(any(select(vec4<bool>(global1.c.x, global1.c.x, false, true), vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, false, false, global1.c.x))), false, !all(vec3<bool>(global1.c.x, true, global1.c.x))), select(vec3<bool>(false, global1.c.x, false), !(!global1.c), !(global1.a > -1577f)), (firstTrailingBit(-1i) & -56539i) <= abs(1i)), global1.d);
    global0 = arg_2.a;
    let var_1 = Struct_2(vec4<i32>(~var_0.x, u_input.b, _wgslsmith_add_i32(arg_0.a.x, 2147483647i), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a, 370f, false)) + _wgslsmith_f_op_f32(arg_1.b - -465f)), Struct_1(~arg_1.a.a), global1.d.a.yyz).x));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~59344u;
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + 702f) - _wgslsmith_f_op_f32(-1257f * 224f))), global1.a), func_7(Struct_2(vec4<i32>(~2147483647i, -35792i, -u_input.a, u_input.b)), func_6(func_5(func_1(global1.a, global2[_wgslsmith_index_u32(global0.x, 19u)], vec3<i32>(-14459i, -24360i, u_input.a)), u_input.b), Struct_3(Struct_1(vec4<u32>(global0.x, global0.x, 1u, 25568u)), -121f, -global1.b.a.x, Struct_2(global1.b.a)), Struct_4(-1116f, Struct_2(vec4<i32>(u_input.b, -2147483647i, -47211i, global1.b.a.x)), vec3<bool>(false, global1.c.x, true), global1.d)), global2[_wgslsmith_index_u32(global0.x << (32589u % 32u), 19u)], 1u), !vec3<bool>(any(select(global1.c, vec3<bool>(false, true, global1.c.x), global1.c)), true, true), Struct_2(vec4<i32>(func_5(-vec3<i32>(global1.b.a.x, u_input.c, global1.d.a.x), global1.b.a.x).a.x, func_1(_wgslsmith_f_op_f32(func_3(global1.d.a.x)), func_6(Struct_2(global1.b.a), Struct_3(global2[_wgslsmith_index_u32(global0.x, 19u)], global1.a, u_input.b, global1.b), Struct_4(global1.a, Struct_2(global1.b.a), vec3<bool>(global1.c.x, global1.c.x, false), global1.d)).a, func_5(global1.b.a.xzx, global1.d.a.x).a.wxy).x, _wgslsmith_dot_vec4_i32(firstTrailingBit(global1.b.a), ~vec4<i32>(u_input.c, -2147483647i, global1.b.a.x, -33105i)), -15853i)));
    let var_2 = var_1.c.x;
    global2 = array<Struct_1, 19>();
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(485f + var_1.a) + -1333f)));
    var_0 = 1u;
    global1 = Struct_4(735f, global1.b, var_1.c, Struct_2(vec4<i32>(min(global1.b.a.x >> (global0.x % 32u), i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.d.a.x), var_1.d.a.yy), vec2<i32>(-2147483647i, global1.d.a.x) ^ vec2<i32>(54599i, global1.b.a.x)), -u_input.c, -14534i)));
    let x = u_input.a;
    s_output = StorageBuffer(2269u);
}

