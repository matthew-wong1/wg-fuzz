struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 20> = array<i32, 20>(i32(-2147483648), 0i, 2147483647i, 33720i, -9571i, i32(-2147483648), -21774i, 1i, -1i, 2147483647i, i32(-2147483648), -21822i, -1i, 1i, -26254i, 2147483647i, -44981i, 0i, 2147483647i, 1i);

var<private> global2: f32 = -373f;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = vec4<u32>(arg_1 | countOneBits(66910u), _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(1u, 1u)), global0.d, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3.x, arg_1), 0u)) | vec4<u32>(4294967295u, ~53827u, 37134u, countOneBits(0u));
    global2 = 500f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * global0.a) - _wgslsmith_f_op_f32(-200f * global0.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-415f, _wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_f_op_f32(round(global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.b)))), global0.b), global0.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), 25030u | (var_0.x & var_0.x), vec3<u32>(6319u, var_0.x, global0.d));
    global2 = _wgslsmith_f_op_f32(-var_1.b.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(849f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f + -234f) + _wgslsmith_f_op_f32(var_1.a * 375f)))), var_1.b, false, ~(~_wgslsmith_clamp_u32(var_0.x, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, 14032u), vec2<u32>(var_0.x, arg_1)))), _wgslsmith_mult_vec3_u32(abs(global0.e), vec3<u32>(global0.d, _wgslsmith_sub_u32(max(arg_3.x, var_1.d), arg_3.x), _wgslsmith_add_u32(~4294967295u, _wgslsmith_add_u32(0u, global0.e.x)))));
    return ~min(79256u, min(~4294967295u, select(firstTrailingBit(11111u), 1u, true)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.b.x))), arg_1.a.b, false, global0.d, _wgslsmith_add_vec3_u32(select(countOneBits(max(arg_1.b.ywz, vec3<u32>(22669u, 1u, arg_2.b))), abs(abs(vec3<u32>(85096u, 1u, 21971u))), arg_2.a.a.c), vec3<u32>(_wgslsmith_mod_u32(func_3(vec2<bool>(true, arg_2.a.a.c), 4294967295u, vec2<i32>(-58124i, 1i), arg_1.b), 4294967295u), 0u & abs(arg_1.a.e.x), _wgslsmith_mod_u32(59456u, arg_1.b.x ^ arg_2.b))));
    let var_1 = arg_2;
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1475f)));
    global0 = Struct_1(307f, arg_2.a.a.b, arg_2.a.a.c, 16432u, select(select(select(var_0.e, vec3<u32>(33217u, global0.e.x, arg_2.a.a.d), vec3<bool>(true, var_1.a.a.c, arg_2.a.a.c)), var_1.a.a.e, select(vec3<bool>(true, var_0.c, arg_2.a.a.c), vec3<bool>(false, false, true), global0.c)), vec3<u32>(var_1.a.a.d, 11381u, arg_2.a.b.x) ^ vec3<u32>(var_1.a.a.e.x, global0.e.x, 4294967295u), select(!vec3<bool>(arg_1.a.c, arg_1.a.c, global0.c), !vec3<bool>(false, var_0.c, false), var_1.a.b.x < arg_2.a.a.e.x)) << (firstLeadingBit(vec3<u32>(var_1.b, 9284u, 59613u | var_1.b)) % vec3<u32>(32u)));
    global0 = arg_2.a.a;
    return arg_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<f32> {
    var var_0 = ~(-arg_1);
    var_0 = arg_1;
    global1 = array<i32, 20>();
    var var_1 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~global0.e.x, abs(arg_0.a.e.x)), max(vec2<u32>(_wgslsmith_mod_u32(~47160u, ~1u), _wgslsmith_dot_vec4_u32(~arg_0.b, vec4<u32>(4294967295u, 32709u, arg_0.a.d, 1u))), firstLeadingBit(abs(vec2<u32>(global0.e.x, 4294967295u)))));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-676f, -1048f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 284f) - arg_0.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(select(1045f, global0.a, global0.c))))))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(1309f, -360f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1124f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.b.x)) - _wgslsmith_f_op_f32(exp2(global0.a))), global0.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(-32788i, Struct_2(Struct_1(102f, vec4<f32>(global0.b.x, -814f, arg_0.a.a, 270f), arg_0.a.c, 152210u, arg_0.a.e), arg_0.b, -2147483647i), Struct_3(Struct_2(Struct_1(-524f, arg_0.a.b, arg_0.a.c, arg_0.a.e.x, vec3<u32>(arg_0.a.d, arg_0.a.e.x, global0.d)), arg_0.b, u_input.a), 3966u, vec3<f32>(arg_0.a.b.x, global0.b.x, arg_0.a.b.x))), vec3<i32>(global1[_wgslsmith_index_u32(55235u, 20u)], -2147483647i, u_input.a) ^ vec3<i32>(1i, u_input.a, arg_0.c))))), true, abs(~_wgslsmith_clamp_u32(countOneBits(54849u), ~13749u, 23792u)), reverseBits(global0.e));
    let var_1 = vec4<f32>(arg_0.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 688f) - arg_0.a.b.x), _wgslsmith_f_op_f32(257f + _wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(-arg_0.a.b.x))), !(!(var_0.c | global0.c)))), _wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)));
    global0 = func_2(min(-(i32(-1i) * -arg_0.c), -firstTrailingBit(max(2147483647i, -2147483647i))), func_2(_wgslsmith_div_i32(arg_0.c >> (66590u % 32u), -2147483647i) << (_wgslsmith_dot_vec2_u32(min(vec2<u32>(43842u, arg_0.a.d), global0.e.xy), ~vec2<u32>(arg_0.a.d, 28386u)) % 32u), arg_0, Struct_3(func_2(57752i, func_2(61502i, arg_0, Struct_3(Struct_2(arg_0.a, arg_0.b, global1[_wgslsmith_index_u32(global0.d, 20u)]), 11974u, arg_0.a.b.xyz)), Struct_3(arg_0, global0.d, arg_0.a.b.xzx)), 1063u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.a.b.wzy))))), Struct_3(func_2(-(~global1[_wgslsmith_index_u32(4105u, 20u)]), Struct_2(arg_0.a, ~vec4<u32>(var_0.d, var_0.e.x, arg_0.a.e.x, arg_0.b.x), func_2(u_input.a, Struct_2(Struct_1(var_1.x, vec4<f32>(-899f, arg_0.a.a, -1326f, var_1.x), true, 0u, vec3<u32>(global0.e.x, arg_0.a.d, 1u)), vec4<u32>(var_0.e.x, arg_0.b.x, 1u, 0u), u_input.a), Struct_3(Struct_2(Struct_1(var_0.a, var_0.b, arg_0.a.c, 85826u, var_0.e), arg_0.b, -3453i), 26212u, global0.b.wwx)).c), Struct_3(Struct_2(arg_0.a, vec4<u32>(90550u, 1u, var_0.d, 138134u), -17394i), func_2(2147483647i, Struct_2(Struct_1(arg_0.a.a, var_0.b, arg_0.a.c, 1u, var_0.e), vec4<u32>(8129u, arg_0.a.d, var_0.d, global0.e.x), u_input.a), Struct_3(arg_0, 1u, vec3<f32>(var_1.x, -1542f, -382f))).a.e.x, _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, var_1.x, -395f), vec3<f32>(var_1.x, 114f, -320f)))), firstTrailingBit(max(func_2(25930i, Struct_2(arg_0.a, arg_0.b, arg_0.c), Struct_3(Struct_2(arg_0.a, arg_0.b, -2147483647i), 3836u, var_0.b.xzz)).a.e.x, var_0.e.x)), vec3<f32>(_wgslsmith_f_op_f32(1481f * _wgslsmith_f_op_f32(-var_1.x)), 706f, _wgslsmith_f_op_f32(max(320f, _wgslsmith_f_op_f32(arg_0.a.a + arg_0.a.b.x)))))).a;
    var var_2 = -42432i;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(func_2(~countOneBits(3592i), func_2(~u_input.a, func_2(-11579i, arg_0, Struct_3(Struct_2(arg_0.a, vec4<u32>(var_0.e.x, var_0.e.x, global0.e.x, 1u), arg_0.c), var_0.d, vec3<f32>(-486f, var_1.x, arg_0.a.b.x))), Struct_3(Struct_2(Struct_1(var_1.x, var_0.b, false, var_0.d, vec3<u32>(arg_0.a.e.x, var_0.e.x, global0.e.x)), vec4<u32>(0u, 1u, arg_0.a.e.x, 4922u), 2147483647i), 23220u, vec3<f32>(-688f, -905f, -808f))), Struct_3(arg_0, var_0.d, vec3<f32>(-1278f, var_0.a, global0.b.x))).a.b))));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a.b.x), func_2(u_input.a, func_2(u_input.a, arg_0, Struct_3(arg_0, 40131u, global0.b.ywx)), Struct_3(Struct_2(Struct_1(var_1.x, arg_0.a.b, global0.c, 0u, global0.e), vec4<u32>(arg_0.a.e.x, 1207u, 1u, 4294967295u), global1[_wgslsmith_index_u32(0u, 20u)]), 23959u, vec3<f32>(209f, arg_0.a.a, 163f))).a.b, any(select(vec3<bool>(true, global0.c, global0.c), vec3<bool>(global0.c, arg_0.a.c, false), false)), global0.d, ~var_0.e), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.d, var_0.e.x, global0.e.x), ~arg_0.b) << (vec4<u32>(arg_0.a.e.x & 4294967295u, 1u, ~arg_0.a.e.x, 4294967295u) % vec4<u32>(32u)), arg_0.c), reverseBits(~2963u << (~abs(var_0.d) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(1129f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global0.b.x))), -658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(f32(-1f) * -544f)) + _wgslsmith_f_op_f32(f32(-1f) * -470f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2596f;
    let var_1 = func_1(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(817f, -824f, -239f, global0.b.x) + global0.b)), false, ~global0.d, countOneBits(_wgslsmith_add_vec3_u32(global0.e, global0.e))), reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, global0.d, global0.e.x, 1u), vec4<u32>(global0.d, global0.e.x, 4294967295u, 1u))), u_input.a));
    var_0 = 764f;
    let var_2 = ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b, 0u), countOneBits(var_1.a.a.e.xy))) << (var_1.b % 32u);
    var var_3 = func_1(Struct_2(Struct_1(func_1(var_1.a).c.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(898f, global0.a, -1100f, -1070f)))), true, 60509u, _wgslsmith_sub_vec3_u32(var_1.a.b.xwx & global0.e, ~vec3<u32>(4294967295u, var_1.b, var_2))), var_1.a.b, reverseBits(u_input.a))).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, vec4<u32>(~_wgslsmith_div_u32(global0.e.x, 1u) << (~4294967295u % 32u), _wgslsmith_add_u32(34154u, var_2), global0.d, ~(~var_2) << (var_2 % 32u)), -(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1.a.c, u_input.a), vec3<i32>(40479i, global1[_wgslsmith_index_u32(global0.d, 20u)], u_input.a)) & ~vec3<i32>(var_1.a.c, 11363i, u_input.a)));
}

