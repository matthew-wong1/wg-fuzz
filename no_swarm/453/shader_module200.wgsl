struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: f32;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> bool {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.d.a.x, _wgslsmith_f_op_f32(-arg_0.d.a.x))));
    let var_0 = _wgslsmith_f_op_f32(select(arg_0.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a.x)), true));
    let var_1 = arg_0;
    let var_2 = u_input.d;
    var var_3 = var_1.b;
    return arg_1 || arg_0.d.b.x;
}

fn func_2() -> vec2<i32> {
    var var_0 = select(vec3<bool>(true && all(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)])), global0[_wgslsmith_index_u32(u_input.d, 24u)], !all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12433u, u_input.d, 0u, u_input.d), vec4<u32>(0u, u_input.d, 0u, u_input.d)), 28u)])), vec3<bool>(global0[_wgslsmith_index_u32(65661u, 24u)], all(vec2<bool>(global0[_wgslsmith_index_u32(min(u_input.d, u_input.d), 24u)], func_3(Struct_2(vec4<u32>(84287u, u_input.d, u_input.d, 1177u), 50598i, vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(33054u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), Struct_1(vec4<f32>(1598f, -581f, 923f, 2445f), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 24u)]))), true, 0i, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(25163u, 24u)], true)))), all(global2[_wgslsmith_index_u32(~24495u, 28u)])), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d ^ 1u, 24u)], true), vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(43770u, 24u)], false)), all(vec3<bool>(false, global0[_wgslsmith_index_u32(10751u, 24u)], true)) & global0[_wgslsmith_index_u32(abs(u_input.d), 24u)], any(select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]), true))), vec3<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)])), select(global0[_wgslsmith_index_u32(53687u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], false) | true, all(!vec2<bool>(global0[_wgslsmith_index_u32(3943u, 24u)], true)))));
    let var_1 = !select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], var_0.x, global0[_wgslsmith_index_u32(1u << (u_input.d % 32u), 24u)], true), select(!vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(false, false, true, true), vec4<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.d, 24u)], true)), var_0.x), select(vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x, true, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(~97850u, 24u)], var_0.x || false, !global0[_wgslsmith_index_u32(u_input.d, 24u)], true), !select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true, global0[_wgslsmith_index_u32(48133u, 24u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 24u)], var_0.x, false))), !var_0.x);
    global0 = array<bool, 24>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1146f, -1000f, -650f, 619f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 280f, 1304f, 1086f))))))), global2[_wgslsmith_index_u32(u_input.d >> (_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 10438u), vec2<u32>(u_input.d, 4294967295u)), ~vec2<u32>(u_input.d, 8091u))) % 32u), 28u)]);
    var var_3 = -(u_input.b ^ -2147483647i);
    return _wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.a >> (u_input.d % 32u), -2147483647i), ~vec2<i32>(37148i, u_input.a) >> (vec2<u32>(5412u, 48656u) % vec2<u32>(32u))), abs(vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, -1i) ^ -68106i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_1 {
    global2 = array<vec2<bool>, 28>();
    global2 = array<vec2<bool>, 28>();
    var var_0 = select(vec4<u32>(u_input.d, 90881u, ~(~72058u), (u_input.d & ~u_input.d) << (u_input.d % 32u)), ~((firstTrailingBit(vec4<u32>(u_input.d, 4294967295u, u_input.d, 623u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 3872u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 11942u, 4294967295u, u_input.d), ~vec4<u32>(0u, u_input.d, u_input.d, 4294967295u)) % vec4<u32>(32u))), all(select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(32038u, 24u)]), global0[_wgslsmith_index_u32(32817u, 24u)]), select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], false, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(1524u, 24u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], true, global0[_wgslsmith_index_u32(0u, 24u)]), false)), true)));
    let var_1 = arg_2;
    let var_2 = Struct_2(~(~reverseBits(vec4<u32>(1u, 0u, u_input.d, var_0.x))), arg_1.x, select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(26622u, 24u)], true), true), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(12911u, 24u)], true, true, global0[_wgslsmith_index_u32(1u, 24u)]), arg_2.x >= var_1.x), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], false, global0[_wgslsmith_index_u32(74748u, 24u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(22982u, 24u)], true), vec4<bool>(global0[_wgslsmith_index_u32(6812u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(122420u, 24u)], global0[_wgslsmith_index_u32(99665u, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(20474u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(7158u, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)])), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(27328u, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(20737u, 24u)], global0[_wgslsmith_index_u32(88995u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(39214u, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], true)))), !vec4<bool>(!global0[_wgslsmith_index_u32(var_0.x, 24u)], true, func_3(Struct_2(vec4<u32>(u_input.d, 0u, u_input.d, 4294967295u), u_input.b, vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(14553u, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)]), Struct_1(vec4<f32>(var_1.x, 297f, var_1.x, arg_2.x), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(6473u, 24u)]))), false, -2147483647i, vec4<bool>(true, global0[_wgslsmith_index_u32(11170u, 24u)], false, true)), u_input.d < 4294967295u), vec4<bool>(all(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(38612u, 24u)])), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 46069u, 15054u), 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], func_3(Struct_2(vec4<u32>(1u, 24530u, 1u, var_0.x), arg_0.x, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], true), Struct_1(vec4<f32>(955f, 1000f, 849f, 1000f), vec2<bool>(global0[_wgslsmith_index_u32(9429u, 24u)], false))), global0[_wgslsmith_index_u32(4294967295u, 24u)], -13652i, select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], true, global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 24u)], false, global0[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(10649u, 24u)]))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1908f, _wgslsmith_f_op_f32(f32(-1f) * -1450f), _wgslsmith_f_op_f32(-var_1.x))), vec2<bool>(true || global0[_wgslsmith_index_u32(u_input.d >> (var_0.x % 32u), 24u)], true)));
    return var_2.d;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    global0 = array<bool, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-767f, -556f, -255f) * vec3<f32>(1790f, 233f, 1536f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, -876f, 272f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1660f, -652f, 1000f))), any(global2[_wgslsmith_index_u32(30149u, 28u)]))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = func_4(~max(vec2<i32>(2147483647i, u_input.b), -vec2<i32>(-8972i, 1i)) & vec2<i32>(~_wgslsmith_mult_i32(-37489i, u_input.a), firstLeadingBit(~(-1i))), select(-arg_1.yx, _wgslsmith_clamp_vec2_i32(arg_1.zz, -vec2<i32>(0i, u_input.b) ^ func_2(), -countOneBits(arg_1.yz)), select(select(!vec2<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec2<bool>(arg_0, global0[_wgslsmith_index_u32(1u, 24u)]), false), select(vec2<bool>(true, false), vec2<bool>(arg_0, global0[_wgslsmith_index_u32(19632u, 24u)]), vec2<bool>(true, true)), !arg_0)), vec2<f32>(var_0.x, -523f));
    var_0 = var_2.a.ywy;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~(-2147483647i), u_input.c >> (30900u % 32u)), -(-25590i ^ u_input.a), -2147483647i, 1i), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, -2147483647i, -1i, u_input.a)), vec4<i32>(u_input.a, 1i, u_input.b, u_input.c) | vec4<i32>(-1832i, u_input.a, 485i, u_input.a)) & vec4<i32>(-2147483647i >> (u_input.d % 32u), _wgslsmith_sub_i32(u_input.c, u_input.b), i32(-1i) * -2180i, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(627f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1243f)))))), -func_1(select(true, u_input.d != u_input.d, true), -vec3<i32>(u_input.c, var_0.x, u_input.a)), u_input.d & u_input.d, ~(~(reverseBits(vec3<u32>(1912u, 6255u, u_input.d)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 88159u, u_input.d), vec3<u32>(4294967295u, u_input.d, 1u)))));
}

