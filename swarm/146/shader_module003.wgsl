struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1247f, -647f, -429f), 10696u, true, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(2412f, -868f, -525f), 0u, false, vec3<bool>(false, false, true)), vec3<i32>(96209i, -1i, 29921i), vec4<bool>(false, false, true, false), 247f);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<f32>(434f, -698f, -715f), 18157u, true, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(337f, -1469f, 329f), 0u, true, vec3<bool>(true, false, false)), vec3<i32>(-1i, 0i, -1i), vec4<bool>(false, true, false, true), -1083f));

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(1412f, 239f, -403f), 12305u, true, vec3<bool>(true, true, true));

var<private> global4: array<Struct_3, 2>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = ~vec2<u32>(~abs(76427u), _wgslsmith_sub_u32(~global2.a.a.b, ~global1.a.b.b)) & ~(_wgslsmith_sub_vec2_u32(vec2<u32>(40107u, 1u), ~vec2<u32>(global0.a.b, 89200u)) >> (countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(38084u, global0.b.b), vec2<u32>(arg_0.a.b.b, 19448u))) % vec2<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global2.a.a.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.a.a + _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.a.a))) + global1.a.a.a)), ~(~countOneBits(_wgslsmith_div_u32(global3.b, global2.a.a.b))), global3.d.x != true, vec3<bool>(true, global2.a.d.x, true));
    global3 = global0.a;
    let var_2 = Struct_3(Struct_2(Struct_1(global0.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 22098u, var_1.b, arg_0.a.b.b), ~vec4<u32>(var_1.b, 29094u, arg_0.a.b.b, global0.b.b)), false, select(vec3<bool>(arg_0.a.b.d.x, arg_0.a.b.c, global1.a.d.x), !arg_0.a.b.d, select(var_1.d, vec3<bool>(global0.b.c, false, var_1.c), global1.a.d.yxx))), arg_0.a.b, (vec3<i32>(arg_0.a.c.x, global2.a.c.x, 2147483647i) >> ((vec3<u32>(global2.a.b.b, arg_0.a.b.b, arg_0.a.b.b) ^ vec3<u32>(2915u, 66127u, 6595u)) % vec3<u32>(32u))) | (arg_0.a.c & vec3<i32>(-2147483647i, 12734i, 51140i)), !global0.d, 1921f));
    let var_3 = !select(select(!select(vec4<bool>(true, true, arg_0.a.b.d.x, true), vec4<bool>(global2.a.d.x, true, var_2.a.a.d.x, var_2.a.a.c), global1.a.d), select(vec4<bool>(true, true, var_2.a.d.x, false), !vec4<bool>(true, global1.a.d.x, global2.a.d.x, var_2.a.b.c), vec4<bool>(global0.d.x, true, global3.d.x, global0.a.c)), false != global1.a.a.c), !(!select(arg_0.a.d, var_2.a.d, true)), false);
    return ~(~0u ^ (23321u | (var_0.x | global0.a.b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(global2.a.b.b, global0.a.b) ^ 3396u, func_3(Struct_3(Struct_2(Struct_1(global0.b.a, 43245u, arg_0.x, global3.d), Struct_1(vec3<f32>(-615f, -848f, global2.a.e), 4294967295u, arg_1, vec3<bool>(arg_1, arg_0.x, global3.d.x)), global1.a.c, vec4<bool>(true, true, global2.a.b.c, global1.a.b.c), global1.a.e)))), ~(~min(_wgslsmith_mod_u32(arg_2.x, global2.a.b.b), global1.a.a.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(global1.a.a.a.zx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global2.a.b.a.yx, vec2<f32>(-357f, 151f)), global1.a.a.a.xy))), global1.a.b.a.zy)));
    var var_2 = global4[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.b, var_0), _wgslsmith_sub_vec3_u32(vec3<u32>(80746u, 4294967295u, 22254u), vec3<u32>(1u, global0.b.b, global0.a.b))), _wgslsmith_clamp_u32(~4294967295u, ~arg_2.x, 45811u))), 2u)];
    var var_3 = abs(vec4<i32>(23691i, abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-18401i, global1.a.c.x), -u_input.a.x, global2.a.c.x)), firstTrailingBit(global2.a.c.x), -6998i));
    var var_4 = Struct_3(Struct_2(global1.a.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.a.a)), 65821u, global0.c.x < 1i, select(select(vec3<bool>(arg_0.x, var_2.a.d.x, false), global1.a.d.wwz, vec3<bool>(false, false, true)), global2.a.b.d, vec3<bool>(arg_1, global3.d.x, arg_1))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.c.x, -12393i, -24167i), vec3<i32>(2147483647i, 2147483647i, global0.c.x)), max(-60128i, var_3.x), _wgslsmith_mod_i32(u_input.b, u_input.b)), vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.ywz, global2.a.c), 2147483647i ^ var_2.a.c.x, var_2.a.c.x)), !global0.d, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(sign(1812f)))));
    return vec3<u32>(17895u, _wgslsmith_sub_u32(0u, arg_2.x & (_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.a.b, 8377u, global1.a.a.b), vec3<u32>(4294967295u, global1.a.b.b, global3.b)) & ~25677u)), firstLeadingBit(~23043u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(10478u, var_2.a.b.b), arg_2)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = vec2<bool>(all(!select(global2.a.a.d, vec3<bool>(global1.a.a.d.x, global0.a.c, global1.a.a.d.x), !global2.a.b.d)), false);
    let var_1 = ~reverseBits(func_2(global2.a.d.xyw, global0.a.d.x, vec2<u32>(firstLeadingBit(global0.b.b), ~51829u)));
    global1 = global4[_wgslsmith_index_u32(abs(1u), 2u)];
    global3 = global2.a.a;
    let var_2 = var_0.x;
    return reverseBits(~reverseBits(global0.b.b) << (_wgslsmith_mult_u32(34760u, ~abs(global2.a.b.b)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    var var_1 = global0.c.x;
    var var_2 = false;
    let var_3 = ~vec2<i32>(u_input.a.x, 35606i);
    var var_4 = _wgslsmith_f_op_f32(-global2.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global3.a.x), global3.b, firstTrailingBit(min(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.a.b, 4294967295u, 0u, global1.a.b.b), vec4<u32>(17125u, 0u, 4294967295u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(25043u, global0.a.b, 1u, global2.a.b.b), vec4<u32>(global1.a.b.b, var_0.b.b, 10292u, 0u), vec4<u32>(4294967295u, global2.a.a.b, global0.a.b, 4294967295u))), ~vec4<u32>(109828u, global2.a.b.b, 4294967295u, 2508u))));
}

