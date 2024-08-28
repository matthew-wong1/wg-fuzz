struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(747f, 709f);

var<private> global2: vec4<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = global1.x;
    global2 = u_input.a;
    global0 = !(!(any(!vec2<bool>(arg_0, arg_0)) | arg_0));
    let var_1 = !select(!(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false))), select(vec2<bool>(all(vec3<bool>(arg_0, arg_0, arg_0)), arg_0 | arg_0), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(true, true)), !all(vec3<bool>(arg_0, false, false))), vec2<bool>(true, !(global1.x > 761f)));
    let var_2 = all(select(vec4<bool>(false, all(vec4<bool>(arg_0, var_1.x, true, var_1.x)) || var_1.x, arg_0, arg_0), !vec4<bool>(all(vec4<bool>(arg_0, true, arg_0, true)), -2147483647i <= u_input.a.x, u_input.b >= u_input.b, any(vec4<bool>(var_1.x, false, arg_0, false))), var_1.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -656f);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = -22235i;
    let var_1 = -973f;
    var var_2 = vec3<f32>(-395f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f - _wgslsmith_div_f32(1046f, -1014f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) + _wgslsmith_div_f32(3407f, -876f))))), 976f);
    global0 = any(select(vec3<bool>(!select(false, true, false), (u_input.b <= 4294967295u) && (arg_0 != arg_0), false), select(vec3<bool>(all(vec2<bool>(false, false)), arg_0 == 1u, false), vec3<bool>(true, select(true, true, false), true), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, arg_0 <= arg_0, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, false))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x + var_2.x))), vec4<u32>(~arg_0, _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, u_input.b, u_input.b, 18664u), vec4<u32>(arg_0, u_input.b, u_input.b, 51806u)), vec4<u32>(u_input.b, arg_0, 4294967295u, 4294967295u))), select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.b, arg_0), ~vec3<u32>(arg_0, arg_0, 1u)), 56874u, true), u_input.b << (select(u_input.b, ~arg_0, true) % 32u)), -min(vec4<i32>(countOneBits(2147483647i), i32(-1i) * -2147483647i, u_input.a.x, _wgslsmith_div_i32(global2.x, -2147483647i)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 31443i, u_input.a.x, 0i), u_input.a, vec4<i32>(global2.x, global2.x, u_input.a.x, u_input.a.x)))), ~vec4<u32>(arg_0, 4294967295u, ~_wgslsmith_sub_u32(u_input.b, arg_0), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 17689u, 86061u, 4294967295u), vec4<u32>(u_input.b, arg_0, arg_0, 16588u))), countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.b) & (vec3<u32>(4294967295u, arg_0, arg_0) & vec3<u32>(arg_0, u_input.b, 2091u)), select(~vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(12370u, 0u, u_input.b) >> (vec3<u32>(60214u, u_input.b, arg_0) % vec3<u32>(32u)), true))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(var_2.x + 342f), vec4<u32>(u_input.b, 80229u, ~var_3.e.x, 1u), -u_input.a, vec4<u32>(37344u, u_input.b, 1272u, ~(~arg_0)), var_3.d.xwy), var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(false)), _wgslsmith_f_op_f32(trunc(var_3.a)), -1596f, _wgslsmith_f_op_f32(-var_2.x)))), arg_0);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_mult_i32(1i, -arg_1.b.c.x);
    let var_1 = arg_1;
    var var_2 = Struct_2(func_2(_wgslsmith_mult_u32(4294967295u, arg_1.d)).b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -1050f)))), firstLeadingBit(~min(var_1.b.d, var_1.b.b)), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-42921i, select(2147483647i, -5699i, false), -20354i, -1i | arg_2.x)), max(arg_1.b.b, arg_1.b.b), arg_1.a.b.xzx << (vec3<u32>(arg_1.d, arg_0, abs(1u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(var_1.c)), ~max(~var_1.d, ~arg_0) & _wgslsmith_div_u32(1u, ~0u));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(trunc(-267f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -640f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 197f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a.a, arg_3)))))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(433f + var_2.b.a), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f))), var_3.x));
    return !(861f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(628f + var_2.c.x), 1449f) + -359f));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = u_input.a.xw;
    let var_1 = abs(~30693u | select(countOneBits(_wgslsmith_sub_u32(4294967295u, 1u)), firstLeadingBit(firstTrailingBit(0u)), arg_1));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-574f + _wgslsmith_f_op_f32(round(-432f))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, 1150f), -435f))) + _wgslsmith_f_op_f32(max(-693f, -372f))), _wgslsmith_f_op_f32(-661f + -1283f));
    var var_2 = select(vec3<bool>(true, all(!vec4<bool>(true, arg_1, arg_1, false)), arg_1), !select(!(!vec3<bool>(false, true, arg_1)), select(!vec3<bool>(false, true, arg_1), select(vec3<bool>(arg_1, true, false), vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, false))), func_4(~u_input.b, func_2(0u), countOneBits(vec3<i32>(arg_0.c.x, 2147483647i, 1i)), _wgslsmith_f_op_f32(-global1.x))), select(!select(!vec3<bool>(arg_1, true, false), !vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(true, arg_1 && !arg_1, arg_1), !func_4(~var_1, Struct_2(Struct_1(-736f, arg_0.b, u_input.a, vec4<u32>(5661u, var_1, u_input.b, 26766u), arg_0.e), Struct_1(arg_0.a, vec4<u32>(var_1, u_input.b, 0u, var_1), vec4<i32>(u_input.a.x, 1i, u_input.a.x, var_0.x), vec4<u32>(arg_0.d.x, 0u, 4294967295u, u_input.b), vec3<u32>(arg_0.d.x, arg_0.b.x, arg_0.e.x)), vec4<f32>(2520f, arg_0.a, global1.x, arg_0.a), arg_0.e.x), vec3<i32>(u_input.a.x, 2147483647i, 18398i), _wgslsmith_f_op_f32(func_3(true)))));
    let var_3 = func_2(1u).b;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.x, _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(1u, 0u, 0u, u_input.b)) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 40552u) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(52967u, u_input.b, 30023u), vec3<u32>(u_input.b, 34819u, 0u)), ~15704u, 24276u ^ _wgslsmith_div_u32(u_input.b, u_input.b), 0u)), u_input.a, vec4<u32>(u_input.b, 52571u, ~max(func_1(Struct_1(global1.x, vec4<u32>(u_input.b, u_input.b, 0u, 116343u), vec4<i32>(-1667i, global2.x, -36456i, -1i), vec4<u32>(9097u, 4294967295u, 7545u, u_input.b), vec3<u32>(4294967295u, u_input.b, 13765u)), true), u_input.b), u_input.b), reverseBits(vec3<u32>(abs(u_input.b), ~u_input.b, 15094u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), global1.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, global1.x)), vec2<f32>(global1.x, 2056f), true)))))));
    var_1 = vec2<f32>(var_0.a, var_0.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = Struct_2(func_2(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(u_input.b, ~1u))).b, func_2(55460u).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-196f, 146f, var_0.a, 735f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(975f, global1.x, var_1.x, var_1.x), vec4<f32>(763f, global1.x, -1261f, 624f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), global1.x, -409f, -145f)), var_0.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~15116u, ~u_input.b, var_0.b.x) << (~firstTrailingBit(_wgslsmith_sub_vec3_u32(var_3.b.e, var_0.d.wyw)) % vec3<u32>(32u)));
}

