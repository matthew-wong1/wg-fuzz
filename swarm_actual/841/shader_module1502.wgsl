struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: bool = true;

var<private> global2: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-352f, -407f), vec2<f32>(-283f, 1603f), vec2<f32>(-1785f, 896f), vec2<f32>(779f, 794f), vec2<f32>(-1065f, -801f), vec2<f32>(268f, -264f), vec2<f32>(-976f, -521f), vec2<f32>(497f, -232f), vec2<f32>(-1381f, 246f), vec2<f32>(281f, -2732f), vec2<f32>(804f, 1288f), vec2<f32>(-298f, -918f), vec2<f32>(292f, 120f), vec2<f32>(-2153f, 377f), vec2<f32>(1000f, 1500f), vec2<f32>(-160f, -1479f), vec2<f32>(364f, 346f), vec2<f32>(-511f, -1000f), vec2<f32>(139f, 1000f), vec2<f32>(553f, -1469f), vec2<f32>(1324f, -140f), vec2<f32>(1850f, 754f), vec2<f32>(-1128f, 656f), vec2<f32>(991f, -1902f), vec2<f32>(1075f, 1000f), vec2<f32>(-1230f, -1051f), vec2<f32>(-1504f, -1115f), vec2<f32>(977f, 1160f), vec2<f32>(-807f, -388f), vec2<f32>(-394f, 1000f), vec2<f32>(-485f, -755f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_2, 22>();
    let var_0 = vec3<u32>(abs(~u_input.c.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~26757u, ~u_input.a) << (_wgslsmith_mult_u32(u_input.c.x, 0u) % 32u), u_input.a), u_input.a);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u, ~min(0u, 4294967295u), _wgslsmith_mult_u32(1u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, _wgslsmith_sub_u32(79669u, _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.xz))), ~firstLeadingBit(var_0.zy))), 22u)];
    var var_2 = ~select(-(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 1i, arg_0.a.x, u_input.b.x)), ~vec4<i32>(14749i, -1i, -u_input.b.x, ~u_input.b.x), false);
    var var_3 = var_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))) * var_1.a.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2413f)) * _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a)))))));
    global0 = array<Struct_2, 22>();
    var var_1 = ~abs(vec4<i32>(-48652i, _wgslsmith_add_i32(~u_input.b.x, arg_1.a.x | -1i), -(u_input.b.x ^ u_input.b.x), _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.c.x, 31u)] - vec2<f32>(-143f, var_0)) + _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(arg_0, 31u)])))), vec2<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_div_f32(812f, 1989f), var_0)), false))));
    var var_3 = Struct_2(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -460f) - -538f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-326f)) - _wgslsmith_f_op_f32(-927f - var_0)) * _wgslsmith_f_op_f32(exp2(var_2.x)))));
    return (!all(vec2<bool>(false, false)) && !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))) && false;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global1 = func_2(u_input.c.x << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(51247u, 0u), _wgslsmith_clamp_u32(4294967295u, 92194u, 28581u)) % 32u), Struct_1(u_input.b.zz)) && (!all(vec2<bool>(true, true)) != (1u == firstTrailingBit(countOneBits(u_input.c.x))));
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(min(-vec2<i32>(u_input.b.x, -1i), vec2<i32>(select(u_input.b.x, -71i, false), ~u_input.b.x)), -u_input.b.yx | _wgslsmith_mult_vec2_i32(-u_input.b.zz, _wgslsmith_mult_vec2_i32(u_input.b.xz, u_input.b.xx))));
    global2 = array<vec2<f32>, 31>();
    global1 = any(select(!vec2<bool>(any(vec2<bool>(true, true)), func_2(arg_0.x, Struct_1(vec2<i32>(var_0.a.x, -2147483647i)))), !vec2<bool>(true, u_input.b.x <= u_input.b.x), select(vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), true)));
    let var_1 = !select(vec3<bool>(false, select(false, true, true), true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1076f, 2979f, 347f), vec3<f32>(216f, -694f, -1179f)), vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_div_f32(603f, 1728f), _wgslsmith_f_op_f32(-477f * 878f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2110f, 1628f, -300f))))))));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    return select(vec2<bool>(!func_2(~3803u, Struct_1(u_input.b.yy)), _wgslsmith_f_op_f32(f32(-1f) * -394f) > arg_0.a.x), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(func_1(~(~vec4<u32>(1u, u_input.a, u_input.c.x, 10734u)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(func_4(func_1(firstLeadingBit(vec4<u32>(10454u, u_input.c.x, u_input.a, u_input.a)))).x, true));
    let var_1 = vec4<bool>(all(vec2<bool>(!any(vec3<bool>(false, false, true)), all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), var_0.x, any(select(vec2<bool>(u_input.c.x == u_input.c.x, var_0.x && false), vec2<bool>(true, true), false)), false);
    global2 = array<vec2<f32>, 31>();
    let var_2 = Struct_1(vec2<i32>(firstTrailingBit(u_input.b.x), u_input.b.x));
    var var_3 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c.x << (u_input.a % 32u)), ~u_input.c.x ^ ~u_input.a, _wgslsmith_mod_u32(~u_input.c.x, 4294967295u << (0u % 32u)), 1u), ~vec4<u32>(~u_input.a, _wgslsmith_add_u32(0u, 7136u), u_input.a, firstLeadingBit(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_1(vec4<u32>(u_input.c.x, u_input.a ^ u_input.c.x, reverseBits(437u), ~u_input.c.x)).a.x, 473f, 1015f), ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 61114u, u_input.c.x, u_input.a), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)) | vec4<u32>(1u, 1u, 1u, 1u))));
}

