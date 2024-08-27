struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-1i, Struct_1(false, vec2<f32>(-491f, 547f))), Struct_2(-1i, Struct_1(true, vec2<f32>(1000f, -778f))), Struct_2(61899i, Struct_1(false, vec2<f32>(297f, 180f))), Struct_2(i32(-2147483648), Struct_1(true, vec2<f32>(-1900f, -378f))), Struct_2(29302i, Struct_1(true, vec2<f32>(452f, 1469f))), Struct_2(-1i, Struct_1(true, vec2<f32>(-1000f, -879f))), Struct_2(-36293i, Struct_1(true, vec2<f32>(369f, -1518f))), Struct_2(17230i, Struct_1(true, vec2<f32>(-653f, 2257f))), Struct_2(0i, Struct_1(false, vec2<f32>(1384f, -172f))), Struct_2(i32(-2147483648), Struct_1(false, vec2<f32>(-1277f, 545f))), Struct_2(-1i, Struct_1(true, vec2<f32>(799f, 339f))), Struct_2(-18983i, Struct_1(false, vec2<f32>(541f, 881f))), Struct_2(0i, Struct_1(false, vec2<f32>(-648f, 496f))), Struct_2(-20684i, Struct_1(false, vec2<f32>(-465f, 1185f))), Struct_2(0i, Struct_1(false, vec2<f32>(536f, 723f))), Struct_2(2147483647i, Struct_1(true, vec2<f32>(-1350f, 1098f))), Struct_2(11081i, Struct_1(true, vec2<f32>(-1336f, 1397f))), Struct_2(0i, Struct_1(true, vec2<f32>(-235f, -1000f))));

var<private> global1: array<vec3<bool>, 31>;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_2, 18>();
    global2 = array<Struct_2, 10>();
    global2 = array<Struct_2, 10>();
    let var_0 = vec3<i32>(-1i, _wgslsmith_sub_i32(max(arg_0, i32(-1i) * -48111i), arg_0), _wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -1i, arg_0, arg_0 >> (u_input.a % 32u), reverseBits(arg_0)), -select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -1i, -20348i, arg_0), vec4<i32>(arg_0, arg_0, -2147483647i, 20648i)), -vec4<i32>(arg_0, 0i, arg_0, -5680i), vec4<bool>(true, arg_1, arg_1, arg_1))));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, 147f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2137f, -139f)))) - vec2<f32>(-204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f - -1717f)))));
    return Struct_1(all(vec2<bool>(true, var_1.a)) || true, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-446f, var_1.b.x))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    let var_0 = reverseBits(_wgslsmith_div_i32(i32(-1i) * -abs(arg_1.x), arg_1.x));
    global0 = array<Struct_2, 18>();
    global2 = array<Struct_2, 10>();
    var var_1 = Struct_2(abs(var_0 << (reverseBits(u_input.a ^ u_input.a) % 32u)), Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, -504f))))));
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 18u)];
    return u_input.a;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(1u, 31u)];
    global2 = array<Struct_2, 10>();
    var var_1 = Struct_4(func_2(arg_1.x >> (u_input.a % 32u), var_0.x), arg_0, Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))))));
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.b + var_1.a.b)))))));
    global1 = array<vec3<bool>, 31>();
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 55128u, u_input.a, 1u), vec4<u32>(u_input.a, 496u, 28111u, u_input.a))) ^ reverseBits(vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), vec4<u32>(0u, func_3(func_2(1i, false).b.x, select(arg_1, arg_1, var_1.a.a)), u_input.a ^ ~u_input.a, u_input.a)), abs(vec4<u32>(u_input.a, ~select(0u, u_input.a, var_2.a), u_input.a, _wgslsmith_div_u32(u_input.a, countOneBits(4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    let var_0 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(2020f)), -830f)))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-16911i, 1i, 5184i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)));
    global2 = array<Struct_2, 10>();
    let var_1 = func_2(~(-(~(-2147483647i))) << (u_input.a % 32u), select(select(false, all(vec2<bool>(false, true)), select(true, false, false)) | any(vec4<bool>(true, true, true, true)), true, !(!any(vec2<bool>(false, true)))));
    var var_2 = firstTrailingBit(firstTrailingBit(vec3<i32>(~30112i, _wgslsmith_dot_vec4_i32(vec4<i32>(22136i, -21276i, 1004i, -21137i), vec4<i32>(-1i, 24221i, -5444i, -2147483647i)), 1i))) | vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, abs(8698i)), vec2<i32>(1i, -2147483647i)), 19280i, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(0i), -1i, -28759i), vec3<i32>(_wgslsmith_div_i32(-22194i, 31120i), 1i, ~2147483647i)));
    let var_3 = 4294967295u;
    var var_4 = var_0.xy;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yxz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1603f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(898f, var_1.b.x))))), var_1.b.x, -firstLeadingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 64947i, -46110i), vec3<i32>(var_2.x, 0i, var_2.x)), -vec3<i32>(-1i, var_2.x, -8188i), vec3<i32>(var_2.x, var_2.x, var_2.x))), var_3);
}

