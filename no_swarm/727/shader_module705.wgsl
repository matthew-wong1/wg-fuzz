struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 2594u;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(206f, -638f, -487f), 0i), Struct_1(vec3<f32>(-405f, -664f, 473f), 0i), Struct_1(vec3<f32>(-1524f, 2238f, -606f), 1i), Struct_1(vec3<f32>(-1000f, 939f, -180f), 1i), Struct_1(vec3<f32>(202f, 197f, -910f), i32(-2147483648)), Struct_1(vec3<f32>(-173f, -942f, -655f), 2147483647i), Struct_1(vec3<f32>(-1000f, -121f, -1281f), -1i), Struct_1(vec3<f32>(625f, 580f, -1546f), -57685i), Struct_1(vec3<f32>(-913f, 283f, -289f), 55870i), Struct_1(vec3<f32>(-401f, -375f, 742f), i32(-2147483648)), Struct_1(vec3<f32>(-362f, -1584f, -1540f), 1i), Struct_1(vec3<f32>(-1069f, -180f, -854f), 9664i), Struct_1(vec3<f32>(-664f, 463f, 1025f), i32(-2147483648)), Struct_1(vec3<f32>(319f, -1498f, 868f), 2147483647i), Struct_1(vec3<f32>(-887f, -887f, -1000f), 0i), Struct_1(vec3<f32>(-560f, -214f, 244f), 38268i), Struct_1(vec3<f32>(-962f, -1000f, -1345f), -51612i), Struct_1(vec3<f32>(542f, 348f, 105f), 50910i), Struct_1(vec3<f32>(833f, -334f, -1000f), -55942i), Struct_1(vec3<f32>(-414f, 1948f, 142f), 1i), Struct_1(vec3<f32>(1039f, 638f, 575f), 840i), Struct_1(vec3<f32>(-114f, -2103f, 1377f), 7966i));

var<private> global2: vec4<f32>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(605f, 1414f, -729f), 47875i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = _wgslsmith_mod_u32(~19766u, 48642u ^ ~max(_wgslsmith_clamp_u32(66367u, 0u, 75971u), 28472u));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-684f)), arg_0.a.x, any(vec3<bool>(false, false, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * -382f)), _wgslsmith_f_op_f32(-412f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.a.x, global3.a.x, false)))))), _wgslsmith_f_op_f32(max(global2.x, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a.x))));
    let var_0 = !select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true), any(vec3<bool>(false, true, true)) && any(vec3<bool>(true, true, true)));
    let var_1 = ~vec4<i32>(~(~2147483647i), ~(-22791i), 1i, -33972i);
    global1 = array<Struct_1, 22>();
    return _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(~_wgslsmith_mod_i32(-29846i, -8845i), 1i)), _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(~0i, min(_wgslsmith_div_i32(0i, global3.b), 1i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = vec3<bool>(arg_2.x, arg_2.x, true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(1666f * -634f), _wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, arg_0.a.x, 229f) + vec3<f32>(global2.x, -1663f, -1087f))))), -577i);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-574f, 171f, 241f, 652f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, 698f, 2195f, global3.a.x), vec4<f32>(-573f, var_1.a.x, 2118f, 179f)), !vec4<bool>(true, true, arg_2.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(arg_0.a.x - var_1.a.x), var_1.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, global3.a.x, 1177f, arg_0.a.x) - vec4<f32>(var_1.a.x, arg_0.a.x, -1904f, -181f)) * vec4<f32>(global3.a.x, var_1.a.x, 1486f, global3.a.x))))));
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 1u), 22u)];
    global3 = Struct_1(var_1.a, func_3(arg_0) & ~arg_0.b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - var_1.a.x)), _wgslsmith_f_op_f32(-590f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -318f))))), _wgslsmith_f_op_f32(floor(-226f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(func_4(Struct_1(arg_1.a, func_3(arg_1)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 37437u), vec2<u32>(0u, 34989u), vec2<u32>(68560u, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(79921u, 1u), vec2<u32>(81987u, 55958u))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true))), global2.x));
    let var_0 = ~arg_1.b;
    let var_1 = global3.b;
    global0 = ~48274u;
    return true;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<bool>) -> i32 {
    let var_0 = arg_1.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.zz * vec2<f32>(global2.x, global2.x)))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 22u)];
    global3 = Struct_1(vec3<f32>(531f, _wgslsmith_f_op_f32(round(global3.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))))), select(-(var_2.b ^ (i32(-1i) * -51143i)), global3.b, true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-global3.a), var_2.b);
    return global3.b;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = global3.b;
    let var_1 = Struct_1(global2.yxz, func_5(arg_0.wx, vec2<bool>(true, func_2(~vec2<i32>(u_input.a.x, arg_0.x), global1[_wgslsmith_index_u32(42833u, 22u)], firstLeadingBit(arg_0.wyw)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -955f, 365f) - var_1.a), var_1.a))))), 25711i);
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, 1u), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(56218u, 4294967295u, 73639u), vec3<u32>(1u, 1u, 1u))), ~_wgslsmith_div_u32(reverseBits(1u), ~136703u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(1u, 96239u, 122034u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20657u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(6315u, 1u, 1u), vec3<u32>(31283u, 60270u, 3194u), vec3<u32>(4802u, 78777u, 35827u))), 1u))), 22u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-337f - global3.a.x), -310f)))))));
    return ~9984u;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = vec3<bool>(true, true, !all(vec3<bool>(any(vec4<bool>(false, false, true, true)), func_2(vec2<i32>(12095i, 67193i), arg_1, vec3<i32>(0i, -6667i, global3.b)), true)));
    let var_1 = select(!(!select(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), true), vec4<bool>(var_0.x, false, var_0.x, false), any(var_0.xy))), vec4<bool>(!var_0.x, true, func_2(u_input.a ^ -vec2<i32>(global3.b, global3.b), Struct_1(vec3<f32>(961f, global3.a.x, 301f), -2147483647i), -vec3<i32>(u_input.a.x, 55401i, u_input.a.x)), !func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-4248i, -102452i), u_input.a, u_input.a), arg_1, vec3<i32>(u_input.a.x, global3.b, 0i))), vec4<bool>(!(!any(vec3<bool>(var_0.x, var_0.x, var_0.x))), any(!(!var_0.yx)), var_0.x, false));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.x, arg_2.x, arg_0))) - global3.a), global2.yww), global3.a, all(vec4<bool>(select(true, true, true), true, select(false, var_1.x, var_0.x), true)))), ~countOneBits(u_input.a.x));
    global2 = vec4<f32>(778f, _wgslsmith_f_op_f32(1105f + global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(791f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(-996f + global2.x)), all(vec3<bool>(false, var_1.x, false)) & var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-334f + 134f)))))));
    var var_2 = -207f;
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 9161u), ~79607u), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_clamp_u32(22218u, 1u, 1u))), abs(_wgslsmith_add_u32(countOneBits(~31502u), reverseBits(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = ~1u;
    var_0 = vec2<i32>(0i, -abs(firstLeadingBit(-45776i)));
    var var_1 = Struct_1(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + global2.x) + -1000f)), global2.x), firstTrailingBit(u_input.a.x));
    let var_2 = true;
    global0 = _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(reverseBits(func_6(_wgslsmith_f_op_f32(-1311f - 800f), global1[_wgslsmith_index_u32(func_1(vec4<i32>(var_0.x, -9776i, -1i, 2147483647i)), 22u)], _wgslsmith_f_op_vec2_f32(var_1.a.xz - global2.wy))), ~0u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 35509u), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1631f, 149f, 112f, global2.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, -730f, global3.a.x) + vec4<f32>(var_1.a.x, global3.a.x, global3.a.x, 724f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.x, -1970f, global2.x, global2.x), vec4<f32>(1026f, global2.x, var_1.a.x, 1000f), false)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 439f, 732f, 290f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, global2.x, global2.x, -515f))), vec4<f32>(923f, _wgslsmith_f_op_f32(sign(global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(-global2.x)))), ~vec3<u32>(_wgslsmith_div_u32(1u, 1u), ~func_1(vec4<i32>(0i, 1i, -2147483647i, var_0.x)), 73359u), 11752i, ~(~firstLeadingBit(vec4<u32>(28847u, 57402u, 1u, 55577u))) & vec4<u32>(1u, ~firstTrailingBit(74922u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(1539u, 2834u, 14846u, 48948u), vec4<u32>(65489u, 10908u, 47866u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 35701u, 2493u, 1u), vec4<u32>(26536u, 1u, 1u, 4294967295u), vec4<u32>(1u, 1u, 146u, 4294967295u))), 1u));
}

