struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(1i, -1i, 3592i, 0i)), Struct_1(vec4<i32>(-66390i, -68683i, -2853i, -1i)), Struct_1(vec4<i32>(4992i, 2147483647i, 94664i, -7165i)), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -5125i)), Struct_1(vec4<i32>(-1i, 1i, -25274i, -12184i)), Struct_1(vec4<i32>(3673i, 1i, 3157i, 11886i)), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(2147483647i, 894i, 27952i, 0i)), Struct_1(vec4<i32>(2147483647i, 21331i, 1i, -19907i)), Struct_1(vec4<i32>(2147483647i, 49406i, 12203i, -61675i)), Struct_1(vec4<i32>(3841i, 14914i, -1i, 36022i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, -69043i, -1i)), Struct_1(vec4<i32>(9801i, 36540i, 2147483647i, -1i)), Struct_1(vec4<i32>(45507i, 37802i, -7330i, i32(-2147483648))), Struct_1(vec4<i32>(0i, -1750i, 1i, 23599i)), Struct_1(vec4<i32>(i32(-2147483648), 63745i, -1i, 51084i)), Struct_1(vec4<i32>(80612i, 1i, -30043i, 0i)), Struct_1(vec4<i32>(2147483647i, 24886i, -15987i, i32(-2147483648))), Struct_1(vec4<i32>(-33497i, 0i, 0i, -1i)), Struct_1(vec4<i32>(1i, -73524i, 2147483647i, 23390i)), Struct_1(vec4<i32>(-1i, 27930i, 0i, -61792i)), Struct_1(vec4<i32>(0i, -15423i, 0i, -42697i)), Struct_1(vec4<i32>(16232i, 1i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(45358i, 27290i, -17819i, -1i)), Struct_1(vec4<i32>(15945i, 9163i, -1i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, -49441i, 1i)), Struct_1(vec4<i32>(0i, -19201i, 19259i, 4048i)), Struct_1(vec4<i32>(16695i, i32(-2147483648), -861i, -76148i)));

var<private> global2: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(0i, 0i, -16683i), vec3<i32>(1i, -18065i, i32(-2147483648)), vec3<i32>(2608i, -1i, 2959i), vec3<i32>(-42638i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), 13370i, 24897i), vec3<i32>(-27348i, 2147483647i, -1i), vec3<i32>(2481i, 0i, i32(-2147483648)), vec3<i32>(38739i, i32(-2147483648), 1i), vec3<i32>(15561i, 2147483647i, -43524i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(147i, -3496i, 14659i), vec3<i32>(1i, 25602i, 0i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(-1i, 25449i, 2147483647i), vec3<i32>(28792i, 15384i, 48227i), vec3<i32>(2147483647i, -1i, 45200i), vec3<i32>(-17610i, -1i, i32(-2147483648)), vec3<i32>(-16879i, i32(-2147483648), 2496i), vec3<i32>(19214i, 968i, 2147483647i), vec3<i32>(2147483647i, -29274i, 62265i), vec3<i32>(-1i, 17676i, 0i), vec3<i32>(2147483647i, 18674i, 0i), vec3<i32>(1i, 1i, 7501i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), -10153i, 29409i), vec3<i32>(1i, i32(-2147483648), -51483i), vec3<i32>(-1i, -23946i, 0i), vec3<i32>(0i, i32(-2147483648), -18352i), vec3<i32>(i32(-2147483648), 1i, 13586i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global2 = array<vec3<i32>, 30>();
    var var_0 = Struct_1(vec4<i32>(i32(-1i) * -27318i, -1i, _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a ^ -58846i, 23151i)), _wgslsmith_mod_i32(~u_input.a >> (~8950u % 32u), 2147483647i)));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(select(vec4<i32>(var_0.a.x, 1i, var_0.a.x, 40969i) | vec4<i32>(-2147483647i, var_0.a.x, 28517i, 0i), vec4<i32>(-16834i, 17083i, u_input.a, u_input.a) << (vec4<u32>(48228u, 17758u, 22247u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)) | reverseBits(~vec4<i32>(var_0.a.x, u_input.a, var_0.a.x, 2147483647i)), var_0.a));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1821f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1339f)), _wgslsmith_div_f32(-387f, -754f))))) * _wgslsmith_f_op_f32(trunc(2869f)));
    let var_2 = Struct_1(vec4<i32>(i32(-1i) * -15346i, var_0.a.x, _wgslsmith_sub_i32(max(~20684i, 0i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-43742i, u_input.a, 2147483647i)), _wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(0u, 30u)], vec3<i32>(var_1.a.x, 25194i, -2147483647i)))), 2147483647i));
    return !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1429f)), -661f)) == -1204f);
}

fn func_2(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(45539u, 28u)];
    var var_1 = !(!vec4<bool>(!(arg_0 & arg_0), !arg_0 | func_3(), arg_0 && !arg_0, arg_0));
    var var_2 = 2147483647i;
    var_1 = vec4<bool>(true, !(!(!arg_0)), arg_0, any(select(var_1.wy, select(!var_1.zy, var_1.yz, true), var_1.ww)));
    let var_3 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-2257f * arg_1)));
    return u_input.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = arg_2;
    var var_0 = -864f <= arg_2;
    global1 = array<Struct_1, 28>();
    let var_1 = func_2(select(!all(vec3<bool>(false, true, false)) & arg_0.x, false, true), 502f);
    let var_2 = max(min(vec3<i32>(-21387i, arg_3.a.x, -1i), arg_3.a.wyw), ~arg_1.a.wzz);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_mult_u32(~var_0, _wgslsmith_mult_u32(4294967295u, var_0));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-656f - 194f) - 848f) - 122f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), global1[_wgslsmith_index_u32(var_0, 28u)], 1266f, Struct_1(vec4<i32>(22537i, 45356i, u_input.a, u_input.a)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(832f, 154f), all(vec2<bool>(false, true))))), -1979f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, -292f)) * _wgslsmith_f_op_f32(f32(-1f) * -731f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1298f)), 293f, _wgslsmith_f_op_f32(f32(-1f) * -164f)))));
    let var_3 = abs(vec3<u32>(firstLeadingBit(var_0), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, var_0), abs(33911u)), min(~max(23199u, var_0), var_0)));
    global1 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x);
}

