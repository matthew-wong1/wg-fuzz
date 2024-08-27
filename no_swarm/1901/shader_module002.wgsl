struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(0u, vec3<f32>(483f, 2036f, 1000f)), Struct_1(31225u, vec3<f32>(-703f, -504f, 1000f)), Struct_1(22457u, vec3<f32>(817f, -910f, 440f)), Struct_1(19212u, vec3<f32>(473f, -515f, 1044f)), Struct_1(1u, vec3<f32>(-381f, -678f, -870f)), Struct_1(3896u, vec3<f32>(-831f, -1008f, 168f)), Struct_1(66391u, vec3<f32>(-1075f, 938f, -208f)), Struct_1(37978u, vec3<f32>(-755f, -1008f, -1706f)), Struct_1(4294967295u, vec3<f32>(-702f, 1117f, 1000f)), Struct_1(66786u, vec3<f32>(1610f, 1616f, -1233f)), Struct_1(12104u, vec3<f32>(-573f, 535f, -1000f)), Struct_1(0u, vec3<f32>(416f, -373f, 1201f)), Struct_1(60305u, vec3<f32>(-1076f, 904f, 727f)), Struct_1(44001u, vec3<f32>(576f, -1224f, 311f)), Struct_1(10698u, vec3<f32>(-2242f, -685f, -214f)), Struct_1(29989u, vec3<f32>(-743f, -118f, -2179f)), Struct_1(19097u, vec3<f32>(-1000f, -1023f, 257f)), Struct_1(4294967295u, vec3<f32>(-1080f, 1477f, 1000f)));

var<private> global2: Struct_1;

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.a.b.x, -114f), _wgslsmith_div_f32(arg_0.b.x, 1317f)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(-648f - _wgslsmith_f_op_f32(sign(-1199f)))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> vec3<f32> {
    var var_0 = arg_2.zx;
    var var_1 = _wgslsmith_clamp_i32(abs(5510i), ~max(-9926i, -13913i), -_wgslsmith_mod_i32(-9775i, -2147483647i));
    let var_2 = vec2<u32>(countOneBits(51007u), arg_1.a);
    var_1 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_1.b - vec3<f32>(arg_1.b.x, -1559f, 534f)), _wgslsmith_f_op_vec3_f32(min(global2.b, vec3<f32>(global2.b.x, 1180f, global2.b.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1139f, arg_1.b.x)) - _wgslsmith_f_op_f32(-arg_1.b.x)), -583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-210f))))));
    return vec3<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2080f, global2.b.x)), _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1217f)) - arg_1.b.x), arg_1.b.x);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    global1 = array<Struct_1, 18>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(global2.b))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(select(arg_0, 0u, false), 18u)], Struct_2(Struct_1(105u, arg_2.b), false, true, -2147483647i))))));
    var var_2 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(func_3(false, Struct_1(~arg_0, arg_2.b), !vec3<bool>(true, all(vec2<bool>(true, true)), true), false)));
    var var_3 = select(vec2<bool>(true, -1i > global0[_wgslsmith_index_u32(global2.a, 9u)]), select(select(vec2<bool>(true, any(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, true, false)))), vec2<bool>(true, true), select(true | (global2.b.x < 1638f), !all(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 55083u), 9u)] > 0i)), any(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), true)));
    return !select(select(!vec4<bool>(true, true, var_3.x, var_3.x), !select(vec4<bool>(var_3.x, var_3.x, var_3.x, true), vec4<bool>(var_3.x, false, var_3.x, true), false), select(select(vec4<bool>(true, false, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, var_3.x), var_3.x), select(vec4<bool>(var_3.x, var_3.x, var_3.x, true), vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(true, false, false, true)), var_3.x)), !select(vec4<bool>(var_3.x, false, var_3.x, true), select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(false, var_3.x, var_3.x, false), true), !vec4<bool>(var_3.x, false, var_3.x, true)), select(select(vec4<bool>(var_3.x, var_3.x, true, true), !vec4<bool>(var_3.x, false, false, true), vec4<bool>(var_3.x, true, false, false)), select(!vec4<bool>(true, false, var_3.x, false), vec4<bool>(true, var_3.x, true, true), vec4<bool>(true, true, var_3.x, var_3.x)), select(!vec4<bool>(true, var_3.x, false, false), !vec4<bool>(var_3.x, false, var_3.x, var_3.x), select(vec4<bool>(var_3.x, var_3.x, false, true), vec4<bool>(false, var_3.x, true, var_3.x), var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, true, true, true), func_1(1u, -firstLeadingBit(vec4<i32>(u_input.a, 1i, 13515i, 41932i)) ^ -(~vec4<i32>(-78616i, global0[_wgslsmith_index_u32(global2.a, 9u)], u_input.b, global0[_wgslsmith_index_u32(8733u, 9u)])), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(global2.a, 2423u, 1u), 1u, global2.a), 18u)], ~(-(~global0[_wgslsmith_index_u32(global2.a, 9u)]))), true);
    let var_1 = global1[_wgslsmith_index_u32(global2.a, 18u)];
    global3 = !func_1(abs(~abs(global2.a)), select(vec4<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 9u)], -1i), reverseBits(2147483647i), -global0[_wgslsmith_index_u32(global2.a, 9u)], global0[_wgslsmith_index_u32(59191u, 9u)] << (27379u % 32u)), vec4<i32>(~u_input.b, -global0[_wgslsmith_index_u32(19454u, 9u)], 0i, u_input.a), true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(70099u, var_1.a, 28334u, 50372u)), vec4<u32>(min(37864u, var_1.a), ~1u, 1050u, ~1u)), 18u)], u_input.b).x;
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(~firstTrailingBit(global2.a), 18u)], any(!(!select(vec2<bool>(false, var_0.x), var_0.yy, false))), var_0.x, u_input.a);
    var var_3 = var_2.a;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.x) - _wgslsmith_div_f32(_wgslsmith_div_f32(1677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(var_0.x, Struct_1(var_3.a, var_1.b), var_0.wzw, true)).x * _wgslsmith_f_op_f32(-1000f + var_2.a.b.x))), _wgslsmith_f_op_f32(var_2.a.b.x * _wgslsmith_f_op_f32(var_2.a.b.x - _wgslsmith_f_op_f32(abs(var_1.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 9u)], 1i, -38304i, 28668i), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.a)), vec4<i32>(-1i, -55670i, -2147483647i, global0[_wgslsmith_index_u32(global2.a, 9u)]) >> (vec4<u32>(4294967295u, var_3.a, var_2.a.a, global2.a) % vec4<u32>(32u))) & firstTrailingBit(max(vec4<i32>(1598i, 13830i, global0[_wgslsmith_index_u32(global2.a, 9u)], 1i), vec4<i32>(-1i, u_input.a, -58939i, -52257i)))), ~abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.a, 1777u), vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global2.a, 43092u)), _wgslsmith_mult_u32(15547u, var_3.a)), countOneBits(var_1.a)), firstLeadingBit(22555u)), 0u);
}

