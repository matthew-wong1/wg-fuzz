struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(89434u, 1u, 77401u, 63411u, 4294967295u, 6484u, 4294967295u, 0u);

var<private> global1: array<vec4<bool>, 23>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global4: vec3<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec2_i32(-(~(-_wgslsmith_mult_vec2_i32(global4.yx, global4.xy))), abs(abs(vec2<i32>(global4.x, -global4.x))));
    let var_1 = false;
    var var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 35376u, global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a) ^ vec4<u32>(0u, 0u, u_input.a, 0u), max(vec4<u32>(global0[_wgslsmith_index_u32(48075u, 8u)], u_input.a, global0[_wgslsmith_index_u32(0u, 8u)], 14090u), vec4<u32>(4648u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 100840u, 59303u)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(18638u, 4833u, u_input.a, 4294967295u), vec4<u32>(8867u, global0[_wgslsmith_index_u32(35478u, 8u)], u_input.a, 1u), vec4<u32>(u_input.a, 0u, 37363u, u_input.a)), vec4<u32>(3599u, u_input.a, global0[_wgslsmith_index_u32(1u, 8u)], 0u))));
    global4 = (vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 2088i, u_input.b, -19754i), vec4<i32>(global4.x, -1i, 1i, 2268i)), min(-42045i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, global4.x), vec3<i32>(var_0.x, -17188i, global4.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 33588i, global4.x), vec3<i32>(2147483647i, -35666i, u_input.b)), vec3<i32>(41731i, global4.x, u_input.b))) >> (~reverseBits(firstTrailingBit(vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a))) % vec3<u32>(32u))) >> (abs(vec3<u32>(min(1u, firstTrailingBit(4294967295u)), ~abs(55024u), 22164u)) % vec3<u32>(32u));
    var var_3 = !global2.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(873f, 552f, -407f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-768f)), _wgslsmith_f_op_f32(1814f * 856f), -347f), vec3<bool>(any(global3.xyw), global3.x & true, global2.x)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2336f, 1781f, -1261f)), _wgslsmith_f_op_vec3_f32(func_3())))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -383f), -278f), _wgslsmith_f_op_f32(444f + _wgslsmith_f_op_f32(ceil(-994f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(982f + 2030f), _wgslsmith_f_op_f32(f32(-1f) * -1271f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-678f, -771f, _wgslsmith_div_f32(-652f, 931f), -2359f), vec4<f32>(-594f, 654f, _wgslsmith_f_op_f32(min(1228f, -1140f)), -1910f)))));
    global0 = array<u32, 8>();
    global4 = -_wgslsmith_add_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, 28813i, u_input.b, u_input.b)), global4.x & 14033i, -32937i), _wgslsmith_mod_vec3_i32(~vec3<i32>(39015i, 525i, global4.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, global4.x, 3589i), vec4<i32>(u_input.b, 1i, global4.x, u_input.b)), global4.x, 0i)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, -568f, 244f, _wgslsmith_f_op_f32(-var_0.a.x)), vec4<f32>(var_0.b.x, var_0.a.x, _wgslsmith_f_op_f32(-1324f * 1000f), -744f)))));
    global4 = _wgslsmith_sub_vec3_i32(vec3<i32>(~30289i, countOneBits(firstTrailingBit(-u_input.b)), (countOneBits(u_input.b) >> (~65849u % 32u)) >> (73218u % 32u)), abs(select(abs(vec3<i32>(u_input.b, u_input.b, global4.x)), vec3<i32>(global4.x, global4.x, global4.x), true) << (vec3<u32>(26347u, 33689u, ~arg_0.x) % vec3<u32>(32u))));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    global1 = array<vec4<bool>, 23>();
    global3 = global1[_wgslsmith_index_u32(36282u, 23u)];
    var var_0 = func_2(vec3<u32>(~_wgslsmith_add_u32(37444u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 8u)], arg_3.x), arg_3)), ~4294967295u, ~32020u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)), arg_2.b.xyx)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_2.b.xwy + vec3<f32>(arg_2.b.x, arg_2.a.x, -205f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1076f, var_0.b.x, 703f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-997f, var_0.a.x, arg_2.a.x, _wgslsmith_div_f32(arg_2.b.x, -316f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-arg_2.b)))));
    global3 = select(select(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)], !select(!global1[_wgslsmith_index_u32(40296u, 23u)], vec4<bool>(false, true, arg_0, global3.x), select(vec4<bool>(false, global2.x, true, global3.x), vec4<bool>(true, true, global2.x, true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 23u)]))), !(!select(!global1[_wgslsmith_index_u32(1u, 23u)], vec4<bool>(false, global3.x, arg_0, global3.x), vec4<bool>(false, true, arg_1.x, false))), !global1[_wgslsmith_index_u32(1401u, 23u)]);
    return all(select(!vec4<bool>(759f <= var_1.a.x, select(false, true, arg_1.x), true, !arg_1.x), vec4<bool>(true, global2.x, !all(vec3<bool>(global2.x, false, arg_1.x)), arg_1.x), vec4<bool>(true, arg_1.x, all(vec4<bool>(arg_0, false, arg_0, true)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec2<bool>(false, any(!(!global3.zx))), vec2<bool>(all(vec4<bool>(true, false, func_1(true, global3.yy, Struct_1(vec3<f32>(-707f, 1078f, 624f), vec4<f32>(217f, -865f, -1526f, 770f)), vec2<u32>(1u, u_input.a)), false)), global3.x), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1657f, 921f)), -1194f)));
    let var_0 = 4294967295u;
    global2 = global3.zw;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, var_0, 36560u), vec3<u32>(0u, 1u, 22752u))).b.x * -1593f), -1233f) * _wgslsmith_f_op_f32(trunc(-355f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-364f, -1358f, var_1), vec3<f32>(var_1, -1128f, var_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(755f, -719f, var_1) * vec3<f32>(-259f, var_1, var_1))) - vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), var_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(step(525f, -766f)), _wgslsmith_f_op_f32(trunc(var_1))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, var_1, 190f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, var_1, var_1, 1167f), vec4<f32>(var_1, -1000f, var_1, var_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-973f, 637f, -524f, 899f) * vec4<f32>(var_1, var_1, -119f, var_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(420f, 1710f, var_1, -371f), vec4<f32>(-694f, var_1, 1000f, var_1), global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1187f, -547f, var_1) - vec4<f32>(var_1, 687f, var_1, var_1)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1761f, var_1, -574f, var_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1681f, -1755f, var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(~global4.x, global4.yy ^ vec2<i32>(2147483647i, global4.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 369f, -290f, var_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(458f, 184f, var_2.b.x, var_1))), _wgslsmith_f_op_vec4_f32(-var_2.b))));
}

