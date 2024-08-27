struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
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

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(61432u, 1u), vec2<u32>(32983u, 4326u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(50847u, 0u), vec2<u32>(26772u, 7742u), vec2<u32>(28167u, 1u), vec2<u32>(4294967295u, 9890u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 29303u), vec2<u32>(0u, 72161u), vec2<u32>(96232u, 11138u), vec2<u32>(4325u, 1u), vec2<u32>(34212u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(25882u, 0u), vec2<u32>(54535u, 25974u), vec2<u32>(19576u, 15087u), vec2<u32>(1u, 10765u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(70013u, 0u), vec2<u32>(70946u, 59265u), vec2<u32>(32241u, 0u), vec2<u32>(108503u, 6323u), vec2<u32>(33143u, 15620u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = !(!arg_0.d);
    global0 = array<vec2<u32>, 28>();
    return vec4<u32>(~1u, ~(~1u), _wgslsmith_add_u32(65838u, u_input.c.x), _wgslsmith_mult_u32(4294967295u, min(~(u_input.c.x ^ u_input.c.x), 37674u)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(func_3(Struct_3(Struct_2(vec2<bool>(false, false), true), vec4<u32>(u_input.c.x, u_input.c.x, 3275u, 1u), vec3<bool>(false, true, true), vec3<bool>(true, false, false), Struct_2(vec2<bool>(true, true), true))), ~reverseBits(vec4<u32>(22501u, 73334u, u_input.c.x, u_input.c.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.c.xz), global0[_wgslsmith_index_u32(~11991u, 28u)]) >> (~(~u_input.c.x) % 32u), _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 0u | firstTrailingBit(111861u)), ~(~u_input.c.x), abs(u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)));
    global0 = array<vec2<u32>, 28>();
    let var_2 = Struct_4(-29975i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(max(var_1.zy, vec2<f32>(var_1.x, -1000f))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, 767f)))), (abs(4294967295u) == _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 37165u), vec3<u32>(6705u, 27679u, 9558u))) | true, u_input.c.x), -reverseBits(u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(var_1.zy + vec2<f32>(-134f, 1f)), true, var_0.x));
    return var_2.b.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), global0[_wgslsmith_index_u32(~4294967295u, 28u)], any(vec2<bool>(true, true))) & ~firstTrailingBit(vec2<u32>(0u, 0u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -1307f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1309f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)), 206f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.xww);
    let var_3 = Struct_1(vec2<f32>(var_1.x, var_2.x), all(vec4<bool>(true, u_input.c.x <= var_0.x, u_input.c.x != 0u, true)), ~(~1845u));
    var var_4 = Struct_4(-u_input.a.x, Struct_1(var_1.yz, var_3.b, ~53514u), u_input.b.xx, Struct_1(_wgslsmith_div_vec2_f32(var_2.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wy))), all(vec2<bool>(var_3.b && false, true)), max(4294967295u, _wgslsmith_sub_u32(u_input.c.x ^ 1450u, firstLeadingBit(0u)))));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.a.x + -1000f), var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, 290f), var_1.zy, false)), var_1.wx))), true, 18725u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.c.x, 13963u, 14350u, u_input.c.x)), ~vec4<u32>(u_input.c.x, 1055u, u_input.c.x, 25128u)), max(countOneBits(select(vec4<u32>(u_input.c.x, u_input.c.x, 25788u, u_input.c.x), vec4<u32>(16455u, 0u, 29784u, 49328u), vec4<bool>(true, false, false, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(20537u, 73280u, 42057u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, 60618u, 38929u), vec4<u32>(u_input.c.x, 1u, 63711u, 15586u)) | ~vec4<u32>(4294967295u, 0u, 48566u, 7794u))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c.x), firstTrailingBit(u_input.c.x), max(u_input.c.x, u_input.c.x), countOneBits(1u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 2041u), vec4<u32>(44088u, 44410u, 18903u, u_input.c.x)))) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c.x, 10642u, 5953u)), ~vec3<u32>(36263u, u_input.c.x, u_input.c.x)), 1u, u_input.c.x, _wgslsmith_mult_u32(70154u, u_input.c.x)));
    global0 = array<vec2<u32>, 28>();
    var var_1 = !(true && (select(1u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), true) <= 4294967295u));
    var var_2 = Struct_4(-2616i, func_1(), reverseBits(u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, -1586f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, -1156f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, 431f) - vec2<f32>(-1000f, -1221f))))), all(vec2<bool>(true, true)), 33969u));
    var var_3 = vec3<f32>(727f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a.x) + -1146f))), 1249f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(func_3(Struct_3(Struct_2(vec2<bool>(false, true), var_2.d.b), var_0, vec3<bool>(var_2.d.b, false, var_2.b.b), vec3<bool>(true, var_2.b.b, var_2.d.b), Struct_2(vec2<bool>(true, var_2.d.b), true))).xwy, var_0.ywz));
}

