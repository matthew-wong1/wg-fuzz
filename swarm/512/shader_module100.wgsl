struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: array<i32, 27>;

var<private> global2: array<u32, 21> = array<u32, 21>(82402u, 22758u, 1u, 74152u, 50438u, 0u, 67062u, 0u, 20107u, 5634u, 19363u, 0u, 1u, 86494u, 1u, 29762u, 0u, 35837u, 4294967295u, 0u, 59704u);

var<private> global3: array<Struct_2, 2>;

var<private> global4: array<u32, 28>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = max(~vec2<u32>(global4[_wgslsmith_index_u32(34612u, 28u)], 23991u) | ~vec2<u32>(0u, 4294967295u), abs(min(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(u_input.a, 21u)]), firstLeadingBit(vec2<u32>(1u, 1u))))) >> (vec2<u32>(~1u, 1u) % vec2<u32>(32u));
    var var_1 = Struct_1(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(arg_0 >= -522f, any(vec3<bool>(false, true, true)), -804f >= arg_0), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), all(vec4<bool>(true, true, false, false)))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true)), vec3<bool>(true, any(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true)), arg_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f - 714f))), _wgslsmith_sub_u32(~countOneBits(1u), global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(~1u, 21u)], 23319u), 21u)]), abs(vec2<u32>(_wgslsmith_mod_u32(~var_0.x, 0u), min(_wgslsmith_mod_u32(108718u, 89626u), 11055u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0, 121f), vec3<f32>(arg_0, arg_0, arg_0)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1955f, arg_0) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 412f, arg_0) - vec3<f32>(arg_0, arg_0, 1000f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-505f, -319f, -2098f), vec3<f32>(arg_0, 565f, arg_0)))))), _wgslsmith_f_op_f32(f32(-1f) * -1134f));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 27u)];
    global4 = array<u32, 28>();
    var var_3 = Struct_1(vec3<bool>(var_1.a.x, select(var_1.a.x, any(vec3<bool>(var_1.a.x, false, var_1.a.x)), true), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, var_1.a.x), var_1.a.x))), var_1.b, ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2256u, 28u)], 28u)], 4294967295u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 28u)]), vec3<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(var_0.x, 21u)])), abs(vec3<u32>(11317u, 33202u, global2[_wgslsmith_index_u32(u_input.a, 21u)]))), var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.d + var_1.d))) - var_1.d) - vec3<f32>(1057f, _wgslsmith_f_op_f32(443f + var_1.d.x), -246f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-563f, -1000f))))));
    return !(!((global0[_wgslsmith_index_u32(u_input.a, 22u)] << (12324u % 32u)) >= _wgslsmith_clamp_u32(firstLeadingBit(global2[_wgslsmith_index_u32(var_0.x, 21u)]), ~var_1.c.x, var_0.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(932f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), -940f)) + _wgslsmith_f_op_f32(-arg_1.x)));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(-select(0i, u_input.b.x, true)), -16468i), countOneBits(~(vec2<i32>(9076i, -12878i) ^ vec2<i32>(-20095i, u_input.b.x)) >> (~vec2<u32>(global0[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(u_input.a, 28u)]) % vec2<u32>(32u))));
    var var_2 = global4[_wgslsmith_index_u32(4294967295u, 28u)];
    return vec3<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), false, true);
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    global1 = array<i32, 27>();
    let var_0 = func_4(~select(select(~u_input.b, u_input.b, func_3(arg_1)), vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 52305u, 29539u, 4294967295u), vec4<u32>(4857u, global2[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12354u, 22u)], 28u)])), 27u)], ~global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_0))) + vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1))));
    var var_1 = 7161u;
    var var_2 = select(~vec3<u32>(_wgslsmith_sub_u32(~28659u, global4[_wgslsmith_index_u32(u_input.a, 28u)]), 12700u, _wgslsmith_dot_vec4_u32(vec4<u32>(45141u, global0[_wgslsmith_index_u32(19044u, 22u)], 2595u, 2264u), vec4<u32>(0u, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3647u, 22u)], 21u)], 28u)], 22u)], global4[_wgslsmith_index_u32(4294967295u, 28u)], 75696u)) ^ ~global2[_wgslsmith_index_u32(7935u, 21u)]), firstTrailingBit(firstTrailingBit(vec3<u32>(1u, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~120333u, 28u)], 21u)], firstTrailingBit(4294967295u)))), true);
    let var_3 = true;
    return var_3;
}

fn func_1() -> vec3<bool> {
    global2 = array<u32, 21>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f));
    global1 = array<i32, 27>();
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(global0[_wgslsmith_index_u32(34242u << ((20866u ^ u_input.a) % 32u), 22u)]), ~(~max(u_input.a, ~28888u))), 28u)];
    var_0 = -1000f;
    return !vec3<bool>(true, true, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(f32(-1f) * -864f)), -677f));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global1 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.e.d.x, -1000f, _wgslsmith_f_op_f32(-148f - -198f), _wgslsmith_f_op_f32(round(arg_0.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1134f), 660f, -1118f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(343f, -733f, arg_0.e.d.x, arg_0.e.e) + vec4<f32>(520f, 287f, -1000f, -548f)))))), true));
    var var_1 = Struct_2(arg_0.c, arg_1.b, arg_0.e, var_0.x);
    var var_2 = arg_1.c;
    var var_3 = true;
    return Struct_2(arg_0.c, var_1.c, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(arg_0.e.d.x * var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 27>();
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(0u, ~91053u), _wgslsmith_mult_u32(41361u, ~u_input.a) ^ ~select(4294967295u, firstLeadingBit(u_input.a), true), _wgslsmith_div_u32(~_wgslsmith_mult_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], ~global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 28u)], 22u)]), global2[_wgslsmith_index_u32(12755u, 21u)] ^ 10000u));
    let var_1 = func_5(Struct_3(2147483647i, select(select(func_1(), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), func_1()), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(982f, -708f) + vec2<f32>(452f, 473f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1216f, -1146f)))) * vec2<f32>(-249f, -308f)), Struct_1(vec3<bool>(true, false, true), reverseBits(46172u), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(153348u, 4294967295u), var_0.yz), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 22u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-296f, 2629f, 1773f), vec3<f32>(1453f, -420f, 217f), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1376f, -1729f, 139f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(max(2715f, -864f)))), Struct_2(vec4<bool>(51400i >= global1[_wgslsmith_index_u32(0u, 27u)], true, true, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1407f))), Struct_1(vec3<bool>(func_2(1585f, -1261f), func_1().x, true), _wgslsmith_div_u32(var_0.x, u_input.a), firstTrailingBit(var_0.xy), vec3<f32>(_wgslsmith_f_op_f32(sign(-1189f)), _wgslsmith_f_op_f32(floor(-221f)), 138f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(804f))))), Struct_1(vec3<bool>(true, true, true), ~1u, _wgslsmith_clamp_vec2_u32(abs(var_0.yx), vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 21u)], 28u)]), vec2<u32>(1u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 21u)], 28u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(887f, 566f, 810f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, 2547f, 758f))), 1132f), 1042f), global1[_wgslsmith_index_u32(1u, 27u)]);
    global3 = array<Struct_2, 2>();
    var var_2 = var_0;
    global2 = array<u32, 21>();
    global2 = array<u32, 21>();
    let var_3 = ~(~global0[_wgslsmith_index_u32(112677u, 22u)]);
    let x = u_input.a;
    s_output = StorageBuffer(select(~max(vec4<i32>(0i, u_input.b.x, global1[_wgslsmith_index_u32(20129u, 27u)], 2147483647i), vec4<i32>(10208i, u_input.b.x, u_input.b.x, -54643i)) << (~firstLeadingBit(vec4<u32>(1u, var_3, 13742u, 113159u)) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(max(1i, 1i)), reverseBits(-3657i), 1i, _wgslsmith_div_i32(reverseBits(61991i), u_input.b.x)), !(!vec4<bool>(false, false, var_1.a.x, true))), abs(~vec3<i32>(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(var_2.x, 27u)]), -3978i, _wgslsmith_add_i32(-6563i, 28293i))));
}

