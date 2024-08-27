struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-1092f, -212f, -126f), vec3<f32>(1426f, 666f, 187f), vec3<f32>(-157f, 865f, -1002f), vec3<f32>(563f, 355f, -635f), vec3<f32>(1646f, 903f, 220f), vec3<f32>(-1239f, 1000f, -674f), vec3<f32>(-553f, 109f, 112f), vec3<f32>(633f, 353f, -460f), vec3<f32>(-959f, 1613f, -110f), vec3<f32>(786f, -1096f, -287f), vec3<f32>(-730f, 569f, 1727f), vec3<f32>(1077f, -166f, 691f), vec3<f32>(1774f, -497f, 1107f), vec3<f32>(893f, -1000f, 1793f), vec3<f32>(-248f, -1000f, -1151f), vec3<f32>(1378f, -145f, 744f), vec3<f32>(1315f, 2328f, 1040f), vec3<f32>(-199f, -385f, -477f), vec3<f32>(2832f, -953f, -557f), vec3<f32>(709f, -544f, -1465f));

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec4<bool>(false, true, true, false)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(false, true, true, false)), Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(false, true, true, false)));

var<private> global2: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = countOneBits(1470i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-648f, -177f, -1068f, -206f)), vec4<f32>(-862f, 902f, 1000f, 1420f), vec4<bool>(true, true, false, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-245f, -299f, -195f, -2423f), vec4<f32>(127f, 1695f, 221f, -602f)))))));
    var_0 = select(13860i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, 5441i), vec2<i32>(11859i, global2.x)), vec2<i32>(-u_input.e, 0i)), max(13374i, ~(i32(-1i) * -2147483647i))), false);
    var_0 = arg_0;
    let var_2 = var_1;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)), -1253f, any(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(min(~(-1i), 1i), 5637i, countOneBits(-1i << (u_input.b % 32u)), -1i)), abs(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -11103i), u_input.e, _wgslsmith_sub_i32(i32(-1i) * -71058i, ~37306i), global2.x)));
    global2 = var_0.zy;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -402f))) + _wgslsmith_f_op_f32(func_2(54074i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * 2394f) * arg_1);
    let var_3 = Struct_4(arg_2.a);
    return abs(u_input.d.yz);
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<i32> {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2.x))))), arg_1, arg_1, _wgslsmith_f_op_f32(ceil(arg_1))));
    let var_2 = abs(0i);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a));
    var var_4 = func_3(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 8u)], var_1.a.x, global1[_wgslsmith_index_u32(arg_0, 8u)]) & vec2<u32>(~(countOneBits(68709u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.d.xy) % 32u)), ~(~(~0u)));
    return _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(49982i) & 0i, var_2, firstLeadingBit(~_wgslsmith_add_i32(u_input.e, -2147483647i))), ~_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -1i, 0i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_2, var_2, -32898i), vec3<i32>(global2.x, -1i, u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(min(firstTrailingBit(firstTrailingBit(-vec3<i32>(u_input.e, -10047i, 8303i))), firstTrailingBit(~vec3<i32>(-2147483647i, 0i, 1i)) << ((~vec3<u32>(u_input.c, 0u, 2890u) | u_input.d) % vec3<u32>(32u))), max(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, -2147483647i, 81176i), func_1(4294967295u, -1418f), vec3<i32>(-40143i, u_input.e, u_input.e) & vec3<i32>(1i, 12876i, global2.x)), vec3<i32>(_wgslsmith_mod_i32(u_input.e, global2.x), global2.x, firstLeadingBit(global2.x))), vec3<i32>(_wgslsmith_mult_i32(2147483647i, u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -9234i, u_input.e, u_input.e) | vec4<i32>(global2.x, -19404i, -22787i, 2147483647i), vec4<i32>(global2.x, -1i, global2.x, u_input.e)), -func_1(u_input.c, -1729f).x)));
    global1 = array<Struct_4, 8>();
    let var_1 = Struct_4(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true)));
    global1 = array<Struct_4, 8>();
    var var_2 = 1i;
    var_2 = -(_wgslsmith_div_i32(1i, abs(-1i)) << (abs(func_3(var_1, _wgslsmith_f_op_f32(693f * 115f), Struct_4(var_1.a)).x) % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, -457f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-455f, 1997f))))) - vec2<f32>(343f, _wgslsmith_f_op_f32(975f - 379f)));
    var var_4 = _wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0, var_0), vec3<i32>(global2.x, ~(-55741i), -91649i))), vec3<i32>(u_input.e, -2147483647i, var_0.x));
    let var_5 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(834f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x)))) + var_3.x), max(~u_input.c, _wgslsmith_sub_u32(1305u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.d.yy), 43835u))), -u_input.e, 511f);
}

