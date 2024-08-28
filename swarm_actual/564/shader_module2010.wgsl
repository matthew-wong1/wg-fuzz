struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(803f, -444f), Struct_1(-1329f, 980f), Struct_1(1289f, -1256f), Struct_1(-1201f, 727f), Struct_1(-1719f, -1628f), Struct_1(-1000f, 309f), Struct_1(1340f, 236f), Struct_1(908f, 564f), Struct_1(361f, 592f), Struct_1(864f, 245f), Struct_1(-388f, -985f), Struct_1(945f, 608f), Struct_1(812f, -709f), Struct_1(497f, 772f), Struct_1(843f, -1000f), Struct_1(-234f, -1000f), Struct_1(1000f, -2437f), Struct_1(-145f, -1082f), Struct_1(-597f, 1000f), Struct_1(-1289f, -638f), Struct_1(-1000f, 960f), Struct_1(-416f, 652f), Struct_1(-599f, 483f), Struct_1(228f, 540f), Struct_1(122f, -1555f), Struct_1(-890f, -302f), Struct_1(425f, 189f), Struct_1(671f, -816f));

var<private> global1: array<vec2<f32>, 14>;

var<private> global2: Struct_1 = Struct_1(-567f, 1385f);

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -488f);
    let var_0 = 0u;
    global0 = array<Struct_1, 28>();
    global3 = _wgslsmith_f_op_f32(-508f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(270f, 602f)), _wgslsmith_f_op_f32(global2.b + global2.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1525f - 1000f)))));
    let var_1 = _wgslsmith_f_op_f32(select(-172f, global2.b, true));
    return true | !all(vec3<bool>(true, all(vec2<bool>(false, false)), true));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec2<f32>, 14>();
    var var_0 = reverseBits(reverseBits(countOneBits(vec3<u32>(~arg_0, 31007u, arg_0))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), -2336f)), global2.a);
    global1 = array<vec2<f32>, 14>();
    var var_2 = Struct_1(1015f, 1096f);
    return Struct_1(_wgslsmith_f_op_f32(step(1f, arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, var_2.a, func_3())) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * -1238f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-530f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    global1 = array<vec2<f32>, 14>();
    let var_0 = arg_3;
    global0 = array<Struct_1, 28>();
    let var_1 = func_2(_wgslsmith_add_u32(4294967295u, firstTrailingBit(4294967295u)), global0[_wgslsmith_index_u32(max(32383u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1118u, 0u), ~vec2<u32>(36023u, 53503u)), vec2<u32>(37750u, 57076u))), 28u)]);
    var var_2 = _wgslsmith_add_vec2_i32(max(_wgslsmith_div_vec2_i32(vec2<i32>(37698i, 0i), reverseBits(~vec2<i32>(-1i, u_input.a))), firstLeadingBit((vec2<i32>(u_input.a, 31140i) >> (vec2<u32>(0u, 54774u) % vec2<u32>(32u))) & -vec2<i32>(0i, 1i))), max(_wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(9034i, 47745i), vec2<i32>(u_input.a, 0i), vec2<bool>(arg_1, arg_1))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 2147483647i) << (vec2<u32>(4294967295u, 22605u) % vec2<u32>(32u)))), abs(select(abs(vec2<i32>(u_input.a, 0i)), vec2<i32>(u_input.a, 6518i), true))));
    return u_input.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    global3 = 527f;
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-688f, _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(abs(1514f)), global2.b)));
    var var_1 = ~vec3<u32>(~45208u, abs(1u), ~0u);
    let var_2 = true;
    global2 = arg_1;
    return _wgslsmith_div_vec3_u32(~vec3<u32>(firstLeadingBit(var_1.x) | var_1.x, var_1.x | ~18626u, _wgslsmith_sub_u32(var_1.x, 61551u)), ~abs(vec3<u32>(_wgslsmith_add_u32(0u, 1u), _wgslsmith_mult_u32(var_1.x, var_1.x), _wgslsmith_add_u32(6606u, var_1.x))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    global3 = _wgslsmith_div_f32(_wgslsmith_div_f32(864f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), global2.a);
    global1 = array<vec2<f32>, 14>();
    global0 = array<Struct_1, 28>();
    global3 = -435f;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.b), 1698f);
    return global0[_wgslsmith_index_u32(~47938u, 28u)];
}

fn func_1() -> f32 {
    global3 = -1000f;
    let var_0 = func_6(global0[_wgslsmith_index_u32(1u, 28u)], true, func_5(vec2<i32>(func_4(Struct_1(-765f, 797f), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 199f, -535f) * vec3<f32>(-825f, global2.a, -1555f)), func_2(1u, global0[_wgslsmith_index_u32(1u, 28u)])), -8561i ^ u_input.a), func_2(1u, global0[_wgslsmith_index_u32(6463u, 28u)]), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(16895i, u_input.a, u_input.a)), vec3<i32>(u_input.a, 1i, i32(-1i) * -54591i), vec3<i32>(select(-10625i, -2147483647i, true), max(u_input.a, u_input.a), -2147483647i))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(step(738f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1331f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-143f, -1350f)))))));
    global3 = 249f;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-606f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -941f), (_wgslsmith_add_i32(58782i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 7208i), vec2<i32>(0i, u_input.a))) << (~(~2026u) % 32u)) == min(u_input.a, ~_wgslsmith_mod_i32(-2147483647i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - 2376f)), _wgslsmith_f_op_f32(sign(global2.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, -149f, global2.a, global2.b), vec4<f32>(global2.b, global2.a, global2.a, 1482f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a, global2.b, global2.b, global2.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, global2.b, 1883f, global2.b))))), 1i, -2386f);
}

