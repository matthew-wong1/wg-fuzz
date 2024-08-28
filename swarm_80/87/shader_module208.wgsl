struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = vec3<i32>(max(47427i << (0u % 32u), max(9553i, min(-40098i, global0[_wgslsmith_index_u32(arg_2, 18u)]))) | arg_1.c, abs(-(i32(-1i) * -arg_1.c)), reverseBits(-1i));
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_0.zz, u_input.a.yx), u_input.a.xw, ~vec2<i32>(var_0.x, -1i));
    let var_2 = Struct_1(firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 71922u, 17615u), vec3<u32>(arg_2, 0u, arg_0.x))), _wgslsmith_f_op_vec3_f32(arg_1.b * arg_1.b), select(firstLeadingBit(countOneBits(abs(var_1.x))), _wgslsmith_add_i32(u_input.a.x & abs(-1i), 4014i), global1.x), (arg_1.d << (vec3<u32>(~53426u, ~arg_2, 31753u) % vec3<u32>(32u))) | arg_1.d);
    var var_3 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~(~23765u), arg_2, var_2.a.x), countOneBits(var_2.a)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(abs(-522f)), true))), _wgslsmith_f_op_f32(select(937f, var_2.b.x, all(vec3<bool>(global1.x, global1.x, true))))), firstTrailingBit(var_1.x), arg_1.a);
    let var_4 = var_2;
    return select(select(select(!vec4<bool>(false, true, false, global1.x), vec4<bool>(global1.x, all(global1.xy), global1.x && false, var_3.b.x >= var_2.b.x), any(global1.zyz)), vec4<bool>(global1.x && true, false, any(select(vec4<bool>(true, true, false, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), true)), var_2.b.x != _wgslsmith_f_op_f32(-var_4.b.x)), all(global1.yxz)), vec4<bool>(var_2.c > ~(~arg_1.c), !(!any(global1.wx)), false, global1.x), select(select(select(!vec4<bool>(global1.x, true, false, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, false), all(global1.wx)), vec4<bool>(!global1.x, any(vec4<bool>(false, false, false, false)), true, global1.x), !vec4<bool>(true, false, global1.x, false)), select(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, true), global1.x), vec4<bool>(global1.x, !global1.x, all(global1.zx), global1.x && global1.x), select(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, false), global1.x), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, false, false, global1.x), vec4<bool>(false, global1.x, false, global1.x)), all(global1.zyy))), vec4<bool>(!(arg_1.b.x >= 327f), false, all(vec4<bool>(false, global1.x, true, global1.x)) == false, global1.x && all(vec4<bool>(global1.x, false, global1.x, global1.x)))));
}

fn func_2() -> vec4<f32> {
    let var_0 = countOneBits(4294967295u);
    global1 = select(select(select(vec4<bool>(select(false, true, false), global1.x, all(vec2<bool>(true, false)), any(global1.ywx)), !(!vec4<bool>(global1.x, global1.x, global1.x, true)), vec4<bool>(all(vec2<bool>(false, true)), true, all(vec4<bool>(global1.x, false, false, global1.x)), !global1.x)), !func_3(~vec2<u32>(var_0, 11827u), Struct_1(vec3<u32>(var_0, var_0, var_0), vec3<f32>(-827f, 1155f, -1209f), global0[_wgslsmith_index_u32(54602u, 18u)], vec3<u32>(var_0, 30708u, var_0)), ~4294967295u), !vec4<bool>(global1.x, true, true, !global1.x)), select(vec4<bool>(global1.x, _wgslsmith_f_op_f32(select(-284f, -1603f, global1.x)) <= 1219f, false, global1.x), !vec4<bool>(true, global1.x, -25944i != u_input.a.x, var_0 == var_0), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, global1.x, true, true), vec4<bool>(false, true, global1.x, true)), vec4<bool>(global1.x, true, global1.x, global1.x), any(vec4<bool>(global1.x, global1.x, false, global1.x)))), !vec4<bool>(true, true, global1.x, global1.x));
    let var_1 = vec4<i32>(-40589i, ~u_input.a.x, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, -1i), -u_input.a.wz) ^ u_input.a.x, u_input.a.x);
    global1 = func_3(~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0, 14390u) ^ select(vec2<u32>(var_0, 4294967295u), vec2<u32>(4294967295u, var_0), global1.yz), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(0u, var_0)))), Struct_1(~vec3<u32>(46663u, ~var_0, var_0), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-113f + -272f))), -219f, 176f), global0[_wgslsmith_index_u32(6215u | var_0, 18u)], vec3<u32>(var_0, abs(55229u), 34729u)), ~4294967295u);
    global1 = !(!select(select(vec4<bool>(global1.x, global1.x, false, global1.x), !vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x)), select(vec4<bool>(global1.x, false, false, global1.x), select(vec4<bool>(true, true, false, global1.x), vec4<bool>(true, false, global1.x, true), vec4<bool>(true, global1.x, global1.x, false)), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, global1.x, global1.x, false), false)), all(vec3<bool>(global1.x, global1.x, false)) | true));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(458f, -1364f) * -1044f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f * -331f)), _wgslsmith_f_op_f32(abs(1f)), 1253f)));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec4<bool> {
    return vec4<bool>(global1.x, global1.x, global1.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(arg_1.x))) > -1000f);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_1 {
    global1 = func_4(select(9548u, arg_1, !arg_0.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.x, 120f)), _wgslsmith_f_op_f32(f32(-1f) * -721f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + 869f), _wgslsmith_f_op_f32(ceil(arg_2.x)), -1000f, _wgslsmith_f_op_f32(sign(-147f))))));
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(89606u & ~arg_1, ~arg_1), arg_1);
    var var_1 = arg_2.x < -622f;
    var_1 = all(select(vec3<bool>(arg_3.x, !func_4(arg_1, vec2<f32>(-1000f, 265f), vec4<f32>(arg_2.x, arg_2.x, -1205f, -873f)).x, true), func_3(~(~vec2<u32>(arg_1, arg_1)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(93206u, arg_1, arg_1), vec3<u32>(arg_1, 25598u, arg_1)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1300f, arg_2.x, arg_2.x))), global0[_wgslsmith_index_u32(arg_1, 18u)], _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1, 44225u), vec3<u32>(7539u, 8967u, arg_1))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 9198u), vec4<u32>(arg_1, 4294967295u, arg_1, arg_1)))).zwz, select(!select(global1.xzx, vec3<bool>(arg_3.x, arg_0.x, true), global1.xzy), !global1.zyw, vec3<bool>(arg_2.x < arg_2.x, false, arg_3.x))));
    let var_2 = -1881f;
    return Struct_1(~(~vec3<u32>(firstLeadingBit(arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(16414u, arg_1), vec2<u32>(71396u, 63199u)), ~arg_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2224f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_2))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(ceil(-155f)), _wgslsmith_f_op_f32(-1229f * var_2))))), u_input.a.x, ~(vec3<u32>(20189u, 0u, min(arg_1, arg_1)) | abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 31712u, arg_1), vec3<u32>(arg_1, arg_1, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    let var_0 = func_1(vec2<bool>(true, global1.x), ~1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f * -406f)), -508f)), global1.wz);
    let var_1 = -2147483647i;
    let var_2 = -u_input.a;
    let var_3 = _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(43318u, 18u)], -1i, 2147483647i);
    global0 = array<i32, 18>();
    var var_4 = select(14663i, -_wgslsmith_sub_i32(u_input.a.x, 1i), ~(_wgslsmith_mult_u32(var_0.d.x, 4294967295u) ^ ~4294967295u) <= ~(var_0.a.x >> (36581u % 32u)));
    let var_5 = all(!select(vec3<bool>(true, var_3 < var_0.c, global1.x), vec3<bool>(true, var_0.b.x != var_0.b.x, all(vec2<bool>(true, global1.x))), global1.yxx));
    let var_6 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~var_6 << (abs(~13414u) % 32u), _wgslsmith_mod_u32(1u, max(1u, var_0.d.x >> (var_0.a.x % 32u)))));
}

