struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: vec2<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_3(vec4<bool>(true, ((-51288i < global2.x) || !global1.x) || (~1i >= u_input.d.x), !(0u >= u_input.c.x), !global1.x), select(!select(vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(false, global1.x, global1.x, false), global1.x), vec4<bool>(select(true, false, true & global1.x), global1.x, !global1.x, all(vec4<bool>(true, false, global1.x, true))), select(!global1.x, global1.x | global1.x, false)), Struct_1(vec4<bool>(global1.x, false, any(vec4<bool>(true, false, global1.x, global1.x)), true), !vec3<bool>(all(vec4<bool>(true, true, global1.x, global1.x)), global1.x, u_input.b < global2.x), select((global1.x | true) != true, !(!global1.x), _wgslsmith_div_i32(global2.x, global2.x) == ~u_input.e)), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(650f, 666f, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-121f, 645f, -610f))), Struct_1(select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, false, true, false), true), vec4<bool>(false, true, global1.x, true), !global1.x), select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, false)), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, true), true), true), global1.x), all(vec4<bool>(global1.x, !global1.x, global1.x, global1.x != global1.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(364f, -2075f, 2019f), vec3<f32>(262f, -380f, -1026f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2276f, 979f) + vec3<f32>(1271f, 1000f, 346f)))), global0[_wgslsmith_index_u32(13611u, 9u)], global1.x));
    global0 = array<Struct_1, 9>();
    let var_1 = var_0;
    let var_2 = -_wgslsmith_add_vec3_i32(max(firstTrailingBit(-vec3<i32>(u_input.b, -12713i, 39006i)), -max(u_input.d.xxz, u_input.d.zyx)), _wgslsmith_sub_vec3_i32(-vec3<i32>(-25314i, global2.x, u_input.b), vec3<i32>(u_input.e, ~43747i, countOneBits(82228i))));
    let var_3 = Struct_4(Struct_3(var_1.b, var_1.e.b.a, Struct_1(vec4<bool>(all(vec4<bool>(true, global1.x, global1.x, global1.x)), global1.x, true, false), var_1.d.b.b, false), var_0.d, Struct_2(_wgslsmith_f_op_vec3_f32(ceil(var_1.e.a)), Struct_1(!var_0.e.b.a, !vec3<bool>(true, var_0.a.x, global1.x), var_0.e.a.x <= 299f), var_1.e.b.a.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1766f, var_1.d.a.x, var_1.d.a.x))) + var_0.e.a), vec3<f32>(var_1.e.a.x, -393f, -520f))));
    return true;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f - 1000f) - -185f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, 0u), 9u)], all(vec4<bool>(func_3(~u_input.c.xx), func_3(vec2<u32>(u_input.a.x, 0u)), func_3(~u_input.c.xz), !arg_0)));
    var var_1 = select(var_0.b.a.zw, vec2<bool>(false, any(var_0.b.a)), vec2<bool>(all(vec2<bool>(!global1.x, func_3(vec2<u32>(u_input.a.x, u_input.c.x)))), func_3(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a << (u_input.a % vec2<u32>(32u))))));
    var var_2 = !(false || var_0.c);
    var_1 = !select(var_0.b.a.xz, select(vec2<bool>(var_1.x == false, true), vec2<bool>(!arg_0, any(var_0.b.b.xz)), any(select(vec3<bool>(true, arg_0, var_0.b.b.x), var_0.b.a.wzy, true))), false);
    var_0 = Struct_2(vec3<f32>(1f, -947f, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(var_0.a.x, -557f))), var_0.b, global1.x);
    return ~_wgslsmith_clamp_vec3_u32(~(~_wgslsmith_div_vec3_u32(u_input.c.zwy, u_input.c.ywy)), ~(~u_input.c.xyz), vec3<u32>(1u, firstTrailingBit(~115794u), u_input.a.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-704f, arg_1.b.x)), _wgslsmith_f_op_f32(trunc(-658f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.d.a.x)))), _wgslsmith_f_op_f32(abs(-556f)), _wgslsmith_f_op_f32(492f - arg_1.b.x)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2449f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_f32(-1059f + -550f))), _wgslsmith_f_op_f32(min(arg_1.a.d.a.x, _wgslsmith_f_op_f32(arg_1.a.e.a.x + -1367f)))))));
    var var_1 = !func_3(vec2<u32>(_wgslsmith_mult_u32(arg_0.x, arg_2), u_input.a.x << (~4294967295u % 32u)));
    var_1 = all(vec2<bool>(true, false));
    global2 = u_input.d.wz;
    let var_2 = arg_1.a.d;
    return Struct_3(!(!vec4<bool>(!var_2.b.c, false, var_2.b.a.x, true)), arg_1.a.b, Struct_1(select(select(select(vec4<bool>(var_2.b.c, true, true, false), vec4<bool>(true, var_2.b.c, var_2.b.a.x, false), var_2.b.a), !vec4<bool>(false, var_2.c, var_2.b.b.x, true), select(vec4<bool>(arg_1.a.e.b.b.x, true, false, true), vec4<bool>(arg_1.a.a.x, global1.x, global1.x, var_2.b.b.x), global1.x)), vec4<bool>(-2147483647i > arg_3, true, var_0.x <= 176f, true), var_2.c), select(vec3<bool>(true, true, !global1.x), vec3<bool>(global1.x, global2.x < 0i, true), false), true), arg_1.a.d, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x * var_0.x), _wgslsmith_f_op_f32(max(var_0.x, 502f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1076f)), Struct_1(vec4<bool>(var_2.b.c, false && var_2.c, true, var_2.b.c), select(arg_1.a.c.b, var_2.b.b, false), global1.x), !global1.x == !(arg_1.a.a.x & arg_1.a.e.c)));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = !(!global1.x);
    var var_1 = 1i;
    var var_2 = func_4(_wgslsmith_add_vec3_u32(u_input.c.wzz, ~select(vec3<u32>(u_input.a.x, 15386u, u_input.a.x), vec3<u32>(u_input.a.x, arg_0, arg_0), vec3<bool>(global1.x, global1.x, global1.x)) >> (func_2(select(false, true, true)) % vec3<u32>(32u))), Struct_4(Struct_3(vec4<bool>(true, all(vec4<bool>(global1.x, global1.x, false, global1.x)), true, true), select(!vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), global0[_wgslsmith_index_u32(u_input.a.x, 9u)], Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1426f, -2226f)), global0[_wgslsmith_index_u32(~u_input.c.x, 9u)], global1.x), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-785f, -1568f, 926f)), global0[_wgslsmith_index_u32(u_input.c.x | 2709u, 9u)], !global1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1074f, 879f, -532f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-905f, -153f, 1000f) + vec3<f32>(-364f, -1056f, -141f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, -1052f, -483f) + vec3<f32>(-1949f, -566f, -544f)))))), ~countOneBits(min(~0u, 1u)), _wgslsmith_mult_i32(-28224i, -22777i));
    var var_3 = func_4(u_input.c.wxy, Struct_4(func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, arg_0, arg_0), u_input.c.zwx, u_input.c.wyw) ^ vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_4(Struct_3(vec4<bool>(false, true, var_2.a.x, true), var_2.c.a, Struct_1(var_2.b, var_2.e.b.a.wzy, var_2.d.b.c), Struct_2(var_2.d.a, Struct_1(var_2.d.b.a, var_2.d.b.b, true), global1.x), Struct_2(var_2.e.a, global0[_wgslsmith_index_u32(arg_0, 9u)], true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-119f, -347f, var_2.d.a.x), var_2.d.a, vec3<bool>(false, false, false)))), 0u, 27541i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1819f, -1696f, var_2.e.a.x)))), _wgslsmith_clamp_u32(arg_0, 95446u, 1u), firstTrailingBit(~u_input.b) << (~arg_0 % 32u));
    var_1 = reverseBits(i32(-1i) * -26668i);
    return all(vec2<bool>(var_2.d.c, var_2.e.a.x < 302f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(vec2<bool>(global1.x, false), !select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, true), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), vec2<bool>(global1.x, false))), vec2<bool>(!func_1(u_input.c.x), global1.x));
    global1 = !vec2<bool>(true, global1.x);
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-(u_input.e << ((u_input.a.x ^ u_input.a.x) % 32u)), i32(-1i) * -(~63158i), u_input.d.x), u_input.d.wxz);
    let var_1 = vec4<bool>(!all(vec2<bool>(func_4(vec3<u32>(3788u, u_input.a.x, u_input.a.x), Struct_4(Struct_3(vec4<bool>(global1.x, true, true, true), vec4<bool>(false, false, global1.x, false), Struct_1(vec4<bool>(global1.x, global1.x, true, false), vec3<bool>(global1.x, global1.x, false), false), Struct_2(vec3<f32>(-327f, 307f, -1577f), Struct_1(vec4<bool>(false, global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), true), true), Struct_2(vec3<f32>(-1466f, 661f, -865f), global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global1.x)), vec3<f32>(-599f, -226f, 2312f)), u_input.c.x, u_input.e).e.c, global1.x)), func_3(vec2<u32>(_wgslsmith_add_u32(~u_input.a.x, abs(4294967295u)), u_input.a.x)), !(_wgslsmith_f_op_f32(ceil(-1769f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f - -449f))), global1.x);
    var var_2 = u_input.c.x;
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yw, (_wgslsmith_mod_vec3_i32(reverseBits(u_input.d.xzz), vec3<i32>(var_0.x, 1i, 2147483647i)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(37857u, 1u)), firstLeadingBit(6332u), min(u_input.a.x, 6442u)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_add_u32(max(u_input.c.x, u_input.c.x), ~u_input.c.x), reverseBits(95536u), _wgslsmith_clamp_u32(abs(u_input.c.x), ~var_3, _wgslsmith_add_u32(u_input.c.x, u_input.c.x))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1246f, 599f))), -1375f), firstLeadingBit(~(~_wgslsmith_mod_u32(749u, u_input.c.x))), min(36320i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.d.x), u_input.d.yw)));
}

