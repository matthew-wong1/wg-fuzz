struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 5>;

var<private> global4: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(1171f, -159f, -1308f, 714f), vec4<f32>(425f, -885f, -720f, -523f), vec4<f32>(-888f, 2070f, 1584f, 247f), vec4<f32>(551f, 2871f, -2179f, -1772f), vec4<f32>(1002f, 505f, -627f, 366f), vec4<f32>(-344f, -436f, 822f, 1424f), vec4<f32>(-340f, -1335f, -915f, 109f), vec4<f32>(-697f, 904f, -2141f, 1445f), vec4<f32>(-1011f, 1283f, -136f, -429f), vec4<f32>(829f, -581f, -584f, 1000f), vec4<f32>(-1477f, 340f, 674f, -354f), vec4<f32>(-498f, -585f, 230f, -529f), vec4<f32>(-1159f, 1154f, 726f, 1978f), vec4<f32>(-181f, 243f, 972f, 2103f), vec4<f32>(-1209f, 1376f, -1300f, 1832f), vec4<f32>(-2183f, 773f, 345f, 1000f), vec4<f32>(-241f, -943f, -1487f, -713f), vec4<f32>(-1099f, -1310f, 117f, -2073f), vec4<f32>(-121f, 1032f, -1512f, -183f), vec4<f32>(-1462f, -956f, 1067f, -366f), vec4<f32>(1481f, -995f, 158f, 2732f), vec4<f32>(-1082f, 1098f, 137f, -867f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32) -> vec2<bool> {
    global4 = array<vec4<f32>, 22>();
    var var_0 = arg_0;
    global0 = true;
    var var_1 = arg_0;
    var var_2 = ~(-28428i);
    return select(var_1.a, vec2<bool>(global1.a.x, select(arg_0.a.x, true == (-20189i < arg_0.c), global2.a.x)), !(_wgslsmith_f_op_f32(round(-989f)) <= -1336f));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(global4[_wgslsmith_index_u32(firstTrailingBit(global1.b), 22u)]));
    var var_1 = Struct_1(select(!(!select(global2.a, global1.a, global2.a)), select(select(!global1.a, select(vec2<bool>(global2.a.x, false), global1.a, vec2<bool>(global2.a.x, global2.a.x)), true), func_3(Struct_1(global1.a, global1.b, arg_0), ~vec4<u32>(1u, 0u, 18650u, 1u), 4294967295u), vec2<bool>(global2.a.x && global2.a.x, true)), all(func_3(global3[_wgslsmith_index_u32(countOneBits(global1.b), 5u)], vec4<u32>(18181u, global2.b, global1.b, global1.b), _wgslsmith_div_u32(33782u, 82022u)))), global1.b, min(-4748i & global2.c, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(arg_0, global2.c)), -u_input.b >> ((vec2<u32>(global1.b, global1.b) | vec2<u32>(global2.b, 12962u)) % vec2<u32>(32u)))));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(var_1.b), countOneBits(global1.b), global2.b ^ _wgslsmith_div_u32(52086u, _wgslsmith_sub_u32(global1.b, 4294967295u))) << (global1.b % 32u), 5u)];
    global3 = array<Struct_1, 5>();
    var var_3 = global3[_wgslsmith_index_u32(1u, 5u)];
    return global2.a;
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    global3 = array<Struct_1, 5>();
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(177f, -2192f, arg_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -758f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f * -1205f)), 1378f), 1000f), vec4<f32>(909f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1793f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-907f + 857f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-766f)), -2191f)), 516f)), _wgslsmith_f_op_f32(floor(-666f))), global1.a.x));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x) - global4[_wgslsmith_index_u32(arg_0.b, 22u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1080f, -2227f, var_0.x, 1657f)))))));
    global4 = array<vec4<f32>, 22>();
    return _wgslsmith_f_op_vec2_f32(round(var_0.xy));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_2(global1.c), global2.b, 0i))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, -120f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-955f, -1581f) + vec2<f32>(737f, 945f)))))));
    var var_1 = vec3<i32>(abs(-abs(_wgslsmith_mult_i32(-6871i, global1.c))), arg_1.c, -1i);
    var var_2 = !vec2<bool>(func_3(Struct_1(global1.a, arg_1.b, u_input.a), vec4<u32>(global1.b, 47345u, global2.b, arg_1.b), global2.b).x | !func_3(Struct_1(global1.a, 4294967295u, 8718i), vec4<u32>(arg_1.b, 23964u, 29530u, global2.b), 1u).x, global1.a.x);
    let var_3 = true;
    let var_4 = ~55045u;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = vec3<i32>(u_input.a, firstTrailingBit(arg_3.c), 3452i);
    var var_1 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(10029u, 24189u, 46515u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 1u, global2.b) & vec3<u32>(arg_3.b, arg_3.b, global1.b), max(vec3<u32>(arg_3.b, 91234u, 4294967295u), vec3<u32>(arg_0.b, arg_0.b, 31261u)))));
    var_1 = arg_0.b;
    var var_2 = abs(countOneBits(arg_3.b));
    return any(select(select(vec3<bool>(arg_3.a.x, false, arg_0.a.x), !(!vec3<bool>(true, global2.a.x, true)), true), select(select(select(vec3<bool>(arg_3.a.x, global2.a.x, arg_3.a.x), vec3<bool>(false, false, false), vec3<bool>(arg_0.a.x, global1.a.x, global1.a.x)), !vec3<bool>(arg_3.a.x, global1.a.x, arg_0.a.x), select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(true, global2.a.x, global1.a.x), vec3<bool>(true, global2.a.x, global1.a.x))), select(select(vec3<bool>(true, false, false), vec3<bool>(arg_3.a.x, arg_3.a.x, global2.a.x), arg_0.a.x), vec3<bool>(global1.a.x, global1.a.x, false), true), !(arg_0.a.x | arg_0.a.x)), !(arg_3.a.x & true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!((global2.a.x || global2.a.x) || global2.a.x) || global2.a.x, all(vec2<bool>(func_5(Struct_1(vec2<bool>(global2.a.x, true), 0u, 2147483647i), _wgslsmith_sub_u32(global1.b, 94770u), _wgslsmith_f_op_f32(-1064f * -814f), func_1(global2.a, global3[_wgslsmith_index_u32(26171u, 5u)])), true)), true);
    global3 = array<Struct_1, 5>();
    var var_1 = ~_wgslsmith_div_i32(-13682i, u_input.a ^ _wgslsmith_mult_i32(1i, max(-5910i, global2.c)));
    let var_2 = firstTrailingBit(u_input.b);
    let var_3 = !(!(!vec3<bool>(!global2.a.x, func_2(global2.c).x, global2.a.x)));
    var var_4 = !vec3<bool>(!var_0.x, !any(var_3), false);
    var_1 = ~_wgslsmith_dot_vec4_i32(~((vec4<i32>(u_input.a, global1.c, var_2.x, -4707i) | vec4<i32>(u_input.a, u_input.b.x, global1.c, var_2.x)) << (abs(vec4<u32>(31148u, 1u, global2.b, global1.b)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-13389i, global2.c, u_input.b.x, 1i), vec4<i32>(-4590i, u_input.a, global1.c, 1i), vec4<bool>(var_0.x, var_4.x, true, false)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 3173i, -2147483647i, 0i), vec4<i32>(global2.c, var_2.x, 1i, 1i)), min(~vec4<i32>(2147483647i, global1.c, 43887i, -2147483647i), ~vec4<i32>(1i, -20908i, 9559i, -36469i))));
    let x = u_input.a;
    s_output = StorageBuffer(min(max(firstTrailingBit(vec4<i32>(global2.c, var_2.x, -18247i, 2147483647i)) >> (vec4<u32>(global2.b, 67301u, 34534u, 0u) % vec4<u32>(32u)), vec4<i32>(-1i, -1i, _wgslsmith_sub_i32(17636i, global1.c), var_2.x << (4294967295u % 32u))), (vec4<i32>(global1.c, 10314i, -56602i, u_input.b.x) << (~vec4<u32>(global1.b, 26295u, 4294967295u, 4301u) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 9501u, global1.b, global1.b) >> (vec4<u32>(global2.b, 36035u, 1u, 67740u) % vec4<u32>(32u)), vec4<u32>(1u, 34417u, 1u, 92172u), vec4<u32>(24799u, global1.b, global1.b, 0u)) % vec4<u32>(32u))), ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.b, global1.b), vec2<u32>(global2.b, global1.b)))), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f - -1258f) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(!var_3.zz, global1.b, select(2147483647i, var_2.x, true)))).x));
}

