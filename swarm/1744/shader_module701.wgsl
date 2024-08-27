struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1130f;

var<private> global1: i32 = 26462i;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false, -1129f, 6686i), Struct_2(true, 642f, -52676i), Struct_2(false, -318f, 40371i), Struct_2(true, -474f, 37296i), Struct_2(false, 228f, 34416i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    global1 = select(_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(u_input.d, u_input.d) & vec3<i32>(arg_1.c, 29729i, 40767i), _wgslsmith_mult_vec3_i32(~u_input.d, _wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(arg_0.x, arg_0.x, 0i) | vec3<i32>(-19350i, -7264i, 11360i)))), -1i, !(false && arg_1.a));
    var var_0 = arg_1.c;
    var var_1 = -189f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -1000f, arg_1.b, arg_1.b) * vec4<f32>(arg_1.b, 1371f, arg_1.b, arg_1.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_1.b, 874f)))) * vec4<f32>(-255f, 1356f, -493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    let var_3 = global2[_wgslsmith_index_u32(~(~abs(1u)), 5u)];
    return var_3.c <= _wgslsmith_dot_vec3_i32(~reverseBits(u_input.d), _wgslsmith_div_vec3_i32(u_input.d, ~_wgslsmith_div_vec3_i32(u_input.d, u_input.d)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) - 1000f);
    var var_1 = all(select(vec3<bool>((arg_2 < 2819u) | arg_1, true, select(true, func_3(vec2<i32>(1i, u_input.d.x), global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), arg_1)), vec3<bool>(true, any(vec2<bool>(true, true)), arg_1), !(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, -25905i), u_input.d) <= _wgslsmith_add_i32(u_input.c, -1i))));
    global1 = ~(-u_input.c);
    global2 = array<Struct_2, 5>();
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(u_input.d.yx, -vec2<i32>(41616i, -176i), _wgslsmith_add_vec2_i32(vec2<i32>(18569i, ~u_input.c), u_input.d.xy)));
    return select(any(vec3<bool>(!arg_1, true, arg_1)), !((arg_1 == arg_1) & true) == false, any(select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), vec2<bool>(true, arg_1)), !vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1))) && true);
}

fn func_1() -> vec2<i32> {
    global2 = array<Struct_2, 5>();
    var var_0 = select(vec2<bool>(true, select(all(vec3<bool>(true, true, true)), true, true)), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false))), true), vec2<bool>(true, true));
    var var_1 = u_input.d.zz;
    global2 = array<Struct_2, 5>();
    var_0 = select(!select(vec2<bool>(true & var_0.x, true), vec2<bool>(true, true), vec2<bool>(func_2(360f, false, u_input.e), true)), vec2<bool>(any(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(false, var_0.x, var_0.x), true)), func_3(~abs(u_input.d.yx), Struct_2(any(vec2<bool>(var_0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -820f), -5127i))), select(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), true), vec2<bool>(true, true), !var_0.x), vec2<bool>(func_3(firstTrailingBit(vec2<i32>(var_1.x, var_1.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(u_input.e, u_input.a.x)), 5u)]), var_0.x), false));
    return vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(~u_input.c, u_input.d.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = select(!vec4<bool>(false, ~1i > arg_2.a.x, true, true), !vec4<bool>(arg_1.a, true, _wgslsmith_dot_vec3_i32(vec3<i32>(-34800i, u_input.d.x, arg_1.c), u_input.d) == func_1().x, all(!vec2<bool>(arg_1.a, arg_1.a))), !vec4<bool>(arg_1.a, _wgslsmith_f_op_f32(-arg_1.b) >= 923f, false, any(vec2<bool>(true, arg_1.a))));
    global0 = 666f;
    global1 = arg_1.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * -1350f))));
    var var_2 = 0u;
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(arg_1.c, _wgslsmith_add_i32(0i, u_input.d.x), i32(-1i) * -5947i)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~func_1() | _wgslsmith_mult_vec2_i32(~reverseBits(u_input.d.yz), firstTrailingBit(u_input.d.xx & vec2<i32>(1i, u_input.c))), Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) - -718f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(trunc(1147f)), true))), 0i), Struct_1(u_input.d.xz), vec3<i32>(-_wgslsmith_mult_i32(51804i, _wgslsmith_sub_i32(u_input.c, -1i)), _wgslsmith_div_i32(1i, -u_input.d.x), _wgslsmith_mult_i32(u_input.c, min(2147483647i, _wgslsmith_div_i32(u_input.d.x, 1i)))));
    var_0 = func_4(vec2<i32>(_wgslsmith_mod_i32(abs(~u_input.d.x), -40713i), _wgslsmith_sub_i32(var_0.a.x, u_input.d.x)), Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-390f)) * 618f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -476f), -417f, any(vec2<bool>(false, false))))), var_0.a.x), func_4(vec2<i32>(2147483647i, -2147483647i), Struct_2(true, _wgslsmith_f_op_f32(-1137f + _wgslsmith_f_op_f32(-1000f * -455f)), -2147483647i), Struct_1(vec2<i32>(-17337i, 0i) ^ var_0.a), u_input.d), max(~select(vec3<i32>(0i, var_0.a.x, 0i), vec3<i32>(0i, var_0.a.x, var_0.a.x), vec3<bool>(true, true, true)), vec3<i32>(firstLeadingBit(75004i), var_0.a.x & var_0.a.x, -2147483647i)) << (vec3<u32>(u_input.b.x, u_input.a.x, _wgslsmith_clamp_u32(126454u, u_input.a.x << (u_input.e % 32u), ~u_input.b.x)) % vec3<u32>(32u)));
    var_0 = Struct_1(select(~_wgslsmith_div_vec2_i32(~u_input.d.yx, select(vec2<i32>(u_input.d.x, 48910i), vec2<i32>(-2147483647i, u_input.c), false)), vec2<i32>(u_input.c, ~u_input.c), true));
    var var_1 = -(~(vec4<i32>(-1i) * -abs(vec4<i32>(-1i, u_input.c, var_0.a.x, u_input.d.x))));
    var var_2 = select(!select(vec4<bool>(true, false, false, 29588u == u_input.a.x), vec4<bool>(select(false, true, true), true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), 11168i <= u_input.c), (77496u | u_input.e) <= u_input.e);
    global2 = array<Struct_2, 5>();
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -190f)));
    global0 = _wgslsmith_f_op_f32(max(873f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(-2597f, _wgslsmith_f_op_f32(ceil(1543f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-131f, -784f) * _wgslsmith_f_op_f32(floor(1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(2692i, u_input.e, _wgslsmith_div_u32(~u_input.e, ~(~u_input.e)) | ~_wgslsmith_mult_u32(56967u, _wgslsmith_clamp_u32(1u, u_input.b.x, 4294967295u)), u_input.c, u_input.b.x);
}

