struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: f32 = -928f;

var<private> global1: Struct_2;

var<private> global2: vec2<f32>;

var<private> global3: array<f32, 17> = array<f32, 17>(1295f, 499f, 1872f, 162f, 1994f, -1895f, 1497f, 823f, -1924f, -1507f, -877f, -355f, 991f, -1839f, -147f, 293f, -2080f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(34120u, 17u)])));
    global0 = _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~38886u)), 1u), 17u)]));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global3[_wgslsmith_index_u32(0u, 17u)], global2.x, global2.x), vec4<f32>(-156f, global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(40446u, 17u)], 600f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(9343u, 17u)], -1423f, 1887f, global2.x)), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(~1u, 17u)], 1346f, global2.x, _wgslsmith_f_op_f32(max(-359f, _wgslsmith_f_op_f32(round(1426f))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1263f), 863f, 551f, _wgslsmith_f_op_f32(global2.x - global2.x))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(var_0.xxz)))))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zxx + _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(25252u, 17u)], global2.x, global2.x), vec3<f32>(global2.x, global3[_wgslsmith_index_u32(1u, 17u)], var_0.x))) - var_0.wwy), _wgslsmith_f_op_vec3_f32(select(var_0.ywx, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.zzz))), false)), select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)))));
    global1 = arg_0;
    return ~1u;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> u32 {
    global3 = array<f32, 17>();
    global1 = Struct_2(2147483647i);
    let var_0 = arg_2;
    global1 = Struct_2(~_wgslsmith_mult_i32(2147483647i, _wgslsmith_div_i32(u_input.b << (0u % 32u), select(0i, arg_0, false))));
    global1 = Struct_2(65961i);
    return var_0.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(min(-1248f, global2.x));
    let var_1 = _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = Struct_2(global1.a);
    let var_3 = Struct_1(min(var_1.x, var_1.x));
    let var_4 = Struct_1(_wgslsmith_clamp_u32(func_4(1i, !any(arg_1.xz), Struct_1(func_3(var_2))), ~_wgslsmith_clamp_u32(firstTrailingBit(var_1.x), 2070u, ~var_3.a), ~13762u));
    return reverseBits(_wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(-vec2<i32>(18225i, -1i), vec2<i32>(u_input.c, 81321i)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, 1i), ~vec2<i32>(var_2.a, var_2.a), select(arg_1.yz, arg_1.zz, vec2<bool>(arg_1.x, arg_1.x))), vec2<i32>(var_2.a, u_input.d))));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(29631u, 17u)]))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1289f, 529f) + vec2<f32>(1000f, 2839f))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, 393f))))))))));
    let var_0 = select(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), true)), true, all(vec2<bool>(true, true))) & false;
    global1 = Struct_2(i32(-1i) * -2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.x, -1052f)), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(arg_0, 17u)])))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), 1000f)));
    let var_2 = Struct_1((2997u & arg_0) >> (arg_0 % 32u));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = func_5((44520u << (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(16199u, arg_0), vec2<u32>(arg_0, arg_0))) % 32u)) >> (0u % 32u), -func_2(vec2<f32>(global2.x, _wgslsmith_f_op_f32(step(-1393f, -1953f))), vec4<bool>(true, true, true, true)));
    var var_1 = vec3<bool>(all(!vec2<bool>(true, var_0.a >= 0u)), true, true);
    var var_2 = Struct_2(_wgslsmith_add_i32(-55137i, ~_wgslsmith_sub_i32(global1.a, global1.a << (123912u % 32u))));
    var_2 = Struct_2(var_2.a);
    let var_3 = Struct_1(countOneBits(countOneBits(45514u)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -(global1.a & func_1(4294967295u, vec4<f32>(-1524f, -334f, 2297f, global3[_wgslsmith_index_u32(26512u, 17u)])))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global1.a, _wgslsmith_mult_i32(2147483647i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.a, u_input.d), -vec3<i32>(u_input.a, u_input.e, -4484i))), firstLeadingBit(-(vec2<i32>(global1.a, -1i) ^ vec2<i32>(-55458i, u_input.e)))));
    var var_1 = Struct_2(select(~(-(~global1.a)), u_input.a, false));
    var var_2 = -(-vec2<i32>(var_1.a, -7803i) & vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 2147483647i, var_1.a), vec3<i32>(1i, 1i, 1i)), _wgslsmith_mod_i32(func_1(0u, vec4<f32>(global3[_wgslsmith_index_u32(1u, 17u)], -1665f, global3[_wgslsmith_index_u32(27059u, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)])), 0i & var_0)));
    var var_3 = reverseBits(~vec4<u32>(4294967295u, 0u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(12440u, 60111u, 0u), vec3<u32>(0u, 0u, 2155u)), vec3<u32>(1u, 1u, 1u)), reverseBits(select(0u, 0u, false))));
    var_3 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, 4294967295u, var_3.x, 1u)) | _wgslsmith_add_vec4_u32(max(~vec4<u32>(1u, 53950u, var_3.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 82327u, 18066u, var_3.x), vec4<u32>(4294967295u, 35512u, 1u, 16946u))), vec4<u32>(var_3.x << (var_3.x % 32u), firstTrailingBit(0u), firstTrailingBit(var_3.x), 4294967295u)), select(vec4<u32>(countOneBits(1u), _wgslsmith_sub_u32(~var_3.x, _wgslsmith_mod_u32(1u, var_3.x)), ~_wgslsmith_dot_vec2_u32(var_3.wx, var_3.yx), 1u), ~(vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x) | ~vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x)), !select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true))));
    global3 = array<f32, 17>();
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 626f, 518f), vec3<f32>(global2.x, 1898f, 412f))), vec3<f32>(395f, 1000f, global3[_wgslsmith_index_u32(var_3.x, 17u)]))) - vec3<f32>(-254f, 497f, _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-679f, -2403f, 1270f) + vec3<f32>(global3[_wgslsmith_index_u32(var_3.x, 17u)], 554f, 2487f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

