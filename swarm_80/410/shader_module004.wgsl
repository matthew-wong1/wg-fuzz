struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: array<Struct_1, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    var var_0 = arg_0;
    var var_1 = global0[_wgslsmith_index_u32((abs(reverseBits(max(33337u, 34760u))) >> (((abs(u_input.a) >> (1u % 32u)) & (8020u << (u_input.b.x % 32u))) % 32u)) << ((6338u >> (~_wgslsmith_clamp_u32(countOneBits(u_input.a), _wgslsmith_mod_u32(32670u, u_input.b.x), u_input.a) % 32u)) % 32u), 32u)];
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-min(countOneBits(var_1.a), arg_0), _wgslsmith_mod_i32(~2147483647i, -26105i) | reverseBits(-24445i | var_1.a), firstLeadingBit(firstTrailingBit(arg_0)), ~21394i ^ abs(~arg_0)), _wgslsmith_add_vec4_i32(vec4<i32>(~(i32(-1i) * -22732i), countOneBits(_wgslsmith_add_i32(var_1.a, arg_0)), 2147483647i, arg_0), select(vec4<i32>(-1i) * -vec4<i32>(var_1.a, arg_0, arg_0, -32374i), max(vec4<i32>(var_1.a, 0i, 11444i, var_1.a), vec4<i32>(var_1.a, -1i, var_1.a, arg_0)) | -vec4<i32>(arg_0, 14820i, 0i, arg_0), vec4<bool>(any(vec4<bool>(false, false, arg_1, false)), arg_1, !arg_1, true))));
    var var_3 = 1053f;
    global0 = array<Struct_1, 32>();
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(~var_2.x, var_2.x) >> (u_input.b.x % 32u), _wgslsmith_mod_i32(var_2.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, arg_0, 1328i, -2147483647i), _wgslsmith_mult_vec4_i32(var_2, var_2), select(false, arg_1, arg_1)), (vec4<i32>(-29142i, 0i, 2147483647i, -26137i) & var_2) & vec4<i32>(var_1.a, 54388i, 9894i, var_1.a))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 32>();
    let var_0 = min(~(-(vec4<i32>(-8569i, -12712i, arg_2.a, arg_2.a) << ((u_input.b << (vec4<u32>(arg_2.b.x, 19697u, 46192u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(arg_0.a, -70822i), select(-arg_2.a, i32(-1i) * -1i, !arg_1.x), -15556i, _wgslsmith_mult_i32(69873i, arg_0.a) & arg_2.a), min(-_wgslsmith_add_vec4_i32(vec4<i32>(-542i, 1i, -8748i, 0i), vec4<i32>(arg_0.a, arg_0.a, arg_2.a, arg_2.a)), vec4<i32>(_wgslsmith_sub_i32(arg_2.a, arg_2.a), ~2147483647i, func_3(-2147483647i, true), i32(-1i) * -2147483647i))));
    var var_1 = Struct_1(~(~0i), u_input.b.yxy);
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(~max(arg_0.b.x, var_1.b.x), 17809u, ~reverseBits(66953u)), arg_2.b.x, ~min(~arg_0.b.x, u_input.b.x | arg_2.b.x)) | firstTrailingBit(vec3<u32>(var_1.b.x, arg_0.b.x, 4294967295u) ^ countOneBits(min(u_input.b.xzy, arg_0.b)));
    var_1 = Struct_1(countOneBits(~(i32(-1i) * -28152i)), vec3<u32>(~(~(~arg_2.b.x)), ~(~var_2.x), ~48469u));
    return ~93886u;
}

fn func_1() -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(0u | (_wgslsmith_sub_u32(~(u_input.a ^ u_input.a), _wgslsmith_mod_u32(19268u, ~u_input.a)) ^ ~select(4294967295u, func_2(global0[_wgslsmith_index_u32(u_input.a, 32u)], vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(0u, 32u)]), false)), 32u)];
    var_0 = global0[_wgslsmith_index_u32(func_2(Struct_1(select(31814i, abs(0i), any(vec4<bool>(true, true, true, true))), var_0.b), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, any(vec2<bool>(false, true)), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), true), Struct_1(var_0.a, abs(u_input.b.yxw ^ vec3<u32>(1u, u_input.b.x, u_input.a)))), 32u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, -1147f, -901f, -1298f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-797f, -414f, -786f, -249f))))), vec4<f32>(_wgslsmith_f_op_f32(-1025f + 437f), _wgslsmith_div_f32(641f, -188f), -371f, _wgslsmith_f_op_f32(max(398f, -1636f)))))));
    let var_2 = Struct_1(var_0.a, var_0.b);
    let var_3 = Struct_1(0i, ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(38058u, 0u, 21056u), min(87893u, var_2.b.x)), firstTrailingBit(reverseBits(var_0.b.x)), ~u_input.a));
    return !(!select(vec3<bool>(var_2.a != 1i, false, all(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), !any(vec4<bool>(false, false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(all(vec2<bool>(true, true)), true, true), all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(-6988i, 25120i, 1i)) != ~7274i), !func_1());
    var var_1 = countOneBits(-vec2<i32>(1i, -_wgslsmith_div_i32(-2147483647i, 1i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-790f, -516f) * _wgslsmith_f_op_f32(floor(141f))));
    let var_3 = Struct_1(var_1.x, vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a >> (26825u % 32u)) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 4294967295u), u_input.b.wwy) ^ max(57017u, 4294967295u)), 0u, u_input.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1303f, 320f, -464f, -1207f))), vec4<f32>(587f, -1622f, 1000f, 1182f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-320f, 404f, -420f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f * 305f)), 1113f, -347f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-513f + 924f)))))));
    var var_5 = select(var_0.x, ~1u <= min(4294967295u, select(19827u, 4294967295u, false)), true);
    var_0 = !func_1();
    var var_6 = Struct_1((var_1.x << (u_input.b.x % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_1.x, 0i), ~(~vec3<i32>(2147483647i, var_1.x, var_3.a))), ~u_input.b.xzw);
    let var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, abs(_wgslsmith_mod_u32(77891u, var_7.b.x)), var_6.b.x), vec3<u32>(~_wgslsmith_dot_vec2_u32(var_6.b.zz, var_6.b.zx), ~(var_3.b.x | var_7.b.x), func_2(Struct_1(-48138i, vec3<u32>(1u, var_3.b.x, 38328u)), vec3<bool>(var_0.x, false, var_0.x), global0[_wgslsmith_index_u32(var_6.b.x, 32u)]))));
}

