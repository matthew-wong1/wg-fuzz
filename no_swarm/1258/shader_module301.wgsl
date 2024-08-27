struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 3> = array<f32, 3>(-1333f, 1028f, -254f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<bool> {
    return vec2<bool>(any(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), !any(vec3<bool>(false, true, false)))), global3[_wgslsmith_index_u32(~(~55350u >> (arg_1.x % 32u)), 3u)] != _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - -1405f), global3[_wgslsmith_index_u32(57854u, 3u)]))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(u_input.d, 25u)];
    var var_2 = select(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f + arg_0.a))), ~vec4<u32>(0u, 0u, u_input.b.x, u_input.d) | (vec4<u32>(u_input.c, 4294967295u, u_input.c, 4294967295u) >> (~vec4<u32>(42522u, 54756u, 4294967295u, u_input.e) % vec4<u32>(32u)))), vec2<bool>(1429u > _wgslsmith_mult_u32(~u_input.e, ~18881u), all(select(!vec2<bool>(arg_1, false), func_3(arg_0, vec4<u32>(u_input.e, 4294967295u, u_input.a.x, u_input.e)), !vec2<bool>(var_0, true)))), false);
    global0 = Struct_1(597f);
    var var_3 = !(arg_1 != var_2.x) | true;
    return 400f;
}

fn func_4(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 3u)] - _wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(526f + global3[_wgslsmith_index_u32(u_input.d, 3u)]))) * _wgslsmith_f_op_f32(ceil(global2.a))));
    let var_1 = countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(u_input.b.x, 4294967295u), ~u_input.b.x), countOneBits(vec3<u32>(u_input.c, 65604u, u_input.e) >> (vec3<u32>(u_input.d, u_input.c, 0u) % vec3<u32>(32u))))) & _wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.e, 76130u)), u_input.b << (vec3<u32>(80863u, 0u, u_input.a.x) % vec3<u32>(32u))), ~reverseBits(u_input.b)));
    global1 = array<Struct_1, 25>();
    let var_2 = u_input.d;
    var var_3 = !vec4<bool>(false, !func_3(Struct_1(global3[_wgslsmith_index_u32(u_input.c, 3u)]), _wgslsmith_add_vec4_u32(vec4<u32>(var_2, 42403u, var_1.x, var_2), vec4<u32>(var_1.x, var_2, 22308u, 0u))).x, true, false);
    return global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d, _wgslsmith_add_u32(~u_input.a.x, ~(~0u))), 25u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(u_input.c, firstLeadingBit(u_input.a.x));
    global1 = array<Struct_1, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0, 3u)])))));
    var var_2 = vec4<i32>(1i, 15243i, 61141i, -(-5722i & (-36950i >> (var_0 % 32u))) >> (max(6595u, _wgslsmith_dot_vec2_u32(~u_input.a, ~u_input.b.yz)) % 32u));
    var var_3 = true;
    return Struct_1(-1241f);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = func_5(arg_1, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a)), _wgslsmith_f_op_f32(func_2(Struct_1(-315f), true, _wgslsmith_f_op_f32(round(1206f)))))), global1[_wgslsmith_index_u32(arg_2, 25u)]);
    var var_0 = vec4<bool>(!((global2.a <= _wgslsmith_f_op_f32(floor(global2.a))) | true), true, !all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), any(vec4<bool>(true, !(1u < u_input.c), any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)))));
    let var_1 = vec3<i32>(arg_0.x, _wgslsmith_sub_i32(-1i, countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, -2147483647i, arg_0.x, 2147483647i), -vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x)))), select(~_wgslsmith_div_i32(reverseBits(arg_0.x), ~arg_0.x), 1i, var_0.x));
    let var_2 = arg_1;
    let var_3 = arg_0;
    return ~_wgslsmith_mult_u32(~(~(~u_input.b.x)), ~min(u_input.b.x, 60587u) ^ ~(u_input.c >> (arg_2 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(-24505i);
    var var_1 = u_input.c;
    let var_2 = abs(vec4<u32>(4294967295u, u_input.e, u_input.a.x, u_input.a.x));
    global1 = array<Struct_1, 25>();
    global0 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    global0 = global1[_wgslsmith_index_u32(func_1(~countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0)), vec2<i32>(var_0, 2147483647i))), global1[_wgslsmith_index_u32(15725u, 25u)], max(var_2.x, reverseBits(u_input.c))), 25u)];
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(firstLeadingBit(94u >> (0u % 32u)), 1u << ((var_2.x | u_input.c) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d & u_input.e, 4294967295u, _wgslsmith_sub_u32(u_input.a.x, 5763u), ~16648u), abs(firstLeadingBit(var_2)))), _wgslsmith_sub_u32(~var_2.x, ~10877u), min(59952u, 4294967295u));
    let var_4 = select(vec2<bool>(global2.a != _wgslsmith_f_op_f32(-global0.a), false), vec2<bool>(true, true), true);
    var var_5 = vec3<bool>(true && !var_4.x, true, 1151u > abs(_wgslsmith_add_u32(u_input.e, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -1i, -1i), vec3<i32>(0i, var_0, 7089i) | vec3<i32>(-5046i, -14809i, var_0)), 1i, _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(var_0, var_0))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(abs(u_input.b), vec3<u32>(20529u, 4294967295u, var_2.x)), vec3<u32>(u_input.b.x << (59682u % 32u), ~0u, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1281f, global3[_wgslsmith_index_u32(u_input.d, 3u)])))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1683f, -1146f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(21850u, 3u)], global0.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(800f, -1027f) * vec2<f32>(1000f, global2.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1867f, 512f))))), ~(~(~35720i)) >> (_wgslsmith_dot_vec3_u32(~(~var_3), abs(var_3)) % 32u));
}

