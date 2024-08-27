struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u << (0u % 32u), _wgslsmith_sub_u32(u_input.a, ~1u)), vec2<u32>(u_input.a, 0u), reverseBits(vec2<u32>(16782u, 31688u) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) >> (~vec2<u32>(89007u & u_input.a, 4294967295u) % vec2<u32>(32u)));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(u_input.a, 23u)], abs(_wgslsmith_mod_vec3_u32(vec3<u32>(7114u, u_input.a, var_0.x), vec3<u32>(u_input.a, u_input.a, 0u) >> (vec3<u32>(60903u, 33585u, var_0.x) % vec3<u32>(32u)))) << (countOneBits((vec3<u32>(u_input.a, 4294967295u, 4294967295u) | vec3<u32>(33827u, 1u, var_0.x)) | vec3<u32>(4294967295u, 50629u, u_input.a)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-328f - -528f), _wgslsmith_div_f32(522f, 180f), _wgslsmith_f_op_f32(408f * 373f), _wgslsmith_f_op_f32(2214f * -1180f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(418f)), 858f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -359f))), -2195f), -269f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_div_f32(1659f, 606f), false))))));
    global0 = array<vec2<i32>, 23>();
    let var_3 = _wgslsmith_f_op_f32(min(2725f, _wgslsmith_f_op_f32(step(-629f, -197f))));
    return firstTrailingBit(min(~(-91480i), var_1.a.x));
}

fn func_3(arg_0: u32, arg_1: i32) -> Struct_2 {
    global0 = array<vec2<i32>, 23>();
    let var_0 = any(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), u_input.a < arg_0), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, false, true)), false)));
    let var_1 = 72332u;
    let var_2 = ~(~vec3<u32>(~arg_0, 1u, arg_0)) ^ firstLeadingBit(~abs(vec3<u32>(65178u, 32236u, 4294967295u)) >> (vec3<u32>(var_1, reverseBits(var_1), u_input.a) % vec3<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_sub_i32(-13609i, arg_1), firstLeadingBit(firstTrailingBit(arg_1)), arg_1, arg_0);
    return Struct_2(-(vec2<i32>(-1i) * -abs(global0[_wgslsmith_index_u32(49572u, 23u)])), max(vec3<u32>(min(var_2.x, arg_0) >> (countOneBits(5158u) % 32u), 1u, 1u), max(vec3<u32>(arg_0, u_input.a, var_1) ^ ~vec3<u32>(89219u, arg_0, var_1), ~var_2)));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = !all(!vec2<bool>(all(vec3<bool>(arg_1, arg_0, false)), true));
    var var_1 = func_3(u_input.a, select(_wgslsmith_div_i32(-(~1i), 1i), _wgslsmith_add_i32(-1i, func_2(arg_0)), true));
    let var_2 = Struct_1(var_1.a.x, ~_wgslsmith_sub_i32(var_1.a.x, func_3(~64237u, 0i).a.x), 2147483647i, countOneBits(85759u));
    var var_3 = Struct_1(var_1.a.x, -6865i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, 9576i), var_1.a) ^ func_2(arg_0)) ^ _wgslsmith_mult_i32(~(-1i), select(var_2.b, 1i, arg_1) >> (80973u % 32u)), _wgslsmith_dot_vec2_u32(~func_3(43349u << (1u % 32u), 60162i).b.yx, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.x, 0u), _wgslsmith_sub_vec2_u32(var_1.b.zy, vec2<u32>(var_1.b.x, var_2.d))), min(vec2<u32>(4294967295u, 1u), max(vec2<u32>(1963u, 5841u), vec2<u32>(0u, var_1.b.x))))));
    let var_4 = firstLeadingBit(u_input.a);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_3;
    let var_1 = Struct_2(vec2<i32>(arg_1.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_2.yxz, vec3<i32>(-2147483647i, 2147483647i, arg_3.c)), -2147483647i)) << (~(arg_1.b.zx << (arg_1.b.zx % vec2<u32>(32u))) % vec2<u32>(32u)), ~select(vec3<u32>(4294967295u, _wgslsmith_div_u32(arg_3.d, 1u), 18709u), _wgslsmith_sub_vec3_u32(~arg_1.b, abs(arg_1.b)), vec3<bool>(true, true, false)));
    global0 = array<vec2<i32>, 23>();
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(-((vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, 2147483647i) | vec4<i32>(var_1.a.x, 0i, -162i, 1i)) & arg_2), abs(vec4<i32>(arg_0.b, -23206i, -31398i, arg_1.a.x)) >> (select(vec4<u32>(u_input.a, 55951u, var_0.d, var_1.b.x) >> (vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)), select(vec4<u32>(15115u, 0u, var_0.d, 4294967295u), vec4<u32>(80978u, 0u, u_input.a, 27042u), vec4<bool>(false, true, false, false)), true) % vec4<u32>(32u))), select(14785i, reverseBits(~arg_1.a.x), true), -arg_3.c, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_3.d, 21302u), abs(vec3<u32>(1u, 20176u, u_input.a)))));
    let var_2 = 1i;
    return Struct_2(arg_1.a, ~abs(vec3<u32>(~var_0.d, arg_3.d, u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    var var_0 = ~35254u;
    var var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(106147u, 1u), _wgslsmith_mod_vec2_u32(arg_2.b.yy, _wgslsmith_add_vec2_u32(vec2<u32>(67459u, arg_0.b.x), arg_2.b.xz)) & vec2<u32>(func_3(min(0u, 59019u), _wgslsmith_mod_i32(arg_2.a.x, arg_0.a.x)).b.x, reverseBits(33340u)), vec2<u32>(arg_0.b.x, ~_wgslsmith_mod_u32(select(32169u, 4294967295u, false), 1u)));
    var var_2 = vec4<bool>(arg_3 > arg_3, arg_1, false != all(!(!vec4<bool>(arg_1, false, arg_1, false))), arg_0.b.x < 0u);
    var_2 = select(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(arg_1, true, false, false)), !vec4<bool>(var_2.x, true, arg_1, true), false)), vec4<bool>((arg_1 | true) == all(select(var_2.yzw, var_2.xyy, true)), true != select(true, true, true), any(select(vec3<bool>(var_2.x, false, true), vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, false, true))), (arg_0.a.x ^ countOneBits(1i)) < -58318i), arg_1);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-200f, -1461f)))))));
    return var_2.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(true & any(vec2<bool>(false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), Struct_2(global0[_wgslsmith_index_u32(~1619u, 23u)], ~vec3<u32>(47230u, 45357u, u_input.a) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), max(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, 15111i) << (vec4<u32>(0u, u_input.a, 26731u, 1267u) % vec4<u32>(32u)), vec4<i32>(47605i, 1i, -48250i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), Struct_1(~1i, ~18816i, -80536i, reverseBits(u_input.a))), true, Struct_2(global0[_wgslsmith_index_u32(~func_3(27769u >> (u_input.a % 32u), 1i).b.x, 23u)], ~(~countOneBits(vec3<u32>(62991u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(588f, _wgslsmith_f_op_f32(f32(-1f) * -1535f)))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-101f, -1037f))))));
    var var_1 = vec3<i32>(abs(-1i), -1i, ~(-1i));
    let var_2 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, 73091u)), vec3<u32>(1811u, u_input.a | u_input.a, ~u_input.a)), vec3<u32>(~1u, reverseBits(u_input.a), u_input.a & 53145u));
    let var_3 = Struct_1(2147483647i, var_1.x, func_3(1u, var_1.x).a.x, ~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(17707u, u_input.a >> (u_input.a % 32u)), 4294967295u));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(254f, 1493f) + vec2<f32>(-326f, -495f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1676f, 766f), vec2<f32>(582f, -774f)))))))));
    var var_5 = -2147483647i;
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1588f)), _wgslsmith_f_op_f32(max(105f, var_4.x)), 130f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 417f, 987f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -894f, var_4.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(47195u, _wgslsmith_f_op_f32(ceil(354f)));
}

