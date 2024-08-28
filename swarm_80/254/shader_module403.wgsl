struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: vec4<i32>;

var<private> global2: array<bool, 8>;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_3(u_input.a.x & _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~global1.wz, vec2<i32>(-2147483647i, arg_0)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, 27747i, 1i), global1.x & arg_2.a, 1i)), vec4<u32>(~global3.x, global3.x, global3.x, (_wgslsmith_mult_u32(22568u, u_input.c) << (select(4294967295u, global3.x, global2[_wgslsmith_index_u32(0u, 8u)]) % 32u)) ^ reverseBits(u_input.c)), 33012u, global2[_wgslsmith_index_u32(~(~0u), 8u)], Struct_2(arg_0, vec3<i32>(arg_0, -_wgslsmith_mult_i32(25100i, 0i), _wgslsmith_add_i32(2147483647i, arg_1)), Struct_1(arg_2.a), ~max(~vec2<u32>(u_input.b, global3.x), select(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, global3.x), true))));
    var var_1 = Struct_3((-2849i >> ((1u << (firstLeadingBit(var_0.e.d.x) % 32u)) % 32u)) & 1i, var_0.b, global3.x, all(!vec4<bool>(true, all(vec3<bool>(true, true, false)), all(vec3<bool>(true, var_0.d, global2[_wgslsmith_index_u32(global3.x, 8u)])), any(vec2<bool>(true, false)))), var_0.e);
    global2 = array<bool, 8>();
    var var_2 = -9639i;
    var var_3 = var_1.e;
    return _wgslsmith_f_op_f32(-372f * 1000f);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i, 21554i, Struct_1(arg_1 << (7854u % 32u)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2))))));
    global1 = vec4<i32>(-_wgslsmith_add_i32(-1i, 43157i), reverseBits(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-34631i, global1.x), vec2<i32>(arg_1, arg_1) & global1.yz)), firstTrailingBit(firstLeadingBit(-arg_1)), abs(-(-1i & u_input.a.x) ^ global1.x));
    let var_1 = u_input.b;
    var var_2 = Struct_2(~2147483647i, global1.ywx, Struct_1(u_input.a.x), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(22105u, u_input.c), vec2<u32>(1u, u_input.c), arg_0.x), firstLeadingBit(vec2<u32>(0u, global3.x)), vec2<u32>(var_1, 4294967295u) & vec2<u32>(u_input.c, global3.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(4791u, var_1), vec2<u32>(4294967295u, var_1))) >> (countOneBits(max(~vec2<u32>(var_1, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(50174u, 4294967295u), vec2<u32>(12110u, global3.x)))) % vec2<u32>(32u)));
    var var_3 = ~4294967295u | _wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.d.x, ~(global3.x ^ 12125u)), 7092u);
    return ~u_input.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>) -> u32 {
    global0 = array<vec3<u32>, 25>();
    global1 = min(_wgslsmith_mult_vec4_i32(firstTrailingBit(select(-vec4<i32>(u_input.a.x, global1.x, arg_1.x, -35187i), vec4<i32>(-1i, -12558i, 15312i, 74108i), vec4<bool>(true, arg_2.x, true, true))), -vec4<i32>(arg_0.a, -70247i, -2147483647i, -6055i) << (vec4<u32>(global3.x, ~u_input.b, func_2(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 8u)], false, true), 2147483647i, -314f, vec4<f32>(-380f, -1650f, -1218f, 1277f)), 1u) % vec4<u32>(32u))), max(select(-vec4<i32>(-2147483647i, arg_1.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -1i, 19057i), vec4<i32>(global1.x, -2147483647i, u_input.a.x, u_input.a.x)), min(vec4<i32>(-71029i, arg_0.a, -2147483647i, 7276i), vec4<i32>(34300i, 38185i, -58839i, global1.x))), true & all(vec2<bool>(true, arg_2.x))), select(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(36088i, 8948i), select(2394i, -48384i, global2[_wgslsmith_index_u32(global3.x, 8u)]), _wgslsmith_mod_i32(-46590i, -2147483647i)), firstLeadingBit(vec4<i32>(7607i, 26755i, arg_1.x, -36293i)), all(arg_2.zwx) && (30391u >= global3.x))));
    let var_0 = vec2<bool>(arg_2.x, -2147483647i > arg_1.x);
    var var_1 = select(arg_2, vec4<bool>(!global2[_wgslsmith_index_u32(u_input.b, 8u)], true || any(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], true), arg_2.zw, var_0)), !global2[_wgslsmith_index_u32(u_input.c, 8u)], true), any(select(select(!arg_2.xyz, select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], arg_2.x, true), arg_2.zzw, true), global2[_wgslsmith_index_u32(~52030u, 8u)]), !vec3<bool>(true, arg_2.x, true), vec3<bool>(all(arg_2), true, false))));
    global2 = array<bool, 8>();
    return _wgslsmith_mult_u32(~(~global3.x) >> (50086u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 37639u), ~vec2<u32>(5929u, global3.x))) << ((~1u << (((firstTrailingBit(global3.x) | (global3.x | global3.x)) >> (u_input.b % 32u)) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 8>();
    var var_0 = vec3<bool>(!(!global2[_wgslsmith_index_u32(func_1(Struct_1(global1.x), global1.zyx, vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(global3.x, 8u)], global2[_wgslsmith_index_u32(u_input.c, 8u)])), 8u)]), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~4294967295u, global3.x) >> (1u % 32u), 8u)], any(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], false, global2[_wgslsmith_index_u32(1u, 8u)], true))) & false);
    var var_1 = Struct_2(_wgslsmith_clamp_i32(global1.x, _wgslsmith_div_i32(global1.x >> (firstTrailingBit(global3.x) % 32u), global1.x), u_input.a.x << (_wgslsmith_div_u32(abs(29676u), 1u) % 32u)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global1.x, u_input.a.x, 3125i)), global1.xzx), min(select(_wgslsmith_add_vec3_i32(global1.xzy, vec3<i32>(-1i, -7141i, 13957i)), ~vec3<i32>(-19689i, 1i, global1.x), true), select(_wgslsmith_sub_vec3_i32(global1.xxy, vec3<i32>(u_input.a.x, global1.x, u_input.a.x)), vec3<i32>(-1i, -73977i, u_input.a.x), u_input.b > u_input.c))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, -21898i, 26208i), vec4<i32>(global1.x, 66204i, -46551i, 0i), vec4<i32>(-2147483647i, -39083i, global1.x, -3200i)), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, global1.x), -1i << (0u % 32u), -global1.x, 0i))), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 19021u), reverseBits(vec2<u32>(global3.x, 36672u))) & vec2<u32>(u_input.b >> (global3.x % 32u), 0u)));
    var_1 = Struct_2(~(-64637i), _wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(var_1.b, vec3<i32>(var_1.c.a, var_1.b.x, global1.x)) | global1.wyy, ~firstTrailingBit(global1.xyx), vec3<bool>(global2[_wgslsmith_index_u32(13464u, 8u)] || true, global3.x >= 10697u, true)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, var_1.c.a, global1.x), global1.wwx)), var_1.c, vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 25398u, u_input.b, 0u), ~vec4<u32>(u_input.c, 4294967295u, 139083u, 0u))) ^ (_wgslsmith_add_vec2_u32(vec2<u32>(var_1.d.x, global3.x) ^ vec2<u32>(global3.x, var_1.d.x), _wgslsmith_sub_vec2_u32(var_1.d, var_1.d)) << (_wgslsmith_sub_vec2_u32(~var_1.d, abs(vec2<u32>(1u, 0u))) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(max(vec3<u32>(0u, 36399u, 1u), vec3<u32>(global3.x, 1u, 18019u)), ~max(vec3<u32>(u_input.b, 12020u, global3.x), vec3<u32>(var_1.d.x, var_1.d.x, u_input.c)))), -1379f);
}

