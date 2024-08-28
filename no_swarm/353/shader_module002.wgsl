struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(-51073i);

var<private> global2: f32 = 317f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_4) -> u32 {
    let var_0 = arg_3.b.b.x;
    let var_1 = ~reverseBits(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(799i, u_input.a.x, 21984i, global1.a)), ~vec4<i32>(u_input.a.x, 0i, 16179i, u_input.a.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.c.a, -1i, arg_3.c.a, 14388i), u_input.a, vec4<i32>(-1i, 1i, 49541i, 55326i))));
    let var_2 = arg_3.e.x;
    let var_3 = select(arg_3.d.b.wzx, select(arg_3.d.b.zzy, (arg_3.d.c >> ((vec3<u32>(4294967295u, 0u, 47974u) & arg_3.d.c) % vec3<u32>(32u))) << (arg_3.d.b.yxw % vec3<u32>(32u)), vec3<bool>(false, (15017i | var_1.x) > arg_3.e.x, any(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, arg_0, arg_1.x), arg_1)))), !(!(!select(vec3<bool>(arg_1.x, true, arg_0), arg_1, arg_1))));
    var var_4 = arg_3;
    return ~1u;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec4<f32> {
    global1 = Struct_1(abs(arg_0));
    var var_0 = firstLeadingBit(14330u);
    var_0 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(9951u, 21175u, 1u, 4294967295u) ^ vec4<u32>(arg_1.x, 65883u, 53934u, _wgslsmith_mod_u32(arg_1.x, 0u))), select(countOneBits(countOneBits(vec4<u32>(arg_1.x, arg_1.x, 80262u, arg_1.x)) ^ countOneBits(vec4<u32>(0u, arg_1.x, arg_1.x, 49014u))), ~(~select(vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(4294967295u, 1u, arg_1.x, arg_1.x), vec4<bool>(true, true, false, false))), true));
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(358i, 1i), ~arg_0, countOneBits(u_input.a.x), _wgslsmith_clamp_i32(global1.a, u_input.a.x, 57013i)) | max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x ^ global1.a, arg_0, 77659i, 1i), vec4<i32>(1i, 2147483647i, arg_0, global1.a) >> (~vec4<u32>(arg_1.x, 81386u, arg_1.x, arg_1.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(max(2147483647i, 0i), 0i, -25095i, _wgslsmith_mult_i32(-2147483647i, 1i)), ~vec4<i32>(-2147483647i, 7217i, global1.a, global1.a), u_input.a));
    global0 = true;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-253f + 500f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(110f + -1000f), 985f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, -325f, -460f, -383f))))))));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec2<u32> {
    global2 = -1305f;
    var var_0 = vec4<i32>(-16562i, arg_1, ~(-_wgslsmith_div_i32(_wgslsmith_add_i32(global1.a, 2147483647i), -2147483647i)), -1i);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 364f, -328f, -2004f) * vec4<f32>(-353f, -1617f, 1478f, 170f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(var_0.x, ~vec2<u32>(4294967295u, 73998u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(361f, 1922f, -215f, -764f) - vec4<f32>(-1075f, 918f, 409f, -994f)))))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 1000f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1497f, -356f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, -1000f) * vec2<f32>(338f, 120f)))), vec2<u32>(25536u, min(_wgslsmith_sub_u32(88381u, 18003u), max(46390u, 0u)))), Struct_1(_wgslsmith_add_i32(var_0.x, _wgslsmith_sub_i32(~arg_1, ~(-23305i)))), Struct_2(reverseBits(~(~vec2<u32>(47781u, 4294967295u))), vec4<u32>(1u, 1u, 1u, 1u), countOneBits(_wgslsmith_div_vec3_u32(abs(vec3<u32>(124408u, 21942u, 1u)), vec3<u32>(4294967295u, 5052u, 10033u))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, 46839i), i32(-1i) * -1i), -11170i, abs(-6602i))), vec3<i32>(min(-_wgslsmith_dot_vec3_i32(u_input.a.wyz, vec3<i32>(1i, var_0.x, u_input.a.x)), ~_wgslsmith_clamp_i32(arg_1, var_0.x, global1.a)), _wgslsmith_add_i32(arg_1, max(~(-7220i), arg_1 >> (3346u % 32u))), 14765i));
    var var_2 = 22441u;
    var var_3 = var_1;
    return vec2<u32>(var_1.d.b.x, ~(~66125u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1.a, vec2<u32>(arg_0.b.x, arg_0.a.x))))))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-476f + _wgslsmith_f_op_f32(f32(-1f) * -1364f)), -1459f), vec2<u32>(~1u, 0u)), Struct_1(1i), arg_0, u_input.a.ywy);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), var_0.b, Struct_1(~global1.a), Struct_2(abs(var_0.d.b.zz), vec4<u32>(~var_0.d.c.x, ~_wgslsmith_add_u32(arg_0.b.x, 130747u), 78817u, abs(4294967295u)), arg_0.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a.x, 2147483647i) ^ u_input.a.ywx, vec3<i32>(global1.a, 2147483647i, var_0.c.a)), ~abs(var_0.d.d), vec3<i32>(~(-2147483647i), -var_0.c.a, arg_1.a))), ~arg_0.d);
    let var_2 = vec4<u32>(~func_1(false, select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true), !any(vec4<bool>(false, true, true, false)), Struct_4(var_0.a, Struct_3(var_0.b.a, arg_0.a), Struct_1(3232i), var_0.d, var_1.e)), 1u << (var_0.b.b.x % 32u), 1u, arg_0.b.x ^ arg_0.a.x);
    let var_3 = var_0.b.a.x;
    let var_4 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !(any(vec3<bool>(true, true, false)) | (var_0.b.a.x != var_0.b.a.x))), !select(any(vec2<bool>(true, true)), true, true || (var_0.b.b.x != arg_0.c.x)));
    return !(!vec3<bool>(true, var_4.x, var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~firstLeadingBit(~4294967295u), ~_wgslsmith_div_u32(1u, 1u), _wgslsmith_mult_u32(~0u, _wgslsmith_add_u32(func_1(true, vec3<bool>(true, false, true), true, Struct_4(vec4<f32>(-722f, -1847f, -558f, -193f), Struct_3(vec2<f32>(-261f, 728f), vec2<u32>(4294967295u, 12367u)), Struct_1(u_input.a.x), Struct_2(vec2<u32>(4294967295u, 0u), vec4<u32>(4294967295u, 1u, 32573u, 0u), vec3<u32>(53074u, 7091u, 24146u), vec3<i32>(global1.a, -35158i, -2147483647i)), u_input.a.ywy)) >> (1u % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5863u), vec2<u32>(8870u, 49957u)))));
    let var_1 = func_4(Struct_2(var_0.yy << (func_2(true, 1i) % vec2<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(7496u, _wgslsmith_clamp_u32(var_0.x, 4294967295u, var_0.x), abs(1915u), func_2(false, u_input.a.x).x), vec4<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), ~8567u, var_0.x, select(8921u, 8283u, true))), var_0, select(u_input.a.yww, u_input.a.zxx << (~vec3<u32>(var_0.x, 33465u, var_0.x) % vec3<u32>(32u)), vec3<bool>(false, select(true, true, false), var_0.x == 4294967295u))), Struct_1(global1.a));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1332f + -1000f), -326f) - -1099f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -299f));
    let var_3 = _wgslsmith_f_op_f32(abs(422f));
    let var_4 = Struct_4(vec4<f32>(142f, var_2.x, var_2.x, 1178f), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.yz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx + vec2<f32>(-146f, 328f)))), abs(~var_0.zz)), Struct_1(global1.a), Struct_2(min(vec2<u32>(var_0.x, min(1u, 4193u)), var_0.yx), _wgslsmith_add_vec4_u32(max(select(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, 1u, 1u), var_1.x), vec4<u32>(12732u, 27595u, var_0.x, var_0.x) ^ vec4<u32>(5308u, 99430u, var_0.x, var_0.x)), ~(vec4<u32>(var_0.x, 4294967295u, 38668u, 106567u) | vec4<u32>(9746u, var_0.x, var_0.x, var_0.x))), vec3<u32>(var_0.x | 22950u, _wgslsmith_add_u32(var_0.x, var_0.x), abs(4294967295u)) | ~_wgslsmith_mult_vec3_u32(var_0, vec3<u32>(0u, 4294967295u, var_0.x)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.wwx >> (var_0 % vec3<u32>(32u)), vec3<i32>(global1.a, 1i, 0i)), vec3<i32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -7655i), u_input.a.zw), -23983i & u_input.a.x))), min(vec3<i32>(1i << (var_0.x % 32u), _wgslsmith_sub_i32(-2147483647i, u_input.a.x), -1i) >> (var_0 % vec3<u32>(32u)), vec3<i32>(global1.a, global1.a >> (var_0.x % 32u), ~u_input.a.x) ^ ~(~u_input.a.yzx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.a.yxz) - var_4.a.ywz))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_4.a.wxx, vec3<f32>(-939f, var_3, var_4.a.x), 830f > var_3)))), true)));
}

