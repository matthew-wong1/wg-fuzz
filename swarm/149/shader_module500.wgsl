struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 57072i, 2147483647i), false);

var<private> global1: vec3<f32> = vec3<f32>(-1054f, 329f, -1000f);

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global2 = vec2<bool>(false, true);
    let var_0 = vec4<u32>(0u, 1u, 29832u, arg_0.x);
    let var_1 = global0.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-616f, 286f)))), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, firstLeadingBit(37689u), var_0.x, min(arg_0.x, arg_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 7758u, arg_0.x), var_0 & var_0), ~(~var_0)) >> (vec4<u32>(abs(_wgslsmith_sub_u32(4294967295u, 31727u)), reverseBits(0u), 1u, u_input.b.x) % vec4<u32>(32u)));
    let var_3 = !global0.b | (_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.a.x, global0.a.x), vec3<i32>(global0.a.x, -1i, -1i)), -2147483647i) <= reverseBits(0i));
    return global0.a.x;
}

fn func_4(arg_0: vec4<i32>) -> i32 {
    global2 = !select(select(vec2<bool>(true, global0.b), select(vec2<bool>(global0.b, global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, true), true), true | global0.b), select(false, any(vec3<bool>(global0.b, true, true)), global2.x)), vec2<bool>(true, true), !(!select(vec2<bool>(global0.b, false), vec2<bool>(true, true), global2.x)));
    let var_0 = Struct_1(global1.x, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u | u_input.b.x, _wgslsmith_add_u32(12612u, 1u), u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), ~vec4<u32>(38107u, 21757u, u_input.b.x, 63320u)), ~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 54623u, 4532u), vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x)))));
    global2 = vec2<bool>(true, true);
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 1000f)) * global1.zx));
    return _wgslsmith_clamp_i32(global0.a.x, -2147483647i, firstLeadingBit(-2147483647i));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = u_input.b;
    let var_1 = vec4<i32>(func_4(vec4<i32>(-46193i, i32(-1i) * -arg_2, 1i, func_3(vec2<u32>(var_0.x, u_input.b.x)))), ~arg_0, -7817i, _wgslsmith_clamp_i32(-1i, reverseBits(-(~arg_0)), func_4(_wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(-7133i, global0.a.x, arg_1.x, 22310i), vec4<i32>(39733i, 14380i, global0.a.x, 2147483647i)))));
    return Struct_3(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(~var_1.x, abs(0i), 1i, _wgslsmith_sub_i32(14199i, arg_0))), firstTrailingBit(-vec4<i32>(0i, var_1.x, global0.a.x, arg_2))), any(select(vec2<bool>(all(vec3<bool>(false, global2.x, false)), var_1.x == 0i), !vec2<bool>(global0.b, false), select(vec2<bool>(global0.b, global0.b), select(vec2<bool>(true, false), vec2<bool>(true, global2.x), false), !vec2<bool>(global2.x, global2.x)))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    let var_0 = func_2(_wgslsmith_mult_i32(2787i, _wgslsmith_add_i32(arg_1.x, u_input.a)), vec2<i32>((arg_1.x ^ _wgslsmith_add_i32(global0.a.x, 0i)) << (select(_wgslsmith_mult_u32(26954u, u_input.b.x), u_input.b.x << (u_input.b.x % 32u), true) % 32u), -u_input.a), _wgslsmith_dot_vec4_i32(max(global0.a, ~vec4<i32>(-29649i, global0.a.x, arg_1.x, u_input.a)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(global0.a.x, -1i, arg_1.x, global0.a.x)) & vec4<i32>(arg_1.x, -41644i, 40047i, u_input.a), reverseBits(vec4<i32>(arg_1.x, 0i, 2147483647i, 6225i)))));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(435f, global1.x, global0.b)), global1.x, _wgslsmith_div_f32(1144f, global1.x)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.zx + global1.xz), _wgslsmith_f_op_vec2_f32(global1.xx * vec2<f32>(-1000f, -461f))))))));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(any(!vec3<bool>(var_0.b, false, true)), all(vec2<bool>(all(vec4<bool>(false, global0.b, true, true)), all(vec2<bool>(true, true))))), vec2<bool>(!var_0.b, !var_0.b));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-182f, global1.x)) * global1.yz))))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(966f, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(max(global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1177f, global1.x, global1.x))), select(select(vec3<bool>(true, global0.b, true), vec3<bool>(true, false, global2.x), vec3<bool>(global0.b, false, global2.x)), !vec3<bool>(false, global2.x, false), select(vec3<bool>(global2.x, true, true), vec3<bool>(global0.b, false, false), vec3<bool>(global2.x, global0.b, global0.b))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1010f) * vec3<f32>(-1181f, 664f, 1612f))))));
    let var_1 = ~reverseBits(~_wgslsmith_div_u32(_wgslsmith_add_u32(38119u, 96369u), func_1(global2.x, vec2<i32>(global0.a.x, global0.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-719f, 1113f, -935f, var_0.x) * vec4<f32>(global1.x, global1.x, 1413f, 2714f)))))));
    global1 = var_2.wxz;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-451f, _wgslsmith_f_op_f32(sign(var_2.x)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.zz, var_0.xz)) + var_2.wz)))));
    var_2 = vec4<f32>(_wgslsmith_div_f32(-745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), -1055f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_3.a.x, var_0.x, global2.x))))) + -1874f), _wgslsmith_f_op_f32(f32(-1f) * -122f));
    let var_4 = true;
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-var_0.x), true)), _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - 893f)))), _wgslsmith_f_op_f32(select(1376f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.x, var_3.a.x)), -815f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1458f))), func_2(2231i, ~global0.a.xy, -8318i).b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x * var_2.x))));
    var var_5 = Struct_4(u_input.a, select(!vec3<bool>(!global2.x, any(vec4<bool>(false, global2.x, global0.b, true)), true), select(select(select(vec3<bool>(global2.x, true, true), vec3<bool>(false, global2.x, var_4), vec3<bool>(var_4, true, global0.b)), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), !vec3<bool>(global2.x, global0.b, global2.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(global0.b, true, global0.b), var_4), !vec3<bool>(true, global2.x, false))), _wgslsmith_f_op_f32(-global1.x) <= 373f), Struct_1(1667f, vec4<u32>(var_1 & 15498u, 1u, ~0u, var_1) << (max(~vec4<u32>(35494u, var_1, var_1, 0u), ~vec4<u32>(64992u, u_input.b.x, 1u, 40648u)) % vec4<u32>(32u))), vec3<bool>(all(!(!vec4<bool>(global2.x, var_4, true, true))), false, !any(vec4<bool>(global0.b, global0.b, true, global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.a.yy));
}

