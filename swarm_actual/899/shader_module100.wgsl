struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(203i, 28500i), vec2<i32>(1i, 11815i), vec2<i32>(-4183i, 10101i), vec2<i32>(10029i, i32(-2147483648)), vec2<i32>(2147483647i, 63085i), vec2<i32>(-1i, 13408i), vec2<i32>(1i, -1i), vec2<i32>(0i, -11285i), vec2<i32>(25285i, 2147483647i), vec2<i32>(-1554i, 0i), vec2<i32>(3992i, -19156i), vec2<i32>(-1i, 101671i), vec2<i32>(1i, 4255i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 25146i), vec2<i32>(15783i, 1i), vec2<i32>(-41562i, -1i), vec2<i32>(1i, 1i), vec2<i32>(-1i, 2211i), vec2<i32>(i32(-2147483648), -60854i), vec2<i32>(i32(-2147483648), -15919i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 42442i));

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec2<i32>(1i, 2147483647i), vec3<f32>(1581f, 1375f, 600f), 2147483647i, vec4<bool>(false, true, true, true))), Struct_3(Struct_1(vec2<i32>(1i, -1i), vec3<f32>(-1000f, 513f, 268f), 2147483647i, vec4<bool>(false, false, false, false))), Struct_3(Struct_1(vec2<i32>(-2856i, 2147483647i), vec3<f32>(-125f, 1000f, -1394f), 2147483647i, vec4<bool>(true, false, true, false))), Struct_3(Struct_1(vec2<i32>(-29260i, -1i), vec3<f32>(-1020f, -523f, -676f), i32(-2147483648), vec4<bool>(true, true, false, true))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -25310i), vec3<f32>(1621f, 1000f, -511f), -1i, vec4<bool>(true, true, true, false))), Struct_3(Struct_1(vec2<i32>(-20113i, 1i), vec3<f32>(222f, -2050f, 1101f), 2147483647i, vec4<bool>(false, false, true, false))), Struct_3(Struct_1(vec2<i32>(2147483647i, 20335i), vec3<f32>(166f, -2178f, -1000f), 15974i, vec4<bool>(true, true, true, false))), Struct_3(Struct_1(vec2<i32>(2147483647i, -9000i), vec3<f32>(140f, -645f, -963f), 22395i, vec4<bool>(true, false, true, false))), Struct_3(Struct_1(vec2<i32>(-22820i, 1340i), vec3<f32>(-1917f, 469f, -879f), -1i, vec4<bool>(true, false, true, false))), Struct_3(Struct_1(vec2<i32>(1i, 2147483647i), vec3<f32>(1226f, -577f, -132f), 53019i, vec4<bool>(true, false, true, true))));

var<private> global2: array<u32, 26>;

var<private> global3: array<vec4<f32>, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-149f))) + _wgslsmith_f_op_f32(abs(-1095f))) + 1236f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)), all(vec2<bool>(false, true)))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1241f)), _wgslsmith_f_op_f32(select(-1775f, -477f, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-274f)))), any(vec4<bool>(true, true, true, true))))));
    let var_1 = true;
    global1 = array<Struct_3, 10>();
    global0 = array<vec2<i32>, 23>();
    var var_2 = -20940i;
    return select(_wgslsmith_mod_u32(reverseBits(_wgslsmith_clamp_u32(u_input.c, 29228u, global2[_wgslsmith_index_u32(u_input.b.x, 26u)] | u_input.b.x)), ~(~select(0u, u_input.b.x, true))), 1u, !(!(!(!var_1))));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = -152f;
    var var_1 = vec3<bool>(arg_0, all(vec2<bool>(u_input.d.x < (u_input.a | -2147483647i), arg_0 & (u_input.c <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(66673u, 26u)], 26u)], 26u)], 26u)], 26u)]))), false);
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(~func_3(), 26u)], Struct_1(u_input.e.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -606f, 277f)) * vec3<f32>(var_0, var_0, -285f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(862f, 698f, -1344f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1238f, -421f, var_0) + vec3<f32>(-1297f, var_0, var_0))))), -8108i >> (_wgslsmith_mult_u32(1u, 0u ^ global2[_wgslsmith_index_u32(99346u, 26u)]) % 32u), !(!select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(false, false, false, arg_0), vec4<bool>(true, false, true, var_1.x)))), -1i);
    var var_3 = 43675i;
    let var_4 = ~_wgslsmith_mod_u32(31803u, select(global2[_wgslsmith_index_u32(134164u << (u_input.c % 32u), 26u)], _wgslsmith_dot_vec4_u32(vec4<u32>(488u, 16132u, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, var_2.a)), all(vec3<bool>(true, true, var_2.b.d.x)))) < 1u;
    return max(var_2.a, global2[_wgslsmith_index_u32(1u, 26u)]) | (_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.a, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(25544u, 26u)], var_2.a, u_input.c), u_input.b) | global2[_wgslsmith_index_u32(var_2.a >> (93286u % 32u), 26u)]) & ~(select(84834u, var_2.a, var_2.b.d.x) & 21012u));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<i32>) -> f32 {
    global3 = array<vec4<f32>, 8>();
    global2 = array<u32, 26>();
    var var_0 = _wgslsmith_div_f32(1542f, arg_0.b.b.x);
    let var_1 = !(~u_input.a <= (_wgslsmith_clamp_i32(0i, arg_0.c, 0i) & 1i));
    var var_2 = Struct_4(u_input.c >> (max(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a, 26u)], 26u)], 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), firstLeadingBit(func_2(var_1))) % 32u), Struct_1(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.d.xz, arg_2.wz), firstLeadingBit(-vec2<i32>(arg_2.x, arg_2.x))), arg_0.b.b, arg_0.b.c, arg_0.b.d), 0i);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 63264i, u_input.a, 30791i) & vec4<i32>(1i, _wgslsmith_mult_i32(u_input.a, u_input.d.x), -2147483647i, -u_input.a), -u_input.e);
    global1 = array<Struct_3, 10>();
    let var_1 = Struct_1(vec2<i32>(1i, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-364f, 1000f))), _wgslsmith_f_op_f32(func_1(Struct_4(u_input.c, Struct_1(vec2<i32>(0i, -2147483647i), vec3<f32>(-320f, -917f, 1000f), var_0.x, vec4<bool>(false, false, true, false)), 1i), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c) ^ u_input.b, u_input.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-484f + -516f), _wgslsmith_div_f32(900f, 271f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-179f, 582f, -1114f)))) - vec3<f32>(-336f, _wgslsmith_f_op_f32(max(-2155f, -392f)), _wgslsmith_div_f32(-1142f, -1132f)))), ~(i32(-1i) * -(-2147483647i | u_input.e.x)), select(vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), true | (7567u > global2[_wgslsmith_index_u32(4294967295u, 26u)]), true, any(vec2<bool>(true, true)))));
    global2 = array<u32, 26>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 10u)];
    let var_3 = Struct_2(var_2.a, Struct_1(-(vec2<i32>(-2147483647i, -24862i) ^ -var_2.a.a), var_1.b, abs(var_1.c), select(vec4<bool>(var_2.a.d.x | var_1.d.x, select(var_2.a.d.x, true, false), var_1.d.x || var_1.d.x, true), vec4<bool>(var_1.d.x, true, all(var_2.a.d), true), all(select(var_2.a.d.yz, var_1.d.yw, var_2.a.d.x)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_2.a.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c, 0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19653u, 0u), vec2<u32>(29849u, u_input.c)), ~48222u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(20148u, 1u), 26u)] >> (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), 1u), max(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(36059u, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(93635u, 26u)], 26u)], 19398u, global2[_wgslsmith_index_u32(3444u, 26u)]), vec4<u32>(4294967295u, u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global2[_wgslsmith_index_u32(u_input.c, 26u)])), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.c, global2[_wgslsmith_index_u32(4294967295u, 26u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(max(select(var_3.d, vec4<u32>(var_3.d.x, global2[_wgslsmith_index_u32(u_input.c, 26u)], 48961u, var_3.d.x), vec4<bool>(true, true, var_1.d.x, true)) << (max(vec4<u32>(global2[_wgslsmith_index_u32(1u, 26u)], var_3.d.x, 51588u, 0u), var_3.d) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 1373u, var_3.d.x, 1u), var_3.d)), max(~(~var_3.d), vec4<u32>(u_input.b.x, 39907u, ~1u, ~43778u))), ~countOneBits(var_3.d.x) ^ ~_wgslsmith_div_u32(abs(135264u), u_input.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1f, -113f)))), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(var_3.d.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global2[_wgslsmith_index_u32(2503u, 26u)]), abs(var_3.d.wz))), _wgslsmith_div_u32(_wgslsmith_div_u32(var_3.d.x, u_input.c), 22201u) & var_3.d.x), _wgslsmith_clamp_i32(abs(1i), i32(-1i) * -3879i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e.yyw, u_input.d.wyy), vec3<i32>(1i, u_input.e.x, var_0.x))) >> (~0u % 32u));
}

