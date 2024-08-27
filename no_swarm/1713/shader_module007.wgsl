struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(1u, 54412u);

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 16>;

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = global1.x;
    let var_2 = arg_0.a;
    let var_3 = var_0.a;
    global0 = array<u32, 2>();
    return 38320u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_mult_u32(31024u, ~u_input.a));
    let var_1 = global3.x;
    return Struct_1(-global2[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(-2147483647i, arg_0.b, arg_0.b, vec3<f32>(1041f, 871f, 1047f)), Struct_1(u_input.b.x, arg_0.c, arg_0.b, vec3<f32>(arg_0.d.x, -1367f, arg_0.d.x)), u_input.b.x), Struct_1(1i, ~arg_0.b, vec3<u32>(15038u, 6429u, global0[_wgslsmith_index_u32(6641u, 2u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1814f, arg_0.d.x, arg_0.d.x), arg_0.d, vec3<bool>(false, false, global1.x))))), 16u)], _wgslsmith_div_vec3_u32(arg_0.b, vec3<u32>(global0[_wgslsmith_index_u32(abs(select(1u, 0u, false)), 2u)], _wgslsmith_add_u32(~arg_0.b.x, _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 2u)], 1u)), u_input.a)), vec3<u32>(arg_0.c.x, 28026u, reverseBits(_wgslsmith_mod_u32(4294967295u << (u_input.a % 32u), 0u))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(1068f, _wgslsmith_f_op_f32(floor(global3.x))), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(arg_0.d.x, global3.x)), _wgslsmith_f_op_f32(ceil(375f))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_div_vec3_u32(countOneBits(arg_0.b), _wgslsmith_mult_vec3_u32(arg_0.c, arg_0.b)), func_2(func_2(arg_0)).c, arg_0.d), Struct_1(0i, func_2(Struct_1(global2[_wgslsmith_index_u32(abs(arg_0.b.x), 16u)], vec3<u32>(37199u, 1u, u_input.a), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a, arg_0.b.x), vec3<f32>(arg_0.d.x, arg_1, arg_0.d.x))).b, func_2(Struct_1(global2[_wgslsmith_index_u32(1u, 16u)], arg_0.b, arg_0.b, arg_0.d)).c ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.c.x, global0[_wgslsmith_index_u32(42978u, 2u)]), arg_0.b, arg_0.c), arg_0.d), -u_input.b.x);
    let var_1 = -select(vec4<i32>(i32(-1i) * -24453i, var_0.b.a, -abs(-2147483647i), -12429i), vec4<i32>(var_0.b.a, -12848i, _wgslsmith_dot_vec4_i32(~vec4<i32>(2541i, 50231i, -2147483647i, -53590i), abs(vec4<i32>(-1i, 0i, -29950i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 16u)]))), var_0.a.a), global2[_wgslsmith_index_u32(1u, 16u)] >= 8276i);
    var var_2 = var_0.a.a;
    let var_3 = Struct_2(var_0.b, func_2(Struct_1(0i | u_input.b.x, vec3<u32>(~18531u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, arg_0.b.x), 2u)], 1u), arg_0.c, _wgslsmith_f_op_vec3_f32(-var_0.b.d))), _wgslsmith_mult_i32(-var_1.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 7943u), reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(var_0.b.c.x, 2u)], u_input.a))) % 32u), 0i));
    let var_4 = Struct_1(-26149i, var_3.a.b, var_3.b.b & ~(~(~vec3<u32>(var_0.a.c.x, 1u, var_0.b.b.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-189f, _wgslsmith_f_op_f32(min(1620f, _wgslsmith_f_op_f32(abs(arg_1)))), -109f), vec3<f32>(_wgslsmith_f_op_f32(456f * -418f), arg_0.d.x, var_0.b.d.x), select(!vec3<bool>(global1.x, global1.x, global1.x), !select(vec3<bool>(true, true, false), vec3<bool>(global1.x, false, false), false), !vec3<bool>(global1.x, false, true)))));
    return var_3;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = ~(~vec4<i32>(max(global2[_wgslsmith_index_u32(u_input.a, 16u)], arg_0), firstLeadingBit(2147483647i), select(0i, -2147483647i, global1.x), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(48809u, 16u)], 41886i)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~10755u, ~u_input.a, 4294967295u, _wgslsmith_clamp_u32(50034u, arg_3.b.x, 0u)), ~(~vec4<u32>(11036u, arg_2.a.c.x, global0[_wgslsmith_index_u32(arg_3.c.x, 2u)], arg_2.b.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.c.x, global0[_wgslsmith_index_u32(24203u, 2u)], 4294967295u, arg_2.b.b.x), ~vec4<u32>(1u, 0u, arg_3.b.x, u_input.a))) % vec4<u32>(32u)));
    var var_1 = arg_2;
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2740f)))), var_1.a.d.x, _wgslsmith_f_op_f32(abs(394f)));
    var_0 = reverseBits(vec4<i32>(arg_0 ^ arg_2.c, global2[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(arg_3.b.x, 2u)] >> (var_1.a.c.x % 32u)) << (~var_1.a.b.x % 32u), 16u)], _wgslsmith_add_i32(_wgslsmith_add_i32(-1i << (arg_3.c.x % 32u), arg_3.a), u_input.b.x), arg_2.b.a));
    let var_2 = all(vec3<bool>(!global1.x, !(!global1.x) & global1.x, -(u_input.b.x >> (34134u % 32u)) <= ~(~arg_3.a)));
    return vec2<bool>(!(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(global1.x, var_2, var_2, global1.x), false))), !(-22501i < _wgslsmith_mult_i32(arg_0, -24100i)));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1((~(-22090i) ^ arg_2.c) & min(u_input.b.x, global2[_wgslsmith_index_u32(~0u, 16u)]), arg_2.b.b << (func_2(Struct_1(u_input.b.x, vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(44815u, 1u, 49526u), arg_2.b.d)).b % vec3<u32>(32u)), vec3<u32>(arg_2.b.c.x, 1u, 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.d))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(56085i, global2[_wgslsmith_index_u32(28830u, 16u)]), 2147483647i), vec3<u32>(16238u << (~4294967295u % 32u), u_input.a, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<u32>((0u & arg_2.a.c.x) >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(7527u, 2u)], 58420u), vec2<u32>(arg_2.b.b.x, 17172u)) ^ ~u_input.a, 6240u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1298f, _wgslsmith_div_f32(global3.x, arg_0.x), arg_2.b.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1548f, -1183f, 171f), arg_2.b.d)), select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, false, false))))), abs(~(-2147483647i)));
    global3 = arg_2.a.d;
    global1 = !vec3<bool>(!arg_1.x, arg_1.x, !any(vec2<bool>(global1.x, global1.x)));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(abs(arg_2.b.a), 5659i, u_input.b.x), _wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(reverseBits(arg_2.c), 0i)));
    let var_2 = func_2(Struct_1(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, var_0.a.a), func_4(Struct_1(-1i, var_0.b.c, arg_2.a.b, vec3<f32>(-1839f, var_0.a.d.x, -1000f)), -1573f).c), ~(arg_2.b.c >> (vec3<u32>(arg_2.a.c.x, arg_2.b.b.x, global0[_wgslsmith_index_u32(72589u, 2u)]) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.a.c.xx, arg_2.b.b.zy << (var_0.b.b.yz % vec2<u32>(32u))), ~(~var_0.a.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_2.b.d.x))));
    return vec3<f32>(func_4(func_4(func_4(Struct_1(var_2.a, vec3<u32>(49377u, 21290u, 48883u), vec3<u32>(127314u, 52842u, global0[_wgslsmith_index_u32(18818u, 2u)]), var_2.d), _wgslsmith_f_op_f32(exp2(var_0.b.d.x))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) * -1303f)).b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(476f, 984f)))))).a.d.x, -1655f, 872f);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 876f, -439f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1334f, 308f, global3.x, global3.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -264f, 664f, -723f), vec4<f32>(855f, global3.x, global3.x, global3.x), vec4<bool>(global1.x, global1.x, global1.x, false))))))), select(arg_0.yx, func_5(8353i, -1674f, func_4(func_2(Struct_1(-48126i, vec3<u32>(4294967295u, 43542u, 25296u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)], 0u, 1u), vec3<f32>(global3.x, 791f, global3.x))), _wgslsmith_f_op_f32(global3.x - 164f)), func_2(Struct_1(-2147483647i, vec3<u32>(7282u, global0[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a), vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(36153u, 2u)]), vec3<f32>(global3.x, 998f, global3.x)))), any(!(!vec4<bool>(false, true, global1.x, false)))), func_4(func_4(Struct_1(max(2147483647i, global2[_wgslsmith_index_u32(0u, 16u)]), vec3<u32>(0u, 27169u, 38532u) >> (vec3<u32>(global0[_wgslsmith_index_u32(10183u, 2u)], 16523u, 1u) % vec3<u32>(32u)), select(vec3<u32>(1u, 79872u, global0[_wgslsmith_index_u32(58200u, 2u)]), vec3<u32>(u_input.a, 106626u, 99152u), arg_0), vec3<f32>(635f, global3.x, -654f)), global3.x).a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<u32, 2>();
    let var_1 = global2[_wgslsmith_index_u32(max(max(~global0[_wgslsmith_index_u32(reverseBits(~global0[_wgslsmith_index_u32(108058u, 2u)]), 2u)], abs(1u)), 4294967295u), 16u)];
    global1 = arg_0;
    global1 = select(vec3<bool>(arg_0.x, global1.x, all(!vec4<bool>(arg_0.x, false, true, arg_0.x)) || true), !arg_0, true);
    return func_2(Struct_1(firstLeadingBit(u_input.b.x), select(func_2(Struct_1(u_input.b.x, vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64748u, 2u)], 2u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(21675u, 2u)], u_input.a), vec3<f32>(1343f, global3.x, 538f))).b, reverseBits(max(vec3<u32>(4294967295u, 56160u, global0[_wgslsmith_index_u32(1601u, 2u)]), vec3<u32>(38534u, 0u, 48430u))), select(arg_0, arg_0, vec3<bool>(true, true, arg_0.x))), ~func_2(func_4(Struct_1(u_input.b.x, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58233u, 2u)], 2u)], 4294967295u, global0[_wgslsmith_index_u32(63690u, 2u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a), vec3<f32>(global3.x, -2267f, global3.x)), 271f).a).c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(538f, global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -2471f), global3.x)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = func_1(vec3<bool>(global1.x, -global2[_wgslsmith_index_u32(var_0.b.c.x, 16u)] >= firstTrailingBit(-2147483647i), true)).a >> (arg_1.b.x % 32u);
    let var_2 = global3.zy;
    var var_3 = arg_0;
    var var_4 = func_5(func_2(func_1(vec3<bool>(true, global1.x, global1.x))).a >> (870u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) + _wgslsmith_f_op_f32(f32(-1f) * -114f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f) * arg_0.a.d.x)), arg_0, func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, global1.x), select(!vec3<bool>(global1.x, global1.x, false), !vec3<bool>(false, global1.x, global1.x), false)))).x;
    return reverseBits(var_3.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_0 = abs(vec2<i32>(u_input.b.x, func_7(Struct_2(Struct_1(global2[_wgslsmith_index_u32(28519u, 16u)], vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58979u, 2u)], 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 1u), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(28753u, 2u)]), vec3<f32>(global3.x, global3.x, global3.x)), Struct_1(-2147483647i, vec3<u32>(8315u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<u32>(1u, 1u, 31879u), vec3<f32>(-786f, 131f, global3.x)), _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.xy)), func_1(vec3<bool>(global1.x, false, true)))));
    global1 = select(select(vec3<bool>(false, select(func_5(u_input.b.x, -924f, Struct_2(Struct_1(-1i, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)]), vec3<u32>(30204u, 59996u, 107872u), vec3<f32>(global3.x, global3.x, global3.x)), Struct_1(0i, vec3<u32>(48630u, global0[_wgslsmith_index_u32(1u, 2u)], u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], u_input.a, global0[_wgslsmith_index_u32(0u, 2u)]), vec3<f32>(global3.x, global3.x, global3.x)), global2[_wgslsmith_index_u32(u_input.a, 16u)]), Struct_1(36529i, vec3<u32>(11262u, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(9900u, 2u)], u_input.a), vec3<f32>(132f, global3.x, 3212f))).x, global1.x, func_5(21682i, -202f, Struct_2(Struct_1(0i, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 38019u, u_input.a), vec3<u32>(0u, 1u, 1u), vec3<f32>(global3.x, -322f, global3.x)), Struct_1(var_0.x, vec3<u32>(41659u, global0[_wgslsmith_index_u32(49089u, 2u)], u_input.a), vec3<u32>(16632u, 15289u, 1u), vec3<f32>(1307f, 301f, -1604f)), 51350i), Struct_1(0i, vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<u32>(44430u, 46u, u_input.a), vec3<f32>(global3.x, 781f, 1399f))).x), !global1.x), vec3<bool>(false, all(!vec4<bool>(global1.x, global1.x, true, global1.x)), false), !(!select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, true), global1.x))), select(select(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, all(vec2<bool>(global1.x, global1.x)), true), select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, true), true), select(vec3<bool>(true, false, global1.x), vec3<bool>(false, true, global1.x), true), 1000f != global3.x)), !select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, true), select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, true), global1.x)), any(vec4<bool>(true, true, global1.x & true, !global1.x))), !all(select(!vec4<bool>(true, global1.x, false, global1.x), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, global1.x, false, global1.x), global1.x), global1.x)));
    var var_1 = vec3<i32>(min(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a & 851u, func_1(vec3<bool>(false, false, global1.x)).b.x), 16u)] ^ var_0.x, select(-82929i, func_4(Struct_1(var_0.x, vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<f32>(948f, global3.x, -964f)), global3.x).a.a, !global1.x) >> (countOneBits(u_input.a) % 32u)), ~(-var_0.x) ^ _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~u_input.a, 16u)], func_2(func_2(Struct_1(var_0.x, vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<f32>(global3.x, 1226f, -383f)))).a), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(func_2(func_1(vec3<bool>(global1.x, true, global1.x))).b.x, 2u)], _wgslsmith_div_u32(func_3(Struct_2(Struct_1(var_0.x, vec3<u32>(47627u, global0[_wgslsmith_index_u32(10138u, 2u)], 24133u), vec3<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(17698u, 2u)]), vec3<f32>(-820f, global3.x, global3.x)), Struct_1(u_input.b.x, vec3<u32>(121882u, 1u, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<f32>(global3.x, global3.x, -1159f)), -20899i), Struct_1(0i, vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)]), vec3<f32>(global3.x, -567f, global3.x))), ~0u)), 16u)], -u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 1i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), -1000f, global3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, global3.x, 769f) * vec3<f32>(-332f, global3.x, global3.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, 629f), vec3<f32>(global3.x, global3.x, global3.x)))))));
}

