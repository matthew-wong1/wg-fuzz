struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 0u);

var<private> global1: Struct_5 = Struct_5(vec2<bool>(false, false), vec3<bool>(false, false, true));

var<private> global2: Struct_3;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = 61758u;
    let var_1 = -_wgslsmith_dot_vec2_i32(abs(-(~vec2<i32>(global3.a.x, 0i))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.b), global3.a.xy));
    let var_2 = global1.b.x;
    let var_3 = Struct_4(Struct_3(countOneBits(global2.a)), !global1.b.x, Struct_1(_wgslsmith_add_vec4_i32(-global3.a ^ -vec4<i32>(u_input.a, 2147483647i, -2147483647i, -32412i), (global3.a ^ vec4<i32>(u_input.a, -2147483647i, u_input.b, -13782i)) & vec4<i32>(global3.a.x, global3.a.x, global3.a.x, 1i)), 13909i, true, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, _wgslsmith_div_f32(-1008f, _wgslsmith_div_f32(281f, -1000f)))), Struct_2(global3.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1210f, 376f, -985f, -748f))))), ~vec2<u32>(global3.d, ~0u)));
    return ~_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(-66037i, _wgslsmith_div_i32(var_3.c.a.x, u_input.a))) | _wgslsmith_div_i32(reverseBits(u_input.b) & 1i, -5454i);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(global3.b, firstLeadingBit(global3.b)), global3.b);
    global3 = Struct_1(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, var_0.x, -1i), global3.a.ywx) << (global3.d % 32u), ~func_3(), -1i, _wgslsmith_clamp_i32(u_input.a, abs(global3.b), -2147483647i)), global3.a, !(!select(global1.a.x, false, global3.c))), 41582i, global1.b.x || false, global0.x);
    global3 = Struct_1(~_wgslsmith_div_vec4_i32(global3.a, global3.a), 29778i, all(!select(select(global1.a, vec2<bool>(global3.c, false), global3.c), !global1.a, select(global1.a, vec2<bool>(true, false), global3.c))), ~firstLeadingBit(global2.a.x));
    var var_1 = Struct_4(Struct_3(vec3<u32>(61385u, global2.a.x, arg_0.x)), any(select(vec2<bool>(false, all(vec2<bool>(false, global3.c))), select(!vec2<bool>(false, global3.c), global1.b.zx, global1.a), all(select(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(false, true, false, false), true)))), Struct_1((min(vec4<i32>(13141i, var_0.x, 55596i, global3.b), vec4<i32>(-13896i, 2147483647i, var_0.x, global3.b)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(16746u, 31100u, arg_0.x, 1u), arg_0) % vec4<u32>(32u))) & abs(vec4<i32>(-13298i, global3.b, global3.b, -52996i) << (arg_0 % vec4<u32>(32u))), ~(i32(-1i) * -2147483647i), global3.c, ~abs(~global3.d)), arg_1, Struct_2(false != global1.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1000f, arg_1, arg_1))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, -1107f, 393f, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, -1054f, arg_1, arg_1)))), global0.xy));
    var_1 = Struct_4(var_1.a, true, var_1.c, -596f, var_1.e);
    return ~45017u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_3 {
    return Struct_3(firstLeadingBit(~countOneBits(abs(vec3<u32>(global0.x, 106034u, global2.a.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    global1 = Struct_5(select(global1.a, vec2<bool>(global1.a.x, false), global1.a), global1.b);
    let var_0 = 0i;
    let var_1 = true;
    var var_2 = Struct_1(global3.a, global3.a.x, any(global1.b), global3.d);
    var var_3 = var_2.a.ywy;
    return arg_1;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = all(vec2<bool>(false, global3.c && all(global1.b))) || global1.a.x;
    global3 = Struct_1(vec4<i32>(-54226i, _wgslsmith_mod_i32(u_input.a, ~52879i), u_input.a, 2147483647i), 1i, false, ~(~_wgslsmith_sub_u32(4294967295u, arg_2.a.x)) & ~1u);
    global3 = Struct_1(-abs(vec4<i32>(-1i, global3.b, _wgslsmith_div_i32(32375i, u_input.a), _wgslsmith_mult_i32(28445i, u_input.b))), ~_wgslsmith_clamp_i32(global3.b, 0i, _wgslsmith_mod_i32(global3.a.x, global3.a.x)) & _wgslsmith_div_i32(-7219i, ~global3.a.x), any(!vec3<bool>(true, global1.b.x, false)), func_2(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, 86246u, 0u, 1u), vec4<u32>(67795u, 11953u, global0.x, global0.x)), firstLeadingBit(34294u << (arg_2.a.x % 32u)), ~countOneBits(global0.x), _wgslsmith_clamp_u32(func_4(vec4<u32>(0u, 0u, 72942u, global2.a.x), vec3<i32>(2147483647i, 2147483647i, 16713i), u_input.b).a.x, ~global2.a.x, global3.d)), arg_0.x));
    let var_1 = any(!(!vec3<bool>(var_0, global1.a.x, false)));
    var var_2 = all(!select(select(vec4<bool>(false, global3.c, var_0, arg_1.x), !vec4<bool>(global3.c, var_1, global3.c, false), arg_2.a.x == 0u), select(vec4<bool>(global3.c, global1.a.x, global3.c, true), !vec4<bool>(var_1, true, false, global3.c), true), vec4<bool>(true, true, any(global1.b), !var_0)));
    return arg_2;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    global2 = func_6(arg_0.b.yxx, !vec2<bool>(all(select(vec2<bool>(true, global3.c), vec2<bool>(false, global1.b.x), arg_0.a)), true), func_5(arg_0, func_4(vec4<u32>(_wgslsmith_mult_u32(51827u, global0.x), func_2(vec4<u32>(20826u, global3.d, 0u, arg_0.c.x), arg_0.b.x), 1u, 4294967295u), _wgslsmith_div_vec3_i32(vec3<i32>(10350i, u_input.a, 2147483647i) ^ global3.a.xzx, ~vec3<i32>(-33163i, u_input.a, 21786i)), ~6176i)));
    let var_0 = Struct_2(false, _wgslsmith_f_op_vec4_f32(-arg_0.b), func_5(arg_0, Struct_3(max(~vec3<u32>(0u, 36781u, global3.d), _wgslsmith_mod_vec3_u32(global2.a, global2.a)))).a.yz);
    let var_1 = Struct_3(global2.a);
    var var_2 = ~(~firstLeadingBit(u_input.a));
    var_2 = _wgslsmith_dot_vec2_i32(global3.a.zx >> (global0.xy % vec2<u32>(32u)), global3.a.xy);
    return Struct_4(func_4(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.x, 1u, 15276u, 4294967295u) << (vec4<u32>(global3.d, 0u, var_0.c.x, var_0.c.x) % vec4<u32>(32u)), select(vec4<u32>(var_1.a.x, 81658u, 0u, arg_0.c.x), vec4<u32>(var_1.a.x, global3.d, global2.a.x, 4294967295u), vec4<bool>(false, var_0.a, true, global1.b.x)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, 23029i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, global3.b, 1i), vec3<i32>(-1i, global3.a.x, 2147483647i), global3.a.xxz)) | global3.a.xwx, -16438i), any(vec4<bool>(any(vec4<bool>(false, global3.c, true, var_0.a)) || all(vec4<bool>(global3.c, false, var_0.a, var_0.a)), var_0.a, any(vec4<bool>(false, global1.b.x, arg_0.a, arg_0.a)), !(arg_0.a || true))), Struct_1(_wgslsmith_div_vec4_i32(select(min(vec4<i32>(15414i, -61124i, global3.a.x, -2147483647i), vec4<i32>(u_input.a, -57992i, u_input.b, 2147483647i)), global3.a, !vec4<bool>(arg_0.a, false, global1.b.x, false)), firstTrailingBit(firstLeadingBit(global3.a))), -u_input.b, global1.b.x, ~((global0.x & var_0.c.x) >> (0u % 32u))), _wgslsmith_f_op_f32(abs(289f)), var_0);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_add_i32(global3.b, -1i), _wgslsmith_div_i32(global3.a.x, arg_0.c.a.x), arg_0.c.a.x), ~vec4<i32>(-44627i, global3.a.x, u_input.a, 2147483647i)), global3.a);
    var var_1 = ~_wgslsmith_dot_vec2_u32(global2.a.yz, firstTrailingBit(countOneBits(global0.xz)));
    var_0 = -global3.a;
    var var_2 = Struct_3(arg_0.a.a);
    var var_3 = abs(-vec4<i32>(-2147483647i, 2147483647i, arg_2.x, _wgslsmith_add_i32(func_3(), 0i)));
    return Struct_3(arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(Struct_2(all(select(vec4<bool>(global1.a.x, false, global3.c, global3.c), vec4<bool>(global3.c, global1.a.x, true, global3.c), vec4<bool>(true, global1.b.x, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -162f, 1509f, 1181f) - vec4<f32>(-677f, -227f, 528f, 558f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(726f, 711f, -394f, -2519f), vec4<f32>(164f, -347f, 1000f, 113f)))), ~firstTrailingBit(global0.xy))), Struct_5(global1.b.zz, select(!vec3<bool>(global1.b.x, false, global3.c), !select(vec3<bool>(global3.c, global1.b.x, false), global1.b, global1.b), global1.b)), -global3.a.yx, func_1(Struct_2(global1.a.x, vec4<f32>(2380f, _wgslsmith_f_op_f32(f32(-1f) * -485f), 723f, -1000f), global2.a.xz)).e);
    let var_1 = _wgslsmith_div_vec3_u32(func_4(~vec4<u32>(47673u, global0.x, 40066u, var_0.a.x) >> ((vec4<u32>(17583u, global3.d, global2.a.x, 0u) >> (vec4<u32>(64520u, global0.x, 0u, global3.d) % vec4<u32>(32u))) % vec4<u32>(32u)), global3.a.zxy, -13062i).a & _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.d, var_0.a.x, 84333u), var_0.a, global2.a | global2.a), global2.a), global2.a);
    global2 = Struct_3(abs(global2.a));
    var var_2 = Struct_1(global3.a, -_wgslsmith_div_i32(1i, abs(global3.b)), true, ~(~1u));
    let var_3 = u_input.a;
    global1 = Struct_5(!(!vec2<bool>(global3.c, true)), !global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(745f - 1734f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(501f))), _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1216f), _wgslsmith_f_op_f32(-1332f - -966f))))), global0.x, global3.a, max(-var_2.a.x, -1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(func_1(Struct_2(false, vec4<f32>(-489f, -930f, 1715f, 964f), vec2<u32>(0u, 48636u))).d + _wgslsmith_f_op_f32(max(func_1(Struct_2(true, vec4<f32>(-548f, -101f, -1834f, 477f), vec2<u32>(19548u, global0.x))).d, _wgslsmith_div_f32(112f, 706f)))))));
}

