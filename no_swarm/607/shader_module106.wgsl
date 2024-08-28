struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(1097f, -1000f, -159f), vec3<f32>(848f, -782f, -1000f), vec3<f32>(-1344f, 703f, 565f), vec3<f32>(-199f, 1182f, -711f), vec3<f32>(936f, -539f, 1050f), vec3<f32>(-222f, -1000f, 1148f), vec3<f32>(-527f, -263f, -1000f), vec3<f32>(-845f, -1222f, 455f), vec3<f32>(-1000f, 1315f, -652f), vec3<f32>(727f, -485f, -1874f), vec3<f32>(-480f, -1324f, -407f), vec3<f32>(901f, -1458f, 1143f), vec3<f32>(662f, 818f, -791f), vec3<f32>(161f, -991f, -531f), vec3<f32>(1067f, -1000f, 717f), vec3<f32>(363f, -1946f, 1572f), vec3<f32>(275f, -606f, -231f), vec3<f32>(854f, 1257f, 723f), vec3<f32>(-1011f, -482f, 1195f), vec3<f32>(-733f, -1000f, 505f), vec3<f32>(280f, -799f, 453f), vec3<f32>(613f, -1329f, 1341f), vec3<f32>(-1023f, 295f, -172f));

var<private> global1: u32 = 0u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(arg_0.a, vec4<f32>(698f, arg_0.a.x, arg_0.a.x, -275f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(-318f, arg_0.a.x, -1382f, -551f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(906f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-524f, arg_0.a.x, true)))), arg_0.a.x, -382f)), true));
    let var_1 = Struct_3(vec4<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), true, _wgslsmith_f_op_f32(trunc(-1000f)) <= _wgslsmith_div_f32(_wgslsmith_div_f32(-1708f, arg_0.a.x), -187f)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, var_0.x, var_0.x, var_0.x))), arg_0.b), arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(step(arg_0.a, arg_0.a)), -vec2<i32>(30255i, 12347i)), vec4<bool>(true, true, true == all(vec4<bool>(false, true, false, false)), true), Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), _wgslsmith_div_f32(530f, -577f), _wgslsmith_f_op_f32(-607f - -1498f)), u_input.a.yw)), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a.x, var_0.x, true)), 1013f, _wgslsmith_f_op_f32(var_0.x + 640f), _wgslsmith_f_op_f32(step(-969f, var_0.x))), max(vec2<i32>(2644i, arg_0.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(1i, -15154i)))), arg_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.a.x, -913f)), var_0.x, arg_0.a.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)), vec2<i32>(-29512i, arg_0.b.x)), vec4<bool>(!any(vec3<bool>(true, true, false)), true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), select(-2147483647i == arg_0.b.x, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0.a))), ~(arg_0.b | vec2<i32>(arg_0.b.x, 67081i)))));
    var var_2 = arg_0;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.a.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1290f) + _wgslsmith_f_op_f32(812f + -175f))), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 1155f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-997f, var_2.a.x)))), var_1.b.e.b);
    var var_4 = min(101390u, ~4294967295u);
    return ~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(84912u, 1u, u_input.c) << (vec3<u32>(u_input.c, u_input.c, 91673u) % vec3<u32>(32u)), vec3<u32>(u_input.c, u_input.c, u_input.c)) >> (~vec3<u32>(1u, u_input.c, 2257u) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    global1 = firstLeadingBit(u_input.c);
    var var_0 = ~select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(u_input.c, u_input.c, 0u)), func_3(Struct_1(vec4<f32>(arg_0.x, arg_0.x, 953f, arg_0.x), vec2<i32>(u_input.a.x, u_input.b.x)))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 25264u), vec3<u32>(u_input.c, 60581u, u_input.c)) & reverseBits(vec3<u32>(u_input.c, 0u, u_input.c))), ~countOneBits(~vec3<u32>(85790u, 78860u, u_input.c)), true);
    let var_1 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -718f, 415f, 1609f) - vec4<f32>(arg_0.x, 1356f, 494f, -1048f)), vec4<f32>(-794f, arg_0.x, -218f, -757f))), -firstLeadingBit(vec2<i32>(-24422i, 17735i)))).x;
    global1 = var_0.x ^ 0u;
    let var_2 = select(vec4<bool>(true, false, true, all(vec4<bool>(true, true, true, true))), vec4<bool>(true, false, true || !any(vec2<bool>(false, false)), false), true);
    return !vec2<bool>(all(var_2.yy), var_2.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = false;
    global0 = array<vec3<f32>, 23>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1000f, 721f, -1239f) * vec4<f32>(-656f, arg_1, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -1125f, arg_1), vec4<f32>(-1224f, -1000f, 1217f, 887f))))), vec4<f32>(-2697f, _wgslsmith_f_op_f32(arg_1 - arg_1), 1137f, 324f))), u_input.b.xx ^ (select(u_input.a.yy, u_input.a.wx | u_input.a.wy, arg_3.x) ^ (~u_input.a.ww << (reverseBits(arg_0.zx) % vec2<u32>(32u)))));
}

fn func_1() -> Struct_3 {
    global0 = array<vec3<f32>, 23>();
    var var_0 = Struct_2(func_4(countOneBits(~(~vec3<u32>(u_input.c, u_input.c, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(554f, _wgslsmith_f_op_f32(-271f * 1171f)))), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), !func_2(vec2<f32>(-625f, 178f)), vec2<bool>(all(vec2<bool>(true, false)), select(false, true, false)))), func_4(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 1u), ~vec3<u32>(59501u, u_input.c, 9118u)), -762f, !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), func_4(~((vec3<u32>(4294967295u, u_input.c, u_input.c) | vec3<u32>(u_input.c, u_input.c, 0u)) | min(vec3<u32>(u_input.c, u_input.c, 19985u), vec3<u32>(u_input.c, u_input.c, 46145u))), -1000f, vec2<bool>(true, true), select(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2150f, -458f) * vec2<f32>(-165f, 248f))), vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-490f, -118f), vec2<f32>(928f, -451f), vec2<bool>(true, true)))))), vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-744f, 1f, _wgslsmith_f_op_f32(-478f + 460f), -2008f))), vec2<i32>(_wgslsmith_div_i32(0i, u_input.a.x >> (u_input.c % 32u)), -1651i)));
    global1 = ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c << (39330u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 11383u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 1370u), vec2<u32>(u_input.c, u_input.c))), 18669u);
    let var_1 = !all(var_0.d);
    global1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 26136u, ~1u, u_input.c), ~vec4<u32>(select(9674u, ~1u, true), ~51412u, 29611u, u_input.c));
    return Struct_3(var_0.d, Struct_2(func_4(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.c, u_input.c)), vec3<u32>(81947u, u_input.c, 1718u) & vec3<u32>(1801u, 0u, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1877f), vec2<bool>(!var_1, !var_0.d.x), select(var_0.d.ww, vec2<bool>(var_0.d.x, false), var_0.d.x || true)), Struct_1(var_0.e.a, min(_wgslsmith_mod_vec2_i32(var_0.e.b, vec2<i32>(1i, u_input.a.x)), func_4(vec3<u32>(u_input.c, u_input.c, u_input.c), var_0.b.a.x, vec2<bool>(false, var_1), vec2<bool>(var_1, true)).b)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e.b.x, var_0.a.b.x), vec2<i32>(u_input.a.x, u_input.b.x))), !select(var_0.d, var_0.d, vec4<bool>(false, true, var_0.d.x, false)), Struct_1(var_0.a.a, var_0.b.b)), Struct_2(func_4(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 6037u), vec3<u32>(10502u, 20491u, 76563u)), _wgslsmith_f_op_f32(f32(-1f) * -591f), select(!var_0.d.wz, vec2<bool>(var_1, true), select(vec2<bool>(var_0.d.x, true), var_0.d.wz, false)), !vec2<bool>(var_0.d.x, true)), func_4(~(~vec3<u32>(4294967295u, 1u, 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(686f - var_0.a.a.x), 434f), var_0.d.wz, vec2<bool>(var_1, !var_0.d.x)), var_0.e, !select(var_0.d, select(vec4<bool>(var_0.d.x, false, var_0.d.x, true), vec4<bool>(var_0.d.x, var_0.d.x, var_1, var_1), false), u_input.c != 4294967295u), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.ww;
    var var_1 = func_1();
    var_1 = func_1();
    var var_2 = func_1().c.b;
    var var_3 = ~vec2<i32>(-max(18313i, var_2.b.x), _wgslsmith_sub_i32(min(var_1.b.b.b.x, var_0.x), 20275i)) & (firstLeadingBit(u_input.b.yx) & _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, 0i), func_1().c.e.b), var_1.c.b.b));
    let var_4 = select(vec3<bool>(true, var_1.a.x, var_1.b.d.x), !var_1.a.wxx, func_1().a.ywy);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(u_input.c, 1u & u_input.c)), 4294967295u, var_1.c.e.a.x, _wgslsmith_f_op_f32(sign(-682f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, -236f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -899f))) * var_2.a.xw)));
}

