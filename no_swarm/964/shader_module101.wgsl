struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 17>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(0u, 78853u, 1i, 16721i), Struct_1(122945u, 1u, -15236i, 92972i), Struct_1(98235u, 5406u, 5i, -36613i), Struct_1(17687u, 38159u, -5124i, 3258i), Struct_1(1347u, 4294967295u, 2288i, 17920i), Struct_1(60359u, 38955u, 1i, 16264i), Struct_1(1u, 113865u, 45171i, 1i), Struct_1(1u, 54886u, 2398i, -633i), Struct_1(1u, 18933u, -36867i, 2147483647i), Struct_1(0u, 1u, i32(-2147483648), 63362i), Struct_1(33569u, 0u, i32(-2147483648), 13276i), Struct_1(33733u, 0u, 2147483647i, 0i), Struct_1(24668u, 4294967295u, 0i, -1i), Struct_1(4294967295u, 1u, 0i, 1i), Struct_1(4294967295u, 38749u, 2147483647i, 2147483647i), Struct_1(4294967295u, 9571u, 1i, i32(-2147483648)), Struct_1(54045u, 0u, i32(-2147483648), 68490i), Struct_1(0u, 24241u, 39712i, -44563i), Struct_1(37415u, 4294967295u, -6118i, 1i), Struct_1(0u, 11252u, 44477i, 0i), Struct_1(4118u, 4294967295u, 99i, 22300i), Struct_1(1u, 4294967295u, -4443i, -1i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_3(arg_1.b.x, vec2<f32>(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1442f), _wgslsmith_f_op_f32(-arg_0.a.a)))), arg_1.b.x), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(countOneBits(~arg_1.e.a) | 0u, 12884u), 17u)], 22u)], vec4<bool>(false == arg_0.b.a.x, arg_1.d.x, arg_0.c.x, true), arg_1.c);
    var var_1 = -vec2<i32>(max(~_wgslsmith_mult_i32(arg_0.b.e.x, u_input.e), -19737i), ~var_0.c.d);
    global0 = reverseBits(u_input.d);
    var var_2 = reverseBits(_wgslsmith_mod_u32(u_input.d.x, 0u));
    let var_3 = Struct_2(var_0.d, _wgslsmith_f_op_vec4_f32(arg_0.b.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.b)) + arg_0.b.b)), _wgslsmith_mult_vec3_i32(-(~vec3<i32>(-1i, arg_2, var_0.e.d) & ~vec3<i32>(5303i, u_input.b.x, arg_2)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(20298i, var_1.x, arg_2, arg_1.c.d), vec4<i32>(23788i, -1i, 30258i, 0i)), countOneBits(var_0.e.c)), min(u_input.b.x, var_1.x) >> (32511u % 32u), var_1.x)), Struct_1(_wgslsmith_add_u32(arg_0.a.e.a, ~62767u) << (abs(1u) % 32u), _wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.a, arg_1.c.a, global0.x, 1u), vec4<u32>(4294967295u, 24366u, 1u, 4294967295u)), max(vec4<u32>(4294967295u, 1u, 4294967295u, 5977u), vec4<u32>(global1[_wgslsmith_index_u32(15257u, 17u)], 74594u, var_0.e.a, 1u)), arg_1.d), select(~vec4<u32>(1u, 59743u, 0u, 12647u), vec4<u32>(arg_0.a.c.b, arg_0.a.c.a, u_input.a.x, 4294967295u), arg_0.c)), ~countOneBits(1i), -(i32(-1i) * -12761i)), u_input.b.yzy);
    return arg_1.d;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_5) -> vec4<bool> {
    let var_0 = Struct_1(63262u, min(global0.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_2.b.b, 4294967295u, 37008u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0, global0.x) & vec3<u32>(global0.x, 71898u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 43121u), vec3<u32>(u_input.a.x, 81069u, 36611u)), vec3<u32>(64784u, 4294967295u, arg_2.b.b) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))))), 1i & ~((-29270i << (u_input.c % 32u)) | firstTrailingBit(u_input.e)), _wgslsmith_mult_i32(-u_input.e, -u_input.e));
    let var_1 = arg_0;
    global1 = array<u32, 17>();
    global1 = array<u32, 17>();
    global1 = array<u32, 17>();
    return select(select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), func_3(Struct_4(Struct_3(arg_2.a, vec2<f32>(-916f, 1000f), var_0, vec4<bool>(false, true, false, false), Struct_1(var_1, var_1, arg_2.b.d, -1909i)), Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(1350f, 855f, arg_2.a, arg_1.x), u_input.b.zzy, Struct_1(0u, 7144u, arg_2.b.d, 0i), u_input.b.ywy), vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_3(arg_2.a, vec2<f32>(arg_1.x, arg_2.a), Struct_1(1u, 0u, 0i, -15594i), vec4<bool>(true, true, false, false), Struct_1(43329u, 4294967295u, -2147483647i, -43016i)), select(-1i, arg_2.b.c, false))), vec4<bool>(select(false, all(vec2<bool>(true, true)), u_input.b.x != 1i), true, any(vec3<bool>(true, false, true)), true | (arg_2.a < arg_2.a)), vec4<bool>(any(vec4<bool>(true, true, true, true)), true || func_3(Struct_4(Struct_3(450f, vec2<f32>(arg_1.x, -131f), arg_2.b, vec4<bool>(false, true, false, false), Struct_1(4950u, arg_0, -2147483647i, 738i)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(arg_1.x, arg_2.a, -1000f, -420f), vec3<i32>(var_0.c, -1i, -71670i), Struct_1(global0.x, global1[_wgslsmith_index_u32(global0.x, 17u)], arg_2.b.c, 2147483647i), u_input.b.ywz), vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), Struct_3(arg_1.x, vec2<f32>(527f, arg_2.a), arg_2.b, vec4<bool>(true, false, false, true), Struct_1(global0.x, 4294967295u, var_0.d, var_0.d)), var_0.d).x, _wgslsmith_f_op_f32(arg_1.x * -211f) == _wgslsmith_f_op_f32(arg_1.x + arg_2.a), select(false, true, true) == false)), func_3(Struct_4(Struct_3(_wgslsmith_f_op_f32(arg_2.a + -401f), _wgslsmith_f_op_vec2_f32(arg_1 - arg_1), Struct_1(1u, global0.x, 1i, 87307i), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4058u, arg_0), vec3<u32>(6065u, arg_2.b.b, global0.x)), 22u)]), Struct_2(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(413f, arg_1.x, -451f, 1888f), vec4<f32>(-1050f, 532f, arg_1.x, arg_1.x), true)), reverseBits(vec3<i32>(arg_2.b.d, u_input.b.x, -10928i)), var_0, select(vec3<i32>(2147483647i, var_0.c, arg_2.b.c), vec3<i32>(arg_2.b.d, 2147483647i, arg_2.b.d), false)), vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec3<bool>(486f > arg_2.a, true, any(vec3<bool>(true, true, true)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 1000f)), arg_1, arg_2.b, vec4<bool>(arg_2.a != arg_2.a, true, true, true), Struct_1(abs(var_1), ~u_input.d.x, _wgslsmith_div_i32(80316i, u_input.b.x), 1i)), 1i), !select(func_3(Struct_4(Struct_3(arg_1.x, vec2<f32>(arg_2.a, arg_1.x), Struct_1(4294967295u, arg_0, -1i, 27608i), vec4<bool>(false, false, true, false), global2[_wgslsmith_index_u32(var_0.a, 22u)]), Struct_2(vec4<bool>(true, false, true, false), vec4<f32>(arg_2.a, arg_2.a, arg_1.x, arg_1.x), u_input.b.zzw, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a, 17u)], 22u)], u_input.b.zzz), vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), Struct_3(-1000f, arg_1, var_0, vec4<bool>(true, false, true, false), Struct_1(global0.x, 20370u, -3843i, -10885i)), _wgslsmith_sub_i32(var_0.c, 2147483647i)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), func_3(Struct_4(Struct_3(arg_1.x, arg_1, arg_2.b, vec4<bool>(true, true, true, false), Struct_1(4294967295u, 85642u, 19689i, arg_2.b.c)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(arg_2.a, 462f, arg_1.x, arg_1.x), vec3<i32>(arg_2.b.d, 1i, u_input.e), Struct_1(var_1, 0u, 40800i, arg_2.b.d), u_input.b.wxw), vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), Struct_3(arg_2.a, arg_1, arg_2.b, vec4<bool>(false, true, true, false), Struct_1(1u, 1u, var_0.c, u_input.e)), -35288i)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.x, arg_0.b.x, true))))), Struct_1(1u, reverseBits(_wgslsmith_mult_u32(countOneBits(arg_0.d.b), arg_0.d.b)), 11460i, -50974i));
    var var_1 = Struct_2(func_3(Struct_4(arg_3.a, Struct_2(select(vec4<bool>(true, true, true, arg_3.e.x), arg_0.a, arg_0.a.x), arg_0.b, abs(arg_3.b.c), var_0.b, _wgslsmith_div_vec3_i32(u_input.b.wyy, u_input.b.ywx)), vec4<bool>(true & arg_0.a.x, func_3(arg_3, Struct_3(var_0.a, arg_0.b.xw, arg_0.d, arg_0.a, global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), arg_0.e.x).x, 70344u < global1[_wgslsmith_index_u32(global0.x, 17u)], arg_3.d.x), select(arg_0.a.zxz, func_2(arg_3.b.d.b, vec2<f32>(-1089f, 1631f), Struct_5(-864f, Struct_1(arg_0.d.b, 4294967295u, -9662i, -2147483647i))).wwx, -50775i != arg_3.b.e.x), !arg_0.a.yxy), Struct_3(_wgslsmith_f_op_f32(min(-621f, -1754f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(select(arg_3.a.b.x, arg_1, true))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, var_0.b.a)) & (global1[_wgslsmith_index_u32(global0.x, 17u)] | u_input.a.x), 22u)], arg_3.a.d, Struct_1(u_input.a.x, arg_3.b.d.b ^ var_0.b.a, _wgslsmith_clamp_i32(2147483647i, arg_3.a.c.c, -2147483647i), 10081i)), ~(-1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_3.b.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b + arg_3.b.b) + arg_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) + _wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.b))), arg_3.e.x)), arg_3.b.e, Struct_1(~abs(var_0.b.b), 0u, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.e, arg_3.b.e.x)), -20476i), ~0i), _wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, -1i), arg_0.e)), arg_0.c, max(vec3<i32>(abs(-1i), ~1i, arg_3.b.d.c), vec3<i32>(0i, countOneBits(var_0.b.d), -u_input.b.x))));
    let var_2 = max(51863u, global0.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1166f * _wgslsmith_f_op_f32(f32(-1f) * -1161f)), var_1.b.x, -1352f))));
    var_1 = arg_0;
    return var_1.b.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(626f, 1692f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -845f))) * _wgslsmith_f_op_f32(func_4(Struct_2(func_2(global0.x, vec2<f32>(165f, -773f), Struct_5(-252f, global2[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1376f, 220f, 1248f, -743f) - vec4<f32>(218f, 2525f, -433f, 381f)), abs(u_input.b.wxx), Struct_1(13865u, global1[_wgslsmith_index_u32(41414u, 17u)], 0i, u_input.b.x), select(vec3<i32>(u_input.b.x, u_input.b.x, -22189i), u_input.b.ywy, vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) * _wgslsmith_f_op_f32(min(341f, -1830f))), _wgslsmith_f_op_f32(-2351f - _wgslsmith_f_op_f32(f32(-1f) * -1018f)), Struct_4(Struct_3(646f, vec2<f32>(530f, 2339f), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 22u)], vec4<bool>(false, false, false, false), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 17u)], 1u, -2147483647i, u_input.e)), Struct_2(vec4<bool>(false, false, false, true), vec4<f32>(-963f, -396f, 444f, -1014f), u_input.b.yzw, global2[_wgslsmith_index_u32(4648u, 22u)], vec3<i32>(-36649i, -16682i, u_input.b.x)), vec4<bool>(false, true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1004f), -295f);
    let var_1 = 18986u;
    global2 = array<Struct_1, 22>();
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-1064f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-921f, var_0.x) * var_0.zy), false))), global2[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(var_1, 17u)], max(global1[_wgslsmith_index_u32(1u, 17u)], 0u)) >> ((1u >> (~global0.x % 32u)) % 32u), 22u)], !vec4<bool>(u_input.e == 1i, true, true, any(vec3<bool>(true, false, true))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, global1[_wgslsmith_index_u32(4294967295u, 17u)]) | vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 14097u, u_input.a.x), vec3<u32>(23476u, 39746u, 4294967295u) ^ vec3<u32>(13050u, global1[_wgslsmith_index_u32(75589u, 17u)], u_input.d.x)), ~(global1[_wgslsmith_index_u32(0u, 17u)] >> (u_input.c % 32u)), _wgslsmith_div_i32(-31417i, u_input.b.x), u_input.b.x)), Struct_2(vec4<bool>(true, !any(vec2<bool>(true, true)), func_3(Struct_4(Struct_3(var_0.x, vec2<f32>(490f, 125f), Struct_1(0u, u_input.a.x, -24142i, -18876i), vec4<bool>(true, true, true, true), Struct_1(0u, 23104u, u_input.e, u_input.e)), Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(var_0.x, -426f, var_0.x, 402f), u_input.b.yyx, Struct_1(1u, var_1, u_input.b.x, 1i), u_input.b.xxw), vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), Struct_3(var_0.x, vec2<f32>(-1384f, 1503f), global2[_wgslsmith_index_u32(global0.x, 22u)], vec4<bool>(false, true, false, true), Struct_1(1u, 1u, 0i, u_input.b.x)), 0i << (global1[_wgslsmith_index_u32(97638u, 17u)] % 32u)).x, true), vec4<f32>(-2206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1318f) - _wgslsmith_f_op_f32(min(378f, -405f))), _wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(round(var_0.x))), ~firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.b.xxx, u_input.b.xyz)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 22u)], u_input.b.xzw), select(func_2(~min(global1[_wgslsmith_index_u32(0u, 17u)], u_input.c), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -1000f), vec2<bool>(true, false))))), Struct_5(var_0.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1 | 30396u, 17u)], 22u)])), vec4<bool>(true, true, true, true), true), vec3<bool>(any(vec3<bool>(true, true, true)), -min(u_input.b.x, -1i) < ~firstTrailingBit(75748i), true), select(vec3<bool>(true, func_3(Struct_4(Struct_3(var_0.x, var_0.yz, global2[_wgslsmith_index_u32(global0.x, 22u)], vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(40166u, 22u)]), Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(var_0.x, -105f, 282f, var_0.x), vec3<i32>(-2147483647i, 67237i, -71895i), global2[_wgslsmith_index_u32(4294967295u, 22u)], vec3<i32>(u_input.b.x, -18617i, 4222i)), vec4<bool>(true, true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), Struct_3(786f, var_0.yz, Struct_1(global0.x, 44138u, 43507i, u_input.e), vec4<bool>(false, false, false, false), Struct_1(global0.x, 36201u, u_input.e, u_input.e)), firstLeadingBit(u_input.e)).x, any(vec3<bool>(false, false, false))), !func_3(Struct_4(Struct_3(-710f, vec2<f32>(var_0.x, var_0.x), global2[_wgslsmith_index_u32(32215u, 22u)], vec4<bool>(false, true, true, true), Struct_1(6575u, 2002u, u_input.e, u_input.e)), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(301f, var_0.x, 1117f, var_0.x), vec3<i32>(-2147483647i, u_input.b.x, 0i), global2[_wgslsmith_index_u32(u_input.c, 22u)], vec3<i32>(u_input.b.x, 1i, 27625i)), vec4<bool>(true, false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_3(1026f, vec2<f32>(-263f, var_0.x), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71406u, 17u)], 22u)], vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(var_1, 22u)]), ~u_input.e).ywx, true));
    global1 = array<u32, 17>();
    return func_3(Struct_4(var_2.a, Struct_2(vec4<bool>(!var_2.b.a.x, var_2.c.x, any(vec3<bool>(true, var_2.e.x, var_2.b.a.x)), global0.x != 4294967295u), var_2.b.b, _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(var_2.a.e.c, 30632i, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, var_2.a.e.c, 2147483647i), vec3<i32>(u_input.b.x, var_2.b.d.c, var_2.b.e.x))), var_2.b.d, select(vec3<i32>(var_2.a.c.c, -2147483647i, 0i), vec3<i32>(-1i, var_2.a.e.d, -61379i), true) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.c.a, 49842u, 55917u), vec3<u32>(0u, 4294967295u, var_2.a.e.b)) % vec3<u32>(32u))), !func_3(var_2, Struct_3(var_0.x, var_0.zy, var_2.a.e, var_2.c, var_2.b.d), u_input.b.x << (4294967295u % 32u)), !var_2.b.a.wxw, var_2.b.a.zww), var_2.a, _wgslsmith_mult_i32(min(var_2.a.e.c, 1i), var_2.b.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~1u));
    global2 = array<Struct_1, 22>();
    global2 = array<Struct_1, 22>();
    var var_1 = func_1();
    var_1 = !select(!vec4<bool>(any(vec3<bool>(true, var_1.x, true)), true, var_1.x, true), vec4<bool>(true, var_1.x, ~(-92i) >= _wgslsmith_dot_vec3_i32(u_input.b.wxw, vec3<i32>(-2147483647i, -1i, u_input.b.x)), any(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), func_3(Struct_4(Struct_3(1390f, vec2<f32>(-159f, 299f), Struct_1(0u, u_input.a.x, u_input.b.x, u_input.b.x), vec4<bool>(true, var_1.x, true, false), Struct_1(u_input.c, u_input.c, 2147483647i, 1i)), Struct_2(vec4<bool>(var_1.x, true, true, var_1.x), vec4<f32>(479f, -2673f, -675f, -333f), vec3<i32>(u_input.e, -1i, -1i), Struct_1(global0.x, var_0, -14414i, u_input.b.x), u_input.b.ywy), !vec4<bool>(false, false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.wxx), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1302f, -927f)), global2[_wgslsmith_index_u32(var_0, 22u)], vec4<bool>(false, var_1.x, false, false), Struct_1(var_0, global1[_wgslsmith_index_u32(4294967295u, 17u)], -45384i, 19894i)), -21967i));
    let x = u_input.a;
    s_output = StorageBuffer(689f, 830f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2967f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(351f, 1258f), -989f)))), vec4<f32>(-890f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-732f + -1000f) * _wgslsmith_f_op_f32(abs(-269f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1993f), _wgslsmith_f_op_f32(-653f - 1669f), true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1579f + _wgslsmith_f_op_f32(min(2429f, -1407f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1020f)))), global0.x);
}

