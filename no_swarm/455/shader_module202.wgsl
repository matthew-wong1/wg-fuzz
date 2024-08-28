struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(32455i, 3029i, 8544i, -3575i), vec4<i32>(i32(-2147483648), 70611i, 19386i, 1i), vec4<i32>(-25395i, 12421i, -69754i, 0i), vec4<i32>(-2509i, 1i, -33394i, 40407i), vec4<i32>(-18830i, 2147483647i, -25160i, 39823i), vec4<i32>(1i, 69051i, -16021i, 16997i), vec4<i32>(2147483647i, 1i, -9243i, 37080i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 2147483647i));

var<private> global2: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(30257u), Struct_5(4294967295u), Struct_5(1u), Struct_5(13021u), Struct_5(0u), Struct_5(1u), Struct_5(4294967295u), Struct_5(31100u), Struct_5(8581u), Struct_5(4294967295u), Struct_5(4294967295u), Struct_5(0u), Struct_5(0u), Struct_5(44356u), Struct_5(4294967295u), Struct_5(0u), Struct_5(70338u), Struct_5(50631u), Struct_5(4294967295u), Struct_5(4294967295u), Struct_5(4294967295u), Struct_5(1u), Struct_5(1u), Struct_5(29722u), Struct_5(4294967295u));

var<private> global3: array<f32, 15> = array<f32, 15>(1144f, 2255f, -1109f, -600f, -1048f, -491f, -1906f, 874f, 639f, -716f, 1138f, 1110f, 574f, -753f, 1990f);

var<private> global4: array<u32, 30> = array<u32, 30>(0u, 111710u, 4294967295u, 4294967295u, 0u, 2820u, 59716u, 28584u, 50366u, 3888u, 13913u, 54292u, 38000u, 27075u, 5175u, 1u, 71568u, 38540u, 0u, 4294967295u, 0u, 4294967295u, 0u, 0u, 43795u, 51311u, 31512u, 1u, 0u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_dot_vec3_u32(~(~(~arg_0.wxx)), arg_0.zzy);
    var var_2 = 2147483647i;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 45117i) >> (arg_0.zy % vec2<u32>(32u)), vec2<i32>(var_0, var_0) >> (arg_0.yy % vec2<u32>(32u))), -vec2<i32>(28074i, var_0) >> (~vec2<u32>(0u, arg_1) % vec2<u32>(32u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), var_0 != -6691i), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), true), true), vec2<u32>(min(4294967295u, 1u), arg_1) << (select(~vec2<u32>(global4[_wgslsmith_index_u32(arg_0.x, 30u)], global4[_wgslsmith_index_u32(71949u, 30u)]), arg_0.xw, true) % vec2<u32>(32u))));
    var var_4 = -var_0;
    return global4[_wgslsmith_index_u32(27438u, 30u)] & global4[_wgslsmith_index_u32(89529u, 30u)];
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<i32>) -> vec4<u32> {
    global0 = ~(~arg_0.x) << (~(~(max(11374u, 21644u) | func_3(arg_0, 4722u))) % 32u);
    var var_0 = vec4<i32>(_wgslsmith_div_i32(max(arg_2, -_wgslsmith_add_i32(1i, u_input.a)), abs(abs(arg_2))), _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.x, 29239i, 6984i, 21127i), vec4<i32>(arg_2, arg_1.x, 0i, arg_3.x)), -vec4<i32>(-20811i, 7728i, arg_2, -1i)), countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-90384i, arg_2), arg_1.xy & vec2<i32>(-1i, 15703i)))), 0i, u_input.a);
    return vec4<u32>(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global4[_wgslsmith_index_u32(33194u, 30u)], 34485u, global4[_wgslsmith_index_u32(arg_0.x, 30u)]), vec4<u32>(107575u, 50305u, global4[_wgslsmith_index_u32(1u, 30u)], 11125u)) << (global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(26080u, arg_0.x), _wgslsmith_mult_u32(1u, 0u)), 30u)] % 32u)), _wgslsmith_sub_u32(97646u << (arg_0.x % 32u), 9221u), ~(firstTrailingBit(0u) << (0u % 32u)) | arg_0.x, _wgslsmith_dot_vec4_u32(arg_0, arg_0));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = 53123i;
    global3 = array<f32, 15>();
    var var_1 = Struct_1(~countOneBits(countOneBits(-arg_1)), vec4<bool>(!select(any(vec4<bool>(true, false, true, true)), 24174u == global4[_wgslsmith_index_u32(arg_0.x, 30u)], any(vec4<bool>(false, true, false, true))), true, !any(vec3<bool>(false, false, false)) || !any(vec4<bool>(false, false, true, true)), select(true, all(vec3<bool>(true, true, false)), countOneBits(5734i) < u_input.a)), ~arg_0.zy);
    let var_2 = Struct_4(~(-vec2<i32>(u_input.a | arg_1.x, select(u_input.a, 7979i, true))), vec4<f32>(global3[_wgslsmith_index_u32((var_1.c.x & select(arg_0.x, 1u, var_1.b.x)) << (max(~var_1.c.x, 0u) % 32u), 15u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2347f - _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(6490u, 15u)], global3[_wgslsmith_index_u32(var_1.c.x, 15u)], true))), 1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-827f - -108f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f))));
    var var_3 = (~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.x, arg_0.x), ~arg_0.zy) | firstTrailingBit(countOneBits(arg_0.yw))) >> (var_1.c % vec2<u32>(32u));
    return Struct_1(firstLeadingBit(~select(var_1.a, vec2<i32>(20033i, arg_1.x), false)) & -select(~var_2.a, _wgslsmith_div_vec2_i32(arg_1, var_2.a), vec2<bool>(var_1.b.x, true)), !var_1.b, _wgslsmith_div_vec2_u32(firstLeadingBit(arg_0.xy), arg_0.xw));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    global1 = array<vec4<i32>, 8>();
    var var_0 = ~(~vec3<u32>(min(~global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(0u, 30u)]), 4294967295u, 38720u));
    let var_1 = Struct_2(func_4(func_2(~max(vec4<u32>(0u, var_0.x, 4294967295u, global4[_wgslsmith_index_u32(var_0.x, 30u)]), vec4<u32>(global4[_wgslsmith_index_u32(var_0.x, 30u)], global4[_wgslsmith_index_u32(47882u, 30u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.x, 30u)], 30u)], 30u)], 30u)], 18202u)), vec3<i32>(22419i, 1i, u_input.a), u_input.a, global1[_wgslsmith_index_u32(reverseBits(~var_0.x), 8u)]), _wgslsmith_mult_vec2_i32(firstLeadingBit(~vec2<i32>(u_input.a, u_input.a)), ~(~vec2<i32>(u_input.a, 1i)))));
    let var_2 = max(var_1.a.a.x, -firstTrailingBit(~9318i) ^ var_1.a.a.x);
    global0 = 1u;
    return 53704i;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = ((select(vec4<u32>(65520u, arg_1.x, arg_1.x, 32566u), vec4<u32>(24000u, global4[_wgslsmith_index_u32(69070u, 30u)], 83036u, global4[_wgslsmith_index_u32(4294967295u, 30u)]) ^ vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], arg_1.x, 30600u, 4294967295u), arg_0.x) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(59309u, global4[_wgslsmith_index_u32(arg_1.x, 30u)], global4[_wgslsmith_index_u32(63282u, 30u)]), vec3<u32>(39085u, global4[_wgslsmith_index_u32(0u, 30u)], arg_1.x)), ~1u, ~1u, ~1u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(global4[_wgslsmith_index_u32(arg_1.x, 30u)], global4[_wgslsmith_index_u32(9076u, 30u)]) ^ arg_1), arg_1.x & ~18911u, 0u, global4[_wgslsmith_index_u32(6807u, 30u)]) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~firstLeadingBit(arg_1.x), ~_wgslsmith_clamp_u32(1u, 47942u, global4[_wgslsmith_index_u32(32197u, 30u)]), _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1u, global4[_wgslsmith_index_u32(arg_1.x, 30u)], 16451u), vec4<u32>(global4[_wgslsmith_index_u32(arg_1.x, 30u)], 2228u, 4294967295u, 0u)), vec4<u32>(1u, 0u, arg_1.x, global4[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_mult_u32(abs(48405u), _wgslsmith_clamp_u32(arg_1.x, 9532u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15963u, 30u)], 30u)]))), vec4<u32>(func_4(vec4<u32>(0u, 20393u, 0u, global4[_wgslsmith_index_u32(1u, 30u)]), vec2<i32>(u_input.a, u_input.a)).c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(16374u, 30u)], 4294967295u, 5339u), vec4<u32>(global4[_wgslsmith_index_u32(arg_1.x, 30u)], arg_1.x, 32367u, 1u) >> (vec4<u32>(4294967295u, 50269u, arg_1.x, 39747u) % vec4<u32>(32u))), _wgslsmith_mult_u32(1436u, global4[_wgslsmith_index_u32(1559u, 30u)] & 4294967295u), arg_1.x)) % vec4<u32>(32u));
    var var_1 = select(global1[_wgslsmith_index_u32(var_0.x, 8u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.wzz, var_0.yyz), 8u)], vec4<bool>((~36575u > (global4[_wgslsmith_index_u32(3451u, 30u)] ^ var_0.x)) != false, arg_0.x, arg_0.x, true));
    global3 = array<f32, 15>();
    let var_2 = Struct_3(func_4(vec4<u32>(global4[_wgslsmith_index_u32(~66778u, 30u)], firstLeadingBit(global4[_wgslsmith_index_u32(4294967295u, 30u)] | 0u), arg_1.x, 1u), -reverseBits(var_1.zx)));
    var_0 = vec4<u32>(global4[_wgslsmith_index_u32(~33629u, 30u)], ~1u, 35743u, ~var_2.a.c.x);
    return Struct_3(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<bool>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(1u, 15u)], -270f))) < -2147483647i, all(vec2<bool>(true, true)), true), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 30u)], 11562u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30136u) >> (vec2<u32>(44019u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(71334u, 30u)], 30u)], 30u)], 30u)]) % vec2<u32>(32u))), ~(vec2<u32>(0u, global4[_wgslsmith_index_u32(4294967295u, 30u)]) << (vec2<u32>(499u, 17732u) % vec2<u32>(32u)))), global4[_wgslsmith_index_u32(select(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4710u, 30u)], 30u)], countOneBits(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)]), !all(vec4<bool>(true, true, true, false))), 30u)]));
    var var_1 = vec4<bool>(true, false, false, true);
    global1 = array<vec4<i32>, 8>();
    global1 = array<vec4<i32>, 8>();
    let var_2 = 35253u;
    let var_3 = ~max(_wgslsmith_dot_vec2_u32(~var_0.a.c | _wgslsmith_sub_vec2_u32(var_0.a.c, vec2<u32>(1u, global4[_wgslsmith_index_u32(1u, 30u)])), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(680u, global4[_wgslsmith_index_u32(40262u, 30u)], 3033u, var_2), vec4<u32>(global4[_wgslsmith_index_u32(7931u, 30u)], 0u, 0u, 22261u)))), var_0.a.c.x);
    var var_4 = Struct_4(~abs(~reverseBits(var_0.a.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1894f, -139f) * _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) * _wgslsmith_f_op_f32(f32(-1f) * -373f)), global3[_wgslsmith_index_u32(23322u, 15u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3, ~global4[_wgslsmith_index_u32(var_2, 30u)]), 15u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_0.a.c.x, 15u)])) + global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_4(vec4<u32>(global4[_wgslsmith_index_u32(1u, 30u)], 7734u, 0u, 6647u), var_0.a.a).c.x, 30u)], 15u)]))));
    var var_5 = _wgslsmith_clamp_vec2_u32(var_0.a.c, firstTrailingBit(func_4(~vec4<u32>(global4[_wgslsmith_index_u32(59295u, 30u)], var_2, 25740u, global4[_wgslsmith_index_u32(var_2, 30u)]) << (firstTrailingBit(vec4<u32>(0u, global4[_wgslsmith_index_u32(var_0.a.c.x, 30u)], 0u, 1u)) % vec4<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0.a.a.x), var_0.a.a)).c), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(19335u, 66445u) >> (1u % 32u), 94392u), var_0.a.c));
    var_1 = var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_5.x, max(0u >> (var_3 % 32u), var_5.x), ~1u));
}

