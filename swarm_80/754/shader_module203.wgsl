struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(2075f, 248f, -1117f, 583f);

var<private> global1: array<vec3<f32>, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: f32, arg_3: u32) -> i32 {
    return arg_0.x;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = Struct_1(1i, _wgslsmith_add_vec4_u32(~min(vec4<u32>(4294967295u, arg_1.x, u_input.a.x, arg_1.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 49082u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), (u_input.a | _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), u_input.a)) >> (~(~u_input.a) % vec4<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_div_u32(7887u, _wgslsmith_clamp_u32(2228u, 5261u, u_input.a.x) | ~62891u), u_input.a.x), vec2<f32>(481f, _wgslsmith_f_op_f32(-1264f * global0.x)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -84575i, 75329i), vec3<i32>(17985i, -1i, -9751i)) ^ _wgslsmith_mod_i32(1i, 1i), -27770i));
    var var_1 = Struct_3(Struct_1(var_0.e, var_0.b << (abs(vec4<u32>(arg_1.x, 4294967295u, u_input.a.x, 29525u)) % vec4<u32>(32u)), 45855u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.d)) * var_0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.d.x)) + vec2<f32>(global0.x, -1134f)))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, var_0.e, 0i) << (u_input.a % vec4<u32>(32u)), vec4<i32>(-1i, var_0.a, 28691i, 57960i))), Struct_2(Struct_1(var_0.a << (0u % 32u), u_input.a, (0u << (var_0.b.x % 32u)) >> (~var_0.c % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-404f, var_0.d.x))), 5325i), var_0.a, var_0.b.wxw, Struct_1(_wgslsmith_div_i32(~var_0.e, firstLeadingBit(-2147483647i)), var_0.b, u_input.a.x, global0.yw, reverseBits(var_0.e))), Struct_2(Struct_1(_wgslsmith_div_i32(var_0.a, var_0.e), var_0.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 63315u, 51108u), var_0.b.wzx), var_0.d, var_0.e), -15241i, vec3<u32>(countOneBits(~var_0.b.x), firstTrailingBit(10122u), u_input.a.x), Struct_1(2147483647i << (u_input.a.x % 32u), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_0.b.x, 57040u, 11588u, var_0.c)), vec4<u32>(11952u, 13523u, 13087u, var_0.b.x)), 10281u, global0.wx, var_0.a)), all(vec3<bool>(false, !(-1971f <= global0.x), true)));
    global1 = array<vec3<f32>, 31>();
    var var_2 = -193f;
    let var_3 = !(~abs(var_0.c) == var_1.c.a.b.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.d - var_1.b.d.d) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d - global0.yx))), _wgslsmith_f_op_vec2_f32(-global0.xw)));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(Struct_1(-1307i, countOneBits(~select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 29118u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), vec4<bool>(false, false, false, true))), u_input.a.x, _wgslsmith_f_op_vec2_f32(func_4(firstLeadingBit(39175i) <= func_3(vec2<i32>(-63446i, -1i), false, 636f, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(24426u, 32340u), u_input.a.xy))), 1i), Struct_2(Struct_1(1i, (u_input.a << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (~u_input.a % vec4<u32>(32u)), 1u, _wgslsmith_f_op_vec2_f32(step(global0.xw, vec2<f32>(global0.x, global0.x))), -2147483647i), ~_wgslsmith_div_i32(abs(-1i), -1i), countOneBits(u_input.a.yxw), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, 34566i), vec4<i32>(754i, -16609i, -1i, 2147483647i) << (u_input.a % vec4<u32>(32u))), ~(~vec4<u32>(114431u, 10374u, 93671u, 7189u)), min(u_input.a.x, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(396f, global0.x), vec2<f32>(402f, global0.x), true))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(44414i, 19706i, 1i), vec3<i32>(1i, 61880i, 8238i))))), Struct_2(Struct_1(1i, u_input.a, 15339u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -732f)), vec2<f32>(global0.x, global0.x)), abs(-1i)), 49920i, ~abs(u_input.a.xzy) << (vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xxw, u_input.a.zxw), ~1u, abs(u_input.a.x)) % vec3<u32>(32u)), Struct_1(~(-1i), ~(~u_input.a), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 0u))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), global0.zx), ~1i)), true);
    var var_1 = ~(var_0.b.b & ~var_0.b.d.a);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1043f, var_0.b.d.d.x, _wgslsmith_f_op_f32(-504f + var_0.c.d.d.x), _wgslsmith_f_op_f32(var_0.b.a.d.x * global0.x))))));
    var var_2 = var_0.a.a;
    var_2 = ((func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-2488i, 31214i), vec2<i32>(var_0.a.a, -50694i)), false, -1401f, u_input.a.x << (1u % 32u)) >> (u_input.a.x % 32u)) | 8410i) & _wgslsmith_div_i32(0i, _wgslsmith_div_i32(firstLeadingBit(var_0.b.d.e) << (52490u % 32u), -firstLeadingBit(var_0.c.d.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(true, u_input.a.ww)).x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))));
}

fn func_1() -> vec3<bool> {
    return select(!vec3<bool>(_wgslsmith_f_op_f32(trunc(global0.x)) == _wgslsmith_f_op_f32(func_2()), all(vec3<bool>(true, true, true)), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), false), true), true), vec3<bool>(any(vec3<bool>(true, all(vec3<bool>(false, false, false)), u_input.a.x <= u_input.a.x)), false, any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(), Struct_3(Struct_1(-1i, vec4<u32>(4294967295u, 4294967295u, select(u_input.a.x, u_input.a.x, true), ~0u), firstLeadingBit(countOneBits(u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xz)), -1i), Struct_2(Struct_1(_wgslsmith_div_i32(0i, 25823i), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)), u_input.a.x & 59748u, vec2<f32>(global0.x, 769f), 2147483647i), 1i, ~vec3<u32>(34556u, u_input.a.x, 1u), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1670i), vec2<i32>(-5799i, -41434i)), min(vec4<u32>(3444u, u_input.a.x, 54391u, 23756u), u_input.a), select(u_input.a.x, 0u, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(2315f, global0.x) + global0.zy), i32(-1i) * -2147483647i)), Struct_2(Struct_1(~(-8211i), select(vec4<u32>(87438u, u_input.a.x, u_input.a.x, 1u), u_input.a, vec4<bool>(true, false, false, true)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(global0.xz * global0.zz), 1i), max(max(-1i, 0i), 0i), vec3<u32>(~4294967295u, u_input.a.x, 98313u), Struct_1(1i, ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), ~1u, _wgslsmith_f_op_vec2_f32(global0.wz + vec2<f32>(124f, -389f)), min(90688i, 2147483647i))), any(select(vec2<bool>(true, true), func_1().zy, vec2<bool>(false, false)))), vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(~(~u_input.a.x), reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 4294967295u), _wgslsmith_mult_u32(~(~u_input.a.x), u_input.a.x), u_input.a.x));
    var var_1 = 5152i;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(405f, 862f)), -1355f))));
    var var_3 = Struct_3(Struct_1(1i, _wgslsmith_add_vec4_u32(~var_0.c | ~u_input.a, select(~var_0.c, select(vec4<u32>(59553u, 57213u, var_0.b.c.d.c, var_0.b.a.c), vec4<u32>(4294967295u, 1u, var_0.c.x, 35561u), vec4<bool>(false, var_0.b.d, var_0.a.x, var_0.b.d)), all(var_0.a.xy))), _wgslsmith_mod_u32(select(66284u, 16994u, false) | _wgslsmith_mult_u32(var_0.c.x, u_input.a.x), 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.d.d.x, _wgslsmith_f_op_f32(var_0.b.c.a.d.x - var_0.b.a.d.x))), max(var_0.b.a.a, var_0.b.b.d.e)), Struct_2(Struct_1(var_0.b.c.a.a, var_0.c, 0u, vec2<f32>(1000f, -130f), 2147483647i), -19851i, vec3<u32>(56609u, ~(~1u), u_input.a.x), Struct_1(_wgslsmith_mod_i32(min(11716i, var_0.b.a.e), 1i), vec4<u32>(17955u, 0u, 1u, 42533u) ^ u_input.a, _wgslsmith_div_u32(u_input.a.x, u_input.a.x ^ 31741u), var_0.b.a.d, _wgslsmith_div_i32(var_0.b.a.e, _wgslsmith_clamp_i32(var_0.b.c.a.a, -1i, var_0.b.c.d.a)))), var_0.b.c, ~(~1u) != ~var_0.b.c.c.x);
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(var_3.d, _wgslsmith_mult_vec2_u32(min(_wgslsmith_mod_vec2_u32(var_0.c.zw, vec2<u32>(36412u, var_3.c.a.b.x)), ~vec2<u32>(1u, 51350u)), _wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 71969u)) >> (abs(u_input.a.zz) % vec2<u32>(32u))))).x));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)]) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(var_3.d, vec2<u32>(0u, var_3.b.d.b.x))).x * _wgslsmith_f_op_f32(f32(-1f) * -746f)), -442f)), var_3.a.d.x, _wgslsmith_f_op_f32(-1244f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(-389f * var_0.b.a.d.x))))));
    var_4 = _wgslsmith_f_op_f32(-global0.x);
    let var_6 = _wgslsmith_add_u32(~44348u, ~(~var_3.a.b.x << (select(max(0u, var_3.b.d.b.x), reverseBits(4294967295u), any(var_0.a.zy)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(53515u, global0.x);
}

