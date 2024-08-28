struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = ~u_input.c.zy ^ u_input.c.yz;
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(392f, -722f, arg_0)), _wgslsmith_f_op_f32(101f + 200f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-784f, -1000f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(855f, -631f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1819f, -834f), vec2<f32>(251f, -282f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(644f, 1467f), vec2<f32>(-121f, 108f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, 995f) - vec2<f32>(1536f, -1685f)))))), vec3<i32>(select(_wgslsmith_add_i32(u_input.e, u_input.e) << (var_0.x % 32u), -3525i, all(!vec2<bool>(arg_0, false))), 0i, u_input.e), abs(min(vec4<i32>(0i, u_input.b.x, ~u_input.b.x, i32(-1i) * -2147483647i), ~vec4<i32>(u_input.e, u_input.b.x, u_input.e, 50333i))), Struct_2(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(all(vec3<bool>(arg_0, arg_0, arg_0))), select(select(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0)), !vec4<bool>(arg_0, arg_0, true, arg_0), !arg_0), vec4<bool>(true, !arg_0, false, arg_0), !(!vec4<bool>(arg_0, true, arg_0, false)))), ~var_0.x);
    var_0 = select(u_input.a.wy, ~abs(u_input.a.zy), (u_input.e | _wgslsmith_div_i32(i32(-1i) * -10631i, var_1.b.x)) <= abs(var_1.b.x));
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    let var_3 = vec2<i32>(~_wgslsmith_clamp_i32(var_1.c.x, 1i, u_input.e), abs(~(~(-21384i))) ^ u_input.e);
    return var_1.d.c.wwx;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = ~0u;
    var_0 = 0u;
    var var_1 = func_3(false);
    var_0 = _wgslsmith_add_u32(~select(_wgslsmith_div_u32(abs(1u), u_input.a.x), u_input.c.x, var_1.x), firstTrailingBit(~1u));
    var_1 = !vec3<bool>(var_1.x, !var_1.x, true);
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(999f, arg_0, false))), arg_0, _wgslsmith_f_op_f32(floor(301f)), arg_0) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1183f, arg_0, -1335f, arg_0) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-800f, arg_0, arg_0, arg_0))))))), Struct_1(var_1.x), select(!vec4<bool>(true, var_1.x, var_1.x, select(true, var_1.x, var_1.x)), vec4<bool>(all(vec3<bool>(var_1.x, false, false)), var_1.x, true && (true && var_1.x), all(vec3<bool>(true, var_1.x, true))), !(_wgslsmith_f_op_f32(-arg_0) >= -1122f)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-820f));
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-271f, 1480f)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1197f, 1000f), var_1.a.x)))), u_input.b.yxy, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.e, u_input.b.x, 0i, u_input.e), u_input.b, var_1.b.a), vec4<i32>(u_input.e, -40471i, -2147483647i, u_input.e)), u_input.b >> ((u_input.a >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.b), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.x))) * _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), 0u);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, var_2.a.x) + vec2<f32>(var_2.d.a.x, var_1.a.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f - var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(-775f, -899f)))), ~var_2.b, min(u_input.b, abs(vec4<i32>(-7455i, 26717i, -31318i, u_input.b.x) | -vec4<i32>(1i, -1i, 1i, 2147483647i))), var_2.d, var_2.e);
    var var_4 = Struct_1(!(!var_2.d.c.x || !(var_2.d.c.x | var_2.d.b.a)));
    return var_3;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    var var_0 = arg_0.d;
    var var_1 = abs(vec4<i32>(-u_input.b.x, -1i & -_wgslsmith_add_i32(2147483647i, arg_2.c.x), -28417i, -1i));
    var var_2 = arg_2.d.c.zyz;
    let var_3 = func_2(_wgslsmith_f_op_f32(min(arg_0.d.a.x, 338f))).b;
    var var_4 = 1i;
    return arg_2.d;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f + arg_2.a.a.x));
    var_0 = arg_0.x;
    let var_1 = false;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_2.a.a.x);
    var var_2 = min(_wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.b.zyy) | -arg_2.c.c.wyy, ~vec3<i32>(_wgslsmith_mult_i32(arg_2.c.c.x, 53769i), u_input.e, firstLeadingBit(arg_2.b))), ~_wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.b.x, arg_2.c.c.x, -1i)), u_input.b.wxz));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(907f, -1418f, -517f, 811f) + vec4<f32>(504f, -1075f, 849f, -1693f)), vec4<f32>(-733f, 988f, -1698f, 128f)), vec4<f32>(_wgslsmith_f_op_f32(1901f * -1000f), _wgslsmith_f_op_f32(select(196f, 153f, false)), _wgslsmith_div_f32(1157f, 2246f), -491f))), Struct_1(true), vec4<bool>(true, true, true, false)), firstLeadingBit(abs(u_input.b.x)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(863f * 1171f), 899f)), func_4(func_1(), u_input.c.wyz, func_1(), ~(i32(-1i) * -1i)), Struct_4(Struct_2(vec4<f32>(349f, 345f, -1553f, -1103f), func_4(Struct_3(vec2<f32>(1114f, -1849f), vec3<i32>(-60995i, -51388i, u_input.b.x), u_input.b, Struct_2(vec4<f32>(414f, 1683f, -1089f, -525f), Struct_1(true), vec4<bool>(false, false, true, false)), u_input.c.x), u_input.a.xww, Struct_3(vec2<f32>(-1000f, 470f), u_input.b.ywx, u_input.b, Struct_2(vec4<f32>(818f, -1370f, -187f, 433f), Struct_1(false), vec4<bool>(false, true, true, true)), 43767u), u_input.e).b, vec4<bool>(true, true, true, true)), -52304i, func_1())));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, _wgslsmith_div_f32(var_0.a.a.x, var_0.a.a.x), var_0.a.a.x, -1837f)), Struct_1(!var_0.c.d.c.x), vec4<bool>(true, false, var_0.a.c.x, var_0.c.d.c.x)), u_input.e, var_0.c);
    var_0 = Struct_4(var_0.a, var_0.c.c.x, Struct_3(func_4(var_0.c, abs(vec3<u32>(var_0.c.e, u_input.c.x, 0u)), func_1(), var_0.c.c.x).a.xy, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, var_0.b, u_input.e)), ~vec3<i32>(-1i, 10902i, u_input.b.x)), var_0.c.c, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(361f)), var_0.a.a.x, _wgslsmith_f_op_f32(-var_0.c.d.a.x), _wgslsmith_f_op_f32(-var_0.c.d.a.x)), Struct_1(u_input.e > 49030i), !func_1().d.c), abs(u_input.a.x)));
    var var_1 = var_0.c;
    var_0 = Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.a.x - var_0.c.d.a.x), _wgslsmith_f_op_f32(abs(var_0.c.d.a.x))), 2284f, _wgslsmith_f_op_f32(-var_0.a.a.x)), func_1().d.b, !var_1.d.c), 0i, func_5(func_2(_wgslsmith_f_op_f32(ceil(var_0.c.a.x))).a.zy, var_1.d, Struct_4(var_1.d, -1i, func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, -(-var_1.b.x ^ ~var_1.c.x)));
}

