struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(2147483647i, 13584i, i32(-2147483648)), true), Struct_1(vec3<i32>(15357i, 24985i, -8302i), false), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), false), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -1i), false), Struct_1(vec3<i32>(42081i, 1i, 0i), false), Struct_1(vec3<i32>(i32(-2147483648), 20749i, 25532i), false), Struct_1(vec3<i32>(1i, 0i, 39291i), true), Struct_1(vec3<i32>(50655i, 43519i, 15966i), false));

var<private> global2: array<vec2<i32>, 6>;

var<private> global3: array<u32, 4> = array<u32, 4>(13148u, 10870u, 0u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    global2 = array<vec2<i32>, 6>();
    var var_0 = Struct_1(min(-(vec3<i32>(-1i) * -u_input.b.wwy), vec3<i32>(-27896i, -18442i, u_input.d.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.x, 15728i, arg_0.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, global3[_wgslsmith_index_u32(u_input.c, 4u)], u_input.e.x), vec3<u32>(1u, global3[_wgslsmith_index_u32(82928u, 4u)], 74363u)) % vec3<u32>(32u)), select(vec3<i32>(arg_0.x, -5913i, u_input.b.x), vec3<i32>(34162i, 2147483647i, -1i), false) << ((vec3<u32>(global3[_wgslsmith_index_u32(86409u, 4u)], 35059u, u_input.c) << (vec3<u32>(78347u, global3[_wgslsmith_index_u32(1u, 4u)], 37780u) % vec3<u32>(32u))) % vec3<u32>(32u))) == arg_0.x);
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.a.x), ~vec2<i32>(-29811i, var_0.a.x)), ~_wgslsmith_clamp_i32(var_0.a.x, -79718i, -2147483647i)), 1i, arg_0.x), true);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1753f), -276f, _wgslsmith_f_op_f32(-2181f + -154f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1399f, 1000f, -1320f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, -1000f, 512f) - vec3<f32>(-1513f, -105f, -972f))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(699f, -1312f)) * -1081f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(353f, -1571f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-757f * 176f) - 1667f)), -707f));
    let var_3 = -var_0.a.zy;
    return var_0.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(func_3(-vec2<i32>(min(u_input.d.x, u_input.b.x), u_input.d.x)), select(false, (4084u >> (_wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(u_input.c, 4u)]) % 32u)) >= ~(~36186u), true));
}

fn func_1() -> bool {
    global0 = array<vec4<i32>, 4>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1408f + -473f)))));
    var var_1 = Struct_1(vec3<i32>(u_input.a.x, -_wgslsmith_div_i32(22530i, 2147483647i), var_0.a.x) << (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 19568u, global3[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<u32>(u_input.c, 0u, 57760u))) % vec3<u32>(32u)), true);
    global3 = array<u32, 4>();
    global1 = array<Struct_1, 8>();
    return var_1.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~((~u_input.e.x ^ u_input.e.x) << (~_wgslsmith_sub_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26581u, 4u)], 4u)], 4u)], u_input.c), ~u_input.c) % 32u)), 8u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -461f), 1285f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2953f)))));
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1630f)) - _wgslsmith_f_op_f32(sign(1f))) + 116f)).a.x;
    global1 = array<Struct_1, 8>();
    var_0 = Struct_1(u_input.b.yww, true);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-270f, _wgslsmith_f_op_f32(459f - 1395f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-333f, 1098f)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<bool> {
    global0 = array<vec4<i32>, 4>();
    let var_0 = Struct_1(~max(-abs(vec3<i32>(23722i, arg_3.a.x, u_input.b.x)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(2147483647i, 0i, u_input.a.x), vec3<i32>(0i, arg_3.a.x, arg_3.a.x)), u_input.b.wzx)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 285f) * 1f))).b);
    var var_1 = global2[_wgslsmith_index_u32(arg_1.x, 6u)];
    var_1 = vec2<i32>(-_wgslsmith_clamp_i32(arg_3.a.x ^ arg_3.a.x, var_0.a.x >> (1u % 32u), abs(~arg_3.a.x)), countOneBits(_wgslsmith_sub_i32(arg_3.a.x, var_1.x)));
    var var_2 = func_4(!(!vec3<bool>(false && var_0.b, true, true)), vec4<u32>(arg_2.x, 0u, firstTrailingBit(26487u) & _wgslsmith_div_u32(34018u, countOneBits(23612u)), select(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(23520u, 4u)], arg_2.x), 1u, var_0.b)));
    return !(!(!(!(!vec3<bool>(true, true, arg_0.x)))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global3 = array<u32, 4>();
    return Struct_1(-u_input.b.wyx, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(678u, u_input.c, u_input.c), vec3<u32>(4294967295u, 54934u, 8451u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 12778u), vec3<u32>(1485u, global3[_wgslsmith_index_u32(68641u, 4u)], 49548u))) > global3[_wgslsmith_index_u32(9225u, 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(select(vec2<bool>(true, true), vec2<bool>(false, true), true), ~countOneBits(vec3<u32>(u_input.e.x, 35512u, u_input.e.x)) & countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.c, 4u)], 951u), vec3<u32>(global3[_wgslsmith_index_u32(24195u, 4u)], 1u, 1u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.e.x, 4294967295u, 1u, u_input.e.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(19772u, 0u, 4294967295u, u_input.c), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], u_input.e.x, u_input.c, 24422u)))), func_4(vec3<bool>(true, true, func_1()), _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 4u)], 1u, global3[_wgslsmith_index_u32(43504u, 4u)], u_input.c), firstTrailingBit(vec4<u32>(u_input.e.x, 32986u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 4u)], 4294967295u))))), Struct_1(vec3<i32>(-21246i, u_input.a.x, -u_input.d.x | 2147483647i), all(vec3<bool>(true, u_input.b.x == u_input.a.x, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1185f, 1637f, 145f, 485f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 187f, -987f, 1039f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-773f, -924f, 1283f, -2583f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1622f, 1419f, 664f, -836f))))), true)), vec4<f32>(2858f, -1206f, 1688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-156f, 951f)))))));
    var var_1 = min(1u | ~(_wgslsmith_add_u32(u_input.e.x, 4294967295u) | 1u), u_input.e.x);
    let var_2 = func_5(!(!vec2<bool>(var_0.b, func_2(-854f).b)), vec3<u32>(global3[_wgslsmith_index_u32(~1u, 4u)], ~(~_wgslsmith_clamp_u32(19495u, global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)])), 33066u), reverseBits(vec4<u32>(~abs(u_input.c), 4294967295u, 1u, max(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstTrailingBit(16717u), 4u)], 4u)]))), func_6(!vec3<bool>(all(vec2<bool>(var_0.b, true)), var_0.b, !var_0.b), var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1214f + 808f), -1122f, _wgslsmith_f_op_f32(-731f - -798f), _wgslsmith_f_op_f32(f32(-1f) * -1420f))))).x;
    var var_3 = vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, -15640i);
    var_3 = global0[_wgslsmith_index_u32(max(~select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(69859u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 4u)], 4u)]), 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], func_1()), countOneBits(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(39868u, global3[_wgslsmith_index_u32(4294967295u, 4u)]), 4u)])) << (u_input.e.x % 32u), 4u)];
    global2 = array<vec2<i32>, 6>();
    global1 = array<Struct_1, 8>();
    global2 = array<vec2<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(25893i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -1610f, 259f)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(53303i, max(2512i, var_3.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 13408i, 6228i), -u_input.b), firstLeadingBit(countOneBits(u_input.a.x))), global0[_wgslsmith_index_u32(~firstTrailingBit(global3[_wgslsmith_index_u32(1u, 4u)]), 4u)] & max(vec4<i32>(var_3.x, -30816i, 2147483647i, var_3.x) | u_input.b, -global0[_wgslsmith_index_u32(u_input.e.x, 4u)])));
}

