struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_mult_u32(var_0 << (17155u % 32u), var_0), Struct_1(vec2<i32>(-min(-2147483647i, u_input.c), 99140i), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), ~vec2<u32>(_wgslsmith_mod_u32(3798u, 23550u), 44229u), _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0, 89792u, var_0, 0u)), abs(vec4<u32>(var_0, 0u, u_input.b.x, 0u) << (vec4<u32>(4294967295u, var_0, 0u, 43321u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1632f), 1429f, _wgslsmith_f_op_f32(-440f * 2154f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1995f, 723f, -249f) - vec3<f32>(647f, 953f, -485f)))), ~abs(-25531i), u_input.c);
    let var_2 = var_1.b.b;
    var var_3 = var_1.b.c.x;
    var var_4 = var_1.b;
    return !(!select(vec4<bool>(true, var_1.b.b, var_4.b | var_4.b, true), select(vec4<bool>(true, var_1.b.b, false, true), !vec4<bool>(true, var_1.b.b, var_4.b, true), select(vec4<bool>(var_1.b.b, false, var_1.b.b, true), vec4<bool>(var_1.b.b, var_1.b.b, var_4.b, false), var_4.b)), var_1.b.b));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1245f, -219f)), _wgslsmith_f_op_f32(600f + 1884f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f), 1f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(vec3<f32>(492f, -129f, 1239f), vec3<f32>(268f, -671f, -1002f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-103f, _wgslsmith_div_f32(-385f, 696f), _wgslsmith_f_op_f32(-1829f - -944f)))), vec3<bool>(false, all(func_3()), true))));
    var var_1 = vec2<bool>(!select(true, true, true) || (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(var_0.x - var_0.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-752f, -232f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(-311f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1739f, -1000f)))) - _wgslsmith_f_op_f32(abs(1f))));
    var var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(31475u, 52698u) & arg_0.wy, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.d), ~arg_0.xx)), Struct_1(abs(~reverseBits(vec2<i32>(-27050i, u_input.c))), true, vec2<u32>(~arg_0.x, u_input.b.x ^ 1u), _wgslsmith_mult_vec4_u32(arg_0, ~arg_0)), vec3<f32>(var_0.x, var_0.x, 724f), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, ~(-1i), u_input.c, 15376i), -vec4<i32>(46121i, 38778i, -2147483647i, u_input.c) << (vec4<u32>(17124u | u_input.d, max(515u, 4294967295u), ~53969u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 3075u, 22054u, 7653u), vec4<u32>(arg_0.x, 33400u, arg_0.x, u_input.a))) % vec4<u32>(32u))), reverseBits(~u_input.c));
    var_1 = func_3().zy;
    var_1 = select(!vec2<bool>((13159i ^ u_input.c) == _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.a.x, var_2.d, -53159i, u_input.c), vec4<i32>(1i, 9627i, u_input.c, -2147483647i)), any(vec4<bool>(true, var_1.x, false, var_1.x))), select(!vec2<bool>(var_1.x == var_2.b.b, false), vec2<bool>(all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-var_2.c.x) > _wgslsmith_f_op_f32(floor(1592f))), var_2.b.b), !(any(select(vec4<bool>(true, var_1.x, var_2.b.b, false), vec4<bool>(var_2.b.b, false, false, var_2.b.b), false)) && false));
    return Struct_1(var_2.b.a, !any(vec2<bool>(var_1.x, var_2.b.b)) | any(select(!vec3<bool>(false, var_2.b.b, false), !vec3<bool>(true, var_2.b.b, true), !var_2.b.b)), vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(~arg_0), vec4<u32>(u_input.a | 0u, ~4294967295u, var_2.b.c.x << (u_input.d % 32u), u_input.a)), (select(14615u, 1u, false) & ~arg_0.x) | 1u), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_i32(-(~arg_0.a.x), arg_0.a.x);
    var_0 = ~min(_wgslsmith_sub_i32(0i, -(i32(-1i) * -90196i)), 0i);
    let var_1 = arg_1.b;
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(select(-arg_1.b.a, var_1.a, true), vec2<i32>(min(arg_1.d, arg_1.e) << (_wgslsmith_div_u32(0u, 43640u) % 32u), firstTrailingBit(arg_1.d) << (0u % 32u))), true, vec2<u32>(abs(~1u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(min(arg_1.b.d.yzy, arg_0.d.wyy), ~u_input.b), abs(arg_0.d.zyx))), select(~(~_wgslsmith_div_vec4_u32(arg_0.d, vec4<u32>(u_input.b.x, arg_1.a, 0u, arg_1.a))), _wgslsmith_div_vec4_u32(arg_0.d ^ vec4<u32>(4294967295u, 0u, arg_1.a, 1u), vec4<u32>(arg_0.d.x, ~5757u, arg_0.d.x, ~4294967295u)), !vec4<bool>(any(vec3<bool>(true, arg_1.b.b, arg_0.b)), false, all(vec2<bool>(true, true)), arg_1.b.b)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + -1361f)), 452f, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(528f)), 1000f))), true)), -954f);
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<bool> {
    var var_0 = arg_0.b;
    var_0 = !(!(!func_4(Struct_1(vec2<i32>(u_input.c, arg_1), true, vec2<u32>(arg_0.c.x, 0u), vec4<u32>(arg_2, 41628u, 41873u, 0u)), Struct_2(arg_2, arg_0, vec3<f32>(-291f, 1647f, -565f), -1985i, 1i), -379f).b)) && false;
    let var_1 = func_2(abs(arg_0.d));
    var_0 = true;
    var var_2 = var_1.d.x;
    return vec2<bool>(any(!select(select(vec4<bool>(true, var_1.b, arg_0.b, true), vec4<bool>(var_1.b, false, false, true), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b)), vec4<bool>(arg_0.b, var_1.b, arg_0.b, arg_0.b), !var_1.b)), true);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)), _wgslsmith_f_op_f32(-535f * _wgslsmith_f_op_f32(f32(-1f) * -440f)), true)), 1f)));
    var var_1 = select(func_5(func_4(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, u_input.d, 4294967295u), vec4<u32>(4294967295u, 40466u, u_input.a, u_input.a), vec4<u32>(2933u, 50586u, u_input.d, u_input.b.x))), Struct_2(9582u, func_2(vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, u_input.a)), vec3<f32>(-672f, -1221f, 1556f), _wgslsmith_add_i32(2147483647i, u_input.c), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1020f)))), u_input.c, 24115u), !func_3().yx, any(vec2<bool>(false, true)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2260f, _wgslsmith_f_op_f32(-977f - 471f))) * -1555f), 950f);
    let var_2 = func_2(select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, 10751u), vec4<u32>(37619u, u_input.b.x, 0u, u_input.d)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.d), ~vec4<u32>(4294967295u, u_input.a, 69515u, 1u)), func_2(func_2(vec4<u32>(u_input.d, u_input.b.x, u_input.a, u_input.d)).d).b) & ~(~vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.a)));
    let var_3 = Struct_2(_wgslsmith_mult_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 0u, 80141u), vec3<u32>(5714u, 40964u, 71385u)) << (abs(1u) % 32u)), _wgslsmith_mod_u32(u_input.d << (1u % 32u), 15064u)), func_2(firstTrailingBit(~vec4<u32>(4294967295u, var_2.d.x, u_input.d, 1u))), vec3<f32>(232f, -127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-227f, -1236f)) + 200f))), reverseBits(arg_1), max(_wgslsmith_add_i32(1i, abs(31434i)), var_2.a.x));
    return -(~vec2<i32>(2147483647i | u_input.c, 1i)) << (var_3.b.d.yy % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((func_1(true, 1i, all(vec4<bool>(false, false, true, true)), true) | func_1(u_input.d == 18842u, ~30887i, true, false)) & max(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 15834i), vec2<i32>(1i, 32919i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2101i, -2147483647i))), any(vec3<bool>(true, true, true)) || true, ~u_input.b.zz, vec4<u32>(~0u, u_input.a, u_input.d >> (_wgslsmith_sub_u32(countOneBits(u_input.a), u_input.b.x) % 32u), u_input.a));
    var var_1 = false;
    var_1 = true;
    var_1 = var_0.b;
    var var_2 = !(!var_0.b) | true;
    var var_3 = -vec4<i32>(u_input.c, -38810i, abs(9944i), max(~2147483647i, abs(var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(-52067i), 1i, -2768i, ~(-2147483647i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1043f, -1846f, -1687f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(849f, 330f, -319f))))))), var_0.d.x);
}

