struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(-1i, -16634i, -15683i), vec3<i32>(9242i, 23857i, -61684i), vec4<i32>(2147483647i, 1i, 2147483647i, 6253i), 1u, vec4<u32>(18398u, 1u, 0u, 4294967295u)), Struct_1(vec3<i32>(-1i, 10278i, -1i), vec3<i32>(-1i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), -15786i, 48389i, 8481i), 96201u, vec4<u32>(11563u, 4294967295u, 27816u, 37893u)), Struct_1(vec3<i32>(1i, -15458i, -17994i), vec3<i32>(i32(-2147483648), -1i, 6158i), vec4<i32>(0i, 8369i, 8693i, 28414i), 1u, vec4<u32>(25372u, 16873u, 37648u, 1u)), Struct_1(vec3<i32>(22580i, 2147483647i, 2147483647i), vec3<i32>(7499i, 1i, 1i), vec4<i32>(2147483647i, -68045i, i32(-2147483648), 5402i), 1u, vec4<u32>(1u, 1u, 0u, 55816u)), Struct_1(vec3<i32>(-15302i, 2147483647i, i32(-2147483648)), vec3<i32>(5318i, 11676i, -1i), vec4<i32>(2147483647i, 2147483647i, -1i, -1i), 1u, vec4<u32>(4294967295u, 38883u, 10197u, 43431u)), Struct_1(vec3<i32>(2147483647i, 1i, -45793i), vec3<i32>(1i, i32(-2147483648), -8897i), vec4<i32>(2674i, 0i, -1i, 6688i), 5068u, vec4<u32>(55560u, 52035u, 11458u, 4294967295u)), Struct_1(vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(-1i, i32(-2147483648), 15087i), vec4<i32>(32273i, -1i, -1i, -16935i), 4294967295u, vec4<u32>(48636u, 0u, 12461u, 1u)), Struct_1(vec3<i32>(14023i, -1i, 37386i), vec3<i32>(7300i, 7490i, 163i), vec4<i32>(2147483647i, 0i, 1i, 7486i), 1299u, vec4<u32>(4294967295u, 4294967295u, 6739u, 0u)), Struct_1(vec3<i32>(-27658i, -62565i, -1i), vec3<i32>(33192i, 1i, 13657i), vec4<i32>(i32(-2147483648), 1i, 1i, 8388i), 0u, vec4<u32>(4294967295u, 19082u, 0u, 10032u)), Struct_1(vec3<i32>(i32(-2147483648), -24938i, -6658i), vec3<i32>(-1i, 21520i, -16497i), vec4<i32>(i32(-2147483648), 22082i, -24991i, 2147483647i), 70918u, vec4<u32>(4294967295u, 1u, 49230u, 47659u)), Struct_1(vec3<i32>(-16292i, -70802i, 34034i), vec3<i32>(2147483647i, -1i, -1i), vec4<i32>(80263i, 0i, -3627i, 16496i), 36504u, vec4<u32>(4294967295u, 9701u, 53719u, 9914u)), Struct_1(vec3<i32>(-7689i, 1i, i32(-2147483648)), vec3<i32>(-14638i, -66875i, 21080i), vec4<i32>(-17934i, i32(-2147483648), 0i, -11313i), 4294967295u, vec4<u32>(0u, 0u, 0u, 1u)), Struct_1(vec3<i32>(-1i, 7560i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 49439i, 0i), vec4<i32>(-30732i, 17931i, 2147483647i, -18853i), 55486u, vec4<u32>(59795u, 0u, 1u, 66156u)), Struct_1(vec3<i32>(39003i, i32(-2147483648), 1i), vec3<i32>(8309i, 0i, 1i), vec4<i32>(21262i, 0i, -1i, 1i), 4294967295u, vec4<u32>(52419u, 1u, 4294967295u, 1u)), Struct_1(vec3<i32>(3387i, 37961i, 2147483647i), vec3<i32>(47546i, i32(-2147483648), 1i), vec4<i32>(0i, 13467i, -28921i, 8576i), 0u, vec4<u32>(45264u, 1u, 1u, 4294967295u)), Struct_1(vec3<i32>(-46315i, 31254i, -55800i), vec3<i32>(-62455i, 1i, 2147483647i), vec4<i32>(1i, -63193i, 20543i, -1i), 35223u, vec4<u32>(4294967295u, 0u, 9485u, 0u)), Struct_1(vec3<i32>(61662i, i32(-2147483648), 1i), vec3<i32>(-16323i, 51414i, 1i), vec4<i32>(8413i, 1i, 1i, 2147483647i), 25517u, vec4<u32>(4294967295u, 77676u, 18187u, 1u)), Struct_1(vec3<i32>(10968i, -630i, 0i), vec3<i32>(2147483647i, 2147483647i, 0i), vec4<i32>(0i, 0i, 1i, -11796i), 0u, vec4<u32>(37987u, 10721u, 7144u, 6697u)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(1i, -36389i, 2147483647i), vec4<i32>(33006i, -1i, 0i, 2147483647i), 0u, vec4<u32>(1u, 0u, 9612u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), -45620i, 0i), vec3<i32>(25207i, 1i, -35815i), vec4<i32>(-2306i, 1i, 1189i, 19603i), 20046u, vec4<u32>(0u, 4294967295u, 0u, 17648u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_mod_u32(~0u, 37781u);
    let var_1 = _wgslsmith_f_op_f32(floor(arg_3.x));
    var var_2 = !any(arg_1.zwx);
    var_2 = arg_1.x;
    global0 = array<Struct_1, 20>();
    return select(~vec4<i32>(reverseBits(max(1342i, u_input.a.x)), u_input.a.x, ~(1i << (u_input.d % 32u)), _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x))), max(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-30031i, 666i, -320i, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), 10459i, firstTrailingBit(~u_input.a.x), 16381i), reverseBits(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 24857i), vec4<i32>(-12139i, u_input.a.x, u_input.a.x, u_input.a.x))))), arg_1);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    let var_1 = Struct_1(u_input.a, min(u_input.a, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 25191i, u_input.a.x), u_input.a, u_input.a) | u_input.a, _wgslsmith_div_vec3_i32(firstTrailingBit(u_input.a), u_input.a))), vec4<i32>(~u_input.a.x, select(u_input.a.x, -1i, !any(vec2<bool>(false, false))), u_input.a.x & 1i, min(abs(u_input.a.x), abs(~54519i))), u_input.e.x << (~abs(~1u) % 32u), ~(~(~vec4<u32>(0u, 30140u, 4294967295u, u_input.b.x))) ^ vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.e.x), _wgslsmith_div_u32(0u, u_input.e.x), u_input.d, u_input.d));
    global0 = array<Struct_1, 20>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2371f, _wgslsmith_f_op_f32(sign(1248f)), _wgslsmith_f_op_f32(sign(arg_2)))))));
    let var_2 = u_input.a.x;
    return Struct_1(~_wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(~vec3<i32>(var_2, u_input.a.x, 1i), ~u_input.a)), vec3<i32>(~var_1.b.x, min(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, 0i, 30465i, u_input.a.x), vec4<i32>(var_1.b.x, var_1.a.x, var_1.b.x, 0i)) >> (~1u % 32u)), abs(i32(-1i) * -1i)), countOneBits(func_3(~countOneBits(u_input.e.zw), vec4<bool>(true, true, any(vec4<bool>(true, true, true, false)), all(vec2<bool>(true, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d, 16675u, 9303u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(17490u, 18108u, 0u, 66605u), vec4<u32>(1u, u_input.b.x, 1u, 4294967295u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(159f, arg_1, var_0.x), vec3<f32>(var_0.x, arg_0, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1711f, 567f))))), 5119u, vec4<u32>(~(~_wgslsmith_add_u32(var_1.e.x, u_input.c)), u_input.b.x, 45971u, 4423u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = func_2(724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1271f * -1158f) - _wgslsmith_f_op_f32(f32(-1f) * -201f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1167f)) * -536f)))));
    let var_1 = vec2<bool>(any(vec3<bool>(false, all(select(vec4<bool>(false, arg_0, false, true), vec4<bool>(true, arg_0, arg_0, arg_0), true)), any(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))))), true | ((true && any(vec4<bool>(arg_0, arg_0, false, true))) || arg_0));
    var var_2 = _wgslsmith_f_op_f32(select(673f, -382f, arg_0));
    return func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -787f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1378f + 199f)))))), _wgslsmith_f_op_f32(316f * 819f), -1506f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = global0[_wgslsmith_index_u32(func_2(-1145f, 1389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-407f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 494f) - _wgslsmith_f_op_f32(round(1000f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(481f, 1000f)), _wgslsmith_f_op_f32(723f - -1065f), true))))).d, 20u)];
    var var_2 = 489f;
    var var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(475f, _wgslsmith_f_op_f32(339f + 1984f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) * 1f) - 809f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -847f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 1202f))))).c.x;
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -firstTrailingBit(u_input.a.x & 1i), abs(i32(-1i) * -35868i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-856f, 135f, -582f, 984f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, -962f, 708f, -1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-129f, 249f, 782f, -599f), vec4<f32>(-1571f, -184f, 618f, 1204f), false))) + vec4<f32>(-990f, _wgslsmith_f_op_f32(f32(-1f) * -576f), -1119f, _wgslsmith_f_op_f32(f32(-1f) * -730f)))));
}

