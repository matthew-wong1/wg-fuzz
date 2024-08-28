struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 2> = array<i32, 2>(-22601i, -16419i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    global1 = Struct_1(vec3<f32>(1814f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -944f))) + 556f), 809f), vec3<i32>(global1.b.x, 0i, _wgslsmith_sub_i32(firstTrailingBit(~arg_0.a), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~arg_2, 2u)], 1i))), -firstTrailingBit(arg_0.c.b.x));
    var var_0 = -1700f;
    global0 = array<vec2<i32>, 32>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(arg_0.c.a)), ~(~(_wgslsmith_mult_vec3_i32(arg_0.c.b, vec3<i32>(arg_1.x, -24154i, global2[_wgslsmith_index_u32(1u, 2u)])) & -global1.b)), min(_wgslsmith_mult_i32(arg_0.c.c, global2[_wgslsmith_index_u32(52271u, 2u)]), _wgslsmith_mult_i32(arg_0.e, -2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 2u)], 12577i, 2147483647i, global2[_wgslsmith_index_u32(13468u, 2u)]), vec4<i32>(75681i, global1.c, global2[_wgslsmith_index_u32(arg_2, 2u)], arg_1.x)))));
    var var_2 = arg_0.b;
    return _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(sign(var_1.a.x)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = abs(_wgslsmith_mult_i32(-arg_0.x, -18798i));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(418f)), _wgslsmith_f_op_f32(func_3(Struct_2(global2[_wgslsmith_index_u32(514u, 2u)], 2147483647i, Struct_1(vec3<f32>(-759f, 1000f, global1.a.x), vec3<i32>(global1.b.x, global1.b.x, 2147483647i), global2[_wgslsmith_index_u32(u_input.a, 2u)]), Struct_1(global1.a, vec3<i32>(arg_0.x, arg_0.x, -1i), -29117i), global2[_wgslsmith_index_u32(69133u, 2u)]), vec2<i32>(global1.b.x, 50295i), u_input.a))), 679f, global1.a.x)), reverseBits(vec3<i32>(_wgslsmith_mod_i32(arg_0.x, -33678i), -2147483647i, _wgslsmith_dot_vec4_i32(select(arg_0, vec4<i32>(-30187i, global2[_wgslsmith_index_u32(79585u, 2u)], -1i, 27427i), false), vec4<i32>(-62037i, -66152i, global1.b.x, -1i)))), abs(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global1.b.x, global2[_wgslsmith_index_u32(52908u, 2u)]) & arg_0.xz, vec2<i32>(0i, 0i), true), firstTrailingBit(select(global0[_wgslsmith_index_u32(72071u, 32u)], global1.b.yz, false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(438f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.a.x, 875f)))), -316f)), _wgslsmith_clamp_vec3_i32(-(~(-arg_0.zxy)), vec3<i32>(global2[_wgslsmith_index_u32(~56370u, 2u)], i32(-1i) * -19764i, ~(-global1.b.x)), vec3<i32>(arg_0.x, -global2[_wgslsmith_index_u32(u_input.b.x, 2u)] >> (16757u % 32u), 1i ^ -global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), -_wgslsmith_div_i32(1i, select(1i, ~1i, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(firstLeadingBit(global1.b.x) ^ _wgslsmith_sub_i32(62210i, arg_0.x), ~(arg_0.x << (0u % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), reverseBits(vec3<i32>(1i, -38215i, var_1.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 2u)]), Struct_1(vec3<f32>(var_1.a.x, global1.a.x, -733f), max(vec3<i32>(2147483647i, 0i, global1.c), vec3<i32>(arg_0.x, arg_0.x, -35624i)), 26512i), var_1.c), ~max(-vec2<i32>(-2147483647i, -33819i), abs(vec2<i32>(arg_0.x, -68906i))), _wgslsmith_div_u32(firstTrailingBit(~u_input.c.x), _wgslsmith_sub_u32(u_input.a, 1u) << (1u % 32u)))));
    global0 = array<vec2<i32>, 32>();
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    return Struct_1(vec3<f32>(1432f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1089f)), 1318f), -1294f), vec3<i32>(-1i) * -(~firstTrailingBit(vec3<i32>(2147483647i, 0i, arg_0.b.x))), 43965i);
}

fn func_1() -> vec3<i32> {
    let var_0 = u_input.c;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, global1.a.x, 2741f), global1.a)))), ~vec3<i32>(-2147483647i, select(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], -2636i < global1.c), i32(-1i) * -2147483647i), i32(-1i) * -global1.c);
    var_1 = func_4(func_2(vec4<i32>(-1i) * -vec4<i32>(global1.c, 879i, var_1.c, 2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x + 513f), -496f, _wgslsmith_f_op_f32(-global1.a.x)))), select(~global1.b ^ -var_1.b, global1.b, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), ~(~_wgslsmith_mult_i32(15908i, global2[_wgslsmith_index_u32(42897u, 2u)]))), Struct_2(-_wgslsmith_clamp_i32(countOneBits(global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), 33819i, global1.c), firstLeadingBit((global1.c ^ -1i) >> (~u_input.a % 32u)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 517f, var_1.a.x)), vec3<f32>(var_1.a.x, -220f, global1.a.x)), min(func_2(vec4<i32>(29213i, var_1.c, var_1.c, 41631i)).b, var_1.b), 2969i), func_2(vec4<i32>(0i, -2388i, _wgslsmith_dot_vec2_i32(global1.b.yy, vec2<i32>(15023i, var_1.b.x)), -var_1.b.x)), 1i));
    var var_2 = 0u;
    var var_3 = vec3<u32>(select(~firstLeadingBit(u_input.a), 3516u, (var_1.b.x <= global1.c) && (var_0.x > var_0.x)) << (~0u % 32u), ~u_input.b.x, countOneBits(var_0.x));
    return vec3<i32>(i32(-1i) * -31462i, global1.b.x, -42562i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-302f, 1226f, global1.a.x), vec3<f32>(998f, 490f, -508f), true)), global1.a))), -global1.b, firstTrailingBit(global2[_wgslsmith_index_u32(~u_input.b.x, 2u)]));
    let var_2 = -global1.b;
    var_1 = Struct_1(global1.a, firstLeadingBit(max(-max(vec3<i32>(global1.b.x, -43068i, var_2.x), vec3<i32>(global1.c, 2147483647i, var_2.x)), func_1() | func_4(Struct_1(var_1.a, vec3<i32>(-2147483647i, global1.c, 1i), 0i), Struct_1(global1.a, var_2, var_2.x), Struct_2(-37050i, -20192i, Struct_1(vec3<f32>(207f, -134f, var_1.a.x), vec3<i32>(var_1.c, 2147483647i, 2147483647i), 0i), Struct_1(vec3<f32>(-935f, 1000f, var_1.a.x), var_2, 48051i), var_2.x)).b)), _wgslsmith_dot_vec2_i32(var_1.b.yx, var_2.xz));
    let var_3 = firstLeadingBit(u_input.c);
    let var_4 = any(vec3<bool>(any(vec3<bool>(false, true, true)) & ((global1.a.x <= var_1.a.x) & true), true, true));
    var var_5 = Struct_2(2147483647i, -abs(_wgslsmith_mult_i32(~(-85229i), _wgslsmith_dot_vec2_i32(global1.b.zx, var_1.b.xy))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(609f, var_1.a.x, -1102f), vec3<f32>(-166f, global1.a.x, 519f), vec3<bool>(var_4, false, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a))), ((vec3<i32>(1i, 7178i, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]) | vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global1.c, var_2.x)) & var_1.b) ^ ~_wgslsmith_add_vec3_i32(var_1.b, vec3<i32>(var_1.b.x, global1.b.x, global2[_wgslsmith_index_u32(77326u, 2u)])), ~_wgslsmith_mult_i32(-6517i, select(36291i, -14920i, true))), func_2(vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(var_2, countOneBits(var_2)), -reverseBits(global1.b.x), global1.c)), 14410i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_3.x << (u_input.b.x % 32u), u_input.b.x, ~4294967295u, var_3.x), _wgslsmith_clamp_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(62430u, u_input.b.x, 1u, var_3.x), vec4<u32>(u_input.a, u_input.b.x, u_input.c.x, 0u)), vec4<u32>(4294967295u, u_input.a, 1u, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(13709u, var_3.x, 1u, 58632u), firstLeadingBit(vec4<u32>(4294967295u, var_3.x, 25547u, 4294967295u))), ~(~vec4<u32>(var_3.x, u_input.a, 0u, u_input.a)))));
}

