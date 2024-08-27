struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(36036i, true, vec2<f32>(-183f, 216f)), Struct_1(66251i, true, vec2<f32>(-568f, -465f)), false, Struct_1(0i, true, vec2<f32>(364f, 462f))), Struct_2(Struct_1(1i, false, vec2<f32>(-1087f, 404f)), Struct_1(0i, false, vec2<f32>(-1386f, -260f)), false, Struct_1(33556i, false, vec2<f32>(2384f, -1526f))), Struct_2(Struct_1(-31758i, false, vec2<f32>(-185f, -697f)), Struct_1(2147483647i, false, vec2<f32>(-1000f, 986f)), true, Struct_1(-10753i, false, vec2<f32>(423f, 1268f))), Struct_2(Struct_1(0i, true, vec2<f32>(1000f, -1000f)), Struct_1(32068i, false, vec2<f32>(-403f, -802f)), true, Struct_1(-29537i, true, vec2<f32>(-115f, 699f))), Struct_2(Struct_1(1i, false, vec2<f32>(-385f, -1424f)), Struct_1(36328i, false, vec2<f32>(1000f, -366f)), false, Struct_1(15218i, true, vec2<f32>(-261f, 644f))), Struct_2(Struct_1(1i, true, vec2<f32>(1133f, -123f)), Struct_1(35144i, false, vec2<f32>(-1142f, 545f)), true, Struct_1(-1i, false, vec2<f32>(1232f, 1344f))), Struct_2(Struct_1(i32(-2147483648), true, vec2<f32>(-303f, 1000f)), Struct_1(4249i, true, vec2<f32>(-725f, -761f)), false, Struct_1(-7371i, true, vec2<f32>(-110f, -226f))), Struct_2(Struct_1(-29327i, false, vec2<f32>(-2140f, -1000f)), Struct_1(i32(-2147483648), false, vec2<f32>(859f, 1232f)), false, Struct_1(5825i, true, vec2<f32>(263f, 2200f))), Struct_2(Struct_1(0i, true, vec2<f32>(548f, 982f)), Struct_1(1i, true, vec2<f32>(-2085f, 202f)), true, Struct_1(2147483647i, false, vec2<f32>(602f, -289f))), Struct_2(Struct_1(i32(-2147483648), false, vec2<f32>(117f, -223f)), Struct_1(-60794i, false, vec2<f32>(644f, 127f)), true, Struct_1(-3016i, false, vec2<f32>(-708f, 2129f))), Struct_2(Struct_1(1i, true, vec2<f32>(-1310f, -460f)), Struct_1(-44267i, false, vec2<f32>(439f, 1057f)), true, Struct_1(2147483647i, true, vec2<f32>(500f, 648f))), Struct_2(Struct_1(81296i, true, vec2<f32>(-1290f, 1097f)), Struct_1(-41082i, true, vec2<f32>(-801f, 884f)), false, Struct_1(-836i, true, vec2<f32>(969f, 1333f))), Struct_2(Struct_1(0i, true, vec2<f32>(-819f, -323f)), Struct_1(0i, false, vec2<f32>(-1065f, -1473f)), true, Struct_1(2147483647i, true, vec2<f32>(1542f, 813f))), Struct_2(Struct_1(2147483647i, false, vec2<f32>(722f, -973f)), Struct_1(36458i, false, vec2<f32>(-353f, 111f)), true, Struct_1(14983i, false, vec2<f32>(1614f, -301f))), Struct_2(Struct_1(0i, true, vec2<f32>(-667f, -2210f)), Struct_1(-10430i, false, vec2<f32>(1767f, 361f)), false, Struct_1(24712i, false, vec2<f32>(1306f, -1278f))), Struct_2(Struct_1(i32(-2147483648), true, vec2<f32>(-191f, 356f)), Struct_1(2147483647i, false, vec2<f32>(2030f, -1000f)), false, Struct_1(2147483647i, false, vec2<f32>(1505f, 3079f))));

var<private> global3: array<vec3<f32>, 14>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -1091f, -555f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1346f)))));
    var var_1 = _wgslsmith_mult_u32(max(_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.a.x)) | firstLeadingBit(0u), ~max(u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.yz))) | u_input.a.x;
    var var_2 = 0u;
    var var_3 = _wgslsmith_add_i32(1i, abs(24646i));
    var var_4 = Struct_1(1i, global0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_f_op_vec2_f32(var_0.zy + vec2<f32>(-1000f, var_0.x))))));
    return 15115i;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(1u, u_input.a.x);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(func_3(arg_1.x, -2147483647i, vec3<i32>(u_input.b >> (var_0 % 32u), ~2147483647i, _wgslsmith_div_i32(u_input.b, 7877i))), ~u_input.b), -vec2<i32>(countOneBits(u_input.b >> (u_input.a.x % 32u)), 26104i));
    let var_2 = _wgslsmith_add_vec3_i32(abs(firstTrailingBit(firstLeadingBit(~vec3<i32>(var_1.x, -2147483647i, -11668i)))), vec3<i32>(8493i, 1i, 2147483647i));
    var var_3 = Struct_2(Struct_1(9296i, arg_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-274f, arg_0), vec2<f32>(arg_0, arg_0))), vec2<f32>(arg_0, arg_0))) + vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -664f), -959f))), Struct_1(min(i32(-1i) * -var_1.x, var_2.x), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1536f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, arg_0)))))), u_input.b == (abs(u_input.b << (u_input.a.x % 32u)) >> (var_0 % 32u)), Struct_1(~_wgslsmith_div_i32(~u_input.b, -2147483647i), global0.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1299f, -225f), vec2<f32>(arg_0, arg_0), vec2<bool>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, 1481f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-116f, -1355f))))))));
    global1 = array<vec4<u32>, 10>();
    return Struct_2(var_3.d, Struct_1((firstTrailingBit(1i) << (~u_input.a.x % 32u)) ^ -14044i, any(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, global0.x, arg_2), select(vec3<bool>(true, var_3.c, false), vec3<bool>(var_3.c, global0.x, true), false))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_3.b.c.x * arg_0))), arg_0)), !all(!select(global0.zxw, global0.www, arg_2)), var_3.a);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -186f), vec2<bool>(arg_1.x, arg_1.x), arg_2.x);
    global2 = array<Struct_2, 16>();
    var var_1 = Struct_1(firstLeadingBit(-u_input.b), 4294967295u == u_input.a.x, _wgslsmith_f_op_vec2_f32(-var_0.d.c));
    var_1 = var_0.d;
    global0 = !(!arg_2);
    return ~arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<f32> {
    global0 = select(!(!(!select(vec4<bool>(global0.x, false, arg_3.d.b, arg_1.b), vec4<bool>(true, global0.x, arg_1.b, false), vec4<bool>(true, false, arg_1.b, false)))), vec4<bool>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - arg_3.a.c.x)), global0.yz, arg_1.b).d.b, true, global0.x, true), any(global0.xx));
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-arg_1.c.x);
    let var_2 = !var_0.b;
    let var_3 = var_0.b;
    return arg_3.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec2<u32>(u_input.a.x, func_1(0u, vec3<bool>(false, global0.x, false), !vec4<bool>(true, true, global0.x, global0.x))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1630f)) + _wgslsmith_f_op_f32(max(564f, -869f))), vec2<bool>(global0.x, !global0.x), true).b, vec2<u32>(_wgslsmith_dot_vec4_u32(select(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], vec4<u32>(u_input.a.x, 0u, 0u, 4294967295u), global0.x), global1[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_add_u32(min(0u, u_input.a.x), u_input.a.x)), Struct_2(func_2(_wgslsmith_f_op_f32(f32(-1f) * -831f), global0.xz, true).d, Struct_1(-4176i, any(global0.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1152f, 157f))), !global0.x, Struct_1(u_input.b, global0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, -897f)))))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = _wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i & u_input.b, -1i, countOneBits(-508i), u_input.b), vec4<i32>(_wgslsmith_sub_i32(52300i, u_input.b), 1i, u_input.b, u_input.b), -vec4<i32>(u_input.b, u_input.b, u_input.b, 5813i))), vec4<i32>(~(-21843i), u_input.b, u_input.b, u_input.b));
    let var_3 = func_2(var_0.x, vec2<bool>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 4294967295u)) > u_input.a.x, true), func_2(-515f, vec2<bool>(true, true), !global0.x).a.b != true).b;
    global0 = select(!(!vec4<bool>(true, global0.x, true, true)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(global0.x, true, var_3.b, var_3.b), global0.x), select(vec4<bool>(false, var_3.b, var_3.b, var_3.b), select(vec4<bool>(true, global0.x, var_3.b, global0.x), vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, var_3.b, var_3.b, var_3.b)), select(vec4<bool>(true, true, true, false), vec4<bool>(global0.x, false, global0.x, true), var_3.b)), select(vec4<bool>(global0.x, global0.x, true, false), select(vec4<bool>(true, global0.x, false, true), vec4<bool>(var_3.b, var_3.b, true, true), global0.x), vec4<bool>(global0.x, true, false, var_3.b))), var_3.b);
    var var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

