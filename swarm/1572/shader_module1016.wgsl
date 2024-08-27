struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_3, 31>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = select(!vec2<bool>(31572u >= u_input.b.x, all(select(vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, true), vec4<bool>(true, arg_2.a, true, arg_2.a), false))), !(!vec2<bool>(true == arg_2.a, true)), select(vec2<bool>(!arg_2.a, true), select(vec2<bool>(false, !arg_2.b.x), arg_2.b, vec2<bool>(any(arg_2.b), arg_2.c.x != 45870u)), !vec2<bool>(arg_2.a, any(arg_2.b))));
    global2 = array<Struct_3, 31>();
    global1 = arg_1.xy;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.ywy, arg_0.wwx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, arg_0.x)), all(vec3<bool>(false, var_0.x, true)))))));
    return _wgslsmith_f_op_vec2_f32(step(arg_0.wz, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1960f)) - var_1.zx), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yz + vec2<f32>(arg_0.x, 144f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 342f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = !vec2<bool>(any(!(!vec4<bool>(arg_1.b.b.x, arg_1.b.a, true, true))), arg_0.c.a);
    var var_1 = arg_1.a.x;
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_0.d.c.x) >> (arg_1.d.c.zy % vec2<u32>(32u)), ~min(arg_0.d.c.xz, u_input.a));
    var var_3 = select(select(!select(!vec3<bool>(true, true, arg_0.d.b.x), vec3<bool>(true, false, arg_0.c.b.x), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.b.a, true, arg_1.c.b.x), vec3<bool>(var_0.x, false, true), false), !vec3<bool>(arg_2.d.b.x, arg_0.c.b.x, true)), select(!vec3<bool>(arg_2.c.b.x, var_0.x, true), vec3<bool>(select(false, arg_1.d.a, false), false, true), arg_0.a.x >= arg_1.a.x)), vec3<bool>(false, select(true & arg_1.d.a, !any(vec3<bool>(arg_0.b.b.x, false, arg_1.b.a)), any(!vec4<bool>(arg_2.c.b.x, true, arg_2.b.a, var_0.x))), var_0.x), true);
    var_3 = select(vec3<bool>(any(arg_1.d.b), select(arg_0.d.a, false, arg_2.c.b.x && (-1000f > arg_1.a.x)), all(vec4<bool>(true, false, -2147483647i < arg_0.c.d.x, all(vec3<bool>(var_0.x, arg_1.c.b.x, false))))), vec3<bool>(all(select(!vec4<bool>(arg_1.c.a, var_0.x, true, arg_0.c.b.x), !vec4<bool>(arg_1.b.a, true, true, var_0.x), select(vec4<bool>(false, true, true, arg_1.d.b.x), vec4<bool>(true, true, arg_1.d.a, false), arg_2.d.a))), reverseBits(u_input.b.x) >= ~23150u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1074f * 549f)) != arg_0.a.x), var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -1246f)), _wgslsmith_f_op_f32(-arg_2.a.x))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(164f, _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1265f) + vec2<f32>(-1037f, -583f)), Struct_1(false, vec2<bool>(true, false), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec3<i32>(-7238i, 0i, 36605i)), Struct_1(true, vec2<bool>(false, false), vec4<u32>(0u, 13656u, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, 1i, global1.x)), Struct_1(true, vec2<bool>(false, false), vec4<u32>(u_input.b.x, 4294967295u, 31817u, u_input.b.x), vec3<i32>(-2147483647i, 2147483647i, 26645i))), Struct_2(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(1080f, 372f, 413f, 2176f), vec3<i32>(0i, global1.x, -5403i), Struct_1(true, vec2<bool>(false, true), vec4<u32>(29176u, u_input.a.x, 57571u, 18955u), vec3<i32>(-1550i, 2147483647i, global1.x)))), Struct_1(true, vec2<bool>(true, false), vec4<u32>(0u, 10438u, 1u, 58211u), vec3<i32>(global1.x, global1.x, global1.x)), Struct_1(false, vec2<bool>(false, true), vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, u_input.a.x), vec3<i32>(global1.x, -1i, global1.x)), Struct_1(true, vec2<bool>(true, false), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, global1.x, global1.x))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-725f, -1000f) * vec2<f32>(1415f, -1087f)), Struct_1(true, vec2<bool>(true, true), vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, u_input.a.x), vec3<i32>(33703i, global1.x, 1i)), Struct_1(false, vec2<bool>(false, true), vec4<u32>(119708u, 63091u, u_input.b.x, u_input.b.x), vec3<i32>(19719i, global1.x, 36193i)), Struct_1(false, vec2<bool>(false, true), vec4<u32>(35415u, 4294967295u, u_input.b.x, u_input.b.x), vec3<i32>(global1.x, global1.x, -2147483647i)))))));
    global2 = array<Struct_3, 31>();
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(false | (0u > u_input.b.x), true), select(all(vec3<bool>(true, true, true)), true, true)), vec2<bool>(true, !all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(397f + 903f)))) > _wgslsmith_f_op_f32(trunc(-1000f)));
    let var_1 = false;
    let var_2 = Struct_3(!vec4<bool>(false, !(u_input.b.x <= u_input.a.x), any(!vec4<bool>(var_1, var_1, false, var_1)), true));
    return Struct_1(any(select(!vec4<bool>(true, var_1, var_0.x, true), var_2.a, true)) || var_2.a.x, select(var_2.a.zx, !vec2<bool>(true, var_0.x), var_0.x), vec4<u32>(u_input.a.x, ~_wgslsmith_sub_u32(~u_input.b.x, 1u), 62169u, ~select(~u_input.b.x, ~u_input.b.x, var_2.a.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, i32(-1i) * -2147483647i, global1.x & global1.x), ~vec3<i32>(global1.x, 0i, 0i), vec3<i32>(0i, -global1.x, 2147483647i)));
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = vec4<i32>(global1.x, ~2147483647i | -firstTrailingBit(70517i), max(51588i, -6i), 24886i & (1i >> (arg_0.c.x % 32u)));
    var var_2 = ~global1.x;
    var_1 = vec4<i32>(var_1.x << (25244u % 32u), var_1.x, 27546i, arg_0.d.x);
    global2 = array<Struct_3, 31>();
    return ~(~countOneBits(~arg_0.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~arg_1.c.wz, ~_wgslsmith_div_vec2_u32(firstTrailingBit(arg_1.c.wz), vec2<u32>(arg_1.c.x, arg_1.c.x))), vec2<u32>(_wgslsmith_add_u32(18136u ^ arg_0.b.c.x, func_5(func_2())), _wgslsmith_dot_vec2_u32(vec2<u32>(28010u, min(131932u, arg_1.c.x)), u_input.a & u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<bool>(all(vec4<bool>(global1.x > -1i, false, true, true)), (_wgslsmith_mod_u32(u_input.a.x, u_input.b.x) >> ((u_input.b.x & 39070u) % 32u)) > _wgslsmith_mod_u32(func_1(Struct_2(vec2<f32>(536f, -765f), Struct_1(false, vec2<bool>(false, false), vec4<u32>(u_input.b.x, 1u, u_input.a.x, 0u), vec3<i32>(global1.x, global1.x, 1i)), Struct_1(false, vec2<bool>(true, false), vec4<u32>(28480u, u_input.b.x, u_input.b.x, 0u), vec3<i32>(-1i, -1i, global1.x)), Struct_1(false, vec2<bool>(false, false), vec4<u32>(1u, 1u, 4294967295u, 0u), vec3<i32>(global1.x, global1.x, 1i))), Struct_1(false, vec2<bool>(true, true), vec4<u32>(u_input.a.x, u_input.b.x, 8099u, 9931u), vec3<i32>(-20771i, 46404i, global1.x))), 55975u), !all(vec2<bool>(false, false)) & true, false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1440f, 885f)), Struct_1(false, var_0.a.yz, firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(global1.x, -27455i, 2147483647i))), Struct_1(-1i > global1.x, !vec2<bool>(var_0.a.x, true), vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 18673u), min(vec3<i32>(7851i, global1.x, global1.x), vec3<i32>(2147483647i, -7237i, global1.x))), func_2()), Struct_2(vec2<f32>(-1254f, -588f), func_2(), Struct_1(true, vec2<bool>(false, false), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x), select(vec3<i32>(-14347i, 1315i, global1.x), vec3<i32>(17220i, global1.x, 34331i), var_0.a.yzz)), Struct_1(true, var_0.a.xx, ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), max(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(global1.x, global1.x, -1i)))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(483f, -143f) * vec2<f32>(-235f, 256f)) - vec2<f32>(1f, 1f)), Struct_1(false, func_2().b, vec4<u32>(23521u, 1u, 21635u, 73036u) & vec4<u32>(11157u, 1u, u_input.a.x, 76600u), abs(vec3<i32>(global1.x, global1.x, global1.x))), Struct_1(!var_0.a.x, vec2<bool>(false, true), vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, 4294967295u), ~vec3<i32>(global1.x, 28478i, global1.x)), func_2()))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-146f + 1000f), _wgslsmith_f_op_f32(func_4(Struct_2(vec2<f32>(261f, -1017f), Struct_1(var_0.a.x, var_0.a.yz, vec4<u32>(1u, u_input.b.x, 49594u, u_input.b.x), vec3<i32>(-2147483647i, global1.x, 2147483647i)), Struct_1(true, vec2<bool>(false, var_0.a.x), vec4<u32>(u_input.a.x, 33611u, 4294967295u, u_input.b.x), vec3<i32>(-1i, global1.x, global1.x)), Struct_1(var_0.a.x, var_0.a.zw, vec4<u32>(u_input.a.x, 76240u, u_input.a.x, u_input.b.x), vec3<i32>(35181i, global1.x, -2147483647i))), Struct_2(vec2<f32>(-291f, 816f), Struct_1(var_0.a.x, var_0.a.wx, vec4<u32>(u_input.b.x, 30184u, 12755u, 4294967295u), vec3<i32>(4389i, global1.x, global1.x)), Struct_1(var_0.a.x, var_0.a.ww, vec4<u32>(17491u, u_input.b.x, u_input.a.x, u_input.b.x), vec3<i32>(global1.x, -1i, 8210i)), Struct_1(var_0.a.x, var_0.a.wy, vec4<u32>(u_input.b.x, u_input.b.x, 6957u, 0u), vec3<i32>(global1.x, -1i, global1.x))), Struct_2(vec2<f32>(-444f, -2611f), Struct_1(false, var_0.a.wz, vec4<u32>(u_input.b.x, 7253u, u_input.a.x, 0u), vec3<i32>(2147483647i, global1.x, global1.x)), Struct_1(var_0.a.x, vec2<bool>(var_0.a.x, var_0.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), vec3<i32>(-31395i, global1.x, 2147483647i)), Struct_1(var_0.a.x, var_0.a.xy, vec4<u32>(u_input.b.x, 0u, u_input.a.x, u_input.b.x), vec3<i32>(2147483647i, 19986i, -2147483647i))))))), _wgslsmith_f_op_f32(-1069f + _wgslsmith_f_op_f32(trunc(814f))))), u_input.a, vec3<u32>(19466u >> (func_5(func_2()) % 32u), select(_wgslsmith_div_u32(u_input.b.x ^ 29986u, _wgslsmith_div_u32(u_input.a.x, u_input.b.x)), u_input.b.x, (false | var_0.a.x) != true), 12917u), u_input.b, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, -19005i), vec2<i32>(1i, -2147483647i))), ~(~vec2<i32>(0i, global1.x))), _wgslsmith_div_i32(-1i, global1.x)));
}

