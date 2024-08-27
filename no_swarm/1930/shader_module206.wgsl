struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: u32 = 1u;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = false;
    var var_1 = !select(!vec2<bool>(arg_0, false), select(!vec2<bool>(true, var_0), vec2<bool>(arg_0 & global0[_wgslsmith_index_u32(global2.a.x, 7u)], global0[_wgslsmith_index_u32(~35995u, 7u)]), vec2<bool>(arg_0 || false, false)), true);
    global0 = array<bool, 7>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(502f, 462f, 2042f, -1057f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1545f, 1109f, 1088f, 1237f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(321f, 667f, 963f, 845f) - vec4<f32>(1195f, 385f, 265f, -823f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, 451f, -354f, -1964f))))));
    let var_3 = Struct_1(u_input.b.yxz);
    return _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a) ^ global2.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    global1 = global2.a.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1234f, 701f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, 723f, -287f) * vec3<f32>(1740f, 1081f, -162f))))))));
    let var_1 = !(!(!vec4<bool>(u_input.c <= 6305i, global0[_wgslsmith_index_u32(min(arg_1.x, 4294967295u), 7u)], 43014u == arg_0.a.x, true)));
    var var_2 = global3[_wgslsmith_index_u32(~min(min(~(u_input.a.x << (7912u % 32u)), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(func_1(var_1.x), 61656u), ~(~16208u))), 32u)];
    var var_3 = 1i;
    return ~_wgslsmith_add_u32(firstLeadingBit(abs(0u) | ~u_input.b.x), abs(global2.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_1(global2.a);
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32((~var_0.a.x | 1u) & ~_wgslsmith_mod_u32(40815u, ~arg_0.a.x), func_3(arg_0, reverseBits(_wgslsmith_div_vec2_u32(~global2.a.zz, ~global2.a.xz)))), 32u)];
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x), 32u)];
    let var_2 = Struct_1(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, 1316u, 27229u) ^ (var_0.a >> (u_input.b.wyz % vec3<u32>(32u))), ~u_input.b.zzy, global2.a), vec3<u32>(firstLeadingBit(9464u), reverseBits(59429u >> (arg_0.a.x % 32u)), 741u)));
    let var_3 = global3[_wgslsmith_index_u32(arg_0.a.x, 32u)];
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(global2.a.x), 32u)];
    global0 = array<bool, 7>();
    global1 = global2.a.x;
    let var_1 = select(select(!select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), global0[_wgslsmith_index_u32(var_0.a.x, 7u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false)), select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(24204u, 7u)], true)), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(global2.a.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], false), true), !vec3<bool>(global0[_wgslsmith_index_u32(global2.a.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global2.a.x, 7u)]), true), true), vec3<bool>(any(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(var_0.a.x, 7u)], false)), all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(116805u, 7u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false, true, global0[_wgslsmith_index_u32(75510u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.a.x, 7u)], global0[_wgslsmith_index_u32(global2.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(var_0.a.x, 7u)]))), true)), vec3<bool>(true, true, global0[_wgslsmith_index_u32(func_1(global0[_wgslsmith_index_u32(var_0.a.x, 7u)]), 7u)]), vec3<bool>(-9523i <= func_2(Struct_1(vec3<u32>(72800u, 75981u, u_input.b.x)), -u_input.c), !any(select(vec2<bool>(global0[_wgslsmith_index_u32(16196u, 7u)], global0[_wgslsmith_index_u32(global2.a.x, 7u)]), vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(59863u, 7u)]))), true));
    var var_2 = ~u_input.b.wx;
    global1 = ~var_0.a.x;
    var var_3 = 2147483647i;
    var_2 = ~select(max(_wgslsmith_mod_vec2_u32(var_0.a.zz, firstLeadingBit(global2.a.yz)), ~u_input.a), var_0.a.yy | global2.a.yx, !select(!vec2<bool>(true, var_1.x), var_1.xy, !vec2<bool>(global0[_wgslsmith_index_u32(37626u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1518f, -359f, 1945f, 705f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(529f, -791f, 1528f, -1364f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, 1011f, 1198f, -150f) + vec4<f32>(-442f, 2090f, 250f, -112f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(348f, -1504f, 1126f, 824f) + vec4<f32>(-403f, 165f, 330f, 820f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1353f, 766f, 836f, 144f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(455f, -557f, -932f, 1462f) - vec4<f32>(-1437f, -353f, 1079f, 1661f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-104f, 501f, -516f, -933f))))))))), u_input.c, (-vec4<i32>(-8360i, 0i, -1i, -15721i) << (u_input.b % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(1u), min(48259u, var_2.x), var_0.a.x, 78366u), _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.a.x, global2.a.x, var_2.x, u_input.b.x), firstTrailingBit(vec4<u32>(39029u, var_0.a.x, 33637u, 17831u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(618f)))))), select(select(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(1665i, 20064i, 0i), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(7865u, 7u)], global0[_wgslsmith_index_u32(var_2.x, 7u)]))), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(-1i, u_input.c, -112268i)), vec3<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 7u)], var_1.x, true, global0[_wgslsmith_index_u32(4294967295u, 7u)])), var_1.x)) >> (u_input.b.yww % vec3<u32>(32u)));
}

