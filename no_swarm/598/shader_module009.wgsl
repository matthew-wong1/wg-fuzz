struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<u32> = vec4<u32>(13952u, 36027u, 4294967295u, 91697u);

var<private> global2: array<u32, 12> = array<u32, 12>(1900u, 4619u, 1u, 1u, 60710u, 0u, 12597u, 17534u, 1u, 4294967295u, 14801u, 49304u);

var<private> global3: u32;

var<private> global4: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = u_input.b.x;
    var var_1 = arg_2;
    var var_2 = arg_2;
    var_1 = Struct_1(!var_1.a, var_2.b, _wgslsmith_dot_vec2_u32(~global1.wy, vec2<u32>(arg_2.c, reverseBits(~5815u))), var_1.d);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.d.yx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(589f, -559f), _wgslsmith_f_op_vec2_f32(-var_2.d.zy))))), arg_1.yz);
    return -2147483647i < (i32(-1i) * -_wgslsmith_sub_i32(arg_0.x, ~var_2.b));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_1(vec4<bool>(true, any(global0.zx), _wgslsmith_f_op_f32(-1000f * arg_1) > -349f, all(vec2<bool>(func_3(vec4<i32>(u_input.a.x, 1i, 1i, 1i), vec3<f32>(arg_0.d.x, -616f, -1921f), Struct_1(vec4<bool>(true, false, global0.x, arg_0.a.x), 460i, global1.x, arg_0.d)), false & arg_2.x))), min(u_input.a.x, _wgslsmith_mult_i32(max(countOneBits(arg_0.b), _wgslsmith_dot_vec3_i32(u_input.a.yww, u_input.a.zwy)), 0i & ~arg_0.b)), u_input.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1068f, arg_0.d.x, arg_1) * vec3<f32>(-1000f, 1436f, 373f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1498f, 186f, 527f)), arg_2.x)))), vec3<f32>(arg_1, arg_1, arg_1)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-486f, var_0.d.x, -634f)));
    var var_2 = Struct_1(!vec4<bool>(true, false, true, !var_0.a.x), _wgslsmith_mod_i32(arg_0.b, ~0i), ~u_input.b.x, var_1);
    var_0 = Struct_1(var_0.a, -(~1i), (u_input.b.x & (u_input.c << (~global1.x % 32u))) | _wgslsmith_add_u32(firstTrailingBit(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), select(global1.x, 4294967295u & u_input.c, !arg_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), 565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -607f)) * _wgslsmith_f_op_f32(1567f + _wgslsmith_f_op_f32(var_2.d.x - var_0.d.x)))));
    let var_3 = -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, -23370i >> (var_2.c % 32u), i32(-1i) * -1i), max(u_input.a.wxy | u_input.a.yzy, vec3<i32>(arg_0.b, u_input.a.x, -1i))) << ((69101u & ~(countOneBits(arg_0.c) | ~global1.x)) % 32u);
    return var_2.c;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    global3 = ~firstTrailingBit(max(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, 48974u), ~global1.xyy)));
    var var_0 = countOneBits(~vec2<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(firstLeadingBit(21372u), ~u_input.c)));
    var var_1 = Struct_1(global4[_wgslsmith_index_u32(~26591u, 25u)], 3884i, 4294967295u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-444f, -1000f, _wgslsmith_f_op_f32(round(-332f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(211f, -1243f, 1182f)), arg_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, 577f, 755f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1776f, -509f, 577f))))))));
    global1 = vec4<u32>(var_1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 50013u, reverseBits(global2[_wgslsmith_index_u32(var_1.c, 12u)]) >> (1996u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(50832u, global1.x, arg_3.x), arg_3.ywz)), countOneBits(select(~arg_3, arg_3, global1.x <= global1.x))), max(1u | ~arg_3.x, ~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global1.x, 12u)], arg_3.x, var_0.x)) | ~(~37113u), firstTrailingBit(~(~global1.x >> (~global2[_wgslsmith_index_u32(arg_3.x, 12u)] % 32u))));
    let var_2 = var_1.b;
    return Struct_1(vec4<bool>(true, arg_1.x, all(var_1.a.xxx), true), u_input.a.x, arg_3.x, vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-403f + -190f), _wgslsmith_f_op_f32(1250f - _wgslsmith_f_op_f32(trunc(900f))))), var_1.d.x));
}

fn func_1() -> bool {
    global0 = !select(!global4[_wgslsmith_index_u32(0u, 25u)], !select(!vec4<bool>(global0.x, false, true, global0.x), global4[_wgslsmith_index_u32(0u ^ global1.x, 25u)], vec4<bool>(false, global0.x, false, true)), vec4<bool>(all(global0.xw), !all(global4[_wgslsmith_index_u32(1u, 25u)]), u_input.a.x < ~u_input.a.x, any(vec4<bool>(true, false, global0.x, global0.x))));
    let var_0 = func_4(all(select(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(73585u, global2[_wgslsmith_index_u32(1u, 12u)], 5215u, 25505u), vec4<u32>(4294967295u, 1u, global2[_wgslsmith_index_u32(u_input.c, 12u)], 86428u)), 25u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(Struct_1(global4[_wgslsmith_index_u32(4294967295u, 25u)], 0i, u_input.b.x, vec3<f32>(-1357f, 242f, 494f)), 1054f, vec2<bool>(false, false)), u_input.b.x), 25u)], !vec4<bool>(global0.x, global0.x, false, global0.x))), global0.zy, 0i, reverseBits(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 73891u), global1.x), ~(~0u), _wgslsmith_sub_u32(46325u, global2[_wgslsmith_index_u32(global1.x, 12u)]), 4294967295u)));
    var var_1 = vec2<bool>(442f < var_0.d.x, any(func_4(false, global0.ww, ~min(1i, var_0.b), vec4<u32>(10455u >> (global2[_wgslsmith_index_u32(var_0.c, 12u)] % 32u), _wgslsmith_add_u32(1u, u_input.c), ~4036u, 4294967295u ^ global1.x)).a.zwz));
    global4 = array<vec4<bool>, 25>();
    global4 = array<vec4<bool>, 25>();
    return true | global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.b.x ^ (global2[_wgslsmith_index_u32(~abs(1u), 12u)] << (firstTrailingBit(global2[_wgslsmith_index_u32(1u, 12u)]) % 32u))) & ~64548u;
    var var_1 = 0u;
    let var_2 = Struct_1(global4[_wgslsmith_index_u32(13169u, 25u)], ~_wgslsmith_clamp_i32(abs(i32(-1i) * -1i), -5541i, u_input.a.x), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(978f, 1000f, -387f))))));
    let var_3 = ~u_input.b;
    global2 = array<u32, 12>();
    global1 = vec4<u32>(5155u, (abs(_wgslsmith_mult_u32(u_input.c, 29849u)) << ((_wgslsmith_mult_u32(var_2.c, global2[_wgslsmith_index_u32(var_2.c, 12u)]) | ~29617u) % 32u)) | 687u, countOneBits(11288u), abs(~37096u & var_3.x) ^ ~_wgslsmith_dot_vec3_u32(global1.zzy & vec3<u32>(1u, 65764u, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(var_3.x, 0u, 16371u))));
    let var_4 = Struct_1(vec4<bool>(0u == ~_wgslsmith_dot_vec3_u32(global1.xxy, var_3), func_1(), var_2.a.x, ((var_2.b >> (var_2.c % 32u)) < 25421i) || false), ~(-1i), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(29020u, 12u)], _wgslsmith_clamp_u32(var_2.c, var_3.x, abs(~4294967295u))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(37926u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-879f)) - -1000f), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, abs(min(u_input.a, u_input.a))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, var_4.b, -8293i), u_input.a))));
}

