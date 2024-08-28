struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-237f, -1336f), vec4<bool>(false, false, true, false), vec2<i32>(2147483647i, -1i), vec2<bool>(true, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x)), global2.b, vec2<i32>(_wgslsmith_sub_i32(reverseBits(-2147483647i), _wgslsmith_clamp_i32(global3.c.x, global2.c.x, u_input.c.x)), 1i), global3.d), -23354i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -502f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f))), _wgslsmith_f_op_f32(max(global1.x, -238f)), -739f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global2.a.x - global1.x), _wgslsmith_f_op_f32(ceil(2464f))), vec4<bool>(!global2.b.x && all(global2.b), select(true, false, global2.b.x) && any(global3.b.zy), global3.b.x, !(global2.d.x && true)), vec2<i32>(global3.c.x, max(abs(-42882i), global3.c.x & -1572i)), !vec2<bool>(true, all(vec2<bool>(global2.b.x, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a - _wgslsmith_f_op_vec2_f32(-global2.a)) * global2.a), global3.b, reverseBits(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(1i, 51361i))), select(global3.d, global3.b.wz, select(vec2<bool>(global2.b.x, global2.b.x), !vec2<bool>(global3.d.x, true), true))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), var_0.e.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1465f + _wgslsmith_f_op_f32(ceil(-306f))) * 282f));
    var_1 = var_0.c;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199f - global1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.d.a.x))) + _wgslsmith_f_op_f32(floor(223f)))) - 329f);
    return abs(reverseBits((i32(-1i) * -38854i) ^ firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.d.c.x), vec2<i32>(u_input.c.x, -2147483647i)))));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(vec3<i32>(~func_3(), select(-u_input.a.x, min(u_input.a.x, -24850i), any(vec2<bool>(global2.d.x, false))), _wgslsmith_sub_i32(1i | global3.c.x, 0i)) << (vec3<u32>(9192u, u_input.b.x, 70160u) % vec3<u32>(32u)));
    var var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(16950u, 0u, 15541u, u_input.d.x), global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), select(u_input.b, u_input.b << (u_input.d % vec4<u32>(32u)), true)), abs(u_input.e));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a), vec4<bool>(global3.d.x, all(!select(vec3<bool>(global2.b.x, true, global3.d.x), global3.b.xwz, global2.b.x)), _wgslsmith_dot_vec3_i32(~u_input.c, vec3<i32>(u_input.c.x, 0i, 46402i)) <= var_0.x, global3.d.x), global2.c, !vec2<bool>(false, all(vec2<bool>(false, false))));
    var_0 = _wgslsmith_div_vec3_i32(u_input.c, abs(reverseBits(~(-vec3<i32>(global2.c.x, global2.c.x, 0i)))));
    var_0 = vec3<i32>(max(global2.c.x, -_wgslsmith_add_i32(-1i, var_0.x << (u_input.b.x % 32u))), -(~var_2.c.x), ~(i32(-1i) * -firstTrailingBit(-43763i)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a), select(!select(var_2.b, vec4<bool>(global3.d.x, global2.d.x, false, true), global2.b), global2.b, all(vec4<bool>(var_2.b.x, global2.d.x, true, false))), u_input.c.zx, !(!(!var_2.d))), global3.c.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-2832f)), global3.a.x, -798f)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1469f, 1267f)))), vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), -996f), select(global2.b.xz, global2.d, vec2<bool>(false, true)))), global3.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global3.c, ~vec2<i32>(3772i, -30127i)), vec2<i32>(-16515i, 0i), -vec2<i32>(21634i, 62118i)), select(var_2.d, vec2<bool>(!global3.d.x, true), false)), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a), vec4<bool>(u_input.e.x > min(var_1.x, 105462u), all(global2.b.zxw), !(global1.x >= -490f), true & (155f > var_2.a.x)), ~(var_2.c | reverseBits(var_0.zz)), !select(!global2.d, vec2<bool>(var_2.b.x, global2.d.x), true)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2();
    var var_2 = arg_0.a;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), -1942f);
    let var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), u_input.b.xx), select(firstLeadingBit(vec2<u32>(u_input.d.x, 0u)), countOneBits(u_input.e.zw), all(global2.b))) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.e.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), ~u_input.b.x)), u_input.e.x) % 32u);
    return var_1.e;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(global2.a, !vec4<bool>(global2.b.x, any(select(vec3<bool>(global3.d.x, true, false), global2.b.zxy, vec3<bool>(false, true, true))), global3.b.x, true), u_input.a.yz, global2.b.ww);
    global3 = func_4(func_2());
    global1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(step(-2185f, _wgslsmith_div_f32(global1.x, global3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), -1287f)))));
    var var_1 = func_4(Struct_2(func_2().e, -1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1890f, _wgslsmith_f_op_f32(global3.a.x * global3.a.x), func_4(Struct_2(Struct_1(global2.a, vec4<bool>(false, false, false, false), vec2<i32>(var_0.c.x, -22195i), global3.b.zz), global2.c.x, vec3<f32>(global2.a.x, global3.a.x, var_0.a.x), Struct_1(var_0.a, var_0.b, vec2<i32>(global3.c.x, global3.c.x), global2.b.zy), Struct_1(vec2<f32>(-362f, 2003f), global3.b, vec2<i32>(2147483647i, 1i), global2.d))).a.x) * vec3<f32>(_wgslsmith_f_op_f32(869f * global1.x), _wgslsmith_f_op_f32(-var_0.a.x), -1601f)), func_4(func_2()), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.a.x)), !vec4<bool>(var_0.d.x, global3.b.x, false, true), global2.c, var_0.b.wz)));
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global2.a))), !global3.b, (global2.c ^ countOneBits(vec2<i32>(u_input.a.x, 14230i))) << (~_wgslsmith_mod_vec2_u32(u_input.d.yx << (u_input.e.yx % vec2<u32>(32u)), min(vec2<u32>(u_input.d.x, u_input.e.x), u_input.b.wy)) % vec2<u32>(32u)), vec2<bool>(_wgslsmith_f_op_f32(floor(272f)) != 1905f, true));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(445f, global1.x)) * _wgslsmith_f_op_vec2_f32(-var_0.a)), var_1.b, ~global3.c, var_0.d), -38085i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 957f, var_0.a.x), vec3<f32>(global1.x, global3.a.x, -1000f)), vec3<f32>(global3.a.x, -1703f, 657f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-762f, -605f, global1.x), vec3<f32>(-168f, global2.a.x, global2.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3.a.x, global3.a.x))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1351f)))), var_0.a.x), !(!vec4<bool>(var_0.d.x, true, var_1.d.x, var_1.b.x)), ~(vec2<i32>(-1i) * -vec2<i32>(var_1.c.x, global3.c.x)), vec2<bool>(!global2.b.x, true)), func_2().a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    global1 = vec2<f32>(global2.a.x, global3.a.x);
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_1().c.yx));
    let var_2 = func_1();
    let var_3 = arg_1;
    return Struct_1(global2.a, select(func_2().e.b, select(global2.b, vec4<bool>(func_2().a.b.x, global2.d.x, !var_2.e.d.x, true), false), var_3.d.b), _wgslsmith_mod_vec2_i32(vec2<i32>(-60687i, -8174i), arg_1.d.c), !(!vec2<bool>(true, var_0.a.d.x | global2.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(func_1(), Struct_2(func_2().e, ~global3.c.x | _wgslsmith_add_i32(_wgslsmith_mod_i32(global3.c.x, global3.c.x), u_input.a.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, -394f))) + vec3<f32>(global3.a.x, 1516f, -2005f)))), func_1().a, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(108f, 596f) + global3.a))), vec4<bool>(true, true, true, true), global2.c, global2.b.yw)), !vec4<bool>(false, func_2().e.d.x, true, global2.b.x));
    global1 = global2.a;
    var var_0 = _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().d.a.x, global2.a.x) + func_5(func_1(), Struct_2(Struct_1(global2.a, vec4<bool>(false, global3.d.x, true, false), global3.c, vec2<bool>(global3.b.x, true)), -u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -1292f, 629f)), func_4(Struct_2(Struct_1(global2.a, global3.b, global3.c, vec2<bool>(true, false)), 32522i, vec3<f32>(global3.a.x, 216f, global1.x), Struct_1(vec2<f32>(global1.x, global3.a.x), vec4<bool>(false, global3.d.x, true, global3.b.x), global3.c, global3.b.wz), Struct_1(global3.a, global2.b, global3.c, vec2<bool>(false, true)))), Struct_1(vec2<f32>(386f, 857f), global2.b, u_input.c.yy, vec2<bool>(global2.b.x, true))), global2.b).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, 986u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global3.a.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(658f + -1312f), 1f))), -523f, countOneBits(select(reverseBits(u_input.b.x >> (u_input.b.x % 32u)), ~u_input.b.x, global3.b.x)));
}

