struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 9>;

var<private> global3: array<Struct_3, 28>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global3 = array<Struct_3, 28>();
    var var_0 = u_input.a;
    let var_1 = select(!vec3<bool>(all(vec3<bool>(arg_0.a, true, false)), true, select(true, false, true)), vec3<bool>((arg_0.a & true) & true, arg_0.a, global0.x), true);
    global3 = array<Struct_3, 28>();
    var var_2 = Struct_4(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~min(vec4<u32>(27257u, global1.b.x, 41047u, arg_0.b.x), arg_0.b), global1.b >> (_wgslsmith_mod_vec4_u32(vec4<u32>(75886u, u_input.b, global1.b.x, 1u), arg_0.b) % vec4<u32>(32u))), arg_0.b), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.b.x, global1.b.x | 0u), 9u)]);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-260f, _wgslsmith_f_op_f32(-var_2.b.b.d), _wgslsmith_f_op_f32(min(var_2.b.b.d, 251f)), var_2.b.b.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b.d, var_2.b.b.d, 1375f, var_2.b.b.d) * vec4<f32>(var_2.b.b.d, var_2.b.b.d, var_2.b.b.d, var_2.b.b.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.b.d, var_2.b.b.d, 1417f, -837f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.b.d, var_2.b.b.d, -245f, var_2.b.b.d), vec4<f32>(-384f, 1125f, -437f, -1368f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-639f, var_2.b.b.d, -1000f, -952f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.b.b.d, var_2.b.b.d, var_2.b.b.d, -1301f), vec4<f32>(var_2.b.b.d, -674f, var_2.b.b.d, var_2.b.b.d)))))));
}

fn func_2() -> u32 {
    let var_0 = !select(vec2<bool>(true, global0.x), select(vec2<bool>(any(vec2<bool>(false, global0.x)), true), select(select(vec2<bool>(false, false), vec2<bool>(global1.a, global0.x), vec2<bool>(global1.a, true)), !vec2<bool>(global1.a, true), true), all(!vec4<bool>(global0.x, global1.a, false, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), vec2<bool>(global0.x, true)), select(vec2<bool>(global0.x, global1.a), vec2<bool>(global1.a, true), vec2<bool>(global1.a, true)), vec2<bool>(true, global0.x)), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(all(select(!vec4<bool>(false, global0.x, var_0.x, var_0.x), vec4<bool>(global0.x, true, true, true), true)), _wgslsmith_mult_vec4_u32(firstTrailingBit(global1.b), global1.b))));
    let var_2 = Struct_2(vec2<u32>(~_wgslsmith_dot_vec3_u32(global1.b.xyx, vec3<u32>(u_input.b, global1.b.x, 1u)), u_input.b), vec2<i32>(-(~(~0i)), ~7191i), 49526i, -224f, all(select(var_0, vec2<bool>(global0.x, global0.x), false == global1.a)) & all(!vec2<bool>(global1.a, global1.a)));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1181f)), _wgslsmith_f_op_f32(var_1.x * -180f)))) >= 1f, global1.b);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, firstLeadingBit(min(1u, 4294967295u))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(u_input.b, 1u)), ~(var_2.a >> (vec2<u32>(37372u, 0u) % vec2<u32>(32u))))), select(global1.b.x, firstTrailingBit(7773u), var_0.x && true) << ((~(~var_2.a.x) & firstTrailingBit(~3204u)) % 32u));
    return reverseBits(reverseBits(~(~global1.b.x >> (26294u % 32u))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = ~abs(max(vec4<u32>(arg_3.x, func_2(), _wgslsmith_mult_u32(0u, 28303u), ~arg_0.b.b.a.x), ~max(vec4<u32>(36587u, arg_0.a.x, arg_0.b.b.a.x, 54180u), vec4<u32>(u_input.b, 0u, global1.b.x, u_input.b))));
    global3 = array<Struct_3, 28>();
    var var_1 = global1.b.xw;
    var var_2 = arg_0.b.b;
    let var_3 = 79533i << (u_input.b % 32u);
    return Struct_2(global1.b.yy, firstTrailingBit(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.c, -67890i), var_2.b), vec2<i32>(0i, var_2.c)))), ~(-1i), arg_0.b.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(589f)) * -1000f) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_2.e, vec4<u32>(4294967295u, u_input.b, u_input.b, global1.b.x)))).x, _wgslsmith_f_op_f32(var_2.d + -1178f))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(113f, arg_1.b.d, 1074f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1051f, arg_1.b.d, arg_1.b.d)) + vec3<f32>(-1466f, -567f, arg_1.b.d))))));
    var var_1 = u_input.a;
    var var_2 = !select(vec3<bool>(any(arg_2), arg_2.x, !arg_2.x), !(!(!vec3<bool>(false, arg_2.x, global0.x))), select(vec3<bool>(true, true, arg_1.a), vec3<bool>(false, true, arg_2.x), arg_2.x));
    var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, 32783i), -reverseBits(-1325i));
    let var_3 = !global1.a;
    return StorageBuffer(_wgslsmith_f_op_f32(-885f + arg_1.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 9>();
    global3 = array<Struct_3, 28>();
    global3 = array<Struct_3, 28>();
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, -3785i), vec4<i32>(u_input.a, -2147483647i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) & _wgslsmith_div_i32(~(-1i), 25002i), u_input.a, max(u_input.a, u_input.a | ~(-2984i)), -2147483647i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_div_f32(1513f, -883f), _wgslsmith_f_op_f32(trunc(-637f)))));
    var var_2 = global2[_wgslsmith_index_u32(78291u, 9u)];
    var var_3 = Struct_1(var_2.a, global1.b | max(firstLeadingBit(vec4<u32>(0u, u_input.b, 1u, var_2.b.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, global1.b.x), vec4<u32>(34520u, var_2.b.a.x, 106537u, global1.b.x))));
    let var_4 = u_input.a;
    let var_5 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), var_2.b.d));
    let x = u_input.a;
    s_output = func_4(~_wgslsmith_sub_u32(u_input.b, ~min(global1.b.x, u_input.b)), Struct_3(any(!vec4<bool>(false, global1.a, var_2.b.e, global1.a)), func_1(Struct_4(vec4<u32>(var_2.b.a.x, 51639u, var_2.b.a.x, global1.b.x) ^ vec4<u32>(18804u, 50139u, 0u, 4294967295u), Struct_3(var_3.a, var_2.b)), abs(vec3<i32>(-20367i, -24103i, var_0.x)), var_4, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(global1.b, vec4<u32>(50680u, 16262u, global1.b.x, var_3.b.x)), firstTrailingBit(var_3.b)))), vec2<bool>(var_3.a, true));
}

