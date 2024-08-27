struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1000f, -1442f, -741f, -1583f), vec4<f32>(-254f, 1399f, -283f, -104f), vec4<f32>(-1063f, -1748f, -1266f, -1000f), vec4<f32>(762f, -522f, -574f, 652f), vec4<f32>(-379f, 646f, -1000f, -1799f), vec4<f32>(-720f, -124f, -503f, 827f), vec4<f32>(247f, 240f, -1000f, 195f), vec4<f32>(1000f, -218f, -556f, -299f), vec4<f32>(-799f, -2792f, 1192f, -711f), vec4<f32>(-1000f, -242f, -1497f, -358f), vec4<f32>(-1170f, -498f, 1000f, 951f), vec4<f32>(115f, -1838f, -876f, -853f), vec4<f32>(-1824f, 469f, 642f, -1449f), vec4<f32>(-687f, 721f, 312f, 1353f), vec4<f32>(-1555f, 165f, 1419f, 411f), vec4<f32>(420f, 1574f, -1000f, 1782f), vec4<f32>(-260f, -399f, 348f, 505f), vec4<f32>(1186f, 286f, -255f, 233f), vec4<f32>(-1000f, -801f, 1848f, -1339f), vec4<f32>(-851f, -1028f, 744f, -1502f), vec4<f32>(-385f, -352f, 1898f, 882f), vec4<f32>(1000f, -2345f, -177f, -515f), vec4<f32>(1002f, 1216f, -662f, 1084f), vec4<f32>(-1632f, 1251f, 1600f, -994f), vec4<f32>(507f, 656f, 1403f, -182f), vec4<f32>(2218f, 777f, -1000f, -524f));

var<private> global2: array<u32, 32>;

var<private> global3: vec3<f32> = vec3<f32>(-1196f, 373f, 332f);

var<private> global4: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 18529u), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(18879u, 15049u, 0u), vec4<bool>(false, false, true, true)), false, Struct_1(vec3<u32>(0u, 86324u, 28895u), vec4<bool>(true, false, false, true))), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(39677u, 1u, 0u), vec4<bool>(false, true, false, false)), true, Struct_1(vec3<u32>(15402u, 6935u, 31816u), vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec3<u32>(50361u, 16368u, 1u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), vec4<bool>(false, false, false, true)), true, Struct_1(vec3<u32>(61692u, 0u, 24380u), vec4<bool>(true, false, true, false))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> bool {
    global2 = array<u32, 32>();
    var var_0 = u_input.c.x << (1u % 32u);
    let var_1 = Struct_3(arg_1.a, arg_1, vec4<f32>(global3.x, 343f, 399f, _wgslsmith_f_op_f32(global3.x + global3.x)), 33505i, !vec2<bool>(!any(arg_1.d.b), arg_0.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x))) + 257f)) + var_1.c.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * -1118f), false & any(vec3<bool>(arg_0.x, false, true))))) + global3.x);
    return var_1.a.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(global3.xz));
    let var_1 = Struct_2(Struct_1(vec3<u32>(~_wgslsmith_add_u32(51777u, 31278u), _wgslsmith_div_u32(u_input.c.x, 1u), ~u_input.c.x), vec4<bool>(func_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(0u, 32u)], u_input.c.x), vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), vec4<bool>(true, true, false, true)), true, Struct_1(vec3<u32>(1u, 1u, u_input.c.x), vec4<bool>(true, true, false, false))), max(u_input.a, 0u)), true, func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(Struct_1(u_input.c.wwy, vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(2055u, 32u)], 5077u, u_input.c.x), vec4<bool>(true, false, true, false)), false, Struct_1(u_input.c.xyy, vec4<bool>(true, false, false, true))), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x)), firstTrailingBit(-1551i) <= ~3516i)), Struct_1((u_input.c.wxx & vec3<u32>(u_input.a, 36559u, 0u)) << (u_input.c.xxz % vec3<u32>(32u)), vec4<bool>(true, true, false, 1u >= u_input.a)), ~_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_add_u32(1u, u_input.c.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 32u)]) <= (countOneBits(min(275u, 26890u)) ^ select(abs(u_input.a), reverseBits(3700u), true)), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 13108u, 4294967295u), vec3<u32>(1313u, 26670u, 1u)), _wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), u_input.c)), ~select(u_input.c.zxy, vec3<u32>(97049u, u_input.a, u_input.c.x), true), _wgslsmith_add_vec3_u32(~u_input.c.yyx, vec3<u32>(u_input.a, 1u, u_input.c.x))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))));
    let var_2 = 0u;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1098f)))))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(var_1.a.a.x, 32u)], 4294967295u, u_input.c.x)), u_input.c.wyw), vec4<bool>(366f == _wgslsmith_div_f32(global3.x, global3.x), any(vec2<bool>(var_1.b.b.x, var_1.b.b.x)), true, false)), Struct_2(Struct_1(~(~vec3<u32>(71945u, var_1.a.a.x, var_2)), vec4<bool>(true, all(vec3<bool>(var_1.a.b.x, false, var_1.a.b.x)), var_1.d.b.x & var_1.a.b.x, true)), var_1.d, var_1.d.b.x, var_1.a), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(_wgslsmith_add_u32(69904u, u_input.c.x), _wgslsmith_mod_u32(var_2, global2[_wgslsmith_index_u32(1u, 32u)])), 41203u), 26u)] + vec4<f32>(_wgslsmith_f_op_f32(min(global3.x, 175f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(650f - 437f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x + 1188f), -150f, var_1.c)))), _wgslsmith_add_i32(-26458i, -u_input.b.x), vec2<bool>(func_3(vec2<bool>(true, true), var_1, var_1.b.a.x), !var_1.a.b.x));
    return Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(var_1.d.a, var_1.a.a, var_3.a.a & vec3<u32>(0u, 4294967295u, var_3.b.d.a.x)), select(var_3.b.b.b, vec4<bool>(var_1.a.b.x, var_1.b.b.x, var_3.a.b.x | var_1.a.b.x, var_1.d.b.x), !var_3.b.d.b)), var_3.b.a, !var_3.e.x, var_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_3(func_2().d, Struct_2(func_2().b, arg_0.a, select(false, all(select(vec3<bool>(arg_1.a.b.x, arg_1.c, true), arg_0.d.b.xzz, vec3<bool>(arg_1.a.b.x, false, false))), !(!arg_1.b.b.x)), Struct_1(arg_1.d.a, vec4<bool>(true, arg_0.b.b.x && false, all(arg_0.b.b.yyz), u_input.c.x >= arg_1.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) * _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(72272u, 26u)], vec4<f32>(1460f, -1000f, global3.x, global3.x))), vec4<f32>(-433f, global3.x, _wgslsmith_f_op_f32(905f - -2235f), global3.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u, 26u)] + vec4<f32>(-633f, global3.x, global3.x, global3.x))))))), _wgslsmith_sub_i32(-2147483647i, -3720i), vec2<bool>(arg_0.c, all(arg_1.d.b.xz) && ((4294967295u ^ arg_0.d.a.x) <= reverseBits(4294967295u))));
    global0 = u_input.a;
    global0 = 20666u;
    var var_1 = true;
    var var_2 = func_2().c;
    return func_2().d;
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), true));
    var var_1 = Struct_2(func_4(func_2(), func_2(), i32(-1i) * -7290i), func_2().d, all(select(func_4(func_2(), func_2(), u_input.b.x).b, vec4<bool>(true, true, true, true), false)), func_4(Struct_2(Struct_1(~u_input.c.wyz, vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], u_input.a), vec4<bool>(true, true, true, true)), false, func_4(func_2(), func_2(), _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), func_2(), -20069i));
    var var_2 = Struct_3(var_1.d, func_2(), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -766f) * 686f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f - global3.x))), -2339f, -1000f, 856f), ~u_input.b.x, !var_1.b.b.xz);
    global2 = array<u32, 32>();
    var var_3 = Struct_3(Struct_1(vec3<u32>(2256u, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24899u, abs(u_input.a), global2[_wgslsmith_index_u32(var_1.b.a.x, 32u)] >> (43757u % 32u)), 32u)], ~u_input.c.x), select(func_4(func_2(), Struct_2(var_1.a, Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], 1u, var_2.b.d.a.x), vec4<bool>(var_2.e.x, false, var_1.b.b.x, var_1.b.b.x)), var_2.a.b.x, Struct_1(u_input.c.zzz, var_1.d.b)), 1i).b, vec4<bool>(var_1.b.b.x, var_2.e.x | var_2.e.x, !var_2.a.b.x, var_2.e.x), vec4<bool>(any(var_1.a.b.zwz), any(vec4<bool>(false, false, false, true)), !var_1.d.b.x, var_2.a.b.x))), func_2(), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_div_f32(314f, var_0)), _wgslsmith_f_op_f32(round(-2303f)), _wgslsmith_f_op_f32(var_0 * global3.x)), var_2.c)), -u_input.b.x & -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, var_2.d, u_input.b.x)), vec3<i32>(-30724i, 1i, 67427i)), vec2<bool>(!var_1.b.b.x | !all(vec4<bool>(var_2.a.b.x, false, true, var_1.c)), var_2.e.x));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.c)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = true;
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1291f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-832f, _wgslsmith_f_op_f32(arg_2.x * global3.x))) - _wgslsmith_f_op_f32(-global3.x)), arg_2.x, 1372f));
    let var_1 = func_4(Struct_2(func_4(global4[_wgslsmith_index_u32(40411u, 3u)], global4[_wgslsmith_index_u32(~(~1u), 3u)], _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-32269i, 16413i)) >> (global2[_wgslsmith_index_u32(~70250u, 32u)] % 32u)), func_2().d, func_3(vec2<bool>(var_0, var_0), Struct_2(Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec4<bool>(var_0, var_0, true, false)), func_4(Struct_2(Struct_1(vec3<u32>(0u, 1u, arg_0.x), vec4<bool>(false, var_0, true, false)), Struct_1(vec3<u32>(arg_1.x, u_input.c.x, 37425u), vec4<bool>(true, var_0, var_0, false)), true, Struct_1(vec3<u32>(44359u, 0u, u_input.a), vec4<bool>(false, var_0, true, true))), global4[_wgslsmith_index_u32(arg_0.x, 3u)], u_input.b.x), !var_0, Struct_1(arg_1.zzy, vec4<bool>(true, false, true, var_0))), max(_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(arg_0.x, 32u)]), arg_1.x)), Struct_1(~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_0.x, 32u)], u_input.c.x), !(!vec4<bool>(var_0, var_0, true, var_0)))), Struct_2(func_2().a, func_4(global4[_wgslsmith_index_u32(firstTrailingBit(60140u << (u_input.a % 32u)), 3u)], func_2(), u_input.b.x), u_input.b.x <= -2147483647i, func_4(global4[_wgslsmith_index_u32(~1u, 3u)], Struct_2(Struct_1(u_input.c.xzy, vec4<bool>(true, true, var_0, true)), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], 118882u, 21293u), vec4<bool>(var_0, false, true, true)), all(vec2<bool>(var_0, var_0)), func_4(global4[_wgslsmith_index_u32(arg_0.x, 3u)], global4[_wgslsmith_index_u32(arg_1.x, 3u)], u_input.b.x)), _wgslsmith_div_i32(u_input.b.x, u_input.b.x))), 1i).b;
    global4 = array<Struct_2, 3>();
    let var_2 = vec2<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_1.x, ~1u) >> (0u % 32u), 32u)], global2[_wgslsmith_index_u32(0u << (_wgslsmith_sub_u32(13999u, ~arg_0.x ^ 1u) % 32u), 32u)]);
    return func_4(func_2(), global4[_wgslsmith_index_u32(~(~u_input.c.x), 3u)], -u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<f32>(-761f, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1431f))));
    var var_0 = func_5(u_input.c, u_input.c, _wgslsmith_f_op_vec4_f32(func_1()));
    global0 = 12378u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(u_input.c.x, ~112784u), global2[_wgslsmith_index_u32(func_4(func_2(), Struct_2(func_5(u_input.c >> (u_input.c % vec4<u32>(32u)), u_input.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-411f, global3.x, -753f, global3.x) - global1[_wgslsmith_index_u32(4294967295u, 26u)])), Struct_1(var_0.a, vec4<bool>(true, true, false, false)), select(var_0.b.x && true, false, false), func_5(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(0u, 32u)], 1u, var_0.a.x, u_input.a)), u_input.c, global1[_wgslsmith_index_u32(4294967295u | global2[_wgslsmith_index_u32(5406u, 32u)], 26u)])), _wgslsmith_mult_i32(1i, -firstTrailingBit(u_input.b.x))).a.x, 32u)], 2616i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))))), ~16986u);
}

