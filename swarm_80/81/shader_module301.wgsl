struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-347f, -153f, 761f)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(700f, 1000f, 305f)), 4294967295u, Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1000f, -1071f, 897f)), -24419i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(702f, 577f, -616f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-1159f, -898f, 979f)), 0u, Struct_1(vec3<bool>(true, false, true), vec3<f32>(-668f, 255f, -198f)), i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(482f, -663f, 1072f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1339f, -323f, -786f)), 18897u, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-198f, 1000f, 2016f)), -1i), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(904f, -917f, -1000f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(1077f, 136f, 234f)), 32517u, Struct_1(vec3<bool>(true, false, false), vec3<f32>(1180f, 734f, 764f)), 14614i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(1186f, -1302f, 1095f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(734f, -574f, 3611f)), 1u, Struct_1(vec3<bool>(true, false, false), vec3<f32>(805f, -663f, -1000f)), -16265i), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(2876f, -682f, 197f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1000f, 770f, 113f)), 17970u, Struct_1(vec3<bool>(false, true, false), vec3<f32>(380f, -414f, -1388f)), 0i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(1317f, -1000f, -148f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-552f, 497f, 483f)), 3059u, Struct_1(vec3<bool>(false, false, false), vec3<f32>(1556f, -345f, -1010f)), 0i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-157f, 2321f, -934f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1000f, -792f, 673f)), 1u, Struct_1(vec3<bool>(false, true, true), vec3<f32>(925f, 141f, -1029f)), -1i), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-203f, -316f, -503f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(536f, 749f, -559f)), 0u, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-524f, 1255f, -349f)), -15919i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(182f, -112f, 1152f)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1192f, -1132f, -1171f)), 4294967295u, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-904f, 1000f, 1000f)), 12009i));

var<private> global2: vec3<i32> = vec3<i32>(-5098i, -1i, 14803i);

var<private> global3: bool;

var<private> global4: array<i32, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~53891u << ((u_input.a.x >> (42460u % 32u)) % 32u)), arg_1), 20u)], Struct_1(select(vec3<bool>(true, false, !arg_0.x), !(!vec3<bool>(arg_0.x, false, arg_0.x)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1460f, 1784f, 2307f)))))), _wgslsmith_mult_u32(arg_1 ^ ~4294967295u, max(59644u, arg_1)), global0[_wgslsmith_index_u32(~arg_1, 20u)], ~1i);
    global1 = array<Struct_2, 10>();
    global0 = array<Struct_1, 20>();
    global2 = _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(32719i, abs(12145i), ~global4[_wgslsmith_index_u32(u_input.b, 32u)])), firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(~global2.x, global2.x), firstLeadingBit(1i), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(76582u, 32u)], 1i) & (global2.x << (var_1.c % 32u)))), ~(vec3<i32>(-22345i, 1i, -global4[_wgslsmith_index_u32(arg_1, 32u)]) ^ (~vec3<i32>(global2.x, -50936i, 5371i) & abs(vec3<i32>(global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(arg_1, 32u)], 2147483647i)))));
    return true;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(arg_2.d.a.x, func_3(arg_2.b.a.xz, arg_2.c << (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(2918u, arg_2.c, 36053u)) % 32u)), !(any(vec3<bool>(arg_2.d.a.x, true, false)) | true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b.x)), arg_2.d.b.x, _wgslsmith_div_f32(-849f, 646f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.b) - _wgslsmith_f_op_vec3_f32(round(arg_2.a.b)))))));
    var var_1 = abs(-21306i);
    global2 = -countOneBits(min(~vec3<i32>(global4[_wgslsmith_index_u32(arg_2.c, 32u)], -2147483647i, 15357i), vec3<i32>(global4[_wgslsmith_index_u32(14642u, 32u)], -9190i, arg_0) & vec3<i32>(48878i, arg_2.e, global4[_wgslsmith_index_u32(110596u, 32u)]))) ^ vec3<i32>(firstTrailingBit(abs(-arg_2.e)), arg_2.e, reverseBits(global2.x));
    var var_2 = vec2<i32>(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global2.x, global2.x), global2.xz), global2.xy)) & arg_2.e, -(~41070i));
    var var_3 = Struct_1(select(arg_2.b.a, select(!arg_2.a.a, !vec3<bool>(arg_2.b.a.x, false, true), true), !vec3<bool>(!var_0.a.x, arg_2.a.a.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.b)));
    return Struct_1(vec3<bool>(true, arg_2.b.a.x, any(vec4<bool>(var_0.a.x, all(var_3.a.zz), true, all(vec2<bool>(var_0.a.x, var_3.a.x))))), var_3.b);
}

fn func_1() -> u32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(firstTrailingBit(44006u), 20u)], u_input.b, func_2(global2.x, 360u, global1[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -715f)), ~_wgslsmith_clamp_i32(-23418i, 0i, -(~global4[_wgslsmith_index_u32(u_input.b, 32u)])));
    var var_1 = global0[_wgslsmith_index_u32(47634u, 20u)];
    var var_2 = false;
    var var_3 = global1[_wgslsmith_index_u32(min(0u, ~var_0.c), 10u)];
    global2 = vec3<i32>(var_3.e, firstLeadingBit(var_0.e), -14431i);
    return 4642u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    global3 = any(vec4<bool>(true, true, true, true));
    var var_1 = vec4<bool>(true, true != (~(~113503u) == ~func_1()), select(true, abs(firstLeadingBit(global2.x)) > ~global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1793f) * _wgslsmith_f_op_f32(trunc(-2275f))) == 746f), any(vec2<bool>(true, true)));
    global3 = true;
    global1 = array<Struct_2, 10>();
    var var_2 = var_1.x;
    var var_3 = 133u;
    let var_4 = vec4<u32>(~u_input.b, ~u_input.b, 41418u, u_input.b);
    global2 = vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(48654i, global2.x, 2147483647i, global2.x) >> (~var_4 % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(78794i, global2.x, -1i, global4[_wgslsmith_index_u32(u_input.b, 32u)])), _wgslsmith_add_vec4_i32(vec4<i32>(global2.x, global4[_wgslsmith_index_u32(4294967295u, 32u)], 2147483647i, -2147483647i), vec4<i32>(0i, 38461i, 17647i, 14307i)))) << (4294967295u % 32u), ~global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-global2.zy, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 895f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(196f + -1135f) * _wgslsmith_f_op_f32(530f + -2207f)))), reverseBits(1i), vec3<i32>(_wgslsmith_mult_i32(17708i, 33185i) & global2.x, ~(~1i), global4[_wgslsmith_index_u32(firstTrailingBit(var_4.x), 32u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2703f, -930f)), _wgslsmith_f_op_f32(437f * _wgslsmith_f_op_f32(min(-1000f, -292f))), -321f)));
}

