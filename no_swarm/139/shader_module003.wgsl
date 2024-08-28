struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -139f);

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false));

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: Struct_4;

var<private> global4: Struct_2 = Struct_2(vec4<bool>(false, true, true, true), Struct_1(-35928i, vec3<i32>(2147483647i, -54570i, 26300i), -1i, 0u), vec2<bool>(false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_3(global4.b.d);
    global3 = Struct_4(global3.a, _wgslsmith_f_op_f32(abs(global0.x)), Struct_3(_wgslsmith_add_u32(33378u, ~var_0.a)));
    var var_1 = true;
    global1 = array<vec4<bool>, 16>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, arg_0.x, global3.b, global3.b) * vec4<f32>(arg_0.x, -1814f, arg_0.x, -989f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 661f, arg_0.x, global3.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, arg_0.x, global3.b, global3.b), vec4<f32>(-897f, global3.b, -956f, 2118f))) + vec4<f32>(-788f, arg_0.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global3.b, 1386f, global0.x), vec4<f32>(1305f, -1149f, 1275f, -916f)))))))));
    return _wgslsmith_mod_u32((_wgslsmith_dot_vec3_u32(select(vec3<u32>(global3.a.d, 19055u, var_0.a), vec3<u32>(var_0.a, 0u, var_0.a), global4.c.x), select(vec3<u32>(4294967295u, global4.b.d, var_0.a), vec3<u32>(var_0.a, global3.a.d, 0u), global4.a.wxz)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 38337u, global3.c.a), reverseBits(vec3<u32>(0u, 1u, var_0.a))) % 32u)) << (~firstLeadingBit(1u) % 32u), ~(~1u));
}

fn func_2() -> vec3<u32> {
    global1 = array<vec4<bool>, 16>();
    let var_0 = -max(global3.a.b.yy ^ (_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)) & global3.a.b.yz), vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(global3.a.b, global3.a.b)), firstLeadingBit(countOneBits(-31125i))));
    global3 = Struct_4(global4.b, -1754f, Struct_3(~(~func_3(vec2<f32>(global0.x, -159f)))));
    let var_1 = Struct_2(select(global1[_wgslsmith_index_u32(global3.c.a, 16u)], !select(select(vec4<bool>(false, false, global4.c.x, false), global4.a, global2.x), select(global1[_wgslsmith_index_u32(0u, 16u)], vec4<bool>(global4.a.x, false, true, global2.x), global1[_wgslsmith_index_u32(global3.c.a, 16u)]), select(global1[_wgslsmith_index_u32(45964u, 16u)], vec4<bool>(global4.a.x, global4.a.x, global2.x, global2.x), global4.a)), !(29514u < global4.b.d)), Struct_1(var_0.x, vec3<i32>(1i, 15336i, -u_input.a.x), _wgslsmith_mult_i32(19115i, -23485i), ~global3.c.a), vec2<bool>(all(!global2.xy) && false, true));
    global3 = Struct_4(Struct_1(-1i, vec3<i32>(-_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, var_0.x), reverseBits(countOneBits(-50716i)), ~(-10114i)), abs(-458i), _wgslsmith_add_u32(_wgslsmith_mult_u32(~global3.a.d, var_1.b.d), var_1.b.d | ~global4.b.d)), _wgslsmith_f_op_f32(select(474f, global3.b, false)), global3.c);
    return _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.d, 0u, 30675u, 1u), vec4<u32>(0u, 38341u, global4.b.d, global4.b.d))), ~global3.c.a), _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.c.a, 0u, 84825u), vec3<u32>(global4.b.d, global4.b.d, global4.b.d)), vec3<u32>(abs(15142u), global3.a.d, global3.c.a))) ^ select(~_wgslsmith_div_vec3_u32(min(vec3<u32>(global4.b.d, 4294967295u, global4.b.d), vec3<u32>(27496u, global4.b.d, var_1.b.d)), ~vec3<u32>(1u, global4.b.d, global4.b.d)), abs(vec3<u32>(var_1.b.d, global4.b.d, 1038u) & firstLeadingBit(vec3<u32>(4294967295u, 52124u, 24850u))), vec3<bool>(1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.d, 4294967295u, global4.b.d), vec3<u32>(14068u, 30582u, 39824u)), global2.x, !var_1.a.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = ~arg_2;
    var var_1 = Struct_4(Struct_1(global4.b.a | _wgslsmith_sub_i32(global4.b.c, -global3.a.c), vec3<i32>(-16907i, abs(arg_0.x), ~0i), global4.b.c, 44940u), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.x))))), global3.c);
    global1 = array<vec4<bool>, 16>();
    var var_2 = 69311u;
    var_1 = Struct_4(var_1.a, global0.x, Struct_3(abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), arg_2.xz)))));
    return Struct_4(global3.a, var_1.b, var_1.c);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = global3.a;
    var var_1 = arg_3;
    var var_2 = arg_3;
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    var var_0 = global3.c;
    let var_1 = global3.a;
    var var_2 = func_5(func_4(min(select(var_1.b.yx, global3.a.b.yz, select(global2.xy, vec2<bool>(true, global4.c.x), global4.c.x)), vec2<i32>(~var_1.c, ~global3.a.b.x)), Struct_3(var_1.d), select(~func_2(), ~vec3<u32>(global4.b.d, global3.a.d, var_0.a), vec3<bool>(true, true & global2.x, global4.c.x || false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -856f), vec3<f32>(global0.x, 1913f, -1309f), vec3<bool>(false, true, false)))))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b + global3.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-196f * global3.b), global0.x, !global2.x)))), global3.a.b, Struct_2(vec4<bool>(true, global4.c.x, select(false, u_input.a.x != global3.a.a, global2.x), true), func_4(vec2<i32>(min(var_1.c, global4.b.c), var_1.a), func_4(vec2<i32>(var_1.b.x, u_input.a.x), func_4(global4.b.b.zz, Struct_3(1u), vec3<u32>(global4.b.d, 36818u, 4294967295u)).c, countOneBits(vec3<u32>(46101u, var_1.d, 12070u))).c, ~(vec3<u32>(var_0.a, 4294967295u, global3.a.d) << (vec3<u32>(1u, 4294967295u, global3.c.a) % vec3<u32>(32u)))).a, select(!(!global2.yy), global2.xx, vec2<bool>(all(vec4<bool>(false, global2.x, global4.c.x, false)), all(global2.zx)))));
    var var_3 = global3.a;
    var var_4 = abs(_wgslsmith_clamp_u32(35310u, reverseBits(0u) >> (0u % 32u), global3.c.a) << (4294967295u % 32u));
    return Struct_1(global4.b.b.x & -(global3.a.c ^ countOneBits(2147483647i)), ~vec3<i32>(-19372i, global4.b.b.x, var_1.a), global4.b.b.x, 26051u << (1u % 32u));
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = global3.c.a;
    global4 = arg_0;
    var var_1 = 2147483647i ^ _wgslsmith_clamp_i32(1i, func_1().a, 19473i);
    let var_2 = global4.c.x;
    var var_3 = Struct_3(96741u);
    return Struct_2(global4.a, arg_0.b, global2.xy);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = func_4(abs(~func_4(global4.b.b.xz, func_4(arg_0.b.b.zy, global3.c, vec3<u32>(global4.b.d, global3.a.d, 1u)).c, func_2()).a.b.zz), func_4(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(31717i, arg_1.b.a), arg_2.b.b.yx)), Struct_3(62208u), ~vec3<u32>(~global3.c.a, ~48929u, ~0u)).c, abs(select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(34752u, arg_1.b.d, arg_1.b.d), vec3<u32>(4294967295u, arg_0.b.d, 1u)), vec3<u32>(global4.b.d, arg_2.b.d, arg_2.b.d)), vec3<u32>(~arg_0.b.d, func_5(Struct_4(Struct_1(u_input.a.x, vec3<i32>(u_input.a.x, global3.a.c, 23980i), arg_1.b.a, 60613u), global3.b, global3.c), vec3<f32>(global0.x, global3.b, global0.x), arg_0.b.b, arg_1).d, ~1u), !(arg_1.a.x && false)))).a;
    global1 = array<vec4<bool>, 16>();
    let var_1 = false;
    var var_2 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.b.d, 40022u, arg_0.b.d), vec4<u32>(global4.b.d, 4294967295u, arg_1.b.d, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.d, arg_2.b.d, arg_0.b.d, 79645u), vec4<u32>(arg_1.b.d, global3.c.a, 22551u, 0u), vec4<u32>(46087u, 71244u, 0u, 0u))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(40543u, 0u, 0u, 19833u), vec4<u32>(global3.a.d, 0u, arg_1.b.d, global4.b.d), vec4<u32>(var_0.d, 4294967295u, arg_2.b.d, 0u)), countOneBits(vec4<u32>(var_0.d, global4.b.d, global4.b.d, global3.c.a))))), max(~(~vec4<u32>(var_0.d, global3.a.d, var_0.d, 20367u)), ~(~vec4<u32>(arg_0.b.d, global4.b.d, 18188u, 91503u))));
    var var_3 = global4.a.x;
    return arg_2.a.wwx;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(func_6(Struct_2(global1[_wgslsmith_index_u32(~4294967295u, 16u)], func_1(), vec2<bool>(true, any(global4.c))), -abs(_wgslsmith_add_i32(u_input.a.x, u_input.a.x))), Struct_2(!(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.c.a, global4.b.d), 16u)]), func_1(), global4.a.wz), func_6(func_6(Struct_2(global4.a, Struct_1(-1i, global4.b.b, 1i, 2693u), vec2<bool>(global2.x, global4.a.x)), 1i), _wgslsmith_add_i32(_wgslsmith_add_i32(0i, global3.a.a) & _wgslsmith_clamp_i32(global4.b.c, 16474i, -1i), -(~0i))));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-903f + _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(-global3.b)))));
    var var_1 = Struct_2(vec4<bool>(!((global4.a.x == global4.a.x) != global2.x), !select(all(global4.a.zxw), !global2.x, true), !(!global4.c.x), true), global3.a, global2.xz);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2643f, -1897f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(983f)) + global0.x), var_0)));
    let var_3 = func_4(global4.b.b.zx, global3.c, vec3<u32>(func_1().d, 1u, ~1u >> (firstLeadingBit(_wgslsmith_mod_u32(1u, global3.c.a)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-420f, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~var_3.a.d, 32537u), ~(~vec3<u32>(5658u, 4294967295u, var_1.b.d))), abs(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(global3.c.a, 0u, global3.a.d)), ~vec3<u32>(global3.a.d, 31091u, global4.b.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, global0.x, global0.x, var_2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1837f, -1172f, global3.b, var_0) * vec4<f32>(-208f, -1042f, var_3.b, global3.b))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2325f, var_2.x, -238f, var_3.b))), select(false, false, var_1.a.x))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-163f, -426f, global0.x, 1000f) - vec4<f32>(1000f, 753f, 444f, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(2152f * -444f), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_div_f32(1628f, -242f), var_0)))));
}

