struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global0 = array<f32, 19>();
    let var_0 = _wgslsmith_sub_u32(0u, u_input.b.x) << (firstLeadingBit(~(~(~4294967295u))) % 32u);
    let var_1 = Struct_5(Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), ~vec4<i32>(-4031i, u_input.c, 1i, -2147483647i)), ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), ~vec2<i32>(-2147483647i, ~(u_input.c | u_input.c)), true);
    let var_2 = Struct_1(vec4<bool>(select(~4294967295u >= var_0, select(any(vec4<bool>(var_1.c, var_1.c, false, true)), all(vec4<bool>(var_1.c, true, var_1.c, true)), var_1.c && var_1.c), any(vec3<bool>(false, true, var_1.c))), min(abs(u_input.a), max(1u, u_input.d)) == _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(u_input.a, var_0), 36718u << (u_input.a % 32u)), -min(2147483647i, u_input.c) == reverseBits(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f - global0[_wgslsmith_index_u32(4294967295u, 19u)])) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1000f))))));
    let var_3 = 2147483647i;
    return -_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(34745i << (u_input.d % 32u), 2147483647i, var_1.b.x)), (~vec3<i32>(-25588i, u_input.c, 8661i) << (select(vec3<u32>(36244u, u_input.b.x, 48941u), vec3<u32>(u_input.b.x, 22400u, var_0), var_1.c) % vec3<u32>(32u))) | -vec3<i32>(var_1.b.x, 38051i, 1i));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    var var_0 = ~(firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), u_input.b), ~u_input.b)) >> (u_input.b % vec2<u32>(32u)));
    let var_1 = Struct_2(Struct_1(!vec4<bool>(false, true, u_input.c != -2147483647i, true)), arg_0, ~vec4<i32>(u_input.c, func_3(), u_input.c, abs(-59250i)));
    var_0 = ~vec2<u32>(firstTrailingBit(1u), min(~1u, 4294967295u));
    var_0 = firstTrailingBit(~vec2<u32>(4294967295u, 4294967295u));
    var_0 = _wgslsmith_mult_vec2_u32(reverseBits(~(vec2<u32>(4294967295u, 6903u) << (u_input.b % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(31087u, 7784u, u_input.b.x), vec3<u32>(var_0.x, 30897u, var_0.x)), abs(~u_input.d))) ^ (u_input.b | vec2<u32>(var_0.x, 2267u));
    return ~max(~var_0.x, ~(~abs(var_0.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(arg_2, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~func_2(-548f, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(arg_1.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(arg_1.x, 19u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -146f, -491f, -526f)))), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1261f, global0[_wgslsmith_index_u32(4294967295u, 19u)])))))), _wgslsmith_add_vec4_i32(firstTrailingBit(max(vec4<i32>(u_input.c, -2147483647i, -2147483647i, -26956i), vec4<i32>(-1280i, arg_0.x, u_input.c, arg_0.x)) | vec4<i32>(u_input.c, 1i, -2147483647i, arg_0.x)), vec4<i32>(_wgslsmith_add_i32(23874i, -arg_0.x), -11983i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(24592i, -1i), vec2<i32>(-1i, -1i)), u_input.c, countOneBits(u_input.c)), _wgslsmith_div_i32(-2147483647i, u_input.c))));
    let var_1 = var_0.a;
    global0 = array<f32, 19>();
    var var_2 = Struct_4(abs(_wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_clamp_i32(var_0.c.x & arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-18825i, var_0.c.x, arg_0.x, u_input.c), vec4<i32>(1i, var_0.c.x, 0i, u_input.c)), u_input.c))));
    let var_3 = Struct_4(_wgslsmith_div_i32(~(-12971i), ~_wgslsmith_add_i32(arg_0.x | arg_0.x, select(var_0.c.x, var_0.c.x, var_1.a.x))));
    return Struct_3(0u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), vec2<f32>(var_0.b, global0[_wgslsmith_index_u32(0u, 19u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 574f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, global0[_wgslsmith_index_u32(1u, 19u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], -493f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1252f) + vec2<f32>(1342f, var_0.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, global0[_wgslsmith_index_u32(0u, 19u)])))))), var_0, 59723u, select(select(select(var_0.a.a.yw, var_1.a.zy, any(vec2<bool>(var_0.a.a.x, true))), select(!vec2<bool>(true, var_0.a.a.x), arg_2.a.zy, select(var_1.a.x, false, var_0.a.a.x)), !any(vec4<bool>(var_1.a.x, false, true, arg_2.a.x))), vec2<bool>(false, var_1.a.x || all(vec2<bool>(false, var_0.a.a.x))), false));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = arg_2.c.a.a.zxw;
    let var_1 = func_1(-vec3<i32>(abs(42950i >> (arg_2.a % 32u)), ~(~arg_0.x), abs(-9290i << (arg_2.d % 32u))), ~(~u_input.b), arg_2.c.a).b;
    var_0 = func_1(vec3<i32>(~(-1i), _wgslsmith_mult_i32(reverseBits(28114i), arg_0.x), arg_2.c.c.x), u_input.b, arg_2.c.a).c.a.a.zzx;
    var_0 = vec3<bool>(true || arg_1.a.x, var_0.x & true, select(func_1(vec3<i32>(-1i) * -arg_2.c.c.xyx, ~u_input.b >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), arg_2.c.a).e.x, func_1(arg_2.c.c.xxw, ~u_input.b, func_1(arg_2.c.c.xwx, vec2<u32>(arg_2.d, 1u) & vec2<u32>(3128u, arg_2.d), arg_2.c.a).c.a).c.a.a.x, arg_2.e.x));
    var_0 = arg_1.a.zyz;
    return func_1((select(arg_2.c.c.zzz, _wgslsmith_mod_vec3_i32(arg_2.c.c.zwx, arg_2.c.c.xzw), arg_1.a.wyw) & min(vec3<i32>(2147483647i, -2147483647i, arg_0.x), ~vec3<i32>(-1i, u_input.c, arg_2.c.c.x))) & ~(-arg_2.c.c.yyy | (arg_2.c.c.xxz << (vec3<u32>(1u, u_input.b.x, 4294967295u) % vec3<u32>(32u)))), vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.d, 108284u), u_input.d), 4294967295u), Struct_1(!(!vec4<bool>(true, false, true, arg_3.x)))).c.a;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    let var_0 = select(-(func_1(min(vec3<i32>(u_input.c, 2147483647i, -2147483647i), vec3<i32>(u_input.c, 25083i, u_input.c)), u_input.b, Struct_1(vec4<bool>(false, arg_0.a.x, true, arg_0.a.x))).c.c.xyy << (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, u_input.d), vec3<u32>(u_input.b.x, 1u, 23667u) ^ vec3<u32>(1u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), max(func_1(vec3<i32>(-2147483647i, ~u_input.c, u_input.c), u_input.b, Struct_1(arg_0.a)).c.c.wyz, ~abs(abs(vec3<i32>(u_input.c, 63070i, u_input.c)))), false);
    let var_1 = max(u_input.d, ~7149u);
    let var_2 = arg_0.a.xyy;
    var var_3 = countOneBits(vec2<u32>(select(u_input.b.x, 0u, true), u_input.a));
    var_3 = abs(_wgslsmith_add_vec2_u32(vec2<u32>(~(~var_3.x), 1u), vec2<u32>(var_1, _wgslsmith_mult_u32(var_3.x, var_3.x))));
    return Struct_4(abs(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.c), firstTrailingBit(vec2<i32>(u_input.c, 0i)))), Struct_1(vec4<bool>(1i != u_input.c, true, true, true)), func_1(-vec3<i32>(-11868i, -20281i, u_input.c) >> (vec3<u32>(u_input.b.x, 0u, 6320u) % vec3<u32>(32u)), ~vec2<u32>(u_input.b.x, u_input.a), Struct_1(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = Struct_1(func_1(select(select(vec3<i32>(var_0.a, u_input.c, -33879i), -vec3<i32>(u_input.c, var_0.a, -1i), true), ~(-vec3<i32>(-33197i, 26226i, -1i)), true), vec2<u32>(~(~u_input.d), 1281u), func_1(countOneBits(vec3<i32>(u_input.c, var_0.a, -56147i) | vec3<i32>(var_0.a, 29044i, u_input.c)), vec2<u32>(u_input.a, 4294967295u), Struct_1(vec4<bool>(true, true, true, true))).c.a).c.a.a);
    global0 = array<f32, 19>();
    let var_2 = !(!select(select(vec4<bool>(true, true, true, true), var_1.a, !vec4<bool>(false, var_1.a.x, false, true)), var_1.a, vec4<bool>(var_1.a.x, true, 1u <= u_input.a, all(var_1.a))));
    let var_3 = func_5(func_4(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 1i)), i32(-1i) * -9536i), var_1, Struct_3(9866u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<f32>(-1818f, 482f), var_1.a.wx)))), func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.c), vec3<i32>(var_0.a, -2147483647i, var_0.a), vec3<i32>(1i, var_0.a, -1483i)), reverseBits(vec2<u32>(4294967295u, 21177u)), Struct_1(vec4<bool>(var_1.a.x, false, false, true))).c, u_input.a, var_1.a.xx), !func_1(vec3<i32>(u_input.c, u_input.c, var_0.a), vec2<u32>(0u, 0u) | u_input.b, Struct_1(var_2)).c.a.a.yx));
    var var_4 = Struct_5(func_5(Struct_1(vec4<bool>(any(var_1.a), var_1.a.x, u_input.c <= u_input.c, any(vec2<bool>(true, false))))), -max(~vec2<i32>(9797i, u_input.c), -vec2<i32>(33783i, 15605i) & (vec2<i32>(var_3.a, 1i) << (u_input.b % vec2<u32>(32u)))), all(var_1.a.wx) | var_1.a.x);
    var var_5 = vec4<bool>(true, true, all(vec3<bool>(!(true & var_1.a.x), !var_1.a.x && (u_input.b.x > 4294967295u), true)), !any(vec4<bool>(var_1.a.x, !var_2.x, var_2.x, var_4.c)));
    var_5 = !vec4<bool>(false, !var_4.c, !var_2.x, !any(var_1.a.xyy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-15602i, _wgslsmith_div_i32(-49839i, _wgslsmith_div_i32(-3039i, 1i))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(((1u & u_input.d) << (1u % 32u)) << (_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_clamp_u32(46594u, u_input.a, 0u)) % 32u), ~(~abs(u_input.a))), 19u)], vec2<i32>(var_4.a.a, -_wgslsmith_mult_i32(var_0.a, u_input.c)));
}

