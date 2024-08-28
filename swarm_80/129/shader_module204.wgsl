struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<f32>(-1000f, -557f)), Struct_2(vec2<f32>(1810f, 374f)), Struct_2(vec2<f32>(514f, 1334f)), Struct_2(vec2<f32>(-826f, -307f)), Struct_2(vec2<f32>(980f, 1434f)), Struct_2(vec2<f32>(382f, 1390f)), Struct_2(vec2<f32>(-320f, 1255f)), Struct_2(vec2<f32>(-705f, -413f)), Struct_2(vec2<f32>(-811f, -1546f)), Struct_2(vec2<f32>(-1000f, 1180f)), Struct_2(vec2<f32>(655f, 369f)), Struct_2(vec2<f32>(-2416f, 278f)), Struct_2(vec2<f32>(1080f, 422f)), Struct_2(vec2<f32>(119f, 618f)), Struct_2(vec2<f32>(399f, -119f)), Struct_2(vec2<f32>(562f, -1137f)), Struct_2(vec2<f32>(-1551f, -157f)), Struct_2(vec2<f32>(-1133f, -252f)), Struct_2(vec2<f32>(181f, 245f)), Struct_2(vec2<f32>(-920f, 822f)), Struct_2(vec2<f32>(-661f, 1665f)), Struct_2(vec2<f32>(-541f, 392f)), Struct_2(vec2<f32>(-294f, 961f)), Struct_2(vec2<f32>(621f, 559f)), Struct_2(vec2<f32>(-1312f, 766f)), Struct_2(vec2<f32>(-515f, -202f)), Struct_2(vec2<f32>(751f, -1375f)), Struct_2(vec2<f32>(-1064f, 1000f)), Struct_2(vec2<f32>(-1000f, 497f)), Struct_2(vec2<f32>(-941f, -671f)), Struct_2(vec2<f32>(-1747f, 1319f)), Struct_2(vec2<f32>(419f, -415f)));

var<private> global1: array<bool, 28> = array<bool, 28>(false, true, false, false, true, false, false, false, false, false, false, true, true, false, false, true, true, false, false, false, true, true, false, true, false, false, false, true);

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<f32>(969f, 1000f)), Struct_2(vec2<f32>(601f, -1130f)), Struct_2(vec2<f32>(-515f, -1028f)), Struct_2(vec2<f32>(1598f, 2056f)), Struct_2(vec2<f32>(1000f, 779f)), Struct_2(vec2<f32>(-530f, -644f)), Struct_2(vec2<f32>(131f, 1309f)), Struct_2(vec2<f32>(-1000f, -955f)), Struct_2(vec2<f32>(248f, 404f)), Struct_2(vec2<f32>(168f, 187f)), Struct_2(vec2<f32>(-761f, 1575f)), Struct_2(vec2<f32>(700f, -492f)));

var<private> global3: array<vec3<bool>, 31>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_4) -> f32 {
    global0 = array<Struct_2, 32>();
    let var_0 = -2189f;
    let var_1 = ~reverseBits(vec4<i32>(48374i, ~(u_input.a | u_input.a), u_input.a, 0i));
    global2 = array<Struct_2, 12>();
    let var_2 = 9318u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1472f) + 522f);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = select(arg_0.yxy, _wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(-1i, -27614i), ~_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a), -vec3<i32>(u_input.a, abs(u_input.a), arg_0.x)), global3[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~4294967295u, reverseBits(9702u), 29581u)), 31u)]);
    var var_1 = _wgslsmith_f_op_f32(-334f - -123f);
    let var_2 = _wgslsmith_mult_u32(~26743u, 0u);
    var var_3 = arg_0.x ^ var_0.x;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-872f + _wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(vec4<i32>(32962i, u_input.a, u_input.a, arg_0.x), 1000f, 1000f))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(421f, -739f, true)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-359f, -1112f))))))))));
    return global1[_wgslsmith_index_u32(abs(firstLeadingBit(1071u)), 28u)];
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = any(vec2<bool>((1i != firstLeadingBit(u_input.a)) & true, arg_0));
    var var_1 = ~u_input.a;
    let var_2 = -1i;
    let var_3 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(u_input.a, 46882i, var_2, u_input.a) & vec4<i32>(u_input.a, -5837i, u_input.a, 48754i)), ~reverseBits(vec4<i32>(-4073i, var_2, u_input.a, -24603i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(vec4<i32>(41551i, -13643i, u_input.a, 1i), -1687f, -1000f)))))))), _wgslsmith_f_op_f32(step(-642f, 394f)));
    let var_4 = var_3.b;
    return all(vec4<bool>(all(select(vec4<bool>(false, true, false, true), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(91319u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(70158u, 28u)]), !vec4<bool>(global1[_wgslsmith_index_u32(3864u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], arg_0))), true, !any(select(vec4<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(4294967295u, 28u)], true), vec4<bool>(arg_0, false, false, global1[_wgslsmith_index_u32(12758u, 28u)]), arg_0)), all(vec4<bool>(true, func_3(vec4<i32>(88371i, var_3.a.x, var_3.a.x, 13276i)), true, global1[_wgslsmith_index_u32(~83911u, 28u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 28>();
    global1 = array<bool, 28>();
    global2 = array<Struct_2, 12>();
    let var_0 = vec4<bool>(func_1(false), func_1(global1[_wgslsmith_index_u32(1u, 28u)]), !((~1i >> (1u % 32u)) > _wgslsmith_div_i32(~u_input.a, u_input.a)), all(vec3<bool>(!(!global1[_wgslsmith_index_u32(0u, 28u)]), any(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 59247u, 0u, 45843u), vec4<u32>(4294967295u, 0u, 4294967295u, 19807u)), 31u)]), false)));
    var var_1 = (18540u >> ((_wgslsmith_clamp_u32(0u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 11576u), vec3<u32>(31117u, 30816u, 0u))) & ~4294967295u) % 32u)) != 61427u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(1u, 1u), 1u, 18420u, 1u ^ (_wgslsmith_sub_u32(25318u, 9529u) & _wgslsmith_clamp_u32(4294967295u, 1u, 1u))), _wgslsmith_dot_vec2_u32(firstTrailingBit(~reverseBits(vec2<u32>(0u, 1u))), abs(firstTrailingBit(~vec2<u32>(14334u, 96100u)))));
}

