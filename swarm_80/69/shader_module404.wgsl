struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(0u, vec4<f32>(1359f, 597f, -1744f, -117f), vec2<bool>(false, true)), Struct_1(11189u, vec4<f32>(218f, 1570f, 915f, -513f), vec2<bool>(true, true)), Struct_1(33161u, vec4<f32>(-552f, 219f, 256f, -812f), vec2<bool>(true, true)), Struct_1(31565u, vec4<f32>(-134f, 331f, 387f, 398f), vec2<bool>(false, false)), Struct_1(81004u, vec4<f32>(-1625f, -430f, 847f, 1118f), vec2<bool>(false, false)), Struct_1(0u, vec4<f32>(476f, -183f, -1205f, -705f), vec2<bool>(true, true)), Struct_1(10793u, vec4<f32>(917f, 223f, -1000f, -729f), vec2<bool>(true, false)), Struct_1(44664u, vec4<f32>(185f, 1223f, 1643f, 1903f), vec2<bool>(true, false)), Struct_1(17709u, vec4<f32>(197f, -782f, 872f, 2329f), vec2<bool>(true, false)), Struct_1(17353u, vec4<f32>(455f, -349f, 746f, -200f), vec2<bool>(false, false)), Struct_1(75902u, vec4<f32>(264f, -852f, 483f, 580f), vec2<bool>(false, false)), Struct_1(1u, vec4<f32>(1000f, 1216f, -585f, 981f), vec2<bool>(true, false)), Struct_1(1u, vec4<f32>(-537f, -1794f, -1474f, -921f), vec2<bool>(false, true)), Struct_1(4294967295u, vec4<f32>(289f, -2258f, 886f, 863f), vec2<bool>(false, true)), Struct_1(4294967295u, vec4<f32>(-347f, 1000f, -1000f, -831f), vec2<bool>(false, false)), Struct_1(4617u, vec4<f32>(-1952f, -676f, 231f, 535f), vec2<bool>(false, true)), Struct_1(4294967295u, vec4<f32>(1109f, -1117f, 1000f, -985f), vec2<bool>(false, true)), Struct_1(0u, vec4<f32>(-545f, 126f, -1232f, 267f), vec2<bool>(false, false)), Struct_1(24368u, vec4<f32>(386f, -647f, 1379f, -545f), vec2<bool>(false, true)), Struct_1(116870u, vec4<f32>(-1174f, -1000f, 202f, 921f), vec2<bool>(false, false)), Struct_1(5714u, vec4<f32>(-1585f, 1000f, 219f, -1066f), vec2<bool>(false, true)), Struct_1(0u, vec4<f32>(-837f, 248f, 629f, 235f), vec2<bool>(false, false)), Struct_1(1u, vec4<f32>(1000f, -329f, 1157f, 1000f), vec2<bool>(false, true)), Struct_1(0u, vec4<f32>(-667f, -644f, 484f, 280f), vec2<bool>(true, true)), Struct_1(1u, vec4<f32>(911f, 1343f, 532f, -1000f), vec2<bool>(true, true)), Struct_1(1u, vec4<f32>(893f, 642f, 1000f, 274f), vec2<bool>(false, true)), Struct_1(28677u, vec4<f32>(-649f, 1000f, 1078f, 1192f), vec2<bool>(true, false)), Struct_1(98017u, vec4<f32>(432f, 1087f, -2191f, -1560f), vec2<bool>(true, false)), Struct_1(21834u, vec4<f32>(380f, -296f, 1000f, -732f), vec2<bool>(true, true)), Struct_1(1u, vec4<f32>(-1277f, -612f, 1307f, -1078f), vec2<bool>(true, false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = arg_2.b.x;
    global2 = array<Struct_1, 30>();
    let var_2 = arg_2;
    var_0 = ~min(116755u, 4294967295u) >> (select(arg_1, select(arg_1, 4294967295u, true), false) % 32u);
    return _wgslsmith_add_vec3_u32(max(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 0u, arg_1) << (vec3<u32>(20357u, 0u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(1u, 31776u, arg_1))), ~(~select(vec3<u32>(4294967295u, arg_1, arg_1), vec3<u32>(1u, arg_1, 24995u), vec3<bool>(false, false, true)))), ~_wgslsmith_add_vec3_u32(select(~vec3<u32>(arg_1, 4294967295u, arg_1), vec3<u32>(14320u, 39850u, arg_1), vec3<bool>(true, true, true)), max(~vec3<u32>(111678u, 70062u, 0u), ~vec3<u32>(48237u, arg_1, 91175u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(~(~firstTrailingBit(_wgslsmith_dot_vec3_u32(func_2(2053i, 4294967295u, arg_2), ~vec3<u32>(1u, 3179u, 1u)))), 30u)];
    return !((arg_1.x || true) & true) & arg_1.x;
}

fn func_3() -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(func_2(u_input.a.x, _wgslsmith_add_u32(countOneBits(~7118u), 4294967295u | firstTrailingBit(17591u)) | 1u, Struct_2((_wgslsmith_add_i32(u_input.a.x, -21216i) | (u_input.b >> (0u % 32u))) | 43535i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -223f, 447f) + vec3<f32>(global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -212f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))), global1.zx)).x, 30u)];
    var var_1 = countOneBits(countOneBits(u_input.a.yx));
    var var_2 = Struct_1(0u, var_0.b, vec2<bool>(true, !all(select(var_0.c, var_0.c, vec2<bool>(false, false)))));
    var_2 = global2[_wgslsmith_index_u32(0u, 30u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.b, var_2.b)));
    return vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), ~(select(vec2<u32>(0u, var_0.a), vec2<u32>(var_2.a, var_0.a), var_2.c.x) & firstTrailingBit(vec2<u32>(78771u, 0u)))), ~_wgslsmith_div_u32(var_2.a, ~1u & ~var_0.a), ~_wgslsmith_mult_u32(1u, ~func_2(u_input.a.x, 1u, Struct_2(-1i, var_2.b.zzy, vec2<f32>(var_3.x, -131f))).x), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>((u_input.a.x != -(u_input.a.x >> (0u % 32u))) && (u_input.a.x >= abs(0i)), func_1(vec4<i32>(-(~u_input.a.x), -2147483647i, u_input.a.x, reverseBits(1i)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, false)))), Struct_2(abs(14764i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(1977f, -115f, 644f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1760f, global1.x) + vec2<f32>(-869f, 535f))))), !any(vec2<bool>(true, true)) && (u_input.a.x > -u_input.b)));
    var var_1 = global1.yx;
    var var_2 = func_3();
    global2 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_u32(countOneBits(81887u), var_2.x)), u_input.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -753f, -1017f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global1.x, global1.x, var_1.x) - vec4<f32>(-870f, global1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 205f, global1.x, global1.x)))))))));
}

