struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(5967i, -38589i, 2147483647i, 0i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-1i, 1i, -34584i, 17673i), vec4<i32>(6551i, 1i, 1i, 0i), vec4<i32>(13503i, 28556i, 0i, i32(-2147483648)), vec4<i32>(-1i, -13889i, 2677i, i32(-2147483648)), vec4<i32>(19097i, 2147483647i, i32(-2147483648), -21292i), vec4<i32>(i32(-2147483648), 0i, 14229i, -1i), vec4<i32>(-1i, 1i, 36928i, 936i), vec4<i32>(0i, -29093i, -1i, 28097i), vec4<i32>(41008i, -2825i, -1412i, 65211i), vec4<i32>(21968i, -32584i, -61273i, i32(-2147483648)), vec4<i32>(-1i, 46363i, -35784i, -20514i), vec4<i32>(2147483647i, -1i, 52663i, 67527i), vec4<i32>(-1i, 2147483647i, 22599i, 0i), vec4<i32>(-33264i, -1i, 53192i, 14281i), vec4<i32>(-7336i, -46831i, 2147483647i, 2147483647i), vec4<i32>(3916i, i32(-2147483648), i32(-2147483648), 17456i), vec4<i32>(-2963i, -28751i, -31979i, -56418i), vec4<i32>(i32(-2147483648), 0i, -5081i, 27142i), vec4<i32>(-1i, -25393i, 144i, 24820i));

var<private> global1: i32;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global1 = 1i;
    let var_0 = ~(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x)) << (48492u % 32u);
    global1 = u_input.b.x;
    global2 = array<Struct_1, 11>();
    let var_1 = Struct_1(~2147483647i ^ _wgslsmith_div_i32(~(u_input.d.x << (u_input.c.x % 32u)), countOneBits(i32(-1i) * -2147483647i)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), -_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(u_input.c.x, 21u)] >> (u_input.a % vec4<u32>(32u)), ~vec4<i32>(1i, 0i, u_input.b.x, -31710i)) | firstLeadingBit(vec4<i32>(1i, firstLeadingBit(-47006i), ~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.d.x), u_input.d))), !vec2<bool>((u_input.b.x > u_input.d.x) & true, true));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zx, -vec2<i32>(-35593i, -2147483647i)), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-1i, u_input.b.x)), var_1.c.yz >> (u_input.c.zx % vec2<u32>(32u)))) ^ _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(3857i, var_1.c.x, u_input.d.x), min(1i, var_1.a)), ~_wgslsmith_mult_i32(-var_1.c.x, -1i));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(u_input.d.x, !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, false, false), !(u_input.b.x >= u_input.d.x)), vec4<i32>(15438i, _wgslsmith_clamp_i32(i32(-1i) * -18037i, 3577i, -u_input.d.x), 2147483647i, u_input.b.x) & vec4<i32>(_wgslsmith_mod_i32(~0i, ~49677i), func_3(), firstTrailingBit(abs(u_input.b.x)), _wgslsmith_div_i32(~u_input.d.x, 1i)), select(!vec2<bool>(true, select(false, false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)), false));
    var var_1 = !var_0.d.x;
    var var_2 = 1u;
    global0 = array<vec4<i32>, 21>();
    var var_3 = Struct_1(u_input.b.x, var_0.b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(0u), abs(~_wgslsmith_dot_vec3_u32(u_input.a.zwx, vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x)))), 21u)], vec2<bool>(true, false));
    return _wgslsmith_add_u32(1u, firstLeadingBit(4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-360f, -827f, 327f, -359f) - vec4<f32>(-1270f, 284f, 1140f, 432f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1233f, 105f, 2088f, -623f), vec4<f32>(-416f, 433f, 1520f, 801f), arg_0.b)), select(arg_2.b, arg_0.b, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(587f, -1171f, -1503f, 357f), vec4<f32>(-833f, -601f, -323f, 204f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, 1000f, -1346f, 110f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1026f, 1014f, 1000f, -1734f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, -266f, -1384f, -195f) + vec4<f32>(2644f, 198f, 1035f, 875f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-597f, -1174f, 1000f, -627f))))), true));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), var_0.x, 231f, var_0.x))));
    var var_1 = ~u_input.c.x;
    var var_2 = global2[_wgslsmith_index_u32(0u & firstTrailingBit(abs(u_input.c.x)), 11u)];
    let var_3 = arg_0.c.xy;
    return vec2<bool>(true == arg_0.b.x, (_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.a, 2147483647i), func_3()) << (~1u % 32u)) >= ~(_wgslsmith_div_i32(var_2.a, var_3.x) & arg_0.c.x));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.b.x;
    var var_1 = any(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var_1 = true;
    let var_2 = func_4(Struct_1(-var_0, vec4<bool>(true, true, true, true), vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(func_2(), 21u)], !vec2<bool>(all(vec2<bool>(true, false)), true)), true == ((_wgslsmith_mod_u32(u_input.a.x, 0u) << (u_input.c.x % 32u)) == ~(~78021u)), Struct_1(~var_0, vec4<bool>(false, true, true && (u_input.a.x != u_input.c.x), all(vec2<bool>(true, true))), vec4<i32>(1i << (abs(u_input.a.x) % 32u), min(-2147483647i, -19076i), _wgslsmith_div_i32(5973i, abs(u_input.d.x)), 0i), vec2<bool>(true, any(vec3<bool>(true, true, true)))), select(82361u, 37968u, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)))));
    var var_3 = u_input.c.x | _wgslsmith_clamp_u32(abs(u_input.c.x), 31639u, _wgslsmith_div_u32(u_input.a.x, select(max(u_input.a.x, 0u), abs(u_input.a.x), all(vec4<bool>(false, false, true, var_2.x)))));
    return StorageBuffer(u_input.b, vec4<f32>(210f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(-526f + 426f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1711f - -1487f)))), _wgslsmith_f_op_f32(ceil(2504f)), 1508f), -527f, select(u_input.a, vec4<u32>(min(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), _wgslsmith_sub_u32(91033u, 17158u)), _wgslsmith_mult_u32(1u, ~21369u), ~66032u, 1u), !(!select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, true, false, true), var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(617f, 951f) + vec2<f32>(203f, 1516f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(350f, -691f))))), !func_4(Struct_1(20391i, vec4<bool>(true, var_2.x, false, true), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec2<bool>(true, var_2.x)), var_2.x, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

