struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    global1 = array<Struct_1, 16>();
    let var_0 = global1[_wgslsmith_index_u32(17027u, 16u)];
    global0 = array<bool, 3>();
    var var_1 = arg_0;
    var var_2 = var_0.a.zx;
    return true;
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_1, 16>();
    let var_0 = select(~select(select(_wgslsmith_add_vec3_u32(u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.d, 0u), vec3<bool>(true, true, true)), reverseBits(~vec3<u32>(1u, 69853u, u_input.b)), global0[_wgslsmith_index_u32(4124u << ((u_input.d | u_input.b) % 32u), 3u)]), u_input.a ^ (abs(_wgslsmith_add_vec3_u32(u_input.a, u_input.a)) & _wgslsmith_mult_vec3_u32(~vec3<u32>(72781u, 4294967295u, 67151u), reverseBits(u_input.a))), select(vec3<bool>(func_3(Struct_3(Struct_2(vec3<u32>(u_input.b, u_input.b, 14920u)), false, 14471i, u_input.a.xx, Struct_2(u_input.a)), Struct_3(Struct_2(vec3<u32>(u_input.a.x, 33864u, u_input.b)), true, -17697i, vec2<u32>(0u, u_input.c), Struct_2(u_input.a))), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], false)), any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)], true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)], true), vec3<bool>(global0[_wgslsmith_index_u32(37320u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], true), true), true), true)));
    let var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(select(reverseBits(vec4<u32>(var_0.x, var_0.x, 0u, 48031u)), abs(vec4<u32>(0u, u_input.b, 62958u, u_input.a.x)), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 24757u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.x, u_input.a.x, u_input.c), vec4<u32>(u_input.d, 26711u, 4294967295u, u_input.a.x)), select(vec4<u32>(var_0.x, 14802u, u_input.b, 1u), vec4<u32>(4294967295u, u_input.d, 43748u, 56236u), true))) >> (0u % 32u);
    let var_2 = -_wgslsmith_mult_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 7275i, 1067i, 9739i), vec4<i32>(-1i, 10003i, -2147483647i, 2147483647i)), 24900i), i32(-1i) * -47524i);
    let var_3 = _wgslsmith_clamp_u32(~(~var_0.x), 1u, var_0.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(abs(39769u) << (abs(0u) % 32u), var_0.x, ~abs(var_0.x), countOneBits(~var_0.x)), vec4<u32>(1u >> (~u_input.c % 32u), _wgslsmith_mult_u32(~1u, var_0.x), select(_wgslsmith_mult_u32(4294967295u, u_input.c), _wgslsmith_mod_u32(21807u, 4294967295u), any(vec4<bool>(global0[_wgslsmith_index_u32(1039u, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)], true))), min(_wgslsmith_dot_vec3_u32(var_0, u_input.a), _wgslsmith_sub_u32(u_input.a.x, 4294967295u))));
    return Struct_3(Struct_2(vec3<u32>(~(~u_input.c), ~_wgslsmith_add_u32(u_input.c, 63123u), 15247u ^ _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(1u, 10914u)))), any(vec4<bool>(!global0[_wgslsmith_index_u32(4477u, 3u)], true, !global0[_wgslsmith_index_u32(1u, 3u)], !(0u != var_1))), var_2, ~_wgslsmith_clamp_vec2_u32(var_0.xz, ~max(vec2<u32>(38363u, var_3), var_0.zx), ~firstLeadingBit(vec2<u32>(0u, 4294967295u))), Struct_2((reverseBits(var_0) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_0.x, var_0.x), var_0)) | vec3<u32>(var_0.x, var_3, 33909u)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: i32) -> u32 {
    global1 = array<Struct_1, 16>();
    let var_0 = -abs(vec2<i32>(-14850i, 0i));
    var var_1 = select(!select(!(!vec2<bool>(arg_0.b, true)), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(arg_0.b, global0[_wgslsmith_index_u32(arg_0.d.x, 3u)]), vec2<bool>(arg_2, true)), select(select(vec2<bool>(arg_2, arg_0.b), vec2<bool>(false, true), vec2<bool>(arg_2, false)), !vec2<bool>(arg_2, arg_2), !global0[_wgslsmith_index_u32(1u, 3u)])), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 3u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.x, 3u)], true))), !(_wgslsmith_clamp_i32(max(arg_3, -2147483647i), 18956i, firstLeadingBit(0i)) >= ~2147483647i));
    var_1 = vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -498f))) >= 867f, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -20784i, -1653i), vec3<i32>(arg_0.c, var_0.x, arg_0.c)) <= arg_3);
    let var_2 = arg_0.a;
    return ~(~(~firstLeadingBit(0u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    let var_0 = func_4(func_2(), ~(~_wgslsmith_add_u32(~37866u, _wgslsmith_div_u32(64101u, arg_2.x))), false, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(arg_1), -arg_1, arg_1), countOneBits(vec3<i32>(55284i, arg_1, arg_1)))));
    var var_1 = func_2();
    let var_2 = func_2().e;
    global0 = array<bool, 3>();
    var var_3 = select(_wgslsmith_mod_i32((18596i ^ var_1.c) ^ var_1.c, ~var_1.c << (func_4(func_2(), u_input.a.x, func_2().b, -2147483647i) % 32u)), -_wgslsmith_mod_i32(var_1.c & ~arg_1, -4701i), arg_0.x);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 16>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, u_input.c), 16u)];
    global1 = array<Struct_1, 16>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 16u)];
    var var_2 = var_0.b;
    let var_3 = _wgslsmith_add_i32(countOneBits(76211i), _wgslsmith_clamp_i32(countOneBits(-_wgslsmith_mult_i32(-20119i, 1i)), -_wgslsmith_sub_i32(func_1(vec3<bool>(var_1.b.x, var_1.b.x, global0[_wgslsmith_index_u32(u_input.b, 3u)]), -52552i, vec2<u32>(u_input.c, 52089u), var_1.a.x), reverseBits(-2862i)), -(-1i & select(24116i, 9923i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))));
    let var_4 = vec4<i32>(-61237i, var_3, ~1i, ~(i32(-1i) * -var_3));
    var_2 = vec4<bool>(true, var_1.b.x, false, !all(var_0.b.yw));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

