struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(91353u, 4294967295u), vec4<f32>(1337f, 1238f, 1000f, -307f)), Struct_1(vec2<u32>(24812u, 0u), vec4<f32>(1481f, -1665f, 1884f, -1050f)), Struct_1(vec2<u32>(9553u, 4294967295u), vec4<f32>(1000f, -2030f, 292f, 1000f)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-670f, -826f, -1411f, 2100f)), Struct_1(vec2<u32>(25820u, 1u), vec4<f32>(-1084f, 299f, 1000f, 623f)), Struct_1(vec2<u32>(14533u, 16929u), vec4<f32>(1200f, 842f, -1743f, 827f)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-1996f, -685f, 591f, -1031f)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(-2097f, -1026f, -271f, 830f)), Struct_1(vec2<u32>(67132u, 4294967295u), vec4<f32>(845f, -415f, -1043f, -868f)), Struct_1(vec2<u32>(29734u, 1u), vec4<f32>(128f, 2206f, -536f, 1000f)), Struct_1(vec2<u32>(7566u, 3874u), vec4<f32>(3012f, 1040f, -1106f, 538f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-997f, 219f, -1309f, -1000f)), Struct_1(vec2<u32>(62112u, 29714u), vec4<f32>(2000f, -791f, 815f, 999f)), Struct_1(vec2<u32>(74945u, 4294967295u), vec4<f32>(-145f, 1421f, -908f, -316f)), Struct_1(vec2<u32>(1u, 24313u), vec4<f32>(-1327f, -2307f, -243f, 219f)), Struct_1(vec2<u32>(0u, 104839u), vec4<f32>(459f, 663f, -666f, -296f)), Struct_1(vec2<u32>(24414u, 62516u), vec4<f32>(-1075f, -975f, 1022f, 616f)), Struct_1(vec2<u32>(72385u, 40677u), vec4<f32>(-858f, -211f, 2484f, -392f)), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(-1000f, 1553f, 730f, -574f)), Struct_1(vec2<u32>(27290u, 1u), vec4<f32>(477f, -350f, 1038f, 2028f)), Struct_1(vec2<u32>(12434u, 43761u), vec4<f32>(-2120f, 961f, 1315f, 657f)), Struct_1(vec2<u32>(70226u, 4294967295u), vec4<f32>(138f, 813f, 1000f, 550f)), Struct_1(vec2<u32>(4294967295u, 22280u), vec4<f32>(1000f, 579f, -2251f, -395f)), Struct_1(vec2<u32>(64261u, 4294967295u), vec4<f32>(482f, -611f, -813f, -631f)));

var<private> global1: array<i32, 29>;

var<private> global2: array<vec3<i32>, 17>;

var<private> global3: array<u32, 12> = array<u32, 12>(1u, 36430u, 0u, 1u, 1u, 19156u, 0u, 4294967295u, 35555u, 1u, 63475u, 0u);

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(arg_1.a.x), 4294967295u), 29u)] << ((arg_2.x | arg_1.a.x) % 32u);
    global2 = array<vec3<i32>, 17>();
    let var_1 = Struct_1(~(~arg_1.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-2384f, arg_0.b.x)), arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, arg_0.b.x), _wgslsmith_f_op_f32(min(-431f, -1097f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.x * 1465f)))), arg_1.b, true)));
    global3 = array<u32, 12>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f + _wgslsmith_f_op_f32(-1000f + var_1.b.x)))));
    return Struct_1((vec2<u32>(firstLeadingBit(u_input.b), _wgslsmith_mod_u32(46283u, 4294967295u)) >> (firstTrailingBit(vec2<u32>(3293u, 20025u) | vec2<u32>(var_1.a.x, 85747u)) % vec2<u32>(32u))) | firstLeadingBit(arg_0.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(step(-140f, 605f)), var_1.b.x)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    global4 = array<Struct_1, 29>();
    global3 = array<u32, 12>();
    let var_0 = ~arg_3;
    global3 = array<u32, 12>();
    var var_1 = ~abs(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(4294967295u, 17u)], abs(global2[_wgslsmith_index_u32(u_input.a.x, 17u)]) >> ((vec3<u32>(arg_2.a.x, 1u, 7323u) << (vec3<u32>(arg_0.x, 1502u, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return arg_0.zzw;
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    global2 = array<vec3<i32>, 17>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(-504f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-421f)), -239f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-340f)), -651f)))))), 2668f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1012f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2307f, _wgslsmith_f_op_f32(sign(586f)))))));
    global1 = array<i32, 29>();
    let var_1 = all(!vec3<bool>(!select(true, false, true), reverseBits(global1[_wgslsmith_index_u32(28493u, 29u)]) != -69928i, !any(vec2<bool>(false, true))));
    var var_2 = ~u_input.a.xw;
    return func_2(Struct_1(min(arg_0.yy, vec2<u32>(18039u, 4294967295u) | vec2<u32>(var_2.x, 1u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -305f), -254f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-578f, -790f)))), Struct_1(vec2<u32>(~firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 12u)], 12u)]), _wgslsmith_dot_vec3_u32(arg_0, select(vec3<u32>(var_2.x, 7649u, 110021u), vec3<u32>(55754u, var_2.x, 2678u), vec3<bool>(var_1, var_1, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, var_0.x, 839f, -455f))) + vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - -378f), _wgslsmith_f_op_f32(1000f + var_0.x)))), u_input.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = func_4(~func_3(vec4<u32>(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 12u)], 37423u >> (1u % 32u), _wgslsmith_div_u32(4294967295u, var_0.a.x), global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 12u)]), arg_1.b.x, func_2(global0[_wgslsmith_index_u32(arg_1.a.x, 24u)], Struct_1(vec2<u32>(4294967295u, arg_1.a.x), vec4<f32>(var_0.b.x, 837f, -2522f, arg_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, 0u, 24060u), u_input.a)), ~56951u));
    let var_2 = _wgslsmith_f_op_f32(ceil(-212f));
    global4 = array<Struct_1, 29>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.yyx, var_0.b.zzw, vec3<bool>(false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))))) - _wgslsmith_f_op_vec3_f32(arg_0.yzz * arg_1.b.xyy));
    return vec3<bool>(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(117994u, 58748u, var_0.a.x, var_0.a.x)), u_input.a) <= min(0u, ~_wgslsmith_sub_u32(arg_1.a.x, var_0.a.x)), true, select(false, true | (true | (arg_1.b.x > var_2)), any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), 1099f < arg_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(true | any(vec2<bool>(true, true)), true, false), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-547f)), _wgslsmith_div_f32(-748f, -2349f), -466f, 1318f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -611f, -1000f, -200f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1446f, 583f, -219f, -754f), vec4<f32>(-472f, 1218f, 123f, -2007f), vec4<bool>(true, false, false, true))))), global4[_wgslsmith_index_u32(u_input.b, 29u)]), all(func_1(vec4<f32>(-1000f, _wgslsmith_div_f32(-1000f, 2714f), -307f, -1247f), Struct_1(u_input.a.xw, func_2(global0[_wgslsmith_index_u32(u_input.b, 24u)], Struct_1(u_input.a.xy, vec4<f32>(-331f, 1000f, -532f, -1261f)), u_input.a).b)).yy));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1679f, 1000f, 1070f)))))));
    let var_2 = func_4(u_input.a.yzz);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(136f * _wgslsmith_f_op_f32(-546f - var_1.x))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.yy, vec2<f32>(-422f, -498f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.zy + _wgslsmith_f_op_vec2_f32(select(var_2.b.yz, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1618f, var_1.x))), var_0.x)))));
    var var_5 = select(-(~((vec2<i32>(global1[_wgslsmith_index_u32(var_2.a.x, 29u)], -30582i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) >> (~vec2<u32>(var_2.a.x, 73938u) % vec2<u32>(32u)))), -((vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 2147483647i) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))) >> (vec2<u32>(~u_input.b, 10671u) % vec2<u32>(32u))), false);
    global2 = array<vec3<i32>, 17>();
    var_5 = _wgslsmith_add_vec2_i32(vec2<i32>(var_5.x, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_5.x, min(global1[_wgslsmith_index_u32(1u, 29u)], -global1[_wgslsmith_index_u32(u_input.b, 29u)])), vec2<i32>(_wgslsmith_add_i32(countOneBits(0i), -2147483647i), -abs(-2147483647i)), reverseBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(-14445i, var_5.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_5.x, 0i), vec2<i32>(-1i, var_5.x), vec2<i32>(0i, 13571i))))));
    let var_6 = Struct_1(_wgslsmith_sub_vec2_u32(u_input.a.ww, firstTrailingBit(~func_3(vec4<u32>(13737u, 1u, 4294967295u, u_input.b), var_3.x, var_2, var_2.a.x).xy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1585f - -858f), var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x), var_4.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1111f, var_4.x, -1204f, 1000f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(574f, -1230f, var_4.x, -1000f))))) + var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.a.x, 12u)], 29u)], ~min(~(-1i), -1i), var_5.x, (-34691i ^ (global1[_wgslsmith_index_u32(u_input.a.x, 29u)] >> (11749u % 32u))) & _wgslsmith_clamp_i32(var_5.x, _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(28405u, 17u)], vec3<i32>(var_5.x, global1[_wgslsmith_index_u32(0u, 29u)], var_5.x)), min(var_5.x, 24867i))), max(~(~var_2.a.x), ~firstLeadingBit(u_input.a.x)), 1000f);
}

