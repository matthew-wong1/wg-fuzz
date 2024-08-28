struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-27268i, -65009i, -1i, 0i, 1i);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 2>;

var<private> global3: array<vec4<u32>, 15>;

var<private> global4: bool;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(-1414i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1369f, -850f, _wgslsmith_f_op_f32(select(2725f, -1143f, global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1316f + 1719f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -308f)))), any(vec2<bool>(global1.x, ~u_input.c < u_input.c)));
    global2 = array<vec3<i32>, 2>();
    let var_1 = _wgslsmith_div_u32(abs(firstLeadingBit(1u)), 4294967295u);
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(107242u, var_1), u_input.c), _wgslsmith_dot_vec2_u32(max(vec2<u32>(2358u, 27838u), select(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 1244u), var_0.c)), ~(~vec2<u32>(4294967295u, 50468u))), ~abs(~u_input.a)), firstTrailingBit(~((vec3<u32>(u_input.c, 87829u, 0u) & vec3<u32>(10140u, 15451u, var_1)) | ~vec3<u32>(var_1, var_1, var_1))), select(firstLeadingBit(vec3<u32>(u_input.c & 36472u, ~var_1, var_1)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_1, 1u, var_1)), countOneBits(vec3<u32>(4294967295u, 39323u, 9600u)) | (vec3<u32>(64190u, var_1, 0u) ^ vec3<u32>(12182u, 0u, 48808u))), select(!vec3<bool>(global1.x, var_0.c, var_0.c), select(!global1.zww, select(global1.xxw, global1.yyw, false), select(global1.wxz, global1.xxy, true)), global1.wyx)));
    var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.yy, -vec2<i32>(var_0.a, var_0.a)), -var_0.a), global0[_wgslsmith_index_u32(~var_1, 5u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-725f, 552f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b.x)))), any(select(!global1.yy, global1.xz, global1.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1090f)) * _wgslsmith_f_op_f32(abs(var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x) + var_0.b.x)), vec3<f32>(var_0.b.x, 1000f, var_0.b.x)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-314f, 246f, 340f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(536f, -711f, -178f), vec3<f32>(-1355f, -503f, -835f))), false)))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, -560f, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, var_0.b.x, var_0.b.x, 1000f)))))));
    let var_2 = select(!global1.x, global1.x, var_0.c);
    let var_3 = 487f;
    global4 = var_0.c;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(func_2(~(_wgslsmith_sub_i32(1i, 0i) ^ max(arg_0.c.a, u_input.b.x))), arg_0.b, Struct_1(-2147483647i, vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2711f + arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.b.b.x) + arg_1.b.x)), arg_2.c), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(2147483647i, arg_1.a, -2147483647i, -4570i)), -65084i), arg_0.a.b, true));
    let var_1 = 0u & (u_input.c >> (u_input.c % 32u));
    return 393f;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> bool {
    global2 = array<vec3<i32>, 2>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1411f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec3<f32>(757f, 3027f, -1000f), false), Struct_1(0i, vec3<f32>(-1596f, 3241f, 395f), false), Struct_1(u_input.d, vec3<f32>(-507f, 1612f, -300f), global1.x), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec3<f32>(661f, -635f, -197f), false)), func_2(global0[_wgslsmith_index_u32(arg_0, 5u)]), Struct_1(-1i, vec3<f32>(-458f, -1152f, -628f), global1.x)))))) - 652f);
    let var_1 = false;
    return all(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -344f) == 1287f, !(!var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 2>();
    global1 = vec4<bool>(true, true, func_1(u_input.a, vec2<u32>(u_input.a, 36822u)), false);
    global1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1872f + 1142f) * _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(u_input.d, vec3<f32>(1108f, -796f, 931f), global1.x), Struct_1(u_input.b.x, vec3<f32>(-1014f, 199f, -2309f), true), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)], vec3<f32>(-165f, -522f, -765f), global1.x), Struct_1(u_input.d, vec3<f32>(-1292f, -459f, 555f), global1.x)), Struct_1(global0[_wgslsmith_index_u32(10433u, 5u)], vec3<f32>(-263f, -571f, 271f), global1.x), Struct_1(u_input.d, vec3<f32>(302f, 881f, -571f), true)))) <= 1f, all(vec4<bool>(global1.x, false, global1.x | global1.x, true)), any(select(!vec2<bool>(global1.x, global1.x), vec2<bool>(false, true), global1.zw))), vec4<bool>(all(select(global1.zww, select(global1.xwz, global1.xwx, global1.x), false)), func_1(_wgslsmith_sub_u32(~1u, u_input.c), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, u_input.a)), ~vec2<u32>(18798u, u_input.a))), true, all(global1.yz)), false);
    var var_0 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-417f)))));
    global2 = array<vec3<i32>, 2>();
    global1 = select(select(select(!vec4<bool>(false, global1.x, global1.x, false), select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true), global1.x), !vec4<bool>(true, true, global1.x, true), !global1.x), all(select(global1.ywx, vec3<bool>(global1.x, global1.x, true), global1.x))), !select(vec4<bool>(global1.x, true, global1.x, global1.x), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, true, global1.x, global1.x), false), !vec4<bool>(false, global1.x, global1.x, false)), !any(global1.xzy)), vec4<bool>(global1.x, false, _wgslsmith_f_op_f32(1801f + _wgslsmith_f_op_f32(-2168f - -165f)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(3139f + -970f))), (false && !global1.x) && select(true, false, global1.x)), vec4<bool>(true, !all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.yw)), global1.x, _wgslsmith_div_i32(1i, 1i) <= (-26679i >> (~u_input.a % 32u))));
    let var_1 = vec4<u32>(4294967295u, 1u, ~52500u, countOneBits(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(879f, 882f), vec2<f32>(1859f, -1780f)))), vec2<f32>(-697f, _wgslsmith_f_op_f32(round(1446f))))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1831f)) * 1000f)))), ~func_2(firstTrailingBit(global0[_wgslsmith_index_u32(var_1.x, 5u)] | global0[_wgslsmith_index_u32(u_input.c, 5u)])).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-574f))))), _wgslsmith_div_u32(1u, ~abs(u_input.c ^ u_input.c)));
}

