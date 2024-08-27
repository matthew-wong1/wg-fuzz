struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_3, 7>;

var<private> global1: f32 = -242f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = -2147483647i;
    let var_1 = select(select(!(!(!vec4<bool>(arg_0.c.d, arg_0.c.d, true, arg_0.b.d))), !(!(!vec4<bool>(false, arg_0.b.d, arg_0.b.d, arg_0.c.d))), false), !vec4<bool>(_wgslsmith_f_op_f32(ceil(arg_0.c.c.e.x)) >= _wgslsmith_f_op_f32(-arg_0.b.b.e.x), any(vec4<bool>(arg_0.b.d, arg_0.c.d, arg_0.b.d, true)), false, !arg_0.c.d), !arg_0.c.d);
    var var_2 = arg_0.d.x;
    var_2 = abs(i32(-1i) * -1i);
    return _wgslsmith_mod_vec2_i32(~(~arg_1.xz) >> ((~vec2<u32>(arg_0.b.b.d.x, arg_0.c.a.d.x) << (~(~u_input.a.xy) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, var_0, 37099i, -11843i), ~vec4<i32>(2147483647i, -1i, arg_0.d.x, var_0)) & ((var_0 & -2147483647i) >> (~u_input.a.x % 32u)), -abs(arg_1.x)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-600f, _wgslsmith_f_op_f32(arg_3 + arg_3))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x)))));
    var var_0 = Struct_2(Struct_1(func_3(Struct_4(max(1u, u_input.a.x), Struct_2(Struct_1(vec2<i32>(15750i, arg_1.x), arg_2.x, vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(37193u, 10165u, 0u), vec2<f32>(731f, arg_2.x)), Struct_1(arg_1.yx, 464f, vec3<u32>(10788u, u_input.a.x, 4294967295u), u_input.a.wwy, vec2<f32>(-645f, 497f)), Struct_1(vec2<i32>(arg_1.x, -19364i), arg_2.x, u_input.a.zwz, u_input.a.xwy, vec2<f32>(-372f, arg_2.x)), true, u_input.a.yzw), Struct_2(Struct_1(arg_1.zy, 565f, u_input.a.yyw, u_input.a.wzy, vec2<f32>(-379f, arg_3)), Struct_1(vec2<i32>(-55342i, arg_1.x), 745f, u_input.a.zyz, u_input.a.zxy, arg_2.zz), Struct_1(vec2<i32>(arg_1.x, -2147483647i), -1000f, vec3<u32>(5675u, 0u, u_input.a.x), u_input.a.zyy, vec2<f32>(arg_3, 307f)), true, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), ~arg_1), arg_1), -200f, vec3<u32>(0u, u_input.a.x, abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), vec3<u32>(~u_input.a.x, firstLeadingBit(1u), _wgslsmith_add_u32(0u, u_input.a.x)) | ~(~u_input.a.wzw), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(arg_3 * -1023f), arg_2.x)))), Struct_1(-arg_1.zz, 1443f, reverseBits(~vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), u_input.a.yzy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(293f, -396f) - arg_2.zy) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 692f))))), Struct_1(arg_1.xz, _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3)))), u_input.a.xwx, _wgslsmith_add_vec3_u32(u_input.a.wwz, ~abs(u_input.a.xww)), arg_2.xz), any(vec2<bool>(_wgslsmith_div_f32(arg_2.x, -1511f) <= -558f, arg_0)), u_input.a.yzx | u_input.a.www);
    return Struct_1(reverseBits(-var_0.c.a), arg_2.x, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, _wgslsmith_mod_vec2_u32(var_0.b.d.yy, var_0.c.c.yx)), max(~4294967295u, _wgslsmith_sub_u32(u_input.a.x, var_0.b.d.x)), ~(~9026u)) << (vec3<u32>(_wgslsmith_mult_u32(0u, var_0.c.d.x & 31728u), u_input.a.x, ~4294967295u) % vec3<u32>(32u)), ~(vec3<u32>(42759u, u_input.a.x, 15081u) << (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.yyy, vec3<u32>(0u, 0u, u_input.a.x)), ~u_input.a.xxz) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(var_0.c.e + var_0.a.e));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1343f, -1000f), -140f)), _wgslsmith_div_vec2_f32(arg_0.e, arg_0.e)), func_2(all(vec3<bool>(true, true, true)), vec3<i32>(15952i, firstTrailingBit(0i), i32(-1i) * -2147483647i), vec4<f32>(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + arg_0.b), _wgslsmith_f_op_f32(arg_0.b - 361f)), arg_0.b, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(arg_2.x, arg_2.x))), arg_0.b).e, vec2<bool>(true, all(vec3<bool>(true, true, true)) | !arg_1)));
    global0 = array<Struct_3, 7>();
    var var_1 = arg_0.a.x;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f * arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -265f), -225f)), arg_1))));
    let var_3 = _wgslsmith_div_f32(-1738f, 2839f);
    return u_input.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> vec3<bool> {
    let var_0 = ~vec4<i32>(2147483647i, 0i, _wgslsmith_clamp_i32(~_wgslsmith_div_i32(arg_1.b.c.a.x, arg_1.c.c.a.x), abs(_wgslsmith_mod_i32(arg_1.c.c.a.x, arg_2)), arg_0.x), firstTrailingBit(~0i));
    var var_1 = ~_wgslsmith_mod_vec4_u32(func_4(func_2(false, vec3<i32>(0i, arg_2, -26231i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.b.e.x, arg_1.c.c.b, -226f, -985f), vec4<f32>(arg_1.c.b.e.x, arg_1.b.c.b, arg_1.b.b.b, -1472f), vec4<bool>(arg_3, true, true, arg_1.b.d))), _wgslsmith_f_op_f32(arg_1.c.b.b - 781f)), false, vec3<f32>(_wgslsmith_f_op_f32(max(1144f, 2465f)), _wgslsmith_f_op_f32(1087f + 615f), _wgslsmith_f_op_f32(arg_1.c.b.b * 673f))), u_input.a);
    var var_2 = Struct_3(arg_3, _wgslsmith_f_op_f32(arg_1.c.c.e.x * -567f), 4294967295u, var_0.x, -max(var_0, reverseBits(var_0)));
    var_2 = global0[_wgslsmith_index_u32(~4294967295u, 7u)];
    var_2 = global0[_wgslsmith_index_u32(6776u, 7u)];
    return vec3<bool>(any(vec4<bool>(true, true | arg_3, false, all(vec2<bool>(true, var_2.a)))) & !arg_3, any(!vec2<bool>(all(vec2<bool>(var_2.a, false)), arg_1.d.x >= -1i)), arg_1.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    var var_0 = any(!select(func_1(-vec2<i32>(51873i, 49689i), Struct_4(1u, Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), 507f, u_input.a.xyx, u_input.a.xwx, vec2<f32>(-1471f, 1646f)), Struct_1(vec2<i32>(1i, -2147483647i), -1000f, vec3<u32>(u_input.a.x, u_input.a.x, 56564u), vec3<u32>(u_input.a.x, 26686u, 4294967295u), vec2<f32>(-2004f, -177f)), Struct_1(vec2<i32>(-58879i, -22689i), 1000f, vec3<u32>(56066u, u_input.a.x, u_input.a.x), u_input.a.wwz, vec2<f32>(1000f, -346f)), true, vec3<u32>(4294967295u, 65677u, u_input.a.x)), Struct_2(Struct_1(vec2<i32>(-1585i, 83512i), 187f, u_input.a.wzy, u_input.a.wzz, vec2<f32>(346f, 1000f)), Struct_1(vec2<i32>(63254i, 2147483647i), -200f, vec3<u32>(u_input.a.x, 0u, 84222u), vec3<u32>(u_input.a.x, 0u, 66558u), vec2<f32>(581f, -374f)), Struct_1(vec2<i32>(0i, 2147483647i), 2597f, vec3<u32>(1u, u_input.a.x, 4294967295u), u_input.a.wxz, vec2<f32>(1054f, -895f)), false, vec3<u32>(0u, u_input.a.x, 0u)), vec3<i32>(25865i, 2147483647i, -33385i)), ~481i, true), vec3<bool>(true, true, true), true));
    let var_1 = Struct_2(Struct_1(func_2(true, vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1200f, 825f, -148f) + vec4<f32>(954f, -1051f, -262f, 1810f)), func_2(false, vec3<i32>(2147483647i, 77160i, 0i), vec4<f32>(2168f, -200f, -1191f, 335f), 722f).e.x).a & select(vec2<i32>(-1i, 25884i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(33289i, -2147483647i)), vec2<bool>(false, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1421f, -899f)) * func_2(true, vec3<i32>(2147483647i, 0i, 2147483647i), vec4<f32>(1000f, 270f, 998f, -434f), -789f).b), _wgslsmith_f_op_f32(trunc(-435f))), vec3<u32>(u_input.a.x, ~(~u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 55885u)))), ~(~u_input.a.zzz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(-1445f)), _wgslsmith_f_op_f32(-271f * -1403f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1705f, 1674f), vec2<f32>(-2029f, 486f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 510f)))))), Struct_1(~(-vec2<i32>(1i, 0i)), -707f, u_input.a.yxy, u_input.a.wxw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(141f, 1000f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(871f, -2202f))))), Struct_1(vec2<i32>(-1i) * -vec2<i32>(8770i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1014f), -957f)) * 1f), (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) ^ _wgslsmith_mod_vec3_u32(u_input.a.xzw, vec3<u32>(u_input.a.x, u_input.a.x, 34705u))) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xwz, vec3<u32>(u_input.a.x, 140568u, u_input.a.x)) & u_input.a.xyw) % vec3<u32>(32u)), u_input.a.wzx, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1735f + 1044f), _wgslsmith_f_op_f32(876f + -279f)) - vec2<f32>(_wgslsmith_f_op_f32(779f - 426f), -1526f))), true, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(51432u, u_input.a.x, 4294967295u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_2 = var_1.a.b;
    let var_3 = Struct_4(~(~4294967295u), var_1, Struct_2(func_2(any(select(vec4<bool>(true, true, false, var_1.d), vec4<bool>(true, var_1.d, true, var_1.d), vec4<bool>(var_1.d, false, var_1.d, var_1.d))), vec3<i32>(~var_1.b.a.x, i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b, 854f, 135f, var_1.a.b)))), -2033f), Struct_1(firstTrailingBit(func_3(Struct_4(4294967295u, Struct_2(Struct_1(vec2<i32>(var_1.b.a.x, var_1.c.a.x), var_1.b.e.x, u_input.a.zxx, u_input.a.yyy, var_1.a.e), Struct_1(vec2<i32>(var_1.c.a.x, 0i), var_1.a.e.x, vec3<u32>(1u, var_1.e.x, 59215u), vec3<u32>(100775u, 39524u, 0u), var_1.a.e), var_1.c, true, vec3<u32>(12697u, u_input.a.x, u_input.a.x)), var_1, vec3<i32>(var_1.a.a.x, -1i, var_1.c.a.x)), vec3<i32>(-2147483647i, -6494i, var_1.a.a.x))), -1238f, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 25147u) & vec3<u32>(41241u, var_1.a.d.x, 0u), u_input.a.xwy << (var_1.b.d % vec3<u32>(32u))), reverseBits(vec3<u32>(4294967295u, u_input.a.x, 39707u) | u_input.a.xwz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.b.e, vec2<f32>(var_1.b.e.x, 1079f))))), var_1.c, true, ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 15310u, 4294967295u), min(vec3<u32>(var_1.b.d.x, u_input.a.x, u_input.a.x), vec3<u32>(var_1.b.c.x, 6267u, 42251u)))), vec3<i32>(~(~var_1.b.a.x), -func_3(Struct_4(4294967295u, Struct_2(var_1.a, var_1.b, Struct_1(vec2<i32>(-1i, 20029i), var_1.b.e.x, var_1.a.c, vec3<u32>(45270u, 46674u, var_1.e.x), vec2<f32>(-1479f, var_1.c.b)), var_1.d, vec3<u32>(48005u, 1u, 4294967295u)), Struct_2(var_1.a, var_1.b, Struct_1(vec2<i32>(var_1.c.a.x, 1i), var_1.a.b, u_input.a.yww, vec3<u32>(u_input.a.x, 6598u, var_1.e.x), vec2<f32>(-667f, -1000f)), false, var_1.a.c), vec3<i32>(var_1.a.a.x, var_1.a.a.x, var_1.c.a.x)), ~vec3<i32>(var_1.c.a.x, var_1.a.a.x, var_1.a.a.x)).x, var_1.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_1.a.a.x));
}

