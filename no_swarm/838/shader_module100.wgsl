struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(375f, 6080u, Struct_1(22644u), vec2<u32>(22416u, 9022u)), -1i), Struct_3(Struct_2(1000f, 1u, Struct_1(0u), vec2<u32>(851u, 49210u)), -60841i), Struct_3(Struct_2(-1756f, 0u, Struct_1(1u), vec2<u32>(12548u, 16082u)), 24844i), Struct_3(Struct_2(-653f, 3424u, Struct_1(39768u), vec2<u32>(67422u, 0u)), 1i), Struct_3(Struct_2(1000f, 1u, Struct_1(0u), vec2<u32>(5833u, 0u)), 1i), Struct_3(Struct_2(1199f, 17453u, Struct_1(0u), vec2<u32>(107378u, 4294967295u)), 1i), Struct_3(Struct_2(-255f, 48189u, Struct_1(5441u), vec2<u32>(70255u, 1u)), 1i), Struct_3(Struct_2(-905f, 0u, Struct_1(4294967295u), vec2<u32>(51421u, 1u)), -17753i), Struct_3(Struct_2(-1142f, 1u, Struct_1(53851u), vec2<u32>(123652u, 0u)), -38840i), Struct_3(Struct_2(241f, 41175u, Struct_1(4294967295u), vec2<u32>(17250u, 11273u)), -1i), Struct_3(Struct_2(-630f, 4294967295u, Struct_1(35860u), vec2<u32>(4294967295u, 550u)), -1i), Struct_3(Struct_2(1000f, 0u, Struct_1(0u), vec2<u32>(40172u, 5507u)), 1i), Struct_3(Struct_2(1257f, 64844u, Struct_1(1u), vec2<u32>(20919u, 4294967295u)), -1i), Struct_3(Struct_2(564f, 18595u, Struct_1(0u), vec2<u32>(4294967295u, 1u)), -88401i), Struct_3(Struct_2(-1951f, 49715u, Struct_1(0u), vec2<u32>(29792u, 1775u)), 11946i), Struct_3(Struct_2(369f, 0u, Struct_1(1u), vec2<u32>(4294967295u, 53434u)), 46535i), Struct_3(Struct_2(-1910f, 4294967295u, Struct_1(15387u), vec2<u32>(4294967295u, 1u)), i32(-2147483648)), Struct_3(Struct_2(225f, 1u, Struct_1(51197u), vec2<u32>(6755u, 46711u)), 2414i), Struct_3(Struct_2(-1560f, 4294967295u, Struct_1(4294967295u), vec2<u32>(36710u, 4294967295u)), 21069i), Struct_3(Struct_2(1018f, 31596u, Struct_1(1u), vec2<u32>(18010u, 45454u)), -1i), Struct_3(Struct_2(-1146f, 3199u, Struct_1(853u), vec2<u32>(29755u, 1u)), 22443i), Struct_3(Struct_2(666f, 42424u, Struct_1(42109u), vec2<u32>(1u, 0u)), -37146i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(abs(u_input.a), 22u)];
    global2 = array<Struct_3, 22>();
    global0 = array<bool, 14>();
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_add_i32(u_input.b.x, -max(firstLeadingBit(var_1.x), var_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1985f - arg_0));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = !(!(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(25770u, 14u)], global0[_wgslsmith_index_u32(11983u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], false, global0[_wgslsmith_index_u32(0u, 14u)]), global0[_wgslsmith_index_u32(arg_0, 14u)]), !vec4<bool>(global0[_wgslsmith_index_u32(32827u, 14u)], true, false, true), false)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_2(474f, true, u_input.b.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(244f, -837f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-108f, -525f))))), 0u, Struct_1(arg_0), firstTrailingBit(countOneBits(select(vec2<u32>(u_input.a, 39028u), vec2<u32>(arg_0, u_input.a), true))));
    global2 = array<Struct_3, 22>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(var_1.d.x), 20093u, _wgslsmith_mult_u32(arg_0, 1u), u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 53417u, 4294967295u), vec4<u32>(0u, 1u, u_input.a, 1u)), firstTrailingBit(var_1.d.x), _wgslsmith_div_u32(1u, u_input.a), u_input.a)) | min(arg_0, ~var_1.b));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -624f))) - var_1.a), var_1.b, var_2, ~vec2<u32>(var_2.a, arg_0));
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(var_1.a, all(vec3<bool>(var_0.x, var_0.x, false)) | global0[_wgslsmith_index_u32(4072u, 14u)], ~(-6123i))))), reverseBits(arg_0), var_2, var_1.d);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> u32 {
    global1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(-(~select(vec4<i32>(-10170i, -33628i, u_input.b.x, u_input.b.x), vec4<i32>(global1.x, global1.x, 11095i, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], true, false)))), vec4<i32>(0i, 2147483647i, _wgslsmith_mod_i32(-29888i, ~u_input.b.x) >> (~(~arg_3) % 32u), -4678i));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(arg_2.a * func_1(max(u_input.a, arg_3)).a), -591f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(exp2(arg_2.a))))));
    global1 = -_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.b.x, 2147483647i, 15124i, -16283i)) << (~reverseBits(vec4<u32>(0u, arg_1.x, 71517u, 45239u)) % vec4<u32>(32u)), min(abs(countOneBits(vec4<i32>(-1i, global1.x, 5550i, 1i))), -vec4<i32>(global1.x, global1.x, u_input.b.x, -3701i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.a, 1u, arg_2.c.a, u_input.a), vec4<u32>(u_input.a, 74405u, arg_1.x, 27231u)) % vec4<u32>(32u))));
    global2 = array<Struct_3, 22>();
    let var_1 = global2[_wgslsmith_index_u32(1u << (arg_0.d.x % 32u), 22u)];
    return arg_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>) -> StorageBuffer {
    global0 = array<bool, 14>();
    var var_0 = ~arg_0.b;
    global2 = array<Struct_3, 22>();
    let var_1 = arg_0;
    var var_2 = arg_0;
    return StorageBuffer(vec2<i32>(countOneBits(61081i), ~(-u_input.c.x) ^ -36294i), arg_0.a.a, -696f, 45322i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global2[_wgslsmith_index_u32(func_3(func_1(u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(2043u, 24014u, 1u), vec3<u32>(u_input.a, 0u, 4294967295u)) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(1u, 1u, u_input.a)), Struct_2(_wgslsmith_div_f32(-275f, -1000f), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(1u, 56035u, u_input.a)), func_1(u_input.a).c, ~vec2<u32>(u_input.a, u_input.a)), u_input.a) & max(firstLeadingBit(3744u), reverseBits(_wgslsmith_div_u32(u_input.a, 4294967295u))), 22u)], 4294967295u, ~select(abs(vec4<i32>(1i, 36328i, -42839i, -24916i)) ^ abs(vec4<i32>(0i, u_input.b.x, u_input.b.x, global1.x)), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(global1.x, -1i, -41979i, global1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, u_input.c.x, u_input.c.x, -7869i), vec4<i32>(5525i, global1.x, -2147483647i, -44667i), vec4<i32>(global1.x, global1.x, 0i, u_input.b.x)), -vec4<i32>(39892i, 2147483647i, global1.x, 30681i)), !vec4<bool>(global0[_wgslsmith_index_u32(96941u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], false, true)));
}

