struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<i32>(-1i, 0i), 1u), Struct_2(vec2<i32>(-43497i, 34258i), 0u), Struct_2(vec2<i32>(i32(-2147483648), 16148i), 32397u), Struct_2(vec2<i32>(i32(-2147483648), 32345i), 1u), Struct_2(vec2<i32>(-24583i, i32(-2147483648)), 15792u), Struct_2(vec2<i32>(1i, 16679i), 687u), Struct_2(vec2<i32>(-1i, 1i), 1182u), Struct_2(vec2<i32>(-29639i, 41148i), 27932u), Struct_2(vec2<i32>(-1i, -30838i), 4294967295u), Struct_2(vec2<i32>(i32(-2147483648), 13939i), 42021u), Struct_2(vec2<i32>(-50992i, 0i), 0u));

var<private> global1: vec4<i32>;

var<private> global2: array<bool, 32>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = global3.a;
    global1 = reverseBits(-vec4<i32>(select(-global1.x, -1i, u_input.b.x == u_input.c), _wgslsmith_clamp_i32(-22606i, 2147483647i, -2147483647i) & _wgslsmith_mod_i32(7748i, 14844i), ~firstTrailingBit(u_input.b.x), 2147483647i << (global3.b.x % 32u)));
    var var_1 = Struct_2(~global1.ww, ~arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))) * _wgslsmith_f_op_f32(var_0.x * var_0.x)));
    var var_3 = max(select(~(~(~var_1.b)), ~countOneBits(global3.b.x) | global3.b.x, all(!select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)], false), vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.a.x, 32u)]))), reverseBits(_wgslsmith_add_u32(global3.b.x, ~(~4294967295u))));
    return ~(~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-18389i, 2049i, 1i, -2147483647i), vec4<i32>(-9577i, -2147483647i, 1i, global1.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~(-_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, global1.x, 2147483647i, 24022i), func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global3.b.x, 35068u, global3.b.x), vec4<u32>(45793u, 0u, u_input.a.x, u_input.a.x)))));
    var var_1 = select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(max(62528u, 4294967295u), 32u)]), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.b.x, 46767u), 32u)]), !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)])), any(vec4<bool>(!global2[_wgslsmith_index_u32(50446u, 32u)], false, all(vec3<bool>(global2[_wgslsmith_index_u32(global3.b.x, 32u)], global2[_wgslsmith_index_u32(81156u, 32u)], true)), false && global2[_wgslsmith_index_u32(0u, 32u)]))), vec2<bool>(global2[_wgslsmith_index_u32(34257u, 32u)], !any(select(vec3<bool>(global2[_wgslsmith_index_u32(10736u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(31872u, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(46179u, 32u)], global2[_wgslsmith_index_u32(38210u, 32u)], true), vec3<bool>(true, true, true)))), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], false))));
    global2 = array<bool, 32>();
    let var_2 = Struct_1(global3.a, global3.b | vec3<u32>(41431u, _wgslsmith_sub_u32(52551u, ~u_input.a.x), global3.b.x));
    global3 = Struct_1(vec3<f32>(-692f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(floor(-1255f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.a.x, -1613f))) - global3.a.x)), ~var_2.b);
    return Struct_1(global3.a, ~vec3<u32>(1u, var_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, global3.b.x, 36938u, 1u), vec4<u32>(0u, 40572u, u_input.a.x, global3.b.x))) | vec3<u32>(~4294967295u, ~(~4294967295u), 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec3_i32(~min(-global1.wzw, vec3<i32>(u_input.b.x, u_input.b.x, -1i)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -38054i, global1.x), vec3<i32>(-1051i, 34410i, arg_1.a.a.x)), u_input.c, u_input.b.x), global1.xyw), vec3<i32>(-_wgslsmith_mod_i32(global1.x, 1i) << (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(firstLeadingBit(~global1.ywx), vec3<i32>(firstTrailingBit(0i), arg_1.d.a.x, _wgslsmith_mod_i32(-16975i, arg_1.d.a.x))), 41294i));
    var var_1 = !select(_wgslsmith_div_i32(max(u_input.c, arg_1.d.a.x), _wgslsmith_add_i32(26192i, -30646i)) == firstLeadingBit(select(-2147483647i, global1.x, global2[_wgslsmith_index_u32(arg_0.b.x, 32u)])), any(select(vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.b.x, 32u)]), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(global3.b.x, 32u)]), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(1338u, 32u)]))), true);
    let var_2 = select(!vec4<bool>(true, true, all(vec3<bool>(true, global2[_wgslsmith_index_u32(53635u, 32u)], false)), false), !select(!select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], false, global2[_wgslsmith_index_u32(78553u, 32u)], global2[_wgslsmith_index_u32(global3.b.x, 32u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.b.b.x, 32u)], true, true), vec4<bool>(false, global2[_wgslsmith_index_u32(60851u, 32u)], global2[_wgslsmith_index_u32(arg_1.a.b, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)])), select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(arg_0.b.x, 32u)], global2[_wgslsmith_index_u32(47950u, 32u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], true), false), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, arg_1.b.b.yx), ~arg_0.b.x), 32u)]), !(!(!(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 32u)], true)))));
    var var_3 = countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-16017i, arg_1.a.a.x, -34145i), vec3<i32>(1i, var_0, arg_1.d.a.x) << (vec3<u32>(u_input.a.x, 0u, 0u) % vec3<u32>(32u))), 1i, global1.x, abs(var_0))) >> (~vec4<u32>(global3.b.x, 1u, _wgslsmith_mod_u32(arg_1.d.b, 1u), ~(~arg_1.b.b.x)) % vec4<u32>(32u));
    global1 = reverseBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(u_input.b.x), 2147483647i, _wgslsmith_add_i32(u_input.c, 14229i), 2147483647i), vec4<i32>(global1.x, u_input.c, -13453i, global1.x) ^ (vec4<i32>(arg_1.d.a.x, -2548i, var_3.x, 1i) ^ vec4<i32>(arg_1.d.a.x, -20940i, u_input.b.x, var_3.x)), vec4<i32>(var_3.x, var_3.x, var_0, -4591i)));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    global2 = array<bool, 32>();
    global1 = vec4<i32>(_wgslsmith_add_i32(-1i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 2147483647i), global1.zx), global1.x)) >> (reverseBits(~u_input.a.x) % 32u), arg_2.a.x, 2147483647i, _wgslsmith_dot_vec2_i32(arg_2.a.zy, arg_1.d.a));
    global0 = array<Struct_2, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.c.a - func_2().a), countOneBits(global3.b));
    let var_1 = arg_1.b.a;
    return Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-62624i, 1i, -2440i), 33968i), _wgslsmith_div_vec2_i32(arg_2.a.xy, ~_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, arg_2.a.zy))), global3.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(543f, 1000f) - -1000f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1104f))))));
    let var_2 = func_5(global0[_wgslsmith_index_u32(~var_0 & 10745u, 11u)], func_4(func_2(), Struct_4(Struct_2(-vec2<i32>(u_input.c, u_input.c), _wgslsmith_clamp_u32(1u, 66702u, 0u)), Struct_1(vec3<f32>(arg_0.x, -1456f, -272f), vec3<u32>(1u, 5938u, 28707u)), global3.b, Struct_2(vec2<i32>(global1.x, global1.x), ~var_0))), Struct_3(-global1.xzx, true, func_2(), select(_wgslsmith_sub_vec3_u32(global3.b, global3.b), global3.b, arg_1)), vec2<bool>(true, !all(select(vec2<bool>(false, false), arg_1.zz, arg_1.yy))));
    var var_3 = vec3<bool>(false, global2[_wgslsmith_index_u32(~25550u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(29363u, u_input.a.x, 1u, 6227u) | vec4<u32>(u_input.a.x, u_input.a.x, var_2.b, var_2.b), firstTrailingBit(vec4<u32>(4294967295u, 0u, 7401u, var_0))), 32u)], true);
    let var_4 = Struct_4(func_5(global0[_wgslsmith_index_u32(25294u, 11u)], func_4(func_4(func_4(Struct_1(vec3<f32>(arg_0.x, global3.a.x, arg_0.x), global3.b), Struct_4(Struct_2(vec2<i32>(-76656i, 13260i), 98579u), Struct_1(global3.a, vec3<u32>(22577u, 7873u, 1u)), global3.b, Struct_2(vec2<i32>(u_input.b.x, u_input.b.x), 1u))).b, Struct_4(global0[_wgslsmith_index_u32(98780u, 11u)], Struct_1(global3.a, global3.b), global3.b, var_2)).b, func_4(Struct_1(global3.a, global3.b), func_4(Struct_1(global3.a, global3.b), Struct_4(Struct_2(vec2<i32>(1i, -1i), var_2.b), Struct_1(global3.a, global3.b), vec3<u32>(u_input.a.x, global3.b.x, var_2.b), Struct_2(vec2<i32>(global1.x, u_input.c), var_0))))), Struct_3(global1.yzw, false, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global3.a)), global3.b | vec3<u32>(u_input.a.x, 103538u, var_0)), vec3<u32>(max(var_2.b, var_0), 1u, func_4(Struct_1(global3.a, global3.b), Struct_4(var_2, Struct_1(vec3<f32>(2419f, var_1.x, -1487f), vec3<u32>(21490u, var_0, 4294967295u)), vec3<u32>(0u, 0u, 52155u), var_2)).a.b)), arg_1.zz), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1055f, var_1.x, -1040f) - _wgslsmith_f_op_vec3_f32(-global3.a)))), ~(~global3.b)), global3.b, Struct_2(vec2<i32>(0i, _wgslsmith_div_i32(reverseBits(-12948i), 0i << (u_input.a.x % 32u))), min(4294967295u, ~1u) >> (1u % 32u)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(global3.b.x, 4294967295u, u_input.a.x, func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(580f, 1000f), vec2<f32>(global3.a.x, global3.a.x), vec2<bool>(false, true))), vec3<bool>(global2[_wgslsmith_index_u32(global3.b.x, 32u)], true, global2[_wgslsmith_index_u32(1u, 32u)]))));
    let var_1 = _wgslsmith_mult_u32(~3616u, ~(~var_0.x)) << (147744u % 32u);
    var var_2 = ~func_3(firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 76678u, 1u, 0u), var_0), ~var_0, ~vec4<u32>(var_1, 46643u, var_1, var_1)))).x;
    global3 = Struct_1(vec3<f32>(388f, func_4(func_2(), Struct_4(global0[_wgslsmith_index_u32(~1u, 11u)], func_2(), ~vec3<u32>(69993u, 15702u, var_1), func_5(Struct_2(vec2<i32>(-1i, global1.x), 53453u), Struct_4(global0[_wgslsmith_index_u32(global3.b.x, 11u)], Struct_1(global3.a, var_0.wyz), vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_2(u_input.b, u_input.a.x)), Struct_3(global1.yyy, global2[_wgslsmith_index_u32(var_1, 32u)], Struct_1(global3.a, var_0.wzz), global3.b), vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true)))).b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-554f, global3.a.x))), ~(~vec3<u32>(abs(u_input.a.x), global3.b.x, u_input.a.x | var_1)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(151f, _wgslsmith_f_op_f32(floor(global3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-func_4(Struct_1(_wgslsmith_f_op_vec3_f32(global3.a * vec3<f32>(global3.a.x, 1395f, 1097f)), max(global3.b, var_0.yxy)), func_4(func_4(Struct_1(global3.a, vec3<u32>(4294967295u, 16372u, var_1)), Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], Struct_1(global3.a, vec3<u32>(var_0.x, 1771u, 41130u)), vec3<u32>(u_input.a.x, u_input.a.x, 119462u), Struct_2(u_input.b, u_input.a.x))).b, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 11u)], Struct_1(global3.a, vec3<u32>(var_1, 16739u, 1u)), var_0.wwx, Struct_2(vec2<i32>(4530i, global1.x), 0u)))).b.a.zy), vec4<u32>(_wgslsmith_add_u32(0u, ~4294967295u), u_input.a.x, var_1, 4288u));
}

