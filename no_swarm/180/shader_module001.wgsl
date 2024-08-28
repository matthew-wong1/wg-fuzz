struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: array<i32, 9>;

var<private> global1: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-8227i, 1i), vec2<i32>(-61576i, 38816i), vec2<i32>(20311i, 0i), vec2<i32>(-15001i, 2147483647i), vec2<i32>(1i, 12235i), vec2<i32>(1i, -2172i), vec2<i32>(-38040i, 2147483647i), vec2<i32>(0i, 41306i), vec2<i32>(8334i, -1i), vec2<i32>(-18787i, -24471i), vec2<i32>(i32(-2147483648), -72631i), vec2<i32>(40123i, -9453i), vec2<i32>(16784i, 53226i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(22288i, -22944i), vec2<i32>(1i, -46748i), vec2<i32>(i32(-2147483648), -15108i));

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec4<f32>, 7>;

var<private> global4: Struct_3 = Struct_3(vec2<i32>(2147483647i, -4482i), vec4<bool>(true, true, true, true), 3862u, vec4<u32>(26399u, 4294967295u, 50284u, 24718u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14674u, 17481u, 39681u), 17u)], max(vec2<i32>(-11436i, 62620i), global4.a)), ~abs(arg_0.c)), reverseBits(global1[_wgslsmith_index_u32(48534u << (firstLeadingBit(38177u) % 32u), 17u)]) | global1[_wgslsmith_index_u32(3442u, 17u)], vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 9u)], arg_1), arg_2.a), u_input.b.zz));
    var var_1 = Struct_1(vec3<bool>(arg_0.d.x, any(!arg_2.b.yz), true), ~arg_2.d.ywx, arg_0.a.c, !(!vec2<bool>(true, any(vec3<bool>(arg_2.b.x, true, false)))), arg_2.d.yy);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, 555f, arg_0.a.c)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c, 656f, arg_0.a.c) * vec3<f32>(var_1.c, -891f, arg_0.a.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, 2291f, 585f) - vec3<f32>(1000f, 506f, arg_0.a.c))))));
    var_1 = Struct_1(arg_0.a.a, arg_0.a.b, -348f, select(vec2<bool>(true, _wgslsmith_f_op_f32(arg_0.a.c * 1000f) < -717f), select(vec2<bool>(any(vec2<bool>(arg_2.b.x, arg_0.a.a.x)), true), arg_2.b.xy, arg_0.a.a.zx), select(select(vec2<bool>(arg_0.a.a.x, arg_2.b.x), !var_1.a.yy, vec2<bool>(arg_2.b.x, true)), !vec2<bool>(arg_2.b.x, global4.b.x), select(false, true, any(arg_0.a.a)))), _wgslsmith_mod_vec2_u32(global4.d.zx, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c) >> (abs(vec2<u32>(var_1.b.x, var_1.e.x)) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(arg_0.a.b.zx, vec2<u32>(arg_0.a.e.x, 33414u)))));
    let var_3 = -(i32(-1i) * -(_wgslsmith_div_i32(2147483647i, global4.a.x) | arg_0.c));
    return firstTrailingBit(-_wgslsmith_mult_i32(-firstLeadingBit(u_input.b.x), -75881i));
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec2_i32(global4.a, countOneBits(vec2<i32>(~global0[_wgslsmith_index_u32(global4.d.x, 9u)], max(u_input.a, 60128i))) << (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, 1u, global4.c), 1u), global4.d.x) % vec2<u32>(32u)));
    var var_1 = false;
    global4 = Struct_3(vec2<i32>(~reverseBits(global4.a.x), _wgslsmith_mult_i32(func_3(Struct_2(Struct_1(global4.b.xwz, global4.d.xyy, 775f, global4.b.wx, global4.d.xx), global4.d, global4.a.x, global4.b.yxz), global4.a.x, Struct_3(var_0, arg_0, u_input.c, vec4<u32>(global4.c, 1u, 11342u, 14086u)), global4.d.x), u_input.b.x) >> ((global4.c | _wgslsmith_sub_u32(0u, u_input.c)) % 32u)), select(!select(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0, false), select(vec4<bool>(false, global4.b.x, true, true), global4.b, arg_0.x), select(vec4<bool>(arg_0.x, false, global4.b.x, true), global4.b, global4.b)), !vec4<bool>(select(false, false, global4.b.x), arg_0.x, true, any(global4.b)), global4.b), u_input.c, ~vec4<u32>(global4.c, u_input.c, ~firstTrailingBit(2484u), ~(~40794u)));
    var var_2 = global4.b.x;
    let var_3 = _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(countOneBits(global4.d.yww), vec3<u32>(select(global4.c, global4.c, true), global4.c, _wgslsmith_mod_u32(25245u, 1u))), ~global4.d.zyz);
    return _wgslsmith_mult_vec4_u32(~(~vec4<u32>(_wgslsmith_mult_u32(1u, 2682u), countOneBits(1u), _wgslsmith_div_u32(global4.c, 1u), 10970u)), global4.d);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_3(global4.a, vec4<bool>(false, true, true, true), (~1u | u_input.c) >> (~(~abs(arg_0.b.x)) % 32u), select(reverseBits(func_2(vec4<bool>(arg_0.d.x, global4.b.x, false, true))), select(~(~vec4<u32>(4294967295u, 0u, global4.c, 1u)), vec4<u32>(0u, 4294967295u, arg_0.a.e.x >> (36162u % 32u), global4.c), global4.b.x), global4.b.x));
    global3 = array<vec4<f32>, 7>();
    global0 = array<i32, 9>();
    let var_1 = vec4<i32>(-_wgslsmith_div_i32(var_0.a.x, _wgslsmith_mult_i32(u_input.b.x & -5502i, global4.a.x)), ~38754i, func_3(arg_0, min(_wgslsmith_dot_vec2_i32(var_0.a, ~var_0.a), arg_0.c), var_0, max(49382u, 1u)), 1i);
    let var_2 = var_0;
    return ~4294967295u ^ (_wgslsmith_sub_u32(~arg_0.a.e.x, arg_0.b.x >> (~u_input.c % 32u)) ^ 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 7>();
    let var_0 = _wgslsmith_mod_i32(~select(0i, 1i, true), global0[_wgslsmith_index_u32(~func_1(global2[_wgslsmith_index_u32(u_input.c, 26u)], global4.b.yzz) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global4.d, vec4<u32>(1u, global4.d.x, u_input.c, 4294967295u) | vec4<u32>(27188u, u_input.c, u_input.c, u_input.c)), u_input.c), 9u)]);
    global2 = array<Struct_2, 26>();
    var var_1 = Struct_2(Struct_1(select(select(global4.b.wyw, vec3<bool>(true, true, false), true | global4.b.x), vec3<bool>(!global4.b.x, any(global4.b.yy), false & global4.b.x), !select(global4.b.yxz, vec3<bool>(global4.b.x, global4.b.x, global4.b.x), global4.b.zwz)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 0u, 46335u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(116151u, u_input.c, u_input.c), vec3<u32>(u_input.c, 7455u, global4.c), global4.d.wxx | global4.d.zwx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1683f * _wgslsmith_f_op_f32(-756f - 880f))), global4.b.ww, global4.d.zx), vec4<u32>(55058u, 19965u, 0u, global4.d.x), var_0, !vec3<bool>(true == (true & global4.b.x), !all(global4.b), global4.b.x));
    var var_2 = -917f;
    var_2 = var_1.a.c;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.b.ywz, vec3<u32>(func_1(Struct_2(var_1.a, global4.d, 6486i, var_1.a.a), select(var_1.d, var_1.d, vec3<bool>(true, var_1.a.d.x, false))), countOneBits(~global4.c), var_1.a.b.x)), ~(~(~_wgslsmith_div_u32(4294967295u, global4.c)))), 26u)];
    var var_4 = global2[_wgslsmith_index_u32(1u, 26u)];
    global1 = array<vec2<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(20149u, 17u)]);
}

