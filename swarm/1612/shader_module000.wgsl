struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 32>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1426f);
    global0 = _wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(2369f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1573f) * _wgslsmith_f_op_f32(step(1044f, 147f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1623f - 269f))))));
    let var_0 = -57261i;
    let var_1 = global1[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-309f + 663f), vec3<bool>(var_1.b.x, true, true));
    return var_0;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> vec4<f32> {
    global1 = array<Struct_1, 32>();
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4317u, 17134u, 188u, 0u), vec4<u32>(20374u, 88825u, 0u, 40707u)), countOneBits(vec4<u32>(8227u, 0u, 34514u, 4294967295u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(42575u, 66664u)), 1u & _wgslsmith_clamp_u32(4294967295u, 1u, 1u))), ~9512u, 50174u, firstLeadingBit(_wgslsmith_mult_u32(81351u, abs(_wgslsmith_add_u32(13018u, 14458u)))));
    let var_1 = !(!vec4<bool>(global2.x, !global2.x, global2.x, global2.x));
    global2 = !select(select(select(!vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(global2.x, false, true), vec3<bool>(false, true, global2.x), var_1.zwz), vec3<bool>(false, global2.x, global2.x)), var_1.wzz, true), !(!select(var_1.zxy, vec3<bool>(true, false, global2.x), false)), !var_1.zzx);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)), select(vec3<bool>(true, any(select(var_1.xzz, var_1.zzw, var_1.x)), 1i != arg_1.x), vec3<bool>(false, any(select(vec2<bool>(global2.x, var_1.x), vec2<bool>(false, false), vec2<bool>(false, false))), !(!global2.x)), select(vec3<bool>(global2.x, true, arg_1.x == u_input.b), var_1.xzz, select(vec3<bool>(false, true, false), !var_1.xwx, vec3<bool>(true, false, var_1.x)))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-736f - 1419f), _wgslsmith_f_op_f32(var_2.a * var_2.a), var_2.a, _wgslsmith_f_op_f32(var_2.a - var_2.a)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1436f, var_2.a, -206f, -1000f) - vec4<f32>(var_2.a, var_2.a, var_2.a, -1564f))))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> u32 {
    global1 = array<Struct_1, 32>();
    global0 = 1000f;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(1i, vec3<i32>(~u_input.a.x, min(firstLeadingBit(8387i), ~5812i), abs(countOneBits(6722i))), select(func_3(), u_input.a.x, false))));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(87938u, 32u)], _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(65311u, 32923u)) & _wgslsmith_div_vec2_u32(~vec2<u32>(35737u, 30608u), vec2<u32>(21034u, 33960u)), ~(~vec2<u32>(55812u, 67263u))), var_0.yw, i32(-1i) * -min(12066i, select(arg_1.x, u_input.b, true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(~1u, 10486u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(31862u, 57549u), reverseBits(57217u)), ~(~vec2<u32>(32979u, 9222u)))), 32u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(922f, var_0.x)), -969f)), var_1.a.b);
    return ~_wgslsmith_add_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 1u, 14520u), vec3<u32>(var_1.b.x, 67229u, 3079u)), var_1.b.x), _wgslsmith_div_u32(var_1.b.x, 98431u));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + -514f), -197f))))));
    global1 = array<Struct_1, 32>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), abs(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(6107u, 63074u, 16139u)), 43133u))), 32u)];
    let var_1 = Struct_1(-1207f, var_0.b);
    var var_2 = -reverseBits(_wgslsmith_mult_i32(~(-59242i), _wgslsmith_mod_i32(-2147483647i, -1i))) <= u_input.b;
    return min(abs(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1404f, var_1.a)), firstTrailingBit(vec3<i32>(u_input.b, 6127i, -24779i)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-4384i, u_input.a.x, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_0.a, var_0.a, var_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-466f, arg_1, arg_1, -1000f))))), _wgslsmith_sub_u32(select(countOneBits(1u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 44721u), ~4294967295u), arg_2.x), 28006u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(~73054u), 32u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(86998u, _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, ~1u), func_1(var_0 < 1i, 905f, var_1.b.zy)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(_wgslsmith_div_u32(1u, 3204u), 1u, 0u, ~0u))), 32u)];
    var_2 = global1[_wgslsmith_index_u32(~func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1351f))), select(vec2<bool>(all(global2.zy), true), vec2<bool>(var_2.b.x, global2.x), var_2.b.xz)), 32u)];
    var var_3 = vec2<u32>(~(~(~_wgslsmith_sub_u32(28194u, 0u))), func_1(all(var_2.b.zx), 1850f, vec2<bool>(true, true)) << (1508u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(33594u, 1u), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_0, 64545i, 1i, var_0) & ~vec4<i32>(u_input.b, var_0, -1i, -28601i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0, -1i, u_input.a.x, var_0), vec4<i32>(15621i, u_input.a.x, -2147483647i, var_0), vec4<bool>(var_2.b.x, var_1.b.x, global2.x, false)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 14710i, var_0, -2147483647i), vec4<i32>(u_input.a.x, var_0, u_input.b, -2882i))), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(-12357i, 43758i), 1i, ~var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a))), 482f, _wgslsmith_f_op_f32(-var_1.a))), u_input.a.x, firstLeadingBit(vec4<i32>(var_0, reverseBits(u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-12181i, var_0), ~u_input.a.x), var_0)));
}

