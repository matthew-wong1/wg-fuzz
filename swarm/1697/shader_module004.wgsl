struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-496f, 1000f, 204f);

var<private> global1: f32;

var<private> global2: array<Struct_2, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = Struct_1(!(!vec4<bool>(true, any(vec4<bool>(false, false, false, false)), select(false, true, false), false)), arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(836f, -1106f, arg_2)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(779f, arg_2, 1822f) - vec3<f32>(-2373f, -122f, 168f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(394f, arg_2, global0.x), vec3<f32>(arg_2, global0.x, 748f)))))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), any(vec2<bool>(true, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), !(1000f == arg_2)), arg_0 ^ reverseBits(~(arg_0 & vec4<i32>(arg_1.a, -48560i, u_input.a, -2147483647i))));
    let var_1 = var_0.d.xy;
    let var_2 = _wgslsmith_f_op_f32(-var_0.c.x);
    global2 = array<Struct_2, 3>();
    return 1049f;
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    global1 = -378f;
    var var_0 = global2[_wgslsmith_index_u32(0u, 3u)];
    let var_1 = ~u_input.b.x;
    var var_2 = 72594u;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0, arg_0, 1547f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(377f, arg_0, arg_0, 182f) + vec4<f32>(global0.x, 1012f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 152f, -1317f, -1415f) - vec4<f32>(arg_0, global0.x, global0.x, arg_0)))), !vec4<bool>(true, true, arg_1, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-730f * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * global0.x), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.c, global2[_wgslsmith_index_u32(1u, 3u)], -707f))))), vec4<bool>(true, false, true, !(!arg_1))));
    return select(~min(u_input.b.x, countOneBits(~var_0.d)), ~_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.d, var_0.d, u_input.b.x), vec4<u32>(var_0.d, 42149u, 4294967295u, 0u))), _wgslsmith_add_vec4_u32(min(vec4<u32>(25273u, var_0.d, u_input.b.x, 0u), vec4<u32>(0u, u_input.b.x, 36880u, u_input.b.x)), firstLeadingBit(vec4<u32>(42474u, var_0.d, var_0.d, 42998u)))), !(all(vec3<bool>(arg_1, false, true)) && true));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(true, true, true, false);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~(~4294967295u), min(~u_input.b.x, func_2(-1058f, true))), _wgslsmith_add_u32(4294967295u, u_input.b.x) << (4294967295u % 32u))), 3u)];
    var var_2 = !(!var_0.x);
    var var_3 = 116483u;
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1158f, global0.x, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(703f, -224f, 1547f), vec3<f32>(1000f, global0.x, -239f), true)), vec3<f32>(global0.x, global0.x, global0.x)))))));
    return Struct_1(vec4<bool>(var_0.x, true, true, var_0.x), firstLeadingBit(var_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x))))), vec3<f32>(1261f, _wgslsmith_f_op_f32(global0.x - global0.x), global0.x))), var_0.ywz, min(_wgslsmith_sub_vec4_i32(~var_1.c, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1576i, 37526i), vec4<i32>(-25709i, -18496i, 0i, var_1.a), var_1.c)), countOneBits(var_1.c & var_1.c)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_3 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(458f + _wgslsmith_f_op_f32(-global0.x)), -712f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x)))), 951f, global0.x);
    global2 = array<Struct_2, 3>();
    let var_0 = Struct_2(1i, firstTrailingBit(~arg_0.e.zx >> (max(u_input.b.yz & u_input.b.zx, countOneBits(u_input.b.xx)) % vec2<u32>(32u))), ~abs(~vec4<i32>(u_input.a, 2147483647i, u_input.a, 26245i) << (firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, arg_1)) % vec4<u32>(32u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(arg_1), arg_1, _wgslsmith_mod_u32(9589u, u_input.b.x), ~arg_1), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_1, 0u, u_input.b.x, arg_1), vec4<u32>(125622u, 96262u, u_input.b.x, u_input.b.x), vec4<bool>(arg_0.d.x, arg_0.a.x, false, arg_0.a.x)), ~vec4<u32>(32137u, 50793u, 4294967295u, arg_2), ~vec4<u32>(arg_2, arg_2, 8980u, 21839u))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -495f);
    global1 = -1284f;
    return Struct_3(~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 58458u, 21881u, 17156u), vec4<u32>(4294967295u, arg_1, 75066u, 8821u))) >> (~_wgslsmith_sub_vec4_u32(~vec4<u32>(90049u, arg_2, arg_2, 0u), vec4<u32>(u_input.b.x, 0u, arg_2, u_input.b.x) | vec4<u32>(arg_1, arg_1, 0u, 0u)) % vec4<u32>(32u)), u_input.a | _wgslsmith_div_i32(-1i, 13359i), -1932f);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(select(!vec4<bool>(true, arg_2, true, arg_2), !func_1().a, select(vec4<bool>(all(vec2<bool>(arg_2, arg_2)), arg_2, true, !arg_2), !func_1().a, any(vec3<bool>(arg_2, arg_2, false)))), firstLeadingBit(2147483647i), vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(723f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -782f) * arg_1.c)), func_1().d, ~firstTrailingBit(var_0.c));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(var_1.c.x + 1057f), false)), arg_1.c), var_1.c.x));
    var var_2 = func_4(func_1(), ~(~max(_wgslsmith_mod_u32(arg_1.a.x, 12519u), var_0.d)), arg_1.a.x);
    global1 = _wgslsmith_f_op_f32(arg_1.c - func_4(func_1(), firstLeadingBit(var_0.d), select(_wgslsmith_dot_vec4_u32(arg_1.a, arg_1.a) | (var_2.a.x >> (1u % 32u)), 52450u, (arg_0.d > var_2.a.x) || true)).c);
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_5(global2[_wgslsmith_index_u32(u_input.b.x << (_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, u_input.b.x), 41915u) % 32u), 3u)], func_4(func_1(), func_2(global0.x, true), u_input.b.x), true)), global0.x, -1034f, 941f);
    global1 = _wgslsmith_f_op_f32(-644f + var_0.x);
    var var_1 = reverseBits(vec4<u32>(~abs(~u_input.b.x), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)), 4294967295u), reverseBits(~u_input.b.x), max(firstLeadingBit(u_input.b.x), countOneBits(u_input.b.x))));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(u_input.a), firstLeadingBit(u_input.a), func_1().e.x), vec3<i32>(-1i) * -countOneBits(-vec3<i32>(u_input.a, u_input.a, -5444i)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(global2[_wgslsmith_index_u32(var_1.x, 3u)], Struct_3(max(vec4<u32>(var_1.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(var_1.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.a, var_0.x), select(false, select(true, false, true), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.xy, _wgslsmith_mult_vec2_u32(u_input.b.zx, vec2<u32>(68828u, 0u))), ~(~u_input.b.x), _wgslsmith_mod_u32(var_1.x, min(0u, var_1.x))), func_4(Struct_1(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), -_wgslsmith_mod_i32(-1i, 1i), _wgslsmith_f_op_vec3_f32(-var_0.yyy), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), -abs(vec4<i32>(-2147483647i, var_2.x, 1i, -17282i))), func_2(global0.x, !all(vec2<bool>(false, true))), _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_add_u32(var_1.x, u_input.b.x))).c, vec3<i32>(u_input.a, -1i, _wgslsmith_mult_i32(-28227i, i32(-1i) * -u_input.a)), var_1.x);
}

