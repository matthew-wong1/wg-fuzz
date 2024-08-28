struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = select((22449u < (_wgslsmith_mult_u32(u_input.e, 4294967295u) ^ u_input.a)) && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-746f)), _wgslsmith_f_op_f32(step(829f, 947f))) < _wgslsmith_f_op_f32(f32(-1f) * -1494f)), select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f - 1000f) + _wgslsmith_f_op_f32(step(-203f, -355f))) > _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(468f, 403f)), true)), all(vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))))), false);
    let var_1 = u_input.b.x;
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-513f, -995f), _wgslsmith_f_op_f32(f32(-1f) * -1606f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1445f + _wgslsmith_f_op_f32(sign(-1000f))), -103f)), _wgslsmith_f_op_f32(step(-1182f, -172f))));
    var var_4 = reverseBits((var_1 >> (45507u % 32u)) >> (max(_wgslsmith_clamp_u32(4294967295u, u_input.e, u_input.a) | 38006u, _wgslsmith_sub_u32(_wgslsmith_add_u32(40467u, u_input.e), ~var_1)) % 32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x + var_3.x))), -1389f))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = u_input.c;
    var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a.x, 0i, var_1.x, u_input.c.x)), arg_0.a)), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 16223i, 3903i, u_input.d), arg_0.a, vec4<i32>(0i, var_1.x, 21850i, arg_0.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -38169i, -2147483647i, -1i), arg_0.a), vec4<i32>(u_input.c.x, 2147483647i, arg_0.a.x, -14493i)))), _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_sub_i32(u_input.c.x, arg_0.a.x), min(-var_1.x, u_input.d)));
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b), select(vec2<u32>(u_input.e, u_input.a), u_input.b, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9624u, 76437u) << (vec3<u32>(12997u, 58144u, u_input.e) % vec3<u32>(32u)), vec3<u32>(u_input.e, 1u, 1u) & vec3<u32>(159u, u_input.b.x, u_input.b.x)), ~5755u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.b.x, 1u, u_input.a), vec4<u32>(u_input.e, 15703u, 30029u, 0u)), 44204u ^ u_input.b.x, 33129u)) & (_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e, 1u, u_input.b.x, 1u)), (vec4<u32>(4294967295u, 63177u, 4294967295u, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.e, 53333u, 57679u)) | countOneBits(vec4<u32>(1u, 21261u, u_input.e, u_input.e)), vec4<u32>(_wgslsmith_add_u32(4977u, u_input.b.x), u_input.b.x, ~4294967295u, ~77743u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(24603u, max(838u, 0u), 30023u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))), vec4<u32>(u_input.a, u_input.a, reverseBits(u_input.b.x), _wgslsmith_mult_u32(4294967295u, u_input.b.x))));
    var var_3 = Struct_4(vec3<i32>(abs(-_wgslsmith_clamp_i32(-2147483647i, 48252i, 1i)), u_input.d ^ (u_input.d & var_1.x), arg_0.a.x), Struct_2(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), true)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -147f, -908f))), select(vec2<bool>(arg_0.b.x != arg_0.c, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true == all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), select(true, false, true)), vec3<bool>(true, true, true))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b, arg_0.b, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec3<bool>(true, false, any(vec3<bool>(false, true, true)))));
    return -12430i;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = -1824f;
    var var_2 = Struct_4(-(vec3<i32>(-1i, ~(-22154i), _wgslsmith_dot_vec3_i32(vec3<i32>(-20744i, u_input.c.x, u_input.d), vec3<i32>(u_input.d, arg_0, 11813i))) << (arg_1 % vec3<u32>(32u))), Struct_2(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true), any(vec3<bool>(true, false, false))))), Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1720f, -708f, 947f) + vec3<f32>(-1000f, -1116f, -1170f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1040f, -234f, -783f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1238f, -124f, -800f), vec3<f32>(1206f, -142f, 521f), vec3<bool>(false, true, false)))))), vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, -739f, 674f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-781f, -393f, -1337f) - vec3<f32>(993f, 226f, 817f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -344f, -345f))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec3<bool>(true, true, true)));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(-2111f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.d.a.x * 949f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.a.x, var_2.d.a.x, var_2.c.c.x)))))), _wgslsmith_div_f32(720f, var_2.c.a.x));
    var_2 = Struct_4(vec3<i32>(arg_0, firstTrailingBit(arg_0), _wgslsmith_mult_i32(u_input.d, ~firstLeadingBit(0i))), var_2.b, var_2.d, var_2.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(ceil(1403f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-526f)))) - _wgslsmith_f_op_f32(floor(var_3.x)));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(max(arg_0.x, -1300f)), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 532f)), 482f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstLeadingBit(max(func_2(Struct_1(vec4<i32>(1i, u_input.c.x, 0i, 2147483647i), var_0.xyx, -1000f), -1570f), i32(-1i) * -5414i)), ~vec3<u32>(4294967295u, firstTrailingBit(110455u), 5940u))));
    let var_2 = Struct_4(vec3<i32>(~firstTrailingBit(func_2(Struct_1(vec4<i32>(45470i, 21i, 1i, u_input.c.x), var_0.ywz, var_0.x), var_1)), u_input.d, u_input.d), Struct_2(vec3<bool>(true, true, true)), Struct_3(var_0.ywx, select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false))), vec3<bool>(var_1 <= _wgslsmith_f_op_f32(-var_0.x), true, false)), Struct_3(vec3<f32>(arg_0.x, -702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_1))), vec2<bool>(true, true), !vec3<bool>(u_input.e < u_input.a, true, true)));
    var var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a.x) * -1293f))));
    return _wgslsmith_f_op_f32(-107f * 2216f);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1147f, 2693f, -461f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))))), select(!(!(!arg_1.a.zz)), select(vec2<bool>(select(arg_1.a.x, arg_1.a.x, true), arg_1.a.x), !arg_1.a.yz, vec2<bool>(true, arg_1.a.x || false)), arg_1.a.yy), select(select(select(!arg_1.a, arg_1.a, true), vec3<bool>(false, 4294967295u < u_input.e, true), true), !(!(!vec3<bool>(true, arg_1.a.x, arg_1.a.x))), arg_1.a.x));
    var var_1 = select(select(vec2<bool>(all(!vec3<bool>(arg_1.a.x, arg_1.a.x, true)), any(arg_1.a.yz)), vec2<bool>(var_0.c.x, arg_1.a.x || any(vec4<bool>(true, false, false, arg_1.a.x))), vec2<bool>(!select(false, var_0.c.x, var_0.c.x), arg_1.a.x)), select(vec2<bool>(true, _wgslsmith_f_op_f32(-arg_0) <= arg_0), !(!select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(var_0.b.x, var_0.b.x), var_0.b)), (-709f < _wgslsmith_f_op_f32(-224f + var_0.a.x)) | (true != !var_0.b.x)), var_0.b);
    var var_2 = var_0.c;
    let var_3 = arg_1;
    let var_4 = true;
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -645f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(min(-614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1175f, 593f) - vec2<f32>(349f, 2082f))))))), Struct_2(!vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true)))));
}

