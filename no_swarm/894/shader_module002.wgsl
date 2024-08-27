struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<f32>(-356f, -1610f), Struct_1(vec3<i32>(-1i, 1i, 2147483647i), vec3<f32>(-2082f, -497f, 233f), -1i, -2839i), 13219i, vec3<f32>(-1036f, -834f, 196f)), Struct_2(vec2<f32>(-359f, 242f), Struct_1(vec3<i32>(2147483647i, 27426i, -6098i), vec3<f32>(-1128f, -743f, -440f), 0i, -13003i), 27777i, vec3<f32>(1000f, -625f, -528f)), Struct_2(vec2<f32>(1307f, -1000f), Struct_1(vec3<i32>(-1i, -29425i, -18307i), vec3<f32>(223f, 251f, -1199f), -1i, 2147483647i), -1i, vec3<f32>(-496f, -1234f, -858f)));

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(vec2<f32>(582f, 378f), Struct_1(vec3<i32>(-57200i, 27359i, 52071i), vec3<f32>(968f, 926f, 1598f), 2147483647i, 15377i), 11114i, vec3<f32>(1267f, 443f, -374f)), vec3<f32>(838f, 756f, -1000f), vec4<bool>(true, false, false, false), 4294967295u), Struct_3(Struct_2(vec2<f32>(-2542f, 1610f), Struct_1(vec3<i32>(-20772i, 41303i, -1i), vec3<f32>(752f, -1402f, 747f), -1i, 9248i), -1i, vec3<f32>(1000f, -113f, 223f)), vec3<f32>(-831f, -744f, -1996f), vec4<bool>(false, false, false, false), 4294967295u), Struct_3(Struct_2(vec2<f32>(-1015f, 847f), Struct_1(vec3<i32>(-1i, 2147483647i, -58660i), vec3<f32>(-870f, -1867f, -1272f), 0i, 2147483647i), 0i, vec3<f32>(1076f, 814f, -914f)), vec3<f32>(-202f, 1550f, 1638f), vec4<bool>(false, false, false, false), 24666u), Struct_3(Struct_2(vec2<f32>(-1234f, 1000f), Struct_1(vec3<i32>(-45926i, 8153i, 14098i), vec3<f32>(-413f, -739f, -1144f), 0i, 0i), 1i, vec3<f32>(631f, -577f, -302f)), vec3<f32>(797f, 749f, 1000f), vec4<bool>(true, false, false, true), 41795u), Struct_3(Struct_2(vec2<f32>(-617f, -569f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<f32>(-451f, -1000f, 270f), 0i, -490i), 2147483647i, vec3<f32>(1000f, -118f, 957f)), vec3<f32>(1222f, -201f, 1096f), vec4<bool>(false, false, false, true), 1u), Struct_3(Struct_2(vec2<f32>(124f, 1000f), Struct_1(vec3<i32>(1i, 0i, 21945i), vec3<f32>(1194f, 690f, -832f), -1i, 2147483647i), i32(-2147483648), vec3<f32>(1000f, 699f, -143f)), vec3<f32>(1458f, 1117f, 275f), vec4<bool>(false, false, false, true), 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-777f, arg_1)))), Struct_1(select(~arg_2, ~vec3<i32>(2147483647i, 2147483647i, -36001i), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -286f, -1261f), vec3<f32>(arg_1, -1893f, arg_1), vec3<bool>(arg_0, false, true))), vec3<f32>(1119f, arg_1, arg_1), arg_0 & true)), ~1i, 1i), u_input.d.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2946f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1271f, arg_1) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -373f, -601f), vec3<f32>(arg_1, -1213f, -689f))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(942f, -1119f, arg_1) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, arg_1, arg_1) + vec3<f32>(1227f, -1334f, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -687f), vec3<f32>(arg_1, arg_1, -721f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-814f, -195f, arg_1) * vec3<f32>(arg_1, 811f, -1555f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 478f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_1, -227f), vec3<f32>(arg_1, arg_1, 577f), false)))))), !(!(!(!vec4<bool>(arg_0, arg_0, arg_0, false)))), 4294967295u);
    var_0 = global2[_wgslsmith_index_u32(arg_3, 6u)];
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(u_input.e, -25541i), 31896i, var_0.a.c), var_0.a.d, arg_2.x, _wgslsmith_mult_i32(u_input.d.x, var_0.a.c));
    return 1i;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> bool {
    global1 = array<Struct_2, 3>();
    var var_0 = Struct_1(arg_1.a, arg_1.b, _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, 12750i, u_input.a.x, 51654i), u_input.a), u_input.a), _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a)))), -func_3(any(vec4<bool>(arg_0, arg_0, false, arg_2.c.x)), arg_1.b.x, abs(vec3<i32>(2147483647i, u_input.a.x, 40841i) << (vec3<u32>(26050u, global0.x, arg_2.d) % vec3<u32>(32u))), 0u));
    let var_1 = global1[_wgslsmith_index_u32(~(~24515u) >> (_wgslsmith_clamp_u32(global0.x, global0.x ^ _wgslsmith_add_u32(min(arg_2.d, global0.x), _wgslsmith_clamp_u32(85058u, 13395u, u_input.b)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, u_input.b, 51179u, 10649u), vec4<u32>(u_input.b, global0.x, u_input.c, 71413u)), vec4<u32>(arg_2.d, arg_2.d, u_input.c, 35449u)) | u_input.c) % 32u), 3u)];
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, -538f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) - _wgslsmith_f_op_f32(max(var_1.b.b.x, 1969f)))), (_wgslsmith_sub_i32(var_0.a.x, -1i) <= u_input.d.x) | (true != !arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.x))));
    var var_3 = global0.zx;
    return !((reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) ^ abs(countOneBits(var_1.b.c))) != select(19930i, firstTrailingBit(-30112i), !arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_1(arg_0.b.a, arg_0.d, abs(((i32(-1i) * -2147483647i) << (_wgslsmith_div_u32(global0.x, global0.x) % 32u)) ^ -4521i), arg_0.b.c);
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-348f)), _wgslsmith_f_op_f32(-var_0.b.x), arg_0.d.x))), select(min(_wgslsmith_clamp_i32(arg_0.c, 17082i, arg_0.c), -var_0.c) & -_wgslsmith_div_i32(u_input.d.x, 2147483647i), ~(i32(-1i) * -2147483647i), true), ~(-4937i) ^ firstLeadingBit(func_3(false, _wgslsmith_f_op_f32(trunc(-174f)), min(vec3<i32>(-10250i, u_input.a.x, -2147483647i), u_input.a.zxw), _wgslsmith_mod_u32(arg_2.x, 32912u))));
    var var_2 = -1i | u_input.d.x;
    var var_3 = Struct_1(~(-_wgslsmith_sub_vec3_i32(u_input.d.xzw ^ vec3<i32>(var_0.c, var_1.d, -2147483647i), vec3<i32>(-8085i, var_1.a.x, arg_0.b.c) & arg_0.b.a)), _wgslsmith_f_op_vec3_f32(exp2(var_1.b)), -var_0.a.x | (i32(-1i) * -2147483647i), -var_1.a.x);
    var var_4 = var_1;
    return global2[_wgslsmith_index_u32(arg_2.x, 6u)];
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(global1[_wgslsmith_index_u32(~1u, 3u)], vec2<bool>(true, all(vec4<bool>(false, false, true, true)) || !func_2(false, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -57610i), vec3<f32>(1296f, -403f, 333f), u_input.e, 1i), global2[_wgslsmith_index_u32(global0.x, 6u)], false)), vec3<u32>(64621u, firstLeadingBit(~(~34639u)), ~0u));
    global1 = array<Struct_2, 3>();
    global0 = abs(select(~(~(~vec3<u32>(1u, u_input.c, 78328u))), ~vec3<u32>(~var_0.d, select(1u, var_0.d, true), 1u), !(!var_0.c.x) || !(true | var_0.c.x)));
    global2 = array<Struct_3, 6>();
    global0 = vec3<u32>(global0.x << (global0.x % 32u), ~1u, 1u);
    return StorageBuffer(~_wgslsmith_dot_vec2_u32(global0.yz, countOneBits(global0.xy)), global0.x & ~(~firstLeadingBit(global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

