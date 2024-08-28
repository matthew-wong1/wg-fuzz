struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 24>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(-6236i, 13210i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(0i, -8125i)), Struct_1(vec2<i32>(1i, -44931i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(-2311i, -1i)), Struct_1(vec2<i32>(865i, -51534i)), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(0i, 5985i)), Struct_1(vec2<i32>(-42813i, 61010i)), Struct_1(vec2<i32>(-41650i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, -4987i)), Struct_1(vec2<i32>(-55808i, 39146i)), Struct_1(vec2<i32>(-14839i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -62941i)), Struct_1(vec2<i32>(1i, 12433i)), Struct_1(vec2<i32>(-56387i, 66263i)), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(vec2<i32>(-3765i, -39257i)), Struct_1(vec2<i32>(19339i, -1i)), Struct_1(vec2<i32>(-21619i, -1i)), Struct_1(vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, -39568i)), Struct_1(vec2<i32>(0i, -23100i)), Struct_1(vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(-12061i, i32(-2147483648))));

var<private> global3: array<Struct_3, 3>;

var<private> global4: array<u32, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = ~select(vec2<i32>(~(arg_0.a.x & arg_0.a.x), -7334i), ~select(abs(vec2<i32>(-2147483647i, 0i)), u_input.e.wy, !vec2<bool>(global0.a.a.x, false)), all(!global0.a.a));
    var var_1 = select(u_input.e.x | max(6321i, arg_0.a.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(~_wgslsmith_div_i32(0i, var_0.x), var_0.x), min(_wgslsmith_mult_i32(2147483647i, arg_0.a.x) >> (23946u % 32u), arg_0.a.x)), any(select(select(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3291u, 9u)], 9u)], 24u)]), !vec4<bool>(global0.a.a.x, false, true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14194u, 9u)], 9u)], 24u)]), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0.a.b.x, 24u)], global0.a.a.x)), vec4<bool>(true, false, global0.a.a.x, u_input.e.x != arg_0.a.x), false)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, abs(2147483647i), 1i), _wgslsmith_mod_i32(~(-18232i), arg_0.a.x)), abs(select(1i, _wgslsmith_mult_i32(u_input.e.x, 2147483647i), true))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(i32(-1i) * -1i, arg_0.a.x), ~abs(vec2<i32>(-22789i, 61231i)), select(vec2<i32>(~(-2147483647i), arg_0.a.x >> (global4[_wgslsmith_index_u32(u_input.c, 9u)] % 32u)), ~(arg_0.a ^ u_input.e.xz), vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], false))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(max(func_3(global2[_wgslsmith_index_u32(21381u, 29u)]), ~u_input.e.x), -((-u_input.e.x | -3438i) & _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-39690i, -10747i, u_input.e.x, -21271i), u_input.e), u_input.e & u_input.e)));
    var_0 = u_input.e.x | (_wgslsmith_sub_i32(~_wgslsmith_sub_i32(24599i, u_input.e.x), _wgslsmith_mult_i32(0i >> (global0.a.b.x % 32u), _wgslsmith_div_i32(0i, u_input.e.x))) | -_wgslsmith_dot_vec2_i32(-u_input.e.yw, _wgslsmith_mult_vec2_i32(u_input.e.wy, u_input.e.yx)));
    var var_1 = 36614i & _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.e.x, 2147483647i), u_input.e.x), ~select(u_input.e.x, u_input.e.x, true)), _wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(min(u_input.e.x, u_input.e.x), u_input.e.x), i32(-1i) * -2147483647i), ~(u_input.e.x & 1i));
    global1 = array<bool, 24>();
    let var_2 = global3[_wgslsmith_index_u32(23002u, 3u)];
    return global2[_wgslsmith_index_u32(countOneBits(1u), 29u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<i32> {
    global1 = array<bool, 24>();
    let var_0 = u_input.e.x;
    global1 = array<bool, 24>();
    global4 = array<u32, 9>();
    var var_1 = global4[_wgslsmith_index_u32(global0.a.b.x, 9u)];
    return vec4<i32>(max(var_0 >> (select(global0.a.b.x, arg_3.x, arg_0.x) % 32u), ~firstLeadingBit(2147483647i)), -2147483647i, u_input.e.x, _wgslsmith_sub_i32(-2147483647i, arg_2.a.x)) & u_input.e;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    let var_0 = u_input.e.zwx;
    var var_1 = countOneBits(firstTrailingBit(func_4(!vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, global1[_wgslsmith_index_u32(arg_0.a.b.x, 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(408f))), func_2(), u_input.d)));
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(var_1.wy, min(-vec2<i32>(-32121i, var_1.x), vec2<i32>(0i, _wgslsmith_clamp_i32(-1i, var_1.x, 55209i))), ~vec2<i32>(_wgslsmith_div_i32(u_input.e.x, 17513i), 3194i)));
    let var_3 = !vec4<bool>(true, (1i ^ (var_1.x ^ 32065i)) > -1i, !(true && !global0.a.a.x), !((global0.a.b.x | arg_0.a.b.x) >= (arg_1.a.b.x | global0.a.b.x)));
    var var_4 = min(vec4<u32>(~firstLeadingBit(u_input.b), global0.a.b.x, ~select(min(34101u, 74880u), 1u, all(arg_0.a.a.yy)), reverseBits(1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.a.b.x, ~19392u, arg_0.a.b.x, _wgslsmith_mult_u32(5018u, 11060u)), select(vec4<u32>(u_input.c, global0.a.b.x, _wgslsmith_mult_u32(64933u, global0.a.b.x), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 1u, arg_1.a.b.x), 9u)]), vec4<u32>(~global0.a.b.x, u_input.d.x, u_input.b, _wgslsmith_sub_u32(arg_0.a.b.x, 0u)), true)));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(max(~var_4.x, _wgslsmith_mult_u32(83977u, u_input.c)) & u_input.a, 4294967295u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.b.x & ~arg_0.a.b.x, 9u)], 9u)], 24u)]), _wgslsmith_mod_u32(firstTrailingBit(var_4.x), ~1u)), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, abs(u_input.d.x) == ~global4[_wgslsmith_index_u32(1u, 9u)], !all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global0.a.a.x))), select(global0.a.a, !select(global0.a.a, vec3<bool>(global0.a.a.x, global0.a.a.x, true), global0.a.a.x), select(!global0.a.a, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], false, global1[_wgslsmith_index_u32(u_input.b, 24u)]), func_1(Struct_3(global0.a), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.a.b.x, 9u)], 3u)]))), select(select(vec3<bool>(global1[_wgslsmith_index_u32(global0.a.b.x, 24u)], true, false), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(52078u, 24u)], global0.a.a.x), vec3<bool>(global0.a.a.x, true, global1[_wgslsmith_index_u32(74255u, 24u)]), false), select(global0.a.a, global0.a.a, false)), global0.a.a, true));
    var_0 = select(select(!select(!global0.a.a, vec3<bool>(true, true, true), vec3<bool>(true, global0.a.a.x, global1[_wgslsmith_index_u32(15287u, 24u)])), global0.a.a, firstLeadingBit(~0u) <= ~u_input.b), vec3<bool>(select(true, false, true), false, !global0.a.a.x), !global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(45134u, 22644u)), 24u)]);
    let var_1 = abs(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(48492u, 4294967295u, global4[_wgslsmith_index_u32(5433u, 9u)])), abs(abs(_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(26418u, 4294967295u, 1u)))), u_input.d));
    global0 = global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 9u)], 3u)];
    var var_2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~global0.a.b, global0.a.b) >> (4294967295u % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(72539u, 31192u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 1u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(18202u, 9u)], 26335u, 20851u, 1465u), abs(vec4<u32>(u_input.d.x, u_input.a, global4[_wgslsmith_index_u32(321u, 9u)], var_1.x)) << (min(vec4<u32>(16978u, 0u, global4[_wgslsmith_index_u32(var_1.x, 9u)], var_1.x), vec4<u32>(u_input.b, var_1.x, global4[_wgslsmith_index_u32(var_1.x, 9u)], 4294967295u)) % vec4<u32>(32u))) >> (1u % 32u), ~(global0.a.b.x ^ abs(0u)), ~_wgslsmith_add_u32(~(4294967295u ^ var_1.x), ~global0.a.b.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(696f, 227f, global1[_wgslsmith_index_u32(1u, 24u)]))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -421f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -1708f);
    var var_4 = global0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(-330f);
}

