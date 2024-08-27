struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 23> = array<f32, 23>(423f, 1000f, -581f, -233f, -885f, 1455f, -489f, -1394f, -190f, -681f, 324f, -482f, -586f, 192f, -384f, 1024f, 266f, -703f, 188f, 741f, 1000f, -1507f, 2410f);

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec3<i32>(-2147483647i, -28628i, _wgslsmith_mult_i32(~(-2147483647i), u_input.a));
    global2 = array<vec2<bool>, 10>();
    global2 = array<vec2<bool>, 10>();
    global1 = array<f32, 23>();
    var var_1 = ~vec4<u32>(17946u, 4294967295u ^ ~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.c), ~(~1u));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, ~u_input.b.x, 0u), var_1.xxw) >> (vec3<u32>(countOneBits(reverseBits(38002u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 4148u, 1u), ~vec4<u32>(var_1.x, 4294967295u, 103214u, 15854u)), firstTrailingBit(~u_input.b.x)) % vec3<u32>(32u)), var_1.xyw);
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = all(select(vec2<bool>(true, all(!global2[_wgslsmith_index_u32(arg_0, 10u)])), global2[_wgslsmith_index_u32(115550u & _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, arg_0, u_input.c, arg_0)), vec4<u32>(1u, 4294967295u, u_input.b.x, arg_0)), 10u)], global0.b));
    global0 = Struct_1(global0.a, global0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(34047u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)]))))));
    let var_2 = select(!(!vec3<bool>(!global0.b, global0.b, select(var_0, true, global0.b))), vec3<bool>(any(vec3<bool>(true, true, true)) && global0.b, true, _wgslsmith_mult_i32(1i, 0i) < _wgslsmith_sub_i32(~u_input.a, ~u_input.a)), !(!var_0));
    var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -1000f, _wgslsmith_div_f32(-2008f, global1[_wgslsmith_index_u32(11438u, 23u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 1000f, 1092f), vec3<f32>(226f, var_1.x, var_1.x), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2177f, var_1.x, global1[_wgslsmith_index_u32(u_input.c, 23u)])))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], var_1.x, -1118f) - vec3<f32>(815f, 1414f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-977f, var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec3<f32>(-1027f, 1000f, global1[_wgslsmith_index_u32(19499u, 23u)]), var_2)))))), !(arg_0 > u_input.b.x) && all(select(!var_2.yy, select(global2[_wgslsmith_index_u32(arg_0, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], var_2.x), false))));
    return vec3<i32>(u_input.a, 1i, -_wgslsmith_div_i32(u_input.a, -max(0i, 1i)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~u_input.b.x;
    global0 = Struct_1(~func_3(func_2(Struct_1(global0.a, global0.b), select(global2[_wgslsmith_index_u32(u_input.c, 10u)], vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b)), countOneBits(vec4<i32>(2147483647i, -2176i, -1i, u_input.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(1u, 23u)], -867f, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(41020u, 23u)]), vec4<f32>(-2371f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], -180f, global1[_wgslsmith_index_u32(4294967295u, 23u)]))))), any(!vec2<bool>(global0.b, !global0.b)));
    var var_1 = Struct_1(~(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -37767i, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)))), !global0.b);
    var var_2 = vec4<bool>(var_1.a.x > -abs(_wgslsmith_add_i32(global0.a.x, 39695i)), any(vec4<bool>(var_1.b, any(global2[_wgslsmith_index_u32(func_2(Struct_1(vec3<i32>(-2147483647i, var_1.a.x, -2147483647i), false), vec2<bool>(true, false), vec4<i32>(u_input.a, 4935i, var_1.a.x, 39347i), vec4<f32>(393f, global1[_wgslsmith_index_u32(1u, 23u)], 364f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])), 10u)]), global0.b, var_1.b)), false, 396f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 23u)] * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1444u, 44291u), 23u)])));
    let var_3 = select(abs(~u_input.b.x), u_input.b.x, min(u_input.c, u_input.b.x) != 1u);
    return Struct_1(-(~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.x, u_input.a, u_input.a), global0.a), func_3(22772u))), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<f32, 23>();
    let var_0 = Struct_1(vec3<i32>(-19522i, -arg_2.a.x >> (reverseBits(2195u) % 32u), arg_0.a.x | ~(-10357i)), true);
    var var_1 = global2[_wgslsmith_index_u32(~u_input.c, 10u)];
    let var_2 = arg_0;
    let var_3 = vec3<u32>(1u >> (u_input.b.x % 32u), 1u, u_input.b.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 10>();
    let var_0 = func_4(func_1(), vec4<i32>(-_wgslsmith_mod_i32(~u_input.a, i32(-1i) * -2147483647i), countOneBits(min(~global0.a.x, 1i)), u_input.a, -39701i), func_1());
    var var_1 = Struct_1(global0.a, global0.b);
    global2 = array<vec2<bool>, 10>();
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(40188u, u_input.c, 4294967295u), vec3<u32>(u_input.b.x, 0u, u_input.c), vec3<bool>(var_0.b, global0.b, global0.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, 66648u), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x))) >> ((select(vec3<u32>(u_input.b.x, 12802u, 9435u), vec3<u32>(4294967295u, u_input.c, u_input.b.x), vec3<bool>(global0.b, global0.b, true)) | abs(vec3<u32>(u_input.b.x, 4294967295u, 0u))) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.c, 39148u)), max(vec3<u32>(60723u, 4294967295u, u_input.b.x), vec3<u32>(u_input.c, u_input.c, 41423u))))), 10u)];
    global0 = func_1();
    var var_3 = !var_2.x != (select(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-54279i, var_1.a.x, global0.a.x), -var_0.a), var_2.x) != 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(23006i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, 21518i), ~1i), reverseBits(-2147483647i)) >> (0u % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 95422u), 23u)] * _wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(66867u, 23u)])) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(u_input.c, u_input.b.x), 23u)])))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global0.a.x, u_input.a) & func_3(3448u).x, u_input.a, ~3457i | reverseBits(var_1.a.x), _wgslsmith_div_i32(-var_0.a.x, _wgslsmith_div_i32(var_0.a.x, 0i))), _wgslsmith_add_vec4_i32(~(vec4<i32>(2147483647i, 35727i, -1i, u_input.a) << (vec4<u32>(4294967295u, 38587u, u_input.c, 1u) % vec4<u32>(32u))), -reverseBits(vec4<i32>(2147483647i, -2147483647i, var_1.a.x, -9904i)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 23u)] - global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.c), vec4<u32>(46223u, u_input.c, u_input.c, 28377u)) & u_input.b.x, 23u)]), u_input.b);
}

