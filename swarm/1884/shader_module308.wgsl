struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(true), Struct_1(true));

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global3: array<Struct_2, 32>;

var<private> global4: array<bool, 23> = array<bool, 23>(false, false, true, true, true, false, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, true, false);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_1 {
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_1, arg_1), 27u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_2;
    let var_1 = Struct_2(var_0.wwx);
    global0 = reverseBits(select(u_input.a, vec3<i32>(arg_1, _wgslsmith_add_i32(1i, select(global0.x, 41360i, true)), -(~u_input.a.x)), vec3<bool>(!(!arg_3.a), true, true)));
    global1 = array<Struct_1, 2>();
    let var_2 = abs(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(10542u, 62985u, 8928u)), vec3<u32>(~1u, 0u, ~19000u)));
    return vec3<f32>(_wgslsmith_f_op_f32(select(124f, _wgslsmith_div_f32(-958f, var_1.a.x), all(!vec2<bool>(global4[_wgslsmith_index_u32(1u, 23u)], true)))), arg_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-292f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - -496f))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = func_2(1000f, _wgslsmith_mod_u32(max(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 82385u, arg_2.x), vec3<u32>(43794u, 0u, 0u)), vec3<u32>(85708u, 5540u, arg_2.x)), ~96356u | max(arg_2.x, arg_2.x)), 52905u), -294f);
    global4 = array<bool, 23>();
    var var_1 = global2[_wgslsmith_index_u32(~arg_2.x, 27u)];
    let var_2 = global3[_wgslsmith_index_u32(~50810u, 32u)];
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(367f, 1242f)), global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, var_2.a.x, var_2.a.x, 1285f)), arg_3)))));
    return vec3<u32>(1u, 4294967295u, arg_2.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: f32) -> vec3<i32> {
    global2 = array<Struct_1, 27>();
    let var_0 = global0.x;
    global0 = select(min(abs(u_input.a), firstTrailingBit(-vec3<i32>(u_input.a.x, 48732i, -37015i))), reverseBits(min(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-28079i, global0.x, global0.x), u_input.a, arg_1), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(u_input.a, u_input.a) & u_input.a)), vec3<bool>(arg_1.x, arg_1.x, !all(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(13110u, 23u)], true), vec4<bool>(true, arg_1.x, true, false), true))));
    let var_1 = vec3<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(270f, -1921f) - vec2<f32>(-1760f, arg_2)), u_input.a.x >> (39164u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1441f, 1000f, arg_2)), global2[_wgslsmith_index_u32(~arg_0.x, 27u)])).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(f32(-1f) * -212f)) * _wgslsmith_f_op_f32(round(arg_2)))), arg_2);
    let var_2 = arg_0.x;
    return ~select(max(abs(vec3<i32>(-34375i, global0.x, 12590i)), vec3<i32>(reverseBits(0i), _wgslsmith_dot_vec2_i32(global0.zx, vec2<i32>(global0.x, 2147483647i)), 49128i)), vec3<i32>(-(i32(-1i) * -9789i), ~u_input.a.x, -countOneBits(-1i)), all(!vec3<bool>(arg_1.x, false, global4[_wgslsmith_index_u32(0u, 23u)])));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_1 {
    global3 = array<Struct_2, 32>();
    global2 = array<Struct_1, 27>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(137f, _wgslsmith_f_op_f32(abs(-2268f)), _wgslsmith_f_op_f32(step(arg_3.x, arg_3.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(arg_3 + arg_3), global0.x | u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-223f, arg_3.x, 771f, -159f)), Struct_1(global4[_wgslsmith_index_u32(1u, 23u)]))))));
    var var_1 = -_wgslsmith_sub_i32(select(arg_2.x, arg_2.x, arg_3.x != var_0.a.x), -firstLeadingBit(arg_2.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.yz - _wgslsmith_f_op_vec2_f32(step(arg_3, var_0.a.xy))) - vec2<f32>(225f, var_0.a.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, 443f))) - var_0.a.xx))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.yx) * _wgslsmith_f_op_vec2_f32(-arg_3)))));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 32>();
    var var_0 = func_5(~1u >> (abs(~_wgslsmith_clamp_u32(4294967295u, 1524u, 0u)) % 32u), global2[_wgslsmith_index_u32(abs(42376u), 27u)], func_4(max(vec3<u32>(~4294967295u, 1u, abs(95549u)), ~func_1(0i, vec4<i32>(-13991i, u_input.a.x, global0.x, -11638i), vec2<u32>(4294967295u, 0u), global1[_wgslsmith_index_u32(1u, 2u)])), !(!vec3<bool>(true, true, global4[_wgslsmith_index_u32(78763u, 23u)])), -462f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-217f, _wgslsmith_f_op_f32(-1845f - -1711f)))))));
    global1 = array<Struct_1, 2>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1855f)))) + _wgslsmith_f_op_f32(select(-998f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(var_0.a, var_0.a, var_0.a, false))))) - -400f), _wgslsmith_f_op_f32(abs(-1000f))));
    var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -664f)), _wgslsmith_dot_vec3_u32(~vec3<u32>(select(4294967295u, 39461u, global4[_wgslsmith_index_u32(78609u, 23u)]), firstLeadingBit(0u), _wgslsmith_mult_u32(23477u, 1u)), ~vec3<u32>(~42601u, 1u, 102742u)), var_1);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 37864u), 27u)];
    var var_3 = !all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0.xx, ~1u, _wgslsmith_div_vec3_u32(abs(~vec3<u32>(1u, 1u, 53107u)), ~vec3<u32>(1u, 1u, 1u)), firstTrailingBit(firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
}

