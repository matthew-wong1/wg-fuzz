struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = vec2<bool>(true, arg_3.x == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-309f * -1073f), _wgslsmith_f_op_f32(arg_3.x * arg_3.x)) * arg_3.x));
    let var_1 = Struct_4(select(vec4<i32>(0i, _wgslsmith_sub_i32(-42266i, u_input.a.x), ~global1.b.a.x, u_input.a.x), -vec4<i32>(reverseBits(u_input.a.x), 9198i, -u_input.a.x, 2147483647i), !vec4<bool>(true, !var_0.x, var_0.x, !var_0.x)));
    var_0 = !(!select(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), var_0.x), vec2<bool>(true, true), true));
    global1 = Struct_3(_wgslsmith_div_u32(4294967295u, ~1u | global1.b.c.a.x), global1.b, Struct_2(var_1.a.wxw, _wgslsmith_mult_i32(~select(-1i, var_1.a.x, true), ~(-1i)), global1.c.c), Struct_1(countOneBits(vec4<u32>(10261u, 47427u, 0u, 138031u)) << (min(vec4<u32>(arg_2.x, 8629u, u_input.b, 49103u) ^ vec4<u32>(1u, 3340u, u_input.b, arg_1.x), global1.c.c.a) % vec4<u32>(32u))));
    var var_2 = Struct_3(77525u, global1.c, Struct_2(var_1.a.wxw, u_input.a.x, global1.d), global1.b.c);
    return -vec4<i32>(~(-global1.c.b), _wgslsmith_mult_i32(29021i, _wgslsmith_mult_i32(u_input.a.x, -7755i)), ~_wgslsmith_mult_i32(var_2.b.b, -21866i), _wgslsmith_mod_i32(1i, ~u_input.a.x)) | var_1.a;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_4(~func_3(global1.c.c.a, ~_wgslsmith_div_vec2_u32(global1.d.a.xz, global1.d.a.wy), _wgslsmith_add_vec3_u32(global1.d.a.yxx, global1.c.c.a.zyw), vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), -730f, -1189f)));
    let var_1 = !select(vec3<bool>(true, false, select(true, any(vec2<bool>(false, true)), true)), vec3<bool>(any(vec3<bool>(true, false, true)) || (-1i == global1.c.a.x), true, false), select(vec3<bool>(true, all(vec3<bool>(false, false, false)), false), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false))));
    let var_2 = vec2<i32>(-1i) * -abs(reverseBits(abs(vec2<i32>(global1.b.b, global1.c.b))));
    var var_3 = Struct_3(1u, Struct_2(vec3<i32>(global1.c.b, func_3(~vec4<u32>(global1.c.c.a.x, 4294967295u, global1.b.c.a.x, u_input.b), global1.d.a.wy, _wgslsmith_div_vec3_u32(vec3<u32>(21973u, 56728u, global1.c.c.a.x), global1.b.c.a.zxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1101f, 1412f))).x, global1.c.a.x), var_0.a.x, Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.b, global1.b.c.a.x, global1.a), _wgslsmith_sub_vec4_u32(global1.c.c.a, global1.c.c.a)))), Struct_2(global1.b.a, _wgslsmith_mult_i32(firstTrailingBit(-1i) ^ 1i, var_2.x), Struct_1(vec4<u32>(u_input.b, global1.c.c.a.x, reverseBits(global1.b.c.a.x), u_input.b))), global1.d);
    var var_4 = Struct_5(Struct_4(var_0.a | select(select(vec4<i32>(897i, 0i, var_0.a.x, 2147483647i), var_0.a, var_1.x), vec4<i32>(9717i, var_3.b.a.x, 2147483647i, u_input.a.x), select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(true, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), var_1.zy, Struct_4(vec4<i32>(34227i, -_wgslsmith_mult_i32(24712i, u_input.a.x), -(~var_3.b.b), 27712i)));
    return var_3.b;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> vec4<i32> {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_0, u_input.a.x, 15385i, ~_wgslsmith_dot_vec3_i32(global1.c.a, vec3<i32>(u_input.a.x, arg_0, -8921i))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i >> (reverseBits(u_input.b) % 32u), _wgslsmith_sub_i32(39664i, -28015i) ^ arg_0, _wgslsmith_mult_i32(-21027i, -9886i) >> (u_input.b % 32u), ~0i | -u_input.a.x), reverseBits(vec4<i32>(firstLeadingBit(global1.b.a.x), 2147483647i, -global1.b.a.x, max(-42673i, arg_0)))));
    global1 = Struct_3(0u, global1.b, func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) - _wgslsmith_div_f32(-2511f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -132f)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-218f, 936f, false))))).c);
    global0 = !arg_1.x;
    let var_2 = _wgslsmith_sub_i32(global1.b.b, func_3(_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.c.a.x, 27488u, 4294967295u, u_input.b), global1.d.a), ~global1.c.c.a.xx, select(global1.b.c.a.zxx, vec3<u32>(78794u, u_input.b, 0u), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(473f, -612f, 929f) - vec3<f32>(805f, -754f, 424f))).x >> (global1.c.c.a.x % 32u)) >= u_input.a.x;
    return vec4<i32>(reverseBits(-firstLeadingBit(_wgslsmith_sub_i32(var_1.x, -83791i))), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-14735i), min(3272i, _wgslsmith_sub_i32(1i, u_input.a.x)), i32(-1i) * -2147483647i), abs(~select(vec3<i32>(-8806i, 57727i, var_1.x), var_1.zww, vec3<bool>(true, arg_1.x, var_2)))), -2147483647i, -min(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(var_1.xx, var_1.wy)), global1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -14983i;
    let var_1 = !vec4<bool>(false, true, (max(global1.b.a.x, u_input.a.x) << (~u_input.b % 32u)) >= global1.c.b, any(vec3<bool>(true, true, true)));
    let var_2 = Struct_4(-(~func_1(var_0, vec3<bool>(true, true, true))));
    global1 = Struct_3(0u, Struct_2(vec3<i32>(reverseBits(~(-34635i)), u_input.a.x, var_2.a.x), 5936i, func_2(_wgslsmith_f_op_f32(f32(-1f) * -150f)).c), global1.c, global1.c.c);
    let var_3 = ~(-abs(0i << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(-vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x), ~global1.b.a.x, var_3), _wgslsmith_div_vec3_i32(~(global1.b.a & var_2.a.zzw), _wgslsmith_mult_vec3_i32(abs(var_2.a.xzz), ~vec3<i32>(var_0, -33260i, global1.b.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.c.b | -23457i, abs(var_3), -65568i), var_2.a.xzw, _wgslsmith_clamp_vec3_i32(~global1.b.a, -global1.c.a, global1.c.a))), 22495u << (global1.a % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global1.d.a, vec4<u32>(abs(u_input.b), firstLeadingBit(global1.a), u_input.b, _wgslsmith_clamp_u32(68810u, 23710u, global1.a))), ~1u));
}

