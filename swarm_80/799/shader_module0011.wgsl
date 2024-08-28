struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1u, -125f, vec4<i32>(-70864i, -55503i, 18587i, 11421i)), Struct_1(1u, -605f, vec4<i32>(-1i, -31587i, i32(-2147483648), 1i)), Struct_1(0u, -446f, vec4<i32>(-37140i, -1i, 52686i, 40192i)), Struct_1(33478u, -1000f, vec4<i32>(2147483647i, 38631i, -39848i, 15038i)), Struct_1(61557u, -815f, vec4<i32>(-13850i, -16799i, -1i, 0i)), Struct_1(4294967295u, 757f, vec4<i32>(2222i, -46569i, 0i, i32(-2147483648))), Struct_1(1u, -1203f, vec4<i32>(-22025i, i32(-2147483648), -1i, 2147483647i)), Struct_1(1u, -513f, vec4<i32>(-1i, 1i, 267i, 1i)), Struct_1(15857u, -922f, vec4<i32>(-22906i, 0i, -98777i, 2147483647i)), Struct_1(30967u, -1091f, vec4<i32>(5345i, 1i, 13331i, 36886i)), Struct_1(49849u, 914f, vec4<i32>(-1i, 0i, 1i, 16000i)), Struct_1(1u, 1295f, vec4<i32>(2147483647i, -1i, -13896i, -32297i)), Struct_1(18015u, 934f, vec4<i32>(2147483647i, -22949i, -40210i, 0i)), Struct_1(0u, -502f, vec4<i32>(-1i, i32(-2147483648), 22111i, 2147483647i)), Struct_1(10131u, 1093f, vec4<i32>(10223i, -1i, -45558i, 0i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_u32(~45203u, arg_0.a ^ arg_0.a), arg_0.b, select(select(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 7947i, u_input.a.x, arg_0.c.x), vec4<i32>(arg_0.c.x, -8670i, arg_1.c.x, arg_1.c.x))), arg_0.c, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), -arg_1.c, vec4<bool>(true, true, true, true)));
    let var_1 = ~(~select(vec3<u32>(arg_1.a, 4294967295u, ~arg_1.a), (vec3<u32>(arg_0.a, 0u, arg_0.a) ^ vec3<u32>(arg_1.a, 11459u, arg_1.a)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(13305u, 0u, arg_0.a), vec3<u32>(0u, arg_0.a, var_0.a)) % vec3<u32>(32u)), true));
    var var_2 = ~vec4<u32>(~arg_0.a & var_1.x, ~_wgslsmith_div_u32(abs(4294967295u), 4294967295u), ~(~reverseBits(0u)), 56302u);
    let var_3 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.x, 55326u, 1u), ~var_2.xxw), vec3<u32>(~5197u, arg_0.a << (arg_0.a % 32u), var_0.a)), ~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1985u, 4294967295u, var_1.x), var_1)), max(var_2.yww, max(reverseBits(var_1), vec3<u32>(62704u, var_0.a, arg_0.a))));
    var var_4 = arg_1.c.yw;
    return 28833u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_add_u32(4294967295u, ~func_3(arg_2, Struct_1(2671u, arg_0.x, arg_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - 664f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_2.b)))), arg_2.b, true))), ~firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-28509i, arg_2.c.x, -8143i, arg_1.x), vec4<i32>(arg_1.x, -2147483647i, -2147483647i, -2147483647i))));
}

fn func_1() -> bool {
    let var_0 = Struct_1(33630u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), ~firstTrailingBit(~(vec4<i32>(u_input.a.x, u_input.a.x, -19840i, 1i) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1928i))));
    let var_1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, var_0.b, var_0.b, 1000f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 513f, var_0.b, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2537f, var_0.b, -130f, var_0.b)), false))))), firstLeadingBit(~var_0.c), Struct_1(var_0.a << (42937u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-328f)))), vec4<i32>(-min(var_0.c.x, u_input.a.x), ~u_input.a.x, -3010i, 2147483647i)));
    let var_2 = vec2<u32>(var_0.a, abs(_wgslsmith_mod_u32(select(reverseBits(var_0.a), ~var_0.a, true), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 1u, 0u, 17720u), ~vec4<u32>(var_0.a, var_1.a, var_0.a, 18909u)))));
    let var_3 = Struct_1(~(~(~(~17751u))), var_1.b, var_1.c);
    global0 = array<Struct_1, 15>();
    return any(vec3<bool>(true, true, any(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_add_u32(55537u, select(18835u, _wgslsmith_dot_vec2_u32(vec2<u32>(97834u, 24671u), vec2<u32>(15273u, 28479u)), func_1())));
    let var_1 = vec4<bool>(true, !all(vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, false)))), any(vec2<bool>(true, true)) && any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), func_1());
    var var_2 = vec2<i32>(abs(u_input.a.x), func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1453f, 1000f, -436f, 1000f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(522f, -1000f, 624f, -754f), vec4<f32>(938f, -1668f, 821f, -1304f), vec4<bool>(var_1.x, true, var_1.x, false)))))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 10979i, u_input.a.x, -20652i), ~vec4<i32>(u_input.a.x, -23256i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x & u_input.a.x, -8819i, _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x), 2147483647i | u_input.a.x)), global0[_wgslsmith_index_u32(23033u, 15u)]).c.x);
    var var_3 = ~vec3<u32>(1u, 0u, 0u);
    var_3 = vec3<u32>(~(~var_3.x), _wgslsmith_mult_u32(27895u, ~(~var_3.x)) | 67478u, var_3.x);
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(func_2(vec4<f32>(-208f, -961f, 1043f, -412f), vec4<i32>(11890i, 0i, var_2.x, -23773i), global0[_wgslsmith_index_u32(74179u, 15u)]).c.x, -11499i, u_input.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a.x))), -vec4<i32>(1i, ~var_2.x, -25736i, 21722i), _wgslsmith_div_vec4_i32(~abs(vec4<i32>(1i, var_2.x, u_input.a.x, 1i)), -abs(vec4<i32>(var_2.x, 2147483647i, var_2.x, var_2.x)))), var_3.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-41388i), _wgslsmith_dot_vec3_i32(vec3<i32>(8548i, var_2.x, var_2.x), vec3<i32>(u_input.a.x, u_input.a.x, 65096i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, u_input.a.x), vec3<i32>(0i, u_input.a.x, var_2.x))), ~(-vec3<i32>(var_2.x, -36846i, -2147483647i))), u_input.a.x));
}

