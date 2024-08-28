struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_1(vec3<i32>(-47774i, 0i, 11608i), -2471f), Struct_1(vec3<i32>(-1i, 1i, 2147483647i), -1703f)), vec4<i32>(0i, -1i, 0i, 2147483647i), Struct_1(vec3<i32>(-58345i, -14105i, 24095i), 209f), vec4<bool>(false, true, true, false));

var<private> global3: array<i32, 7> = array<i32, 7>(0i, -48378i, 0i, 0i, i32(-2147483648), -37101i, -1i);

var<private> global4: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1588f, -193f, -241f, -816f), vec4<f32>(1000f, 1332f, -1783f, -1458f), vec4<f32>(1037f, -1921f, -817f, -1176f), vec4<f32>(-592f, -698f, -1000f, 1000f), vec4<f32>(1276f, 721f, 464f, -1000f), vec4<f32>(411f, 509f, -2053f, -182f), vec4<f32>(-743f, 136f, -832f, -1886f), vec4<f32>(-1697f, 627f, 1160f, -945f), vec4<f32>(575f, 320f, -1331f, -1096f), vec4<f32>(-1071f, -782f, 486f, -334f), vec4<f32>(1207f, -391f, -1832f, 464f), vec4<f32>(-683f, 574f, 159f, 880f), vec4<f32>(1487f, -322f, 1666f, -752f), vec4<f32>(-812f, 564f, -608f, 1970f), vec4<f32>(-180f, -147f, 479f, -781f), vec4<f32>(-1043f, -772f, 804f, 605f), vec4<f32>(488f, 1000f, -1199f, 1836f), vec4<f32>(216f, 975f, 255f, 191f), vec4<f32>(453f, -936f, 367f, 1687f), vec4<f32>(-722f, 136f, -471f, 267f), vec4<f32>(897f, -873f, -182f, -1653f), vec4<f32>(-602f, -882f, 939f, -522f), vec4<f32>(-785f, 1805f, -1000f, 891f), vec4<f32>(-727f, 671f, -998f, 775f), vec4<f32>(1274f, 877f, 834f, 506f), vec4<f32>(-132f, 633f, 1600f, 274f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = all(!vec3<bool>(false, any(select(vec2<bool>(global2.d.x, true), global2.d.wx, false)), all(global2.d.yyy) && global2.d.x));
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    global4 = array<vec4<f32>, 26>();
    let var_1 = Struct_3(Struct_1(firstTrailingBit(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(15542u, 7u)], u_input.a)) << (vec3<u32>(17598u, 1u, countOneBits(78449u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b + _wgslsmith_f_op_f32(global1.x * -710f)))), global2.a.a);
    return select(vec2<bool>(var_0, select(1u, abs(15180u), all(vec2<bool>(global2.d.x, var_0))) >= _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 1u, 12988u)), vec3<u32>(1u, 1u, 1u))), global2.d.xy, !global2.d.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> bool {
    let var_0 = select(select(!select(global2.d.wz, vec2<bool>(arg_1.x, global2.d.x), select(global2.d.ww, vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, arg_1.x))), arg_1, false), !func_3(), vec2<bool>(true, true));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(global2.c.a, global2.a.b.a | global2.c.a) & vec3<i32>(_wgslsmith_mod_i32(2147483647i, -2147483647i), global2.c.a.x, _wgslsmith_sub_i32(1i, u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1724f + -154f), _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f - global2.a.b.b)), max(-10893i, global2.a.a.a.x) > _wgslsmith_dot_vec2_i32(global2.b.zw, vec2<i32>(-45940i, u_input.a))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.b, -1000f, -131f) + vec3<f32>(-335f, 994f, -983f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, global2.c.b, 864f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 893f, global1.x), vec3<f32>(global2.c.b, 636f, global2.a.b.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2.c.b, arg_0.x) * vec3<f32>(-967f, 476f, global2.a.b.b)))), select(!select(global2.d.xxx, global2.d.xxy, arg_1.x), vec3<bool>(true, global1.x > 202f, arg_1.x), global2.d.xzz))), global2.a.b, _wgslsmith_mod_u32(select(0u, 30986u, global2.d.x) >> (abs(13763u) % 32u), ~(~4294967295u)) ^ firstLeadingBit(1u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -907f, 587f) * var_1.b)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1126f, 2545f) - vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, global2.a.a.b, true)), -1057f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, -1570f))));
    let var_4 = global2.d.zy;
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_5(1u, func_3(), global2.a.b, arg_3.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.c.b)) + _wgslsmith_f_op_f32(1836f + global1.x)), global2.a.b.b, arg_3.e)) < 279f);
    return var_0.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    let var_0 = Struct_5(1u & _wgslsmith_dot_vec2_u32(firstTrailingBit(global0[_wgslsmith_index_u32(47292u, 30u)] ^ vec2<u32>(4294967295u, 1u)), abs(reverseBits(global0[_wgslsmith_index_u32(0u, 30u)]))), !global2.d.zx, func_4(global2.d.x, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-555f, global1.x) - vec2<f32>(global1.x, global2.a.b.b))), global2.d.wx), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(674f, -739f, global1.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a.b.b, 456f, global1.x))))))), Struct_5(~min(0u, 0u), vec2<bool>(global2.d.x, !global2.d.x), Struct_1(vec3<i32>(2147483647i, arg_1, u_input.a), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1i), global2.b.zx), any(!vec3<bool>(global2.d.x, global2.d.x, false)))), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -11282i, arg_0.x), firstLeadingBit(62575i)), false);
    let var_1 = all(global2.d.xxx);
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(-global2.a.b.b) <= 773f, !(~(var_0.c.a.x ^ global2.b.x) == abs(firstTrailingBit(41679i))));
    global4 = array<vec4<f32>, 26>();
    let var_3 = vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 18229u), _wgslsmith_mod_u32(var_0.a, 23901u)) | ~_wgslsmith_clamp_u32(reverseBits(var_0.a), _wgslsmith_add_u32(0u, var_0.a), countOneBits(1u)), 4294967295u << (countOneBits(~4294967295u) % 32u), reverseBits(~(countOneBits(var_0.a) | 20084u)), 1u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global2.a.a.b, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1976f) * var_0.c.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    global4 = array<vec4<f32>, 26>();
    var var_1 = _wgslsmith_f_op_f32(max(-1423f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.b)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global2.b.xz, global3[_wgslsmith_index_u32(4294967295u, 7u)]))) * var_0.b.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, _wgslsmith_f_op_f32(-515f + global1.x)))));
    let var_3 = select(vec3<i32>(17898i, -(~33895i) << (~(~0u) % 32u), 1i), global2.b.wyw, !global2.d.x);
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, 1i, 16094i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c.b, _wgslsmith_f_op_f32(round(global2.a.b.b))))));
}

