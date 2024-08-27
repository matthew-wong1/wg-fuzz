struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global0 = select(vec3<bool>(any(global0.xz), 1i == _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, -23417i, u_input.a.x)), vec4<i32>(-1i, -1i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(1291f + -1705f) <= _wgslsmith_f_op_f32(round(-358f))), !vec3<bool>(true, true, select(global0.x, false, any(vec4<bool>(true, global0.x, global0.x, false)))), true);
    let var_0 = true;
    var var_1 = select(global0.zx, global0.xy, 65516u != u_input.b.x);
    return _wgslsmith_mod_vec3_u32(abs(countOneBits(u_input.b.wxz)), ~firstTrailingBit(~countOneBits(u_input.b.zzw)));
}

fn func_3() -> vec4<i32> {
    global0 = !(!vec3<bool>(true, _wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(u_input.b.x, u_input.b.x)) == ~u_input.b.x, global0.x));
    var var_0 = vec3<i32>(-45510i, u_input.a.x, _wgslsmith_mult_i32(countOneBits(u_input.a.x) << (4294967295u % 32u), ~_wgslsmith_mod_i32(1i, u_input.a.x)) | (u_input.a.x ^ u_input.a.x));
    let var_1 = Struct_4(~_wgslsmith_div_i32(_wgslsmith_sub_i32(~0i, 1i), 26679i));
    var var_2 = Struct_1(vec2<bool>(any(!(!vec3<bool>(global0.x, true, global0.x))), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1141f, 972f, -690f, -757f))) * vec4<f32>(1633f, -751f, 923f, 404f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1306f, -1125f, -117f, 417f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 291f, 1088f, 2567f), vec4<f32>(-1980f, -347f, 506f, 343f))), global0.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-760f, 1217f), 1102f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-599f)), -630f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(928f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, 1242f, -130f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-245f, 2088f, 1294f, 466f), vec4<f32>(-1047f, -1000f, 177f, 702f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, -335f, -1728f, -137f))), global0.x)))));
    let var_3 = ~_wgslsmith_dot_vec2_u32(u_input.b.zy, reverseBits(firstLeadingBit(firstLeadingBit(vec2<u32>(38025u, 83562u)))));
    return min(-(countOneBits(-vec4<i32>(u_input.a.x, var_0.x, 1i, 20613i)) << (vec4<u32>(~u_input.b.x, u_input.b.x, 4294967295u | u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(~((var_0.x & var_1.a) << (~u_input.b.x % 32u)), var_0.x, -11752i, -2147483647i));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>) -> StorageBuffer {
    var var_0 = !arg_2.xyy;
    let var_1 = func_3();
    var var_2 = firstLeadingBit(var_1);
    var var_3 = vec2<f32>(2341f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-183f, arg_1)))))));
    var_0 = vec3<bool>(true, arg_0.x != 1u, _wgslsmith_f_op_f32(-933f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f - 394f))) != var_3.x);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(-996f, arg_1)), _wgslsmith_f_op_f32(-455f - 637f), -1783f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -482f, -2495f)))))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1774f, 601f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1453f, arg_1, 1383f)))), vec3<f32>(1843f, arg_1, 933f)))), countOneBits(37087u), ~(~firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.wwy;
    let var_1 = 1000f;
    let x = u_input.a;
    s_output = func_2(select(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(1u, 25674u, 36744u))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_0, vec3<u32>(0u, var_0.x, var_0.x)), ~var_0), func_1(~(~0u)), any(select(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, global0.x, false, true), global0.x), !vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), 214f, vec4<bool>(global0.x, all(!(!vec2<bool>(global0.x, global0.x))), global0.x | false, any(!vec3<bool>(global0.x, global0.x, global0.x))));
}

