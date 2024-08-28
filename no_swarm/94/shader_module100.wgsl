struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-546f, vec4<u32>(8527u, 0u, 34632u, 0u), vec3<u32>(51549u, 1u, 7816u));

var<private> global1: vec4<i32>;

var<private> global2: vec2<i32>;

var<private> global3: vec4<u32> = vec4<u32>(86255u, 16222u, 1u, 588u);

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> bool {
    global4 = arg_0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(441f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-global0.a)))));
    global3 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, max(arg_1.e.c.x, 0u), select(31047u >> (1u % 32u), 0u, any(vec2<bool>(arg_1.d, arg_1.d))) & ~firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.a, _wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, 1u, global3.x, 28429u), vec4<u32>(global3.x, global3.x, global3.x, 4294967295u))), ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(95151u, arg_1.e.b.x, global3.x, global3.x)))), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.a.x, 0u), 4294967295u << (global0.b.x % 32u), ~arg_1.b), u_input.a)));
    let var_0 = -_wgslsmith_sub_vec4_i32(vec4<i32>(abs(global1.x ^ -33934i), -16065i, i32(-1i) * -1i, 65618i), -(vec4<i32>(2147483647i, -38395i, global1.x, -28838i) >> (vec4<u32>(106763u, u_input.a.x, global0.b.x, global0.b.x) % vec4<u32>(32u))));
    global1 = -vec4<i32>(var_0.x | global1.x, ~global1.x, 28196i, 1i);
    var var_1 = Struct_1(488f, vec4<u32>(min(global0.c.x, _wgslsmith_div_u32(31822u, 33660u)) ^ u_input.a.x, min(max(abs(8318u), _wgslsmith_clamp_u32(22582u, 9637u, global3.x)), 1u), arg_1.b, u_input.a.x & _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3.x, 72224u, global3.x, global0.c.x)), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 47131u, 57807u, global0.b.x), vec4<u32>(1u, 4294967295u, global3.x, 0u)))), u_input.a.xwz);
    return arg_1.d;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    global2 = vec2<i32>(~global2.x, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(0i, global2.x)) << ((global0.c.x & 94601u) % 32u), 9815i));
    global3 = select(global0.b, u_input.a, vec4<bool>(all(!(!vec4<bool>(arg_0, false, arg_0, true))), _wgslsmith_f_op_f32(f32(-1f) * -1300f) < arg_1, !arg_0, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f + 1579f)), Struct_3(vec4<u32>(33913u, global0.c.x, 1u, global0.c.x), 0u, 4294967295u, all(vec2<bool>(arg_0, false)), Struct_1(-505f, vec4<u32>(global3.x, 0u, global3.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, global0.c.x))))));
    let var_0 = vec4<bool>(arg_0, select(29081u >= (u_input.a.x ^ ~u_input.a.x), !(_wgslsmith_f_op_f32(trunc(arg_1)) >= _wgslsmith_f_op_f32(min(arg_1, 1515f))), arg_0), ~global1.x <= global2.x, !all(!(!vec3<bool>(arg_0, true, false))));
    global4 = !(!arg_0);
    global3 = (vec4<u32>(_wgslsmith_sub_u32(abs(4294967295u), global3.x), _wgslsmith_div_u32(25891u, u_input.a.x) ^ _wgslsmith_add_u32(1u, u_input.a.x), global0.b.x, ~24855u) ^ _wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(u_input.a, u_input.a)), global0.b, ~vec4<u32>(47082u, u_input.a.x, 51867u, 4294967295u))) | global0.b;
    return Struct_2(Struct_1(arg_1, max(min(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(18766u, 54657u, 4294967295u, global3.x)), u_input.a), ~firstLeadingBit(u_input.a)), select(vec3<u32>(u_input.a.x, global0.c.x, global0.b.x), firstTrailingBit(global3.xzx), var_0.wyx) >> (global0.b.xzx % vec3<u32>(32u))));
}

fn func_1(arg_0: bool) -> u32 {
    global1 = u_input.c;
    var var_0 = min(u_input.a, abs(global0.b));
    let var_1 = func_2(arg_0, global0.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -680f)) + global0.a) * global0.a);
    var var_3 = Struct_3(firstLeadingBit(u_input.a), global0.b.x, global3.x, false, Struct_1(func_2(arg_0, 1690f).a.a, vec4<u32>(~min(0u, 10897u), var_0.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 10472u), var_1.a.b.wzz), 466u, u_input.a.x ^ var_1.a.b.x), ~(~vec3<u32>(331u, var_1.a.b.x, u_input.a.x))));
    return 1u;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~(-global1.zz);
    global3 = vec4<u32>(~0u, ~countOneBits(countOneBits(55761u)), _wgslsmith_add_u32(max(~arg_1.x & global3.x, func_1(true)), _wgslsmith_dot_vec3_u32(min(u_input.a.zzz, vec3<u32>(u_input.a.x, global0.c.x, u_input.a.x)), ~global0.c) << (arg_1.x % 32u)), global3.x);
    global0 = func_2(true != (-726f != arg_0), arg_0).a;
    var var_1 = global0.b;
    var_1 = ~vec4<u32>(4294967295u | func_2(true, 2187f).a.c.x, 4294967295u, countOneBits(global0.b.x), 31777u) | (vec4<u32>(arg_2.c.x, ~_wgslsmith_add_u32(4294967295u, arg_2.c.x), abs(_wgslsmith_mod_u32(global0.b.x, 1u)), countOneBits(21324u)) >> (arg_2.b % vec4<u32>(32u)));
    return _wgslsmith_dot_vec2_u32(arg_1.xx, vec2<u32>(arg_2.c.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), select(countOneBits(vec3<u32>(global3.x, 1u, global0.c.x)) << (vec3<u32>(u_input.a.x, 5931u, func_1(true)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(43980u), _wgslsmith_div_u32(4294967295u, u_input.a.x), 39925u), select(func_2(false, -848f).a.c, vec3<u32>(u_input.a.x, 0u, global3.x), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), func_3(global0.a, Struct_3(vec4<u32>(1u, global0.c.x, 12754u, 1u), 1u, 4431u, true, Struct_1(1276f, vec4<u32>(u_input.a.x, global3.x, u_input.a.x, global3.x), u_input.a.xyw))))), Struct_1(global0.a, firstLeadingBit(vec4<u32>(global0.c.x, _wgslsmith_div_u32(15051u, 13563u), ~u_input.a.x, ~global3.x)), select(~_wgslsmith_mod_vec3_u32(global0.c, vec3<u32>(u_input.a.x, global3.x, global0.c.x)), global0.c, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)))));
    let var_1 = func_2(false, _wgslsmith_f_op_f32(trunc(908f))).a;
    let var_2 = true;
    global1 = vec4<i32>(max(-(i32(-1i) * -2147483647i), _wgslsmith_add_i32(2147483647i, u_input.c.x)) | -14846i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, 2147483647i, 1i, global2.x)), ~global1.x, firstLeadingBit(global1.x)), u_input.b.x), u_input.c.xz), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, global2.x), vec3<i32>(global1.x, -1i, 1i))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, -13257i, u_input.c.x, 0i), vec4<i32>(u_input.d.x, 13334i, global1.x, 16656i)), vec4<i32>(global1.x, global2.x, u_input.c.x, u_input.d.x)), -_wgslsmith_mod_i32(global2.x, -2147483647i)), vec4<i32>(1i, global1.x, _wgslsmith_dot_vec4_i32(~u_input.c, u_input.c), global2.x)), -6602i);
    let var_3 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(2447u, func_4(var_1.a, u_input.a.xwx, var_1), 20602u, 0u), ~u_input.a) & ~reverseBits(var_1.b), ~_wgslsmith_sub_u32(~0u & _wgslsmith_div_u32(var_1.c.x, global3.x), global3.x), ~(~1u), false, Struct_1(_wgslsmith_f_op_f32(floor(751f)), vec4<u32>(0u, 1u, ~abs(4294967295u), _wgslsmith_add_u32(~global0.c.x, ~44936u)), global3.xwz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(447f, 1000f, 356f, var_3.e.a) * vec4<f32>(global0.a, 661f, var_1.a, var_3.e.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_3.e.a, -1820f, 122f), vec4<f32>(global0.a, global0.a, -932f, var_3.e.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_3.e.a, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, global0.a)))))), ~0u);
}

