struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<i32>(-1i, 0i, 1373i), Struct_2(-27189i, Struct_1(-152f, vec2<f32>(328f, -620f)), -1i, vec4<bool>(true, true, true, true), vec3<i32>(i32(-2147483648), 20285i, -13021i)), 0u, vec3<bool>(false, false, false)), Struct_3(vec3<i32>(38890i, -1i, 0i), Struct_2(-1i, Struct_1(-639f, vec2<f32>(1280f, 917f)), -39283i, vec4<bool>(false, false, true, true), vec3<i32>(0i, -1i, i32(-2147483648))), 40611u, vec3<bool>(true, true, true)), Struct_3(vec3<i32>(-1i, 2147483647i, 2147483647i), Struct_2(-24579i, Struct_1(821f, vec2<f32>(469f, -422f)), i32(-2147483648), vec4<bool>(false, true, true, false), vec3<i32>(-1i, 29056i, -15789i)), 0u, vec3<bool>(true, false, false)), Struct_3(vec3<i32>(-24065i, -46030i, 28080i), Struct_2(i32(-2147483648), Struct_1(-574f, vec2<f32>(1977f, -370f)), 1i, vec4<bool>(true, false, true, true), vec3<i32>(14685i, -8890i, 0i)), 0u, vec3<bool>(true, false, false)), Struct_3(vec3<i32>(5383i, 0i, 1i), Struct_2(-20578i, Struct_1(-218f, vec2<f32>(353f, 775f)), -18249i, vec4<bool>(false, false, false, true), vec3<i32>(-17790i, 7519i, 0i)), 12866u, vec3<bool>(true, false, false)), Struct_3(vec3<i32>(75228i, 2147483647i, -3108i), Struct_2(1i, Struct_1(175f, vec2<f32>(-535f, -1000f)), -39352i, vec4<bool>(true, false, false, true), vec3<i32>(-1i, -1i, 52069i)), 99138u, vec3<bool>(true, true, true)), Struct_3(vec3<i32>(1i, -45322i, 12389i), Struct_2(1i, Struct_1(1308f, vec2<f32>(808f, 239f)), 31238i, vec4<bool>(false, true, false, false), vec3<i32>(0i, i32(-2147483648), -1i)), 4294967295u, vec3<bool>(true, true, true)), Struct_3(vec3<i32>(2147483647i, 24318i, 30118i), Struct_2(14431i, Struct_1(1403f, vec2<f32>(386f, 1600f)), 2147483647i, vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, 15980i, i32(-2147483648))), 1u, vec3<bool>(true, false, false)));

var<private> global3: u32;

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> i32 {
    global4 = array<Struct_1, 14>();
    global2 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-940f - -2468f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a * arg_1.b.b.x) * 305f)))));
    let var_1 = vec3<i32>(~_wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(u_input.b | arg_1.c, u_input.b)), ~(-(~_wgslsmith_mult_i32(u_input.b, u_input.b))), firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_1.a, arg_0.x, arg_1.a, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, u_input.b, arg_1.c, arg_1.e.x), vec4<i32>(arg_1.a, arg_0.x, 12622i, arg_1.e.x))), firstTrailingBit(vec4<i32>(-24250i, arg_0.x, -1581i, arg_1.a)) & firstTrailingBit(vec4<i32>(74913i, -50598i, -39504i, arg_1.c)))));
    var var_2 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(~global1.x), 0u, ~23092u, 49226u), _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 60113u, 1u, global1.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), ~(~vec4<u32>(global1.x, global1.x, 1u, 0u)))));
    return u_input.b;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_4) -> vec2<f32> {
    var var_0 = Struct_1(arg_2.a.b.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.b.b.a, arg_1.x) - vec2<f32>(arg_1.x, 113f)), arg_1.zx)), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a.a)), arg_1.x))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, var_0.a, _wgslsmith_div_f32(-672f, -767f), _wgslsmith_f_op_f32(-var_0.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, var_0.a, -527f, arg_2.a.a))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1182f), arg_2.a.b.x)));
    let var_2 = -1758f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f + arg_2.a.b.x));
    global3 = arg_2.e.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, var_3)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b, var_1.xy)))) * vec2<f32>(540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1276f)) * -1000f))) + arg_2.e.b.b.b);
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<bool>(false, all(vec2<bool>(global0.x & true, !global0.x)), true);
    let var_1 = 85409u;
    let var_2 = Struct_3(vec3<i32>(~firstTrailingBit(i32(-1i) * -11412i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, 0i), func_2(vec2<i32>(u_input.b, -27666i), Struct_2(u_input.b, Struct_1(-1553f, vec2<f32>(-1467f, -400f)), u_input.b, vec4<bool>(true, true, var_0.x, var_0.x), vec3<i32>(26928i, u_input.b, u_input.b)))), u_input.b), 1i), Struct_2(-_wgslsmith_clamp_i32(u_input.b, -47144i, u_input.b << (var_1 % 32u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_vec2_f32(func_3(~u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, -1753f, -2139f) - vec3<f32>(-1000f, 175f, 1256f)), Struct_4(Struct_1(-1895f, vec2<f32>(-284f, 1519f)), vec3<u32>(u_input.a.x, 13268u, 53165u), u_input.a.x, 1i, global2[_wgslsmith_index_u32(0u, 8u)])))), func_2(vec2<i32>(countOneBits(u_input.b), func_2(vec2<i32>(u_input.b, 2147483647i), Struct_2(u_input.b, Struct_1(1888f, vec2<f32>(351f, 1000f)), u_input.b, vec4<bool>(global0.x, global0.x, false, true), vec3<i32>(1i, u_input.b, -1i)))), Struct_2(func_2(vec2<i32>(-2147483647i, 3078i), Struct_2(u_input.b, global4[_wgslsmith_index_u32(6413u, 14u)], 3263i, vec4<bool>(var_0.x, false, false, var_0.x), vec3<i32>(1i, 0i, 78518i))), Struct_1(-2745f, vec2<f32>(-132f, -1247f)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, -62886i), vec4<i32>(-77085i, -2147483647i, -1i, u_input.b)), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, global0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, global0.x, var_0.x)), ~vec3<i32>(u_input.b, -2147483647i, u_input.b))), vec4<bool>(var_0.x, any(vec4<bool>(global0.x, true, true, false)), global0.x, global0.x), _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.b, u_input.b, -25911i), vec3<i32>(1i, -1i, 35857i)), vec3<i32>(u_input.b, -36175i, u_input.b) << (global1.yyy % vec3<u32>(32u))) << (abs(global1.zxw) % vec3<u32>(32u))), ~(~var_1), vec3<bool>(~reverseBits(1u) == _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 10105u), global1.xz)), var_0.x, true));
    return global2[_wgslsmith_index_u32(u_input.a.x, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.b.a - _wgslsmith_f_op_f32(-var_0.b.b.a))));
    let var_2 = -_wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(-19168i, -8039i, firstLeadingBit(-2147483647i))) ^ var_0.a;
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(round(-802f)), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(-var_2.x, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.b.b.x, var_0.b.b.b.x, 336f), vec3<f32>(1148f, var_0.b.b.b.x, -473f)), Struct_4(Struct_1(var_0.b.b.a, vec2<f32>(-2168f, var_0.b.b.a)), global1.xwy, 13367u, -111348i, Struct_3(var_2, Struct_2(var_2.x, global4[_wgslsmith_index_u32(0u, 14u)], 0i, var_0.b.d, vec3<i32>(u_input.b, -11424i, var_0.a.x)), 42775u, vec3<bool>(global0.x, var_0.b.d.x, var_0.d.x))))).x, func_1().b.b.a)), abs(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(5054u, 1u, global1.x) & u_input.a, firstTrailingBit(global1.zwx)))), u_input.a.x, _wgslsmith_sub_i32(var_2.x, -func_1().a.x | (_wgslsmith_clamp_i32(1i, -2147483647i, -8248i) << (50465u % 32u))), Struct_3(countOneBits(~min(vec3<i32>(-47410i, var_0.a.x, 37723i), var_2)), Struct_2(u_input.b, func_1().b.b, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_2.x, 12991i, u_input.b, var_0.b.e.x), vec4<i32>(u_input.b, 22565i, u_input.b, u_input.b)), vec4<i32>(var_2.x, var_0.b.e.x, 3962i, u_input.b) | vec4<i32>(var_2.x, var_2.x, var_2.x, -2147483647i)), select(!vec4<bool>(var_0.b.d.x, true, global0.x, var_0.d.x), var_0.b.d, func_1().b.d.x), vec3<i32>(0i >> (var_0.c % 32u), var_0.b.c, _wgslsmith_mod_i32(var_2.x, -20060i))), ~select(1u, ~55823u, false), vec3<bool>(global0.x, !func_1().d.x, true)));
    let var_4 = countOneBits(u_input.a.x);
    global2 = array<Struct_3, 8>();
    global2 = array<Struct_3, 8>();
    global2 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.a, _wgslsmith_f_op_f32(round(var_0.b.b.a)), var_0.b.b.b.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.b.x, var_3.a.a, var_0.b.b.a)))))), var_3.e.a, var_3.b | vec3<u32>(~_wgslsmith_mult_u32(4294967295u, var_4), var_3.c, global1.x), ~(~vec2<u32>(min(0u, 24318u), ~4294967295u)), var_3.a.b.x);
}

