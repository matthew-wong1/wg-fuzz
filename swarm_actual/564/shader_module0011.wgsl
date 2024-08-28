struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-1518f, 1889f, 593f), vec3<f32>(1540f, -464f, -1530f), vec3<f32>(-2762f, 410f, -981f), vec3<f32>(-1828f, 1000f, 678f), vec3<f32>(-1864f, -123f, -370f), vec3<f32>(212f, -106f, -337f), vec3<f32>(-1868f, -2120f, -191f), vec3<f32>(-376f, -479f, 377f), vec3<f32>(-196f, 1373f, 2611f), vec3<f32>(-1755f, 727f, 1000f), vec3<f32>(-2906f, -406f, -493f), vec3<f32>(-1251f, -856f, 293f));

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(51908u, 4294967295u, 4294967295u, 44039u), vec4<u32>(1u, 1u, 1u, 1u))), ~firstTrailingBit(4294967295u)), 12u)];
    global2 = array<vec3<f32>, 12>();
    let var_1 = vec3<f32>(2189f, -296f, _wgslsmith_f_op_f32(f32(-1f) * -430f));
    let var_2 = all(global0.xyw);
    var_0 = global3[_wgslsmith_index_u32(33614u, 12u)];
    return var_1.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_2.x, ~select(arg_2.x, arg_2.x, global4.a)), vec2<u32>(arg_2.x, _wgslsmith_mod_u32(~arg_2.x, ~arg_2.x)));
    let var_1 = Struct_1(!(false || select(u_input.b.x <= arg_1.x, var_0.x >= 4294967295u, global0.x)));
    var var_2 = countOneBits(arg_2.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(997f * -1000f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1154f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-3340f * 388f), _wgslsmith_f_op_f32(func_3(vec3<i32>(arg_0.x, u_input.b.x, -1i)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec3<i32>(arg_1.x, -15820i, u_input.b.x))), 1213f)))));
    global4 = Struct_1(true);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1557f - -688f) + -1112f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-403f)))))), 1f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1285f - _wgslsmith_f_op_f32(f32(-1f) * -1856f)) * _wgslsmith_f_op_f32(arg_0.x - arg_0.x))) != 1000f;
    global2 = array<vec3<f32>, 12>();
    var var_1 = ~383u;
    global3 = array<Struct_1, 12>();
    var var_2 = Struct_1(!(!any(vec3<bool>(false, global0.x, true))));
    return arg_2.x;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-362f, -1302f), -308f)) * 439f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(u_input.a.x, 1i, -43815i, u_input.a.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.a.x, u_input.b.x), vec3<u32>(0u, 4294967295u, arg_0))).x + _wgslsmith_f_op_f32(ceil(218f)))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool) -> i32 {
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(57179u, 12u)]), _wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(-1i) * -vec4<i32>(-2315i, 59053i, arg_0, -4712i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, arg_0, -17621i, u_input.a.x) & vec4<i32>(-1i, arg_0, -2147483647i, arg_0), vec4<i32>(-1i, u_input.b.x, arg_0, u_input.a.x)), (vec3<u32>(arg_1, 0u, 1u) >> (vec3<u32>(80512u, 1u, 1u) % vec3<u32>(32u))) & ~vec3<u32>(83906u, 66671u, 4294967295u))), firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1, 1u, 35605u), vec3<u32>(49336u, arg_1, arg_1)))), Struct_1(all(!(!global0.xy))), Struct_1(arg_2), _wgslsmith_clamp_vec2_u32(min((vec2<u32>(0u, arg_1) ^ vec2<u32>(3147u, arg_1)) | reverseBits(vec2<u32>(arg_1, 63996u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, 26321u))), min(~_wgslsmith_add_vec2_u32(vec2<u32>(43777u, arg_1), vec2<u32>(0u, arg_1)), vec2<u32>(arg_1, select(arg_1, 49142u, false))), vec2<u32>(48185u, _wgslsmith_add_u32(abs(arg_1), min(57815u, 4294967295u)))));
    let var_1 = func_5(min(_wgslsmith_sub_u32(5623u, _wgslsmith_clamp_u32(max(arg_1, 1148u), 1u, arg_1)), 4294967295u), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(arg_1, arg_1))), 12u)], func_5(~arg_1, func_5(arg_1, Struct_1(!var_0.a), func_5(arg_1, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66975u, arg_1, arg_1), vec3<u32>(arg_1, arg_1, 0u)), 12u)], Struct_1(false), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 24181u), vec2<u32>(arg_1, arg_1))), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(1u, 15255u))), Struct_1(select(global0.x, select(false, global0.x, false), true)), ~reverseBits(vec2<u32>(arg_1, 19008u) << (vec2<u32>(arg_1, 42585u) % vec2<u32>(32u)))), firstLeadingBit(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(58628u, 4294967295u), ~vec2<u32>(arg_1, arg_1)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f + _wgslsmith_f_op_f32(sign(627f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-729f)) * -244f)))));
    global0 = !select(!vec4<bool>(true, var_0.a, global4.a, var_2.x <= -903f), vec4<bool>(!var_1.a, true, global0.x, !func_5(arg_1, Struct_1(global4.a), var_1, vec2<u32>(23325u, 15795u)).a), global4.a);
    var var_3 = ~vec4<u32>(_wgslsmith_sub_u32(arg_1, ~33761u) ^ (_wgslsmith_div_u32(121846u, 1u) & ~arg_1), ~reverseBits(~arg_1), ((arg_1 & 33403u) >> (arg_1 % 32u)) | _wgslsmith_div_u32(4294967295u, 5158u), min(_wgslsmith_mod_u32(4032u, arg_1) << (~arg_1 % 32u), ~4294967295u));
    return countOneBits(15698i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(i32(-1i) * -1i, -func_1(2147483647i, 22986u, global4.a)) ^ u_input.a;
    global2 = array<vec3<f32>, 12>();
    global2 = array<vec3<f32>, 12>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(57455u, 4747u), ~1u), 12u)];
    var var_2 = select(-_wgslsmith_mult_i32(firstLeadingBit(u_input.b.x) | var_0.x, i32(-1i) * -var_0.x), 18451i, global4.a);
    var var_3 = func_5(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), func_5(0u, Struct_1(global0.x), func_5(1u, func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(59271u, 0u, 45337u, 59552u), vec4<u32>(139302u, 11098u, 0u, 0u)), Struct_1(global4.a), global3[_wgslsmith_index_u32(reverseBits(28687u), 12u)], ~vec2<u32>(1u, 44556u)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 12u)], vec2<u32>(1u, 1u)), select(select(abs(vec2<u32>(31330u, 4294967295u)), ~vec2<u32>(21013u, 8242u), global0.yw), vec2<u32>(abs(1u), 1u), vec2<bool>(var_1.a != global4.a, global0.x | true))), global3[_wgslsmith_index_u32(~(~(~0u)) ^ _wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(10638u, 0u), vec2<u32>(4294967295u, 4294967295u))), 12u)], _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(min(4294967295u, 1u), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, var_0.x), max(u_input.a.x, u_input.b.x))), 425f, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(min(4294967295u, 2621u), 331u), _wgslsmith_clamp_u32(max(91053u, 0u), 1u, 1u)), 0u), ~30828u);
}

