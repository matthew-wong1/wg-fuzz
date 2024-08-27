struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1006f, -1805f, -2067f, -1231f);

var<private> global1: f32 = -580f;

var<private> global2: bool = false;

var<private> global3: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-519f, 439f), vec2<f32>(801f, -1213f), vec2<f32>(2368f, -458f), vec2<f32>(353f, -1000f), vec2<f32>(-1160f, -1227f), vec2<f32>(-2042f, -371f), vec2<f32>(624f, 741f), vec2<f32>(-1334f, -1797f), vec2<f32>(-743f, 1510f), vec2<f32>(-1212f, -243f), vec2<f32>(-789f, -354f), vec2<f32>(544f, 323f), vec2<f32>(762f, 989f), vec2<f32>(-946f, 421f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(select(vec2<bool>(!any(vec2<bool>(false, false)), arg_0), vec2<bool>(true, false), all(select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, false), false), vec3<bool>(false, true, arg_0)))), arg_0 | ((_wgslsmith_mod_i32(1i, -9725i) != (-1i << (u_input.a % 32u))) || true), true, vec3<bool>(true, all(vec4<bool>(arg_0, arg_0 && false, all(vec3<bool>(false, arg_0, false)), arg_0)), !any(!vec2<bool>(true, arg_0))));
    var var_1 = min(53919u, u_input.a);
    let var_2 = var_0;
    let var_3 = -max(vec4<i32>(1i, 1i, 1i, 1i), max(max(vec4<i32>(30534i, -24165i, -2147483647i, 22268i) << (vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a) % vec4<u32>(32u)), max(vec4<i32>(-2147483647i, -2147483647i, 4399i, -36882i), vec4<i32>(2147483647i, -28640i, 14487i, 0i))), ~countOneBits(vec4<i32>(32441i, -17102i, 21442i, -1i))));
    var var_4 = Struct_5(var_2.c, firstTrailingBit(abs(var_3.x)), 47698i, Struct_3(select(!any(vec4<bool>(var_2.b, true, var_0.c, arg_0)), var_0.a.x, all(select(var_0.d, var_2.d, var_0.a.x))), !vec2<bool>(-20446i >= var_3.x, -164f == global0.x), _wgslsmith_div_f32(global0.x, global0.x), all(!(!vec3<bool>(var_2.b, false, false)))), u_input.a == abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(21634u, 27697u), vec2<u32>(44307u, u_input.a))));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = select(vec4<bool>(any(arg_1.xy), !(!(!arg_1.x)), arg_0.x, true), select(vec4<bool>(select(true, !arg_1.x, false), func_3(arg_1.x), true, false), arg_1, !(!arg_1.x) || (all(arg_0) | (arg_1.x && true))), arg_1);
    var_0 = !arg_1;
    let var_1 = Struct_2(67249u, Struct_1(select(arg_1.wx, !select(arg_0.zz, vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x)), !select(vec2<bool>(arg_1.x, var_0.x), arg_1.ww, vec2<bool>(false, arg_0.x))), arg_0.x, false, select(!(!vec3<bool>(arg_1.x, arg_1.x, arg_0.x)), select(vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, arg_1.x), arg_0, true), arg_0), var_0.wxy)), 0u, Struct_1(vec2<bool>(true, false), false, true, !vec3<bool>(all(var_0.zyz), any(vec4<bool>(var_0.x, true, true, true)), all(var_0.yw))), Struct_1(select(select(arg_1.zx, select(arg_1.yw, vec2<bool>(false, arg_1.x), vec2<bool>(false, arg_1.x)), true), vec2<bool>(true, true), true), true, arg_0.x && arg_1.x, select(arg_0, !select(arg_0, var_0.xzz, var_0.wwy), !vec3<bool>(arg_0.x, false, arg_0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1445f, -228f, global0.x), vec4<f32>(1000f, global0.x, -235f, 601f), arg_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1710f, -270f, global0.x, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -568f, -1559f, global0.x), vec4<f32>(-235f, 357f, -1000f, global0.x))), arg_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -2400f, global0.x, -518f))))));
    let var_2 = select(40451u, 2032u, true);
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_4(~vec2<u32>(abs(arg_0.c), u_input.a), _wgslsmith_dot_vec4_u32(select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, u_input.a, u_input.a, 42579u), vec4<u32>(0u, 66265u, 21316u, 61659u))), vec4<u32>(arg_0.a, 1u, max(4294967295u, u_input.a), 58419u), true), vec4<u32>(5997u ^ ~u_input.a, ~1u, arg_0.c, 0u)));
    global2 = all(!(!vec2<bool>(!arg_0.e.d.x, false)));
    let var_1 = Struct_5(arg_0.e.c, min(-2147483647i, i32(-1i) * -3262i), arg_1.x, Struct_3(1i < (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(1i, -43099i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -82i, -27321i), arg_1)), arg_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1426f, -1000f)), global0.x)), arg_0.b.b), true);
    var var_2 = select(~vec4<u32>(7298u, ~(~var_0.a.x), 7809u, 19537u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, 57782u, _wgslsmith_clamp_u32(u_input.a, 0u, 6769u), var_0.a.x), ~firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, var_0.a.x, 11339u))), vec4<bool>(arg_0.b.d.x, all(select(vec4<bool>(arg_0.d.b, var_1.a, false, false), vec4<bool>(arg_0.b.d.x, true, var_1.d.b.x, true), vec4<bool>(var_1.a, false, false, var_1.d.a))) & all(vec2<bool>(false, true)), arg_0.b.b, !(var_1.a && all(vec4<bool>(var_1.a, true, var_1.d.a, var_1.e)))));
    var var_3 = true;
    return !func_2(select(vec3<bool>(true, false, true), arg_0.e.d, arg_0.e.c), !select(vec4<bool>(var_1.a, false, arg_0.b.d.x, false), select(vec4<bool>(true, true, arg_0.e.b, var_1.d.d), vec4<bool>(true, false, false, false), vec4<bool>(false, arg_0.b.b, arg_0.e.c, var_1.d.b.x)), vec4<bool>(var_1.e, true, true, arg_0.d.b))).b.d;
}

fn func_1(arg_0: f32) -> Struct_5 {
    var var_0 = !func_4(func_2(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), abs(vec3<i32>(0i, firstLeadingBit(30965i), _wgslsmith_sub_i32(-11638i, -2147483647i))));
    let var_1 = Struct_1(select(!vec2<bool>(var_0.x, true), func_2(vec3<bool>(true, all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), var_0.x), select(!vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), false)).b.a, !vec2<bool>(arg_0 >= -1049f, false)), any(!vec3<bool>(var_0.x, 0u == u_input.a, func_4(Struct_2(u_input.a, Struct_1(vec2<bool>(false, true), false, false, vec3<bool>(true, false, true)), 67556u, Struct_1(var_0.yy, var_0.x, true, vec3<bool>(true, true, false)), Struct_1(vec2<bool>(false, var_0.x), var_0.x, true, vec3<bool>(true, var_0.x, var_0.x))), vec3<i32>(-2147483647i, 37478i, 28939i)).x)), true, select(func_4(func_2(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), vec4<bool>(false, false, false, var_0.x)), ~vec3<i32>(1i, 1i, 1i)), !(!func_2(vec3<bool>(var_0.x, true, true), vec4<bool>(true, true, false, false)).d.d), vec3<bool>(func_2(!vec3<bool>(var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)).d.d.x, var_0.x, var_0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(global0.xxy));
    global3 = array<vec2<f32>, 14>();
    let var_3 = global0.ww;
    return Struct_5(true, ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -1i, -1i), select(vec3<i32>(0i, 0i, 0i), vec3<i32>(0i, 1i, 33744i), var_1.d)), vec3<i32>(abs(-2147483647i), 1i, ~(-2147483647i))), select(min(-2147483647i, -1909i), _wgslsmith_mult_i32(~0i, 7206i), var_1.a.x) ^ _wgslsmith_mult_i32(abs(0i), _wgslsmith_sub_i32(58809i, -1i)), Struct_3(false, vec2<bool>(global0.x >= _wgslsmith_f_op_f32(var_3.x + 788f), !all(vec4<bool>(var_0.x, true, var_1.c, true))), _wgslsmith_f_op_f32(step(-215f, var_2.x)), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, false, (~_wgslsmith_mod_u32(u_input.a, 2666u) >= (u_input.a << (u_input.a % 32u))) && true);
    global1 = _wgslsmith_f_op_f32(sign(global0.x));
    let var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1580f));
    let var_2 = reverseBits(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(var_1.c, var_1.b)), select(~vec2<i32>(1i, var_1.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(-16575i, 1i), vec2<i32>(1451i, 47806i), vec2<i32>(-36725i, 0i)), var_1.d.d), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_1.b, var_1.c), ~vec2<i32>(-28106i, 1599i)))) >> (firstTrailingBit(~(~vec2<u32>(u_input.a, 22906u) | reverseBits(vec2<u32>(u_input.a, u_input.a)))) % vec2<u32>(32u));
    let var_3 = vec3<f32>(-343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * 1532f), 316f)) - 478f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(121f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.c, _wgslsmith_div_f32(var_1.d.c, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

