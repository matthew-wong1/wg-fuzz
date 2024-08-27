struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(17290u, vec2<i32>(0i, -28090i), 4294967295u, vec3<bool>(true, false, true), false), false), Struct_2(Struct_1(12897u, vec2<i32>(-8797i, 1i), 0u, vec3<bool>(false, false, false), true), false));

var<private> global1: vec3<bool>;

var<private> global2: vec4<bool>;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    global3 = all(!vec3<bool>(global1.x != true, true, true));
    let var_0 = Struct_3(abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 27707u, u_input.a.x), abs(1u) | u_input.e.x)), false);
    global1 = select(vec3<bool>(!(u_input.d.x != -2147483647i), false, all(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, true, true, true), select(vec4<bool>(global2.x, false, false, false), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, true, var_0.b, false))))), vec3<bool>(true, global1.x && false, !global1.x), !any(vec4<bool>(true, global1.x, var_0.b, true)));
    var var_1 = Struct_3(32013u, true);
    global3 = !global1.x;
    return 4294967295u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = global1.x;
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.e.x, func_3(countOneBits(vec3<u32>(77643u, u_input.a.x, u_input.e.x)), -158f)) | ~_wgslsmith_dot_vec3_u32(select(u_input.a, vec3<u32>(46307u, u_input.e.x, 0u), select(vec3<bool>(global1.x, global2.x, false), global2.wxw, vec3<bool>(arg_1.x, false, true))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(26624u, u_input.a.x, u_input.e.x)), select(u_input.a, vec3<u32>(35310u, u_input.a.x, 22361u), arg_1.x))), 2u)];
    global1 = vec3<bool>(select(-2147483647i != _wgslsmith_sub_i32(1i, -var_1.a.b.x), true, true), true, all(vec3<bool>(all(vec2<bool>(true, arg_1.x)), false, arg_1.x & true)) & var_1.b);
    let var_2 = vec4<bool>(var_1.a.e, var_1.a.b.x == _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(arg_0.zww), vec3<i32>(arg_0.x, -56181i, 29232i)), arg_0.zxz), false, true);
    let var_3 = var_1.a;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~35895u, select(_wgslsmith_div_u32(u_input.a.x, 4294967295u), _wgslsmith_div_u32(0u, countOneBits(reverseBits(var_3.a))), var_1.a.e != all(vec3<bool>(false, true, true)))), 2u)];
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = func_2(~vec4<i32>(-(~(-2147483647i)), arg_0.b.x << (countOneBits(12427u) % 32u), firstLeadingBit(abs(u_input.d.x)), _wgslsmith_mult_i32(0i, -30285i)), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-976f - _wgslsmith_f_op_f32(f32(-1f) * -1922f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))));
    var var_1 = Struct_1(_wgslsmith_add_u32(~arg_0.c, min(1u, 24568u)), reverseBits(-arg_0.b), min(u_input.a.x >> (~(~4294967295u) % 32u), 4294967295u), var_0.a.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1527f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2321f, 1000f, false))) + 1126f));
    var_1 = Struct_1(arg_0.a, var_0.a.b, u_input.a.x, select(select(vec3<bool>(var_0.b, func_2(vec4<i32>(2147483647i, u_input.c.x, u_input.d.x, 0i), var_0.a.d, 1156f).a.e, true), var_0.a.d, vec3<bool>(false, true, false)), var_1.d, var_1.d), !(!var_0.b));
    let var_2 = var_0.a;
    var_1 = func_2(u_input.c, vec3<bool>(global2.x, var_2.d.x, var_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(149f, 1182f)))) + 1186f)).a;
    return max(49934u, ~46502u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(!vec2<bool>(global2.x, false)), firstTrailingBit(select(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.e.x)), global2.x)) >= func_1(Struct_1(~u_input.a.x, -vec2<i32>(u_input.d.x, 3523i), abs(4294967295u), vec3<bool>(true, false, false), !global2.x)));
    let var_1 = Struct_4(u_input.a, func_2(select(countOneBits(vec4<i32>(2147483647i, -1i, -7560i, u_input.c.x)), vec4<i32>(2147483647i, 44421i, 30118i, u_input.c.x) ^ -u_input.c, vec4<bool>(global2.x || false, true, global1.x, global2.x & global1.x)), !vec3<bool>(var_0.x, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-685f)) * _wgslsmith_f_op_f32(-2807f + 710f)))).a, ~(~u_input.e), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 5154u), vec4<u32>(u_input.a.x, u_input.e.x, 1u, u_input.a.x) | vec4<u32>(0u, u_input.e.x, 1u, u_input.e.x)), select(func_2(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.d.x, u_input.b, u_input.d.x)), !global2.wyx, _wgslsmith_f_op_f32(f32(-1f) * -1122f)).a.b, vec2<i32>(u_input.b, -18681i), select(select(global1.xx, vec2<bool>(true, true), global1.zz), global1.zy, !global1.xz)), 32926u, global2.wzz, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(max(-878f, -1245f))))));
    var var_2 = var_1;
    let var_3 = reverseBits(u_input.d.x);
    var var_4 = _wgslsmith_dot_vec3_u32(~(~countOneBits(~vec3<u32>(u_input.a.x, 39475u, var_1.b.a))), abs(~vec3<u32>(_wgslsmith_div_u32(var_2.c.x, var_2.b.c), _wgslsmith_clamp_u32(u_input.e.x, var_2.c.x, 30492u), u_input.e.x)));
    let var_5 = 1u;
    let var_6 = global2.x && !((0u & _wgslsmith_mult_u32(var_1.c.x, 1u)) <= var_2.c.x);
    global1 = vec3<bool>(_wgslsmith_f_op_f32(floor(var_1.e)) == var_1.e, !var_1.d.e, (all(vec4<bool>(global2.x, var_2.b.e, true, false)) & ((var_3 <= 7175i) == var_2.d.d.x)) & var_1.b.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(837f, 1421f) * vec2<f32>(-805f, var_2.e)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.e, -497f), vec2<f32>(-641f, -1572f), vec2<bool>(var_2.b.e, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.e, var_2.e), vec2<f32>(var_1.e, -2581f), var_2.b.d.xx)) - vec2<f32>(var_2.e, 1227f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1402f, var_2.e))))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(702f, var_2.e)))))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e * _wgslsmith_div_f32(-1548f, -268f))) * 1147f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.e * -803f), -165f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.e, var_2.e), vec2<f32>(var_1.e, var_2.e), var_1.d.d.xx)))))));
}

