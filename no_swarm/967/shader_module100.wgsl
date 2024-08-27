struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec4<f32>;

var<private> global1: Struct_3 = Struct_3(vec2<bool>(true, false), vec3<i32>(18230i, -45990i, -52945i), -1i, Struct_2(2147483647i, Struct_1(267f, vec4<i32>(2147483647i, 20729i, 43546i, 2899i), vec4<i32>(0i, 1i, i32(-2147483648), -1i), -1i, vec3<bool>(true, true, true)), -4275i, vec2<f32>(-559f, 3079f), 5362u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_3(arg_1.yy, arg_2.b.c.yxw, firstTrailingBit(arg_2.c), Struct_2(global1.b.x, Struct_1(global0.x, max(vec4<i32>(-7803i, global1.b.x, arg_0.x, arg_0.x), ~global1.d.b.c), -arg_2.b.c & arg_2.b.c, 2147483647i, vec3<bool>(false, false, true)), ~arg_0.x, vec2<f32>(312f, _wgslsmith_f_op_f32(round(global0.x))), ~7827u));
    var var_1 = Struct_1(996f, vec4<i32>(global1.c, -37433i, ~7970i, _wgslsmith_div_i32(~var_0.b.x, global1.c ^ -18750i)), abs(-arg_2.b.b << (select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d.e, 1u, u_input.a, global1.d.e), vec4<u32>(u_input.a, global1.d.e, global1.d.e, var_0.d.e)), vec4<u32>(global1.d.e, 6177u, 0u, global1.d.e) & vec4<u32>(var_0.d.e, 4294967295u, 56698u, 1u), var_0.d.b.e.x) % vec4<u32>(32u))), ~1i, arg_1.xzy);
    var var_2 = 4294967295u;
    var_1 = global1.d.b;
    var var_3 = var_1.e.x;
    return select(arg_1, !vec4<bool>(any(!arg_2.b.e.zy), true && !var_0.a.x, any(var_1.e.xx), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.b.a)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-243f * 451f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1873f, arg_1.x, 839f, -452f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), vec4<f32>(arg_1.x, 1073f, _wgslsmith_f_op_f32(sign(-844f)), 150f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1198f)), 1f), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2382f, -299f)), global0.x)));
    global1 = Struct_3(vec2<bool>(arg_0.x, (-global1.c >> (max(global1.d.e, u_input.a) % 32u)) < ~_wgslsmith_mod_i32(-19908i, global1.b.x)), global1.d.b.c.wxy, -(i32(-1i) * -52068i), global1.d);
    var var_0 = any(!global1.d.b.e.yx);
    global1 = Struct_3(vec2<bool>(false, _wgslsmith_dot_vec4_i32(select(global1.d.b.c, vec4<i32>(global1.b.x, global1.c, global1.c, global1.b.x), arg_0.x), global1.d.b.c) > abs(_wgslsmith_div_i32(global1.d.c, global1.d.b.d))), vec3<i32>(~global1.b.x, -1i, reverseBits(-2539i)), abs(min(2147483647i, -(global1.b.x ^ 0i))), Struct_2(-min(global1.d.a, reverseBits(-2147483647i)), global1.d.b, abs(2147483647i), global0.xw, firstTrailingBit(~abs(0u))));
    var var_1 = Struct_2(-1i, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), countOneBits(global1.d.b.b), ~(~vec4<i32>(-31908i, -1i, global1.b.x, -11387i)), global1.c, !arg_0.wyw), firstLeadingBit(global1.c), global1.d.d, u_input.a | (u_input.a >> (~(~u_input.a) % 32u)));
    return vec4<f32>(_wgslsmith_f_op_f32(-1043f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_div_f32(1000f, 1227f))))), global0.x, global0.x, -755f);
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = global1.d.b.b.xy;
    global0 = _wgslsmith_f_op_vec4_f32(func_4(!(!func_3(global1.d.b.b.xyx >> (vec3<u32>(global1.d.e, 30317u, u_input.a) % vec3<u32>(32u)), vec4<bool>(true, arg_0.x, global1.d.b.e.x, global1.a.x), Struct_2(0i, global1.d.b, 1i, vec2<f32>(-511f, global0.x), global1.d.e))), global0.xy));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(arg_0.x, global1.d.b.e.x, global1.a.x, false), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.d.b.a, -203f))))))))));
    let var_1 = Struct_3(global1.a, -vec3<i32>(-32976i, _wgslsmith_add_i32(~26427i, -25228i), _wgslsmith_sub_i32(~var_0.x, firstTrailingBit(0i))), ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, var_0.x), vec2<i32>(-1i, global1.c)))), global1.d);
    let var_2 = vec3<bool>(!(!select(true, arg_0.x, all(vec4<bool>(false, arg_0.x, false, global1.d.b.e.x)))), func_3(vec3<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(global1.d.b.c, vec4<i32>(var_0.x, var_0.x, 1i, 2147483647i)), _wgslsmith_add_i32(var_1.c, -13739i)), select(vec4<bool>(arg_0.x, global1.a.x, true, arg_0.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, arg_0.x, true), false), func_3(var_1.b, vec4<bool>(true, false, false, var_1.d.b.e.x), Struct_2(global1.c, global1.d.b, 6059i, global0.wy, var_1.d.e))), Struct_2(24353i, global1.d.b, ~global1.d.b.b.x, global1.d.d, _wgslsmith_mod_u32(4294967295u, var_1.d.e))).x || !any(vec3<bool>(true, arg_0.x, false)), var_1.d.e >= 0u);
    return true;
}

fn func_1() -> i32 {
    var var_0 = Struct_3(vec2<bool>(global1.d.b.e.x, func_2(vec3<bool>(all(global1.d.b.e.zx), any(global1.d.b.e.xz), !global1.d.b.e.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.b.c.x, -54466i), vec2<i32>(-1i) * -global1.d.b.c.yw), global1.b.x, -1i), 27464i, Struct_2(countOneBits(_wgslsmith_mod_i32(1i, 55325i)) << (u_input.a % 32u), Struct_1(_wgslsmith_f_op_f32(-global1.d.d.x), vec4<i32>(-23816i, abs(2147483647i), global1.c, ~0i), vec4<i32>(~1i, global1.c, 44823i, global1.b.x), ~global1.b.x, global1.d.b.e), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1654i, -1i, global1.d.b.b.x), max(-2147483647i, 0i))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(364f, global1.d.d.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -349f), global0.xw)))), u_input.a));
    let var_1 = var_0.d.b.e.x;
    let var_2 = Struct_2(0i, var_0.d.b, _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(firstTrailingBit(global1.b), vec3<i32>(2147483647i, -2147483647i, 3645i)), reverseBits(global1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.d.b.a), _wgslsmith_div_f32(-1200f, var_0.d.d.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2122f, 1336f)))), u_input.a == 56731u))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(22043u, u_input.a), vec2<u32>(var_0.d.e, global1.d.e), global1.d.b.e.xz), ~max(vec2<u32>(67419u, u_input.a), vec2<u32>(42242u, 67263u)), vec2<u32>(0u, var_0.d.e) & max(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 27733u)))));
    global1 = Struct_3(vec2<bool>(!all(select(vec4<bool>(false, true, true, global1.d.b.e.x), vec4<bool>(false, var_2.b.e.x, true, true), true)), global1.d.b.e.x && var_2.b.e.x), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-global1.d.b.c.wxw, var_0.b), ~_wgslsmith_dot_vec3_i32(global1.b, var_0.b), -2147483647i), max(_wgslsmith_div_vec3_i32(-var_2.b.c.wxw, ~var_2.b.b.xzx), var_2.b.c.xwx)), 20464i << (_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, ~49628u), _wgslsmith_mod_u32(19966u, reverseBits(global1.d.e))) % 32u), global1.d);
    var var_3 = true;
    return _wgslsmith_sub_i32(global1.d.b.d, -33642i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-988f + global1.d.d.x) * _wgslsmith_f_op_f32(max(681f, global0.x)))))), countOneBits(global1.d.b.c), vec4<i32>(global1.c << (4294967295u % 32u), func_1(), 1i, countOneBits(firstTrailingBit(-2147483647i))), -37604i, global1.d.b.e);
    let var_1 = Struct_3(select(global1.a, !select(vec2<bool>(var_0.e.x, true), vec2<bool>(global1.a.x, var_0.e.x), false | global1.d.b.e.x), all(!vec4<bool>(var_0.e.x, false, global1.a.x, global1.d.b.e.x))), var_0.b.xyw, var_0.c.x, Struct_2(-28754i, var_0, -countOneBits(-1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1034f, var_0.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -267f), global1.d.d)))), ~(~42409u & countOneBits(u_input.a))));
    let var_2 = i32(-1i) * -var_0.c.x;
    var var_3 = Struct_2(-1i, var_1.d.b, ~_wgslsmith_add_i32(reverseBits(var_1.c << (0u % 32u)), -1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.d.d.x)))), 688f), var_1.d.e);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_1.d.b.a)))), _wgslsmith_f_op_f32(var_3.b.a + _wgslsmith_f_op_f32(-1416f - _wgslsmith_div_f32(-2262f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(825f)) - var_3.d.x), global1.d.b.a));
    var var_5 = _wgslsmith_f_op_vec3_f32(var_4.zzx + vec3<f32>(1442f, 1401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1677f - _wgslsmith_f_op_f32(f32(-1f) * -1088f)))));
    let var_6 = Struct_2(global1.c, var_0, func_1(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.d), var_4.ww)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_3.d)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, var_1.d.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zy) - _wgslsmith_f_op_vec2_f32(-global0.yw)))), any(vec2<bool>(global1.d.b.e.x, var_0.e.x | var_3.b.e.x)))), var_3.e);
    let var_7 = Struct_3(vec2<bool>(global1.a.x, var_1.a.x), -vec3<i32>(-var_1.d.b.c.x & (i32(-1i) * -1i), var_3.a, 1i), -29058i, Struct_2(var_0.b.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.x + var_4.x)), select(var_0.b, var_0.b, select(vec4<bool>(var_3.b.e.x, true, var_6.b.e.x, false), vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.e.x, var_6.b.e.x, var_0.e.x))), ~select(var_0.b, var_0.c, vec4<bool>(var_6.b.e.x, global1.a.x, false, false)), -5941i, var_3.b.e), _wgslsmith_mult_i32(~18743i & ~var_2, -var_0.c.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -806f) * 828f), _wgslsmith_f_op_f32(exp2(var_5.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 7335u, u_input.a), vec3<u32>(23432u, ~4294967295u, 7682u))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(firstTrailingBit(var_0.c.wz), max(~vec2<i32>(-13119i, 20463i), vec2<i32>(32322i, 0i)), var_3.b.e.x));
}

