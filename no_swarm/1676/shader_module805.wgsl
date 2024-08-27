struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: u32 = 72232u;

var<private> global4: array<f32, 5> = array<f32, 5>(-747f, 2788f, 521f, 220f, -1000f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, ~1u, 62086u, u_input.b.x), vec4<u32>(0u, 1u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 117757u, 36496u), vec3<u32>(46167u, 52381u, u_input.b.x)) >> (79197u % 32u)), vec4<u32>(reverseBits(4294967295u), 5376u, ~(~1u), _wgslsmith_mult_u32(reverseBits(832u), ~u_input.a))) | ~max(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 75605u, 1u), vec4<u32>(1u, 4294967295u, 0u, 32579u) << (vec4<u32>(27046u, u_input.b.x, 2210u, 1u) % vec4<u32>(32u))), vec4<u32>(~15622u, ~u_input.b.x, ~u_input.a, ~u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b.e.yzx - _wgslsmith_f_op_vec3_f32(-global2.b.e.wyz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2334f, 280f, global2.b.e.x), vec3<f32>(-1220f, global2.b.e.x, 1735f))) * _wgslsmith_f_op_vec3_f32(max(global2.b.e.wzx, global2.b.e.zxx)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-919f, 1428f, 1658f), _wgslsmith_f_op_vec3_f32(round(global2.b.e.yzx)), select(vec3<bool>(global2.b.a, false, global2.b.a), vec3<bool>(false, global1.x, true), vec3<bool>(global2.b.a, true, global1.x))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2233f, 1206f, global4[_wgslsmith_index_u32(u_input.a, 5u)]), _wgslsmith_f_op_vec3_f32(global2.b.e.wyy * global2.b.e.yzx), u_input.c <= global2.b.d.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(var_0.x, 5u)], 2203f, -1204f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.b.x, 1348f, global2.c))))))), false));
    global2 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c >> (33629u % 32u), -54043i), global2.a.x), 0i, _wgslsmith_dot_vec3_i32(global2.b.d, reverseBits(global2.b.d))), Struct_1(any(vec3<bool>(select(global2.b.a, true, global2.b.a), true, false)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c), 699f), -1751f), max(1i, max(53782i, global2.a.x) & _wgslsmith_clamp_i32(global2.b.d.x, u_input.c, -1i)), vec3<i32>(_wgslsmith_mod_i32(abs(-83490i), global2.a.x), u_input.c, global2.a.x), global2.b.e), _wgslsmith_f_op_f32(796f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(46714u, 5u)])))), ~global2.a.xz);
    global2 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.c), u_input.c, 1i), countOneBits(~global2.a)) | select(global2.a, select(global2.a, vec3<i32>(-4304i, 28277i, u_input.c), vec3<bool>(true, true, global1.x)), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, false, false))), Struct_1(false, var_1.xz, global2.a.x, select(max(countOneBits(vec3<i32>(global2.a.x, -75699i, 2147483647i)), vec3<i32>(22559i, -57840i, -35216i) ^ global2.a), vec3<i32>(1i, -1i, min(u_input.c, u_input.c)), select(!global1.x, select(global2.b.a, global2.b.a, true), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(6977u, 5u)], _wgslsmith_div_f32(-1564f, -260f), 2091f, _wgslsmith_f_op_f32(global2.b.b.x + -1000f)) + _wgslsmith_f_op_vec4_f32(global2.b.e * global2.b.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.c))), min(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(16019i, global2.d.x))), ~abs(vec2<i32>(global2.d.x, u_input.c))) << ((var_0.wz ^ vec2<u32>(min(1u, u_input.b.x), 21525u)) % vec2<u32>(32u)));
    let var_2 = 2147483647i;
    return reverseBits(~_wgslsmith_mod_u32(~22055u, 1u) & ~u_input.b.x);
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = vec2<u32>(u_input.b.x, ~u_input.b.x & 4294967295u);
    var var_1 = vec2<u32>(firstTrailingBit(var_0.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(func_3(), ~var_0.x), countOneBits(var_0.x & 0u)));
    var var_2 = abs(_wgslsmith_clamp_u32(1u, 0u, 4294967295u));
    var var_3 = select(select(select(select(select(vec3<bool>(false, global2.b.a, false), vec3<bool>(true, global2.b.a, arg_0), vec3<bool>(false, true, true)), select(vec3<bool>(global2.b.a, true, true), vec3<bool>(true, false, global2.b.a), global1.x), true), select(vec3<bool>(arg_0, global2.b.a, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(global1.x, arg_0, true), vec3<bool>(true, true, global2.b.a), true)), select(select(vec3<bool>(global2.b.a, global1.x, false), vec3<bool>(global1.x, true, global2.b.a), true), !select(vec3<bool>(arg_0, global1.x, true), vec3<bool>(global1.x, global2.b.a, arg_0), false), vec3<bool>(true, arg_0, u_input.c == -3349i)), vec3<bool>(select(true, global2.b.a, global2.b.e.x <= 774f), true, false)), vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1522f - global2.c), -921f)) < global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.c, 114f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.x, 5u)]) + global4[_wgslsmith_index_u32(0u, 5u)]), !(!(false & global1.x))), !select(select(vec3<bool>(false, global1.x, true), select(vec3<bool>(false, global2.b.a, false), vec3<bool>(true, true, global2.b.a), vec3<bool>(global1.x, true, false)), !vec3<bool>(false, global1.x, true)), vec3<bool>(0i > global2.a.x, u_input.c >= u_input.c, true), arg_0));
    let var_4 = Struct_2(~global2.b.d, Struct_1(any(vec4<bool>(false, true && arg_0, true, all(global1.xy))), _wgslsmith_f_op_vec2_f32(abs(global2.b.b)), ~(u_input.c >> (55215u % 32u)), global2.b.d, global2.b.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(793f * _wgslsmith_f_op_f32(select(-307f, _wgslsmith_f_op_f32(-615f - 507f), select(true, false, var_3.x)))), 168f), _wgslsmith_div_vec2_i32(max(vec2<i32>(0i, u_input.c) << (_wgslsmith_div_vec2_u32(u_input.b.zx, vec2<u32>(var_1.x, 1u)) % vec2<u32>(32u)), abs(_wgslsmith_add_vec2_i32(global2.d, vec2<i32>(global2.d.x, 2147483647i)))), _wgslsmith_add_vec2_i32(vec2<i32>(global2.d.x, _wgslsmith_mult_i32(global2.a.x, 0i)), vec2<i32>(-2147483647i, u_input.c))));
    return Struct_4(global0[_wgslsmith_index_u32(~u_input.b.x, 12u)], global2.d.x, global0[_wgslsmith_index_u32(var_0.x, 12u)], var_4);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global3 = _wgslsmith_dot_vec3_u32(u_input.b, u_input.b);
    var var_0 = arg_0;
    var var_1 = Struct_3(global1.x, u_input.b.x, true, func_2(global1.x).c);
    let var_2 = -(i32(-1i) * -_wgslsmith_dot_vec4_i32(-vec4<i32>(1134i, -2147483647i, -6721i, var_0.b), -vec4<i32>(u_input.c, -1978i, 30268i, 18598i)));
    var var_3 = !any(vec3<bool>(global1.x, global4[_wgslsmith_index_u32(u_input.a ^ var_1.b, 5u)] > func_2(false).a.e.x, any(vec2<bool>(var_0.c.a, var_1.a))));
    return func_2(((func_2(true).c.c & 1i) ^ (var_1.d.d.x << (1u % 32u))) >= countOneBits(_wgslsmith_add_i32(arg_0.a.d.x, 0i) & _wgslsmith_clamp_i32(arg_0.c.c, arg_0.a.d.x, global2.b.c))).d;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(func_2(all(global1.zz)));
    let var_1 = global2.b.c;
    let var_2 = Struct_3(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(53631u, u_input.a), ~u_input.b.yx)) >= (0u | abs(u_input.a)), u_input.b.x << ((u_input.b.x ^ _wgslsmith_div_u32(u_input.b.x, u_input.a)) % 32u), all(vec4<bool>(!(!global1.x), false, all(global1.yy), select(var_0.b.a, var_0.b.b.x < var_0.b.e.x, true))), func_4(func_2(true)).b);
    var var_3 = var_2.b << (1u % 32u);
    return Struct_2(max(vec3<i32>(firstTrailingBit(26920i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, u_input.c, -1i), var_0.a.x), var_2.d.c), -var_2.d.d), global2.b, 1311f, ~(~vec2<i32>(-8413i, 2147483647i)) ^ max(max(vec2<i32>(u_input.c, -1i), -var_0.b.d.zy), (global2.b.d.zy | var_2.d.d.xx) >> (firstLeadingBit(vec2<u32>(var_2.b, 4294967295u)) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_2) -> f32 {
    var var_0 = func_4(Struct_4(func_2(func_4(Struct_4(global0[_wgslsmith_index_u32(0u, 12u)], u_input.c, global0[_wgslsmith_index_u32(u_input.a, 12u)], Struct_2(global2.b.d, Struct_1(arg_0.b.a, vec2<f32>(725f, global4[_wgslsmith_index_u32(10757u, 5u)]), 1i, arg_0.b.d, global2.b.e), global2.b.b.x, vec2<i32>(14335i, 0i)))).b.a).d.b, -796i, arg_0.b, Struct_2(_wgslsmith_sub_vec3_i32(-vec3<i32>(global2.b.d.x, arg_0.d.x, u_input.c), ~global2.a), Struct_1(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.b.x, global2.b.e.x) + vec2<f32>(1000f, -1256f)), func_1().d.x, vec3<i32>(u_input.c, global2.a.x, -51484i), _wgslsmith_f_op_vec4_f32(round(global2.b.e))), -1239f, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -36988i), abs(global2.d))))).b.b;
    let var_1 = arg_0.b;
    let var_2 = _wgslsmith_clamp_u32(~(~(~(~u_input.b.x))), select(4294967295u, ~min(~u_input.b.x, 49249u), global2.b.a), ~1u);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, 1030f)) + vec2<f32>(var_1.e.x, -211f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(arg_0.b.e.zy, arg_0.b.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.c, var_0.x)))), _wgslsmith_div_vec2_f32(global2.b.e.xw, _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 5u)], 316f), vec2<f32>(-346f, global4[_wgslsmith_index_u32(75912u, 5u)])))))));
    global4 = array<f32, 5>();
    return _wgslsmith_f_op_f32(1353f * var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(min(-1i, -2147483647i), 1i, 0i), global2.a), Struct_1(!global1.x, global2.b.e.xy, ~(-64543i), vec3<i32>(0i, select(-2147483647i, global2.a.x, global1.x), -6081i) ^ -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, global2.a.x, 0i), global2.a), vec4<f32>(global2.b.e.x, 1421f, global2.b.b.x, global2.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1())) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(func_5(Struct_2(global2.b.d, Struct_1(global2.b.a, global2.b.b, global2.d.x, vec3<i32>(u_input.c, global2.a.x, 2147483647i), global2.b.e), -912f, vec2<i32>(-4967i, global2.a.x)))))))), global2.b.d.xz);
    global4 = array<f32, 5>();
    let var_1 = func_2(func_1().b.a);
    global0 = array<Struct_1, 12>();
    var var_2 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(var_1.c.b.x - -349f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.b.x))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2.b.e.x)))))), var_0.d.x, ~(firstLeadingBit(~var_0.b.d) ^ (vec3<i32>(var_0.b.c, global2.b.d.x, var_0.d.x) | -var_1.d.a)), _wgslsmith_f_op_vec4_f32(-global2.b.e));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.x, -499f, -850f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(887f, -651f, 1500f), vec3<f32>(766f, 1384f, -2468f))))) + var_0.b.e.wyx));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec3<f32>(global2.b.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.b.b.x + 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.x) - _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.a & 6627u, 5u)])))));
}

