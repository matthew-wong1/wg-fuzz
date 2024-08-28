struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<bool>;

var<private> global2: vec2<u32> = vec2<u32>(3143u, 49594u);

var<private> global3: array<i32, 21> = array<i32, 21>(2147483647i, 2147483647i, -18132i, 1i, 9237i, 2147483647i, 29240i, 1i, 11482i, 39827i, 2147483647i, i32(-2147483648), 12414i, 0i, -33320i, 2147483647i, 0i, 1i, -53286i, -4147i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_sub_i32(u_input.e.x, -1296i);
    global3 = array<i32, 21>();
    global1 = vec3<bool>(global1.x, 1102f > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-526f, -920f) - arg_2.x), !(!(2147483647i < global0.x)) & false);
    let var_1 = global3[_wgslsmith_index_u32(1u, 21u)];
    let var_2 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(u_input.e.xw), -vec2<i32>(7276i, var_0)), _wgslsmith_sub_vec2_i32(u_input.e.yy, vec2<i32>(9560i, -6944i))), global3[_wgslsmith_index_u32(32492u, 21u)]);
    return arg_1.x;
}

fn func_2() -> u32 {
    var var_0 = all(select(select(vec2<bool>(!global1.x, func_3(Struct_1(vec4<u32>(u_input.a.x, 0u, 48320u, u_input.b), global3[_wgslsmith_index_u32(0u, 21u)], 2249f, vec3<f32>(-386f, 1692f, 672f), vec3<i32>(-1i, 28133i, global3[_wgslsmith_index_u32(0u, 21u)])), vec4<bool>(true, global1.x, true, global1.x), vec3<f32>(-1818f, -1000f, -1308f), vec4<u32>(global2.x, global2.x, 8727u, 1u))), global1.zx, true), select(vec2<bool>(global1.x, global1.x), global1.xx, global1.x), ~global0.x >= 39045i));
    let var_1 = true;
    var var_2 = Struct_1(abs(vec4<u32>(u_input.c, _wgslsmith_mod_u32(49828u, ~global2.x), min(78104u, max(u_input.b, global2.x)), u_input.c)), 1i, 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1470f, 993f, -260f)))))))), ~max(vec3<i32>(1i, u_input.d.x, global0.x) | (vec3<i32>(global0.x, global3[_wgslsmith_index_u32(1u, 21u)], -35934i) ^ vec3<i32>(-1i, -69460i, 1019i)), select(_wgslsmith_mult_vec3_i32(u_input.d.ywx, vec3<i32>(-34683i, u_input.e.x, -1i)), -u_input.e.xxz, !global1.x)));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(max(92490u, ~(~72668u)), 0u | ~countOneBits(var_2.a.x)), ~(firstTrailingBit(23377u << (0u % 32u)) & var_2.a.x));
    var_0 = true == var_1;
    return 0u;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(func_2(), 1u, global2.x, _wgslsmith_clamp_u32(18207u, _wgslsmith_add_u32(u_input.c, 6250u) | _wgslsmith_dot_vec3_u32(vec3<u32>(30628u, global2.x, global2.x), vec3<u32>(u_input.b, 7388u, u_input.c)), ~1u)), _wgslsmith_mult_i32(countOneBits(-2147483647i) & global0.x, -1i) & _wgslsmith_add_i32(abs(u_input.e.x), ~max(global0.x, -4941i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1722f - -246f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) * -1462f), _wgslsmith_f_op_f32(select(-565f, _wgslsmith_f_op_f32(1913f - -149f), true))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, 171f, -893f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(386f, 373f, -1075f), vec3<f32>(-1000f, -1073f, -2384f)))))), vec3<f32>(1005f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-864f)) + _wgslsmith_f_op_f32(step(-1569f, 826f))), _wgslsmith_f_op_f32(-834f + _wgslsmith_f_op_f32(f32(-1f) * -295f))))), u_input.d.ywz);
    global1 = vec3<bool>(global1.x, ~(-global0.x) > -2147483647i, all(vec3<bool>(false, any(vec3<bool>(true, true, true)), select(var_0.e.x < global3[_wgslsmith_index_u32(global2.x, 21u)], 0i != var_0.e.x, any(vec3<bool>(false, true, true))))));
    global1 = !select(!vec3<bool>(false, true, !global1.x), select(select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, true, false), func_3(Struct_1(var_0.a, global0.x, -1362f, vec3<f32>(-935f, var_0.c, var_0.d.x), var_0.e), vec4<bool>(true, global1.x, global1.x, false), vec3<f32>(var_0.c, var_0.c, -732f), var_0.a)), !select(vec3<bool>(false, false, true), vec3<bool>(global1.x, false, global1.x), global1.x), vec3<bool>(false, global1.x | global1.x, false)), select(!select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, global1.x)), !vec3<bool>(global1.x, global1.x, true), global1.x));
    global1 = !select(select(select(!vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, false, global1.x)), false), !select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, true), global1.x), !vec3<bool>(true, true, global1.x)), select(select(vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, true), global1.x), any(vec4<bool>(false, global1.x, true, false))), vec3<bool>(func_3(Struct_1(vec4<u32>(31798u, 0u, 0u, u_input.c), -2147483647i, var_0.c, vec3<f32>(var_0.c, -1175f, var_0.d.x), vec3<i32>(u_input.d.x, 32472i, var_0.b)), vec4<bool>(true, global1.x, global1.x, global1.x), vec3<f32>(var_0.c, 1222f, var_0.d.x), var_0.a), select(global1.x, false, false), false), select(select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, global1.x, true), global1.x), !vec3<bool>(false, global1.x, true), true)), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 21u)] >= u_input.d.x, false, true), select(vec3<bool>(global1.x, true, false), select(vec3<bool>(false, global1.x, false), vec3<bool>(true, global1.x, false), vec3<bool>(true, true, true)), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, global1.x))), global1.x));
    global2 = u_input.a;
    return Struct_1(vec4<u32>(var_0.a.x, 27389u, var_0.a.x, _wgslsmith_add_u32(~(~0u), ~select(1u, u_input.c, global1.x))), 39717i, var_0.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)), _wgslsmith_clamp_vec3_i32(abs(max(vec3<i32>(653i, -1i, 36177i), countOneBits(u_input.e.wyx))), firstTrailingBit(u_input.e.wyx), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, global0.x), 1i, _wgslsmith_div_i32(16441i, global3[_wgslsmith_index_u32(17720u, 21u)]) ^ global3[_wgslsmith_index_u32(~u_input.a.x, 21u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_mod_i32(1i, abs(global0.x));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(global2.x, u_input.c, var_0.a.x, u_input.b)), ~(~vec4<u32>(16508u, var_0.a.x, 1u, global2.x))), _wgslsmith_div_i32(-(~0i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, global0.x) & var_0.e.zy), select(min(u_input.d.zx, u_input.e.xz), _wgslsmith_mod_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(0u, 21u)], 2147483647i), var_0.e.xx), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.d, var_0.e);
    var var_3 = _wgslsmith_mult_vec3_u32(var_2.a.wyx | countOneBits(~(~var_0.a.yzz)), var_0.a.ywz);
    global1 = vec3<bool>(true, false, false);
    let var_4 = vec2<f32>(var_2.c, _wgslsmith_f_op_f32(sign(var_2.d.x)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2002f, var_4.x))));
    let var_6 = func_1();
    var var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a.xwz, 541f, var_2.e.xy);
}

