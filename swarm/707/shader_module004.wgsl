struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<u32> = vec3<u32>(41530u, 27521u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1146f, 1259f, -274f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(505f, -909f, 1069f)))))));
    var var_1 = vec4<bool>(false, true, false, any(vec4<bool>(true, true, true, true)));
    global0 = var_1.zxy;
    return select(vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(all(vec4<bool>(true, var_1.x, false, global0.x)), var_1.x, true), all(select(select(global0.xx, global0.xz, true), vec2<bool>(global0.x, global0.x), false)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = arg_0.e;
    var var_1 = arg_0.d.x;
    var_1 = false;
    var var_2 = reverseBits(abs(-vec4<i32>(-arg_0.b, 25463i, -14162i, _wgslsmith_mult_i32(-32563i, 23328i))));
    var var_3 = arg_0.c.x;
    return arg_0.c.zy;
}

fn func_1() -> vec2<bool> {
    global1 = u_input.c.wyz;
    let var_0 = all(select(!(!vec3<bool>(true, global0.x, false)), vec3<bool>(any(vec4<bool>(true, global0.x, false, global0.x)), true, global0.x), !(!func_2())));
    var var_1 = u_input.c;
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1046f, 295f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, -1390f)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<bool>(false, var_0), 1i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(105f, -214f, 1000f, -1350f), vec4<f32>(2156f, 803f, -1000f, 998f))), vec2<bool>(false, false), -463f)))));
    return select(!(!vec2<bool>(true, all(vec2<bool>(var_0, false)))), vec2<bool>(!global0.x, global0.x), true || var_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_4 {
    global0 = select(!(!select(func_2(), select(vec3<bool>(global0.x, arg_0.x, arg_0.x), vec3<bool>(global0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, global0.x, true)), true)), !(!select(select(vec3<bool>(arg_0.x, false, global0.x), vec3<bool>(arg_0.x, global0.x, arg_0.x), vec3<bool>(arg_0.x, true, global0.x)), !vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), -countOneBits(firstTrailingBit(1i)) > (-_wgslsmith_sub_i32(0i, 1i) >> ((arg_2.x << (14331u % 32u)) % 32u)));
    let var_0 = arg_0.x;
    var var_1 = u_input.c;
    global1 = u_input.c.yzy;
    return Struct_4(Struct_3(Struct_2(~var_1.xwx, Struct_1(global0.yx, abs(51126i), vec4<f32>(arg_1.x, arg_1.x, -491f, arg_1.x), arg_0, _wgslsmith_f_op_f32(-arg_1.x)), arg_1, _wgslsmith_div_i32(-14168i, -1i), vec2<u32>(0u, ~14439u)), Struct_1(arg_0, 9272i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 865f, arg_1.x, arg_1.x))), global0.yx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))), !(!vec3<bool>(var_0, true, var_0))), vec4<i32>(firstTrailingBit(-24164i), abs(abs(~1i)), ~(-26490i << (arg_2.x % 32u)), ~(-1i) | ~(0i >> (arg_2.x % 32u))), _wgslsmith_clamp_i32(~30278i, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -22807i, -39760i, 8234i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-35934i, 2147483647i, 2147483647i, -1i)), firstTrailingBit(min(vec4<i32>(2147483647i, 0i, 14487i, 5651i), vec4<i32>(45149i, -13066i, 1i, -66227i))))), Struct_2(vec3<u32>(var_1.x, ~1u, 0u), Struct_1(global0.yx, ~1i << (global1.x % 32u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-279f, arg_1.x, arg_1.x, -1103f), vec4<f32>(-1000f, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, false, false, false))), func_1(), arg_1.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, 983f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_1))))), _wgslsmith_mult_i32(-38482i, ~1i), ~select(global1.xy, vec2<u32>(arg_2.x, 32033u), false) | abs(u_input.c.zx)), Struct_1(vec2<bool>(arg_0.x || true, false), abs(1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 872f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 707f, 1349f, arg_1.x))))), select(select(vec2<bool>(false, true), func_2().zx, arg_0), !select(arg_0, vec2<bool>(var_0, global0.x), false), true), arg_1.x));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = arg_1.a;
    let var_1 = Struct_4(Struct_3(func_4(vec2<bool>(!arg_1.e.d.x, global0.x), var_0.a.c, _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.a.a.e.x, 4294967295u)), vec2<u32>(arg_1.d.e.x, u_input.b.x))).d, Struct_1(vec2<bool>(func_2().x, any(vec4<bool>(var_0.c.x, true, arg_1.a.c.x, true))), select(_wgslsmith_div_i32(arg_2.x, var_0.b.b), -1i, !var_0.b.d.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-874f, var_0.a.c.x, var_0.b.c.x, 1231f), vec4<f32>(var_0.b.c.x, arg_1.d.c.x, 1000f, 2372f))), vec4<f32>(arg_1.a.b.c.x, var_0.a.c.x, 524f, arg_1.a.b.c.x), true)), !var_0.a.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.e * arg_1.e.c.x))), arg_1.a.c), vec4<i32>(_wgslsmith_div_i32(var_0.a.d, -abs(45366i)), ~arg_2.x, -22646i, _wgslsmith_mult_i32(~(-27266i), arg_2.x) & ~20037i), func_4(arg_1.e.d, arg_1.e.c.wxz, vec2<u32>(select(4294967295u, ~21708u, var_0.b.d.x), 1u)).c, Struct_2(_wgslsmith_clamp_vec3_u32(var_0.a.a, vec3<u32>(max(0u, 62989u), ~47444u, _wgslsmith_add_u32(u_input.c.x, var_0.a.a.x)), _wgslsmith_sub_vec3_u32(arg_1.d.a, var_0.a.a) & (arg_1.a.a.a >> (var_0.a.a % vec3<u32>(32u)))), var_0.a.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.x, var_0.b.e, 1000f))), _wgslsmith_f_op_vec3_f32(-arg_1.e.c.yxz))), 2147483647i, firstTrailingBit(vec2<u32>(u_input.a, min(0u, arg_0)))), func_4(select(select(select(vec2<bool>(global0.x, var_0.a.b.d.x), global0.zy, var_0.a.b.a.x), vec2<bool>(true, true), !vec2<bool>(arg_1.d.b.d.x, arg_1.d.b.a.x)), arg_1.e.d, func_2().yx), _wgslsmith_f_op_vec3_f32(round(var_0.a.c)), _wgslsmith_mult_vec2_u32(func_4(func_1(), _wgslsmith_f_op_vec3_f32(select(arg_1.d.c, var_0.b.c.wyz, global0.x)), vec2<u32>(0u, 0u)).d.e, ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.e.x, arg_0), vec2<u32>(u_input.c.x, global1.x)))).a.b);
    let var_2 = vec3<u32>(abs(1u), var_0.a.a.x, 76594u);
    var var_3 = !global0.x;
    var_3 = all(!select(select(select(vec4<bool>(false, true, var_1.d.b.d.x, global0.x), vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, var_0.c.x, false, arg_1.d.b.d.x)), !vec4<bool>(false, false, false, var_0.b.d.x), false), !(!vec4<bool>(false, true, var_1.e.d.x, false)), true));
    return func_4(func_1(), vec3<f32>(arg_1.e.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.b.e))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.b.c.x + arg_1.e.c.x), var_0.a.c.x)) + 1f)), ~(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.d.a.yx, var_2.yy), reverseBits(arg_1.d.a.xz)))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(!global0.x, !any(!vec4<bool>(global0.x, global0.x, global0.x, true)), global0.x);
    let var_0 = !global0.x;
    let var_1 = Struct_4(Struct_3(Struct_2(max(~u_input.c.zzw, u_input.c.yxw), Struct_1(select(global0.yx, vec2<bool>(true, var_0), true), firstTrailingBit(-45523i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-788f, 517f, 1000f, -2431f) + vec4<f32>(1324f, -1336f, 395f, -1184f)), vec2<bool>(true, true), -592f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-580f, -1000f, 379f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(492f, 408f, 1624f), vec3<f32>(123f, 230f, 282f))), vec3<bool>(global0.x, global0.x, global0.x))), -1348i, abs(select(vec2<u32>(global1.x, u_input.d), u_input.c.wy, global0.x))), Struct_1(!global0.yy, -46994i, vec4<f32>(-244f, -810f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(trunc(1292f))), select(vec2<bool>(global0.x, false), global0.zz, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2824f)))), vec3<bool>(false, global0.x, true)), -countOneBits(vec4<i32>(1i, 1i, 1i, 1i)) & max(max(~vec4<i32>(-21995i, 11976i, -17369i, 44185i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, 26882i), vec4<i32>(25220i, -35394i, 13769i, 60609i), vec4<i32>(17457i, -2147483647i, 23929i, -2147483647i)) & (vec4<i32>(-38449i, 2147483647i, -14589i, 37569i) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.c.x, 7590u) % vec4<u32>(32u)))), ~2147483647i, Struct_2(vec3<u32>(global1.x, u_input.d, global1.x), func_5(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, 37730u), vec4<u32>(0u, global1.x, u_input.a, global1.x)), vec4<u32>(global1.x, u_input.d, 0u, 1u)), func_4(func_1(), vec3<f32>(1f, 1f, 1f), abs(u_input.b)), vec3<i32>(_wgslsmith_mult_i32(-1i, 52492i), max(2147483647i, 1i), 0i)), vec3<f32>(_wgslsmith_f_op_f32(-func_5(26987u, Struct_4(Struct_3(Struct_2(vec3<u32>(u_input.b.x, u_input.d, u_input.a), Struct_1(vec2<bool>(global0.x, global0.x), -2147483647i, vec4<f32>(2268f, -160f, 1314f, 169f), global0.zx, -532f), vec3<f32>(-1298f, 832f, -1000f), -2147483647i, u_input.b), Struct_1(global0.yy, -26288i, vec4<f32>(485f, 945f, 455f, 1141f), global0.xz, 1269f), vec3<bool>(global0.x, true, false)), vec4<i32>(-1i, -27607i, 1i, -52204i), 1i, Struct_2(u_input.c.ywz, Struct_1(vec2<bool>(var_0, true), 2147483647i, vec4<f32>(1000f, 2067f, 350f, -241f), global0.yz, 382f), vec3<f32>(912f, 639f, 1154f), -2147483647i, global1.zx), Struct_1(global0.xx, 30652i, vec4<f32>(1403f, 368f, 898f, 884f), vec2<bool>(var_0, global0.x), 763f)), vec3<i32>(-3708i, 1i, 60758i)).e), -1091f, _wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-12659i, -2147483647i, 40017i, 1i) >> (vec4<u32>(17829u, global1.x, u_input.d, 10020u) % vec4<u32>(32u)), vec4<i32>(9521i, 647i, -2147483647i, 2147483647i)), ~vec4<i32>(17592i, -16734i, -2147483647i, -29238i)), u_input.b), Struct_1(global0.zz, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~(-1i)), vec2<i32>(1i, -46209i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1919f, -380f, 100f, 1304f), vec4<f32>(-264f, -1142f, 104f, 817f), global0.x))))), select(!func_2().zy, global0.zz, false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f - -2055f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f - 378f) * -1958f)))));
    var var_2 = var_1.b;
    var_2 = ~vec4<i32>(51631i, _wgslsmith_clamp_i32(var_2.x, ~var_1.b.x & ~(-2147483647i), select(var_1.b.x, 13517i, var_0)), -select(~0i, abs(1i), true), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.e.e, 874f), _wgslsmith_mod_i32(-13035i, -(~abs(var_1.d.b.b))), ~(~u_input.a));
}

