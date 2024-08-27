struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(2147483647i, i32(-2147483648), 15070i, -1i);

var<private> global1: i32;

var<private> global2: vec2<i32> = vec2<i32>(0i, 0i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<i32, 4>();
    var var_0 = !select(select(select(!vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_0)), vec2<bool>(true, true), vec2<bool>(true, !arg_0)), select(select(!vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(true, true)), !vec2<bool>(true, arg_0)), vec2<bool>(true, !arg_0), !vec2<bool>(arg_0, arg_0)), false);
    let var_1 = ~vec4<i32>(select(2147483647i, firstLeadingBit(-7876i >> (u_input.a % 32u)), var_0.x), -global2.x, _wgslsmith_div_i32(countOneBits(-global0[_wgslsmith_index_u32(u_input.a, 4u)]), select(min(7186i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.x, -2147483647i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], 57993i, global2.x)), all(vec4<bool>(arg_0, var_0.x, true, false)))), abs(~_wgslsmith_mod_i32(global2.x, -1i)));
    var_0 = !(!vec2<bool>(!(!arg_0), true));
    var_0 = vec2<bool>(false & any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(arg_0, true, arg_0), true)), !all(vec2<bool>(global2.x != 8113i, arg_0)));
    return _wgslsmith_f_op_f32(-513f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-713f, -1824f)), 1000f)), 183f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-421f - 1558f) - 1696f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_3(Struct_2(Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(abs(arg_2.a.d.b)), _wgslsmith_f_op_f32(func_3(!arg_0.d.x)), arg_0.d), arg_0, arg_2.a.c, Struct_1(-global2.x, vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.x * 1000f), 501f), _wgslsmith_f_op_f32(f32(-1f) * -1825f), select(select(vec4<bool>(false, arg_0.d.x, false, true), vec4<bool>(false, arg_0.d.x, true, arg_2.a.b.d.x), arg_0.d.x), arg_0.d, any(arg_2.a.b.d.wy))), select(vec2<i32>(arg_2.a.d.a, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -3039i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 4u)], arg_0.a)), arg_2.a.a.d.yw)));
    var_0 = Struct_3(arg_2.a);
    var var_1 = arg_2.a;
    var var_2 = !var_0.a.a.d.x;
    let var_3 = arg_2.a;
    return _wgslsmith_mult_vec2_u32(reverseBits(firstTrailingBit(~vec2<u32>(u_input.a, u_input.a))) & _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(75465u, 1u)), countOneBits(vec2<u32>(u_input.a, u_input.a))), (_wgslsmith_sub_vec2_u32(~vec2<u32>(37860u, u_input.a), ~vec2<u32>(u_input.a, u_input.a)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), select(vec2<u32>(38461u, u_input.a), vec2<u32>(12004u, 1u), vec2<bool>(var_1.d.d.x, false)))) << (max(_wgslsmith_sub_vec2_u32(vec2<u32>(58867u, u_input.a) | vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, 1u)), vec2<u32>(u_input.a, 28981u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = (~(~vec2<u32>(4294967295u, 31785u)) & ~abs(func_2(Struct_1(-2147483647i, vec2<f32>(-1093f, 441f), -1047f, vec4<bool>(false, true, true, true)), vec2<i32>(1943i, -9229i), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 4u)], vec2<f32>(1000f, 327f), 802f, vec4<bool>(false, false, false, true)), Struct_1(global2.x, vec2<f32>(-890f, -120f), 1375f, vec4<bool>(true, false, true, false)), vec4<f32>(308f, -1000f, -754f, 1000f), Struct_1(14075i, vec2<f32>(868f, -124f), -714f, vec4<bool>(true, true, false, false)), vec2<i32>(0i, 57157i)))))) << (~_wgslsmith_mult_vec2_u32(~select(vec2<u32>(u_input.a, arg_0), vec2<u32>(u_input.a, 47806u), true), vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, u_input.a, 21435u), vec4<u32>(arg_0, 4294967295u, 1u, arg_0)))) % vec2<u32>(32u));
    global2 = select(-(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(25523u, 4u)], global0[_wgslsmith_index_u32(arg_0, 4u)]), vec2<i32>(global2.x, -1i)) >> (var_0 % vec2<u32>(32u))), (abs(vec2<i32>(global2.x, global0[_wgslsmith_index_u32(var_0.x, 4u)]) >> (vec2<u32>(arg_0, 48302u) % vec2<u32>(32u))) | firstLeadingBit(-vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 4u)], 44569i))) >> (abs(~_wgslsmith_mult_vec2_u32(var_0, vec2<u32>(0u, u_input.a))) % vec2<u32>(32u)), !any(vec3<bool>(true, true, true)));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 4u)] | global0[_wgslsmith_index_u32(var_0.x, 4u)], -2426i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1976f, 4570f) * vec2<f32>(-679f, 627f))), 130f, vec4<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(false, false, false)), true)), Struct_1(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(470f, -1564f) - vec2<f32>(-1001f, 1806f)) * vec2<f32>(-1634f, -365f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-561f + 321f))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1183f, -202f, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(918f)), _wgslsmith_f_op_f32(750f * 389f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1162f, -510f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1370f), _wgslsmith_f_op_f32(f32(-1f) * -557f))), Struct_1(40862i, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1655f, -264f))), 1548f, vec4<bool>(true, true, true, true)), -vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 1u), 4u)], 2791i)));
    let var_2 = Struct_2(Struct_1(~(-6106i), vec2<f32>(_wgslsmith_f_op_f32(var_1.a.b.c * 1351f), -153f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.b.x)), !vec4<bool>(var_1.a.c.x != 1864f, !var_1.a.b.d.x, var_1.a.b.d.x, var_1.a.a.b.x < -496f)), Struct_1(_wgslsmith_sub_i32(-(i32(-1i) * -1i), global2.x), _wgslsmith_f_op_vec2_f32(max(var_1.a.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.a.a.b)) * var_1.a.c.yw))), var_1.a.b.c, var_1.a.a.d), vec4<f32>(588f, var_1.a.b.b.x, var_1.a.c.x, var_1.a.b.c), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(1u, arg_0, 27030u))), max(arg_0, _wgslsmith_mult_u32(u_input.a, 1u))), 4u)], vec2<f32>(var_1.a.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.c.x)))), 1272f, var_1.a.b.d), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32((var_1.a.e ^ vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 4u)], -2147483647i)) >> (vec2<u32>(0u, arg_0) % vec2<u32>(32u)), countOneBits(vec2<i32>(12816i, -35096i))), _wgslsmith_div_vec2_i32(abs(min(var_1.a.e, var_1.a.e)), ~(~vec2<i32>(2147483647i, global2.x))), vec2<i32>(24490i, -52922i)));
    global1 = _wgslsmith_div_i32(-11235i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.x, _wgslsmith_clamp_u32(arg_0, _wgslsmith_dot_vec4_u32(min(vec4<u32>(10787u, 4294967295u, 11068u, u_input.a), vec4<u32>(var_0.x, 65122u, 4294967295u, var_0.x)), vec4<u32>(0u, var_0.x, 49867u, arg_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 4294967295u, 4294967295u), vec4<u32>(22136u, 57046u, arg_0, 33270u)))), 4u)]);
    return _wgslsmith_f_op_f32(-676f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.x)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = vec3<u32>(0u >> (1u % 32u), u_input.a, arg_0.x);
    let var_1 = Struct_1(i32(-1i) * -18702i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, 837f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, 305f), vec2<f32>(-931f, arg_3)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3, arg_3), vec2<f32>(arg_3, arg_3), arg_2)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-281f)), _wgslsmith_f_op_f32(min(-2662f, _wgslsmith_f_op_f32(select(1489f, -138f, arg_2)))))), _wgslsmith_f_op_f32(abs(-452f)), vec4<bool>(false, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(func_3(arg_2))) <= _wgslsmith_f_op_f32(-arg_3), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(arg_2, false, arg_2))), arg_2));
    return _wgslsmith_mod_i32(-1i, ~_wgslsmith_add_i32(~global2.x, global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_add_i32(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(35317u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(35979u, 4294967295u), vec2<u32>(38420u, u_input.a)) % vec2<u32>(32u)), global2.x, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(4294967295u))))), -global0[_wgslsmith_index_u32(~1u, 4u)]), 31999i);
    global1 = _wgslsmith_sub_i32(-1i, ~global0[_wgslsmith_index_u32(u_input.a & u_input.a, 4u)]);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1159f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(127f, -537f)) + _wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(846f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(162f + 878f) + 1150f) <= _wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(func_1(u_input.a))))) - 2492f);
    global1 = ~(-1i | global0[_wgslsmith_index_u32(u_input.a, 4u)]);
    global2 = _wgslsmith_div_vec2_i32(-(~(~vec2<i32>(-1i, -53950i))), vec2<i32>(var_0, -1i)) & vec2<i32>(global2.x, -1i);
    var var_2 = Struct_2(Struct_1(1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -807f) * vec2<f32>(585f, -352f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), all(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(961f, -684f)) + _wgslsmith_f_op_f32(func_3(false)))), vec4<bool>(true, ~u_input.a < 6961u, true, true)), Struct_1(_wgslsmith_clamp_i32(-2147483647i, countOneBits(-global0[_wgslsmith_index_u32(u_input.a, 4u)]), i32(-1i) * -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1292f)) * -108f), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(578f - 438f) * -418f)), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1092f, -1185f, 545f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1099f, 762f, 558f, 898f)))), vec4<f32>(_wgslsmith_f_op_f32(-1000f - 1219f), 589f, 1035f, 141f))), Struct_1(~global0[_wgslsmith_index_u32(~abs(u_input.a), 4u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-781f, -944f), vec2<f32>(1000f, 515f), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-610f, 905f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-266f, -1481f) - vec2<f32>(-1647f, 339f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(-918f))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))), vec2<i32>(~1i | var_0, abs(_wgslsmith_div_i32(max(var_0, -29239i), min(-19218i, 27596i)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | 1u, var_2.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(~(~(-1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -16711i), var_2.e)), var_2.e, var_2.e));
}

