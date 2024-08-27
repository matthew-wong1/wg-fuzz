struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<u32, 15> = array<u32, 15>(1u, 0u, 4294967295u, 4294967295u, 1u, 56679u, 5887u, 4294967295u, 7478u, 49917u, 1322u, 69789u, 1u, 0u, 0u);

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_3 {
    var var_0 = vec3<bool>(!((arg_1.x & ~arg_1.x) == _wgslsmith_div_u32(4294967295u, reverseBits(10358u))), false, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-181f, 1026f, -797f, 1280f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_2, arg_0.x, arg_2))), vec4<f32>(-1226f, -252f, _wgslsmith_f_op_f32(arg_0.x - 764f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 1443f))))));
    let var_2 = vec4<bool>(false, any(select(vec4<bool>(!var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), false, var_0.x), vec4<bool>(false, select(var_0.x, false, var_0.x), true, true), true | (var_0.x | true))), true && (_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-var_1.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -1101f)), var_0.x);
    global0 = array<Struct_2, 22>();
    let var_3 = u_input.a.yx;
    return Struct_3(var_2.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    let var_0 = Struct_1(~(-(-vec4<i32>(-27545i, u_input.c, u_input.c, u_input.c) >> (~vec4<u32>(arg_3, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3, 15u)], 15u)], 23957u, 0u) % vec4<u32>(32u)))));
    let var_1 = arg_1;
    global1 = array<Struct_3, 5>();
    var var_2 = global0[_wgslsmith_index_u32(0u, 22u)];
    global0 = array<Struct_2, 22>();
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: i32) -> vec4<bool> {
    let var_0 = arg_1;
    global1 = array<Struct_3, 5>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1439f, arg_0.b)));
    var var_2 = vec3<u32>(~_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(23822u, 15u)], u_input.b.x), var_0, var_0)), vec4<u32>(firstLeadingBit(var_0.x), 1u, 4294967295u, ~var_0.x)), 94060u, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(32579u, 58322u)), max(vec2<u32>(global2[_wgslsmith_index_u32(arg_1.x, 15u)], var_0.x), vec2<u32>(0u, 4294967295u))), ~_wgslsmith_clamp_vec2_u32(u_input.b.yx, arg_1.zy, u_input.a.yx))));
    global2 = array<u32, 15>();
    return select(!vec4<bool>(arg_2.a, false, false, arg_2.a || arg_2.a), select(vec4<bool>(arg_0.b > -836f, false, any(select(vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_2.a, true, true, arg_2.a), arg_2.a)), false), vec4<bool>(arg_2.a, !(!arg_2.a), arg_0.b >= _wgslsmith_f_op_f32(floor(arg_0.b)), arg_2.a), true), ~_wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 15u)]) >= ~67877u);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> vec4<bool> {
    global3 = array<Struct_2, 12>();
    global0 = array<Struct_2, 22>();
    global1 = array<Struct_3, 5>();
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_1 = Struct_1(var_0.c.a);
    return select(func_4(Struct_2(var_1.a.x, -1000f, var_1, var_1), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(19180u, 35225u, u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<u32>(global2[_wgslsmith_index_u32(5309u, 15u)], u_input.a.x, u_input.b.x, 1u))), global1[_wgslsmith_index_u32(func_3(vec2<bool>(true, false), Struct_3(arg_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1471f, 1784f, var_0.b) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, -319f, 374f)))), u_input.b.x), 5u)], -23326i), func_4(global0[_wgslsmith_index_u32((15332u & firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)])) << ((u_input.a.x << (~113305u % 32u)) % 32u), 22u)], _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)], 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], 15u)], 4294967295u)), max(~vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47429u, 15u)], 15u)], 87268u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], 4294967295u, 7337u, u_input.a.x), vec4<u32>(u_input.b.x, 29615u, 42617u, 1u))), vec4<u32>(u_input.a.x, ~1u, 1u, ~1u)), func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-215f, arg_2.x)))), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u) << (countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 0u, 66668u)) % vec4<u32>(32u)), -1000f), select(u_input.c, -min(var_1.a.x, var_1.a.x), false)), vec4<bool>((~1u << (~u_input.b.x % 32u)) <= ~u_input.b.x, arg_0.a, _wgslsmith_mod_u32(_wgslsmith_mod_u32(57544u, u_input.b.x), u_input.b.x) >= 2325u, all(select(vec3<bool>(true, arg_0.a, true), !vec3<bool>(arg_0.a, arg_0.a, true), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_2(func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(695f, 1952f))), ~vec4<u32>(u_input.a.x, 49355u, 56380u, u_input.a.x), _wgslsmith_f_op_f32(-1000f + -2024f)), _wgslsmith_mult_i32(u_input.c, max(3523i, -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-741f, 170f), vec2<f32>(239f, 1000f)))));
    let var_1 = i32(-1i) * -1i;
    global2 = array<u32, 15>();
    global2 = array<u32, 15>();
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(849f, -285f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1942f, -880f) + vec2<f32>(204f, 598f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-550f, -982f)))), false))));
    global0 = array<Struct_2, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(min(select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68652u, 15u)], 15u)], u_input.b.x, global2[_wgslsmith_index_u32(1u, 15u)], 0u), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(75213u, 15u)], u_input.b.x, u_input.a.x, 22448u), vec4<u32>(23212u, 44608u, global2[_wgslsmith_index_u32(4294967295u, 15u)], u_input.b.x))), reverseBits(~vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(18574u, 15u)], 1u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-628f + 833f)), _wgslsmith_f_op_f32(-304f + -225f)), var_2, !var_0.yz)));
}

