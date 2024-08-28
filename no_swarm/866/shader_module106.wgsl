struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<Struct_2, 2>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = u_input.d;
    let var_0 = arg_2;
    global3 = array<Struct_2, 2>();
    let var_1 = Struct_1(!select(select(!vec4<bool>(arg_3.a.x, arg_2.a.x, false, false), var_0.a, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.c, 7u)] >= 5982u, -14898i > arg_2.b, 0u >= arg_2.c, select(true, false, var_0.a.x)), var_0.a), 4388i, u_input.c >> (arg_3.c % 32u));
    let var_2 = max(~u_input.b.yz, ~_wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.b.zy));
    return _wgslsmith_clamp_u32(~44262u, _wgslsmith_dot_vec2_u32(~var_2 >> (var_2 % vec2<u32>(32u)), var_2), _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(0u, ~25836u)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    let var_0 = ~abs(abs(u_input.b.yx));
    global3 = array<Struct_2, 2>();
    return !(!arg_3.a.x);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = vec3<bool>(true, func_4(u_input.a.x, 2351f, vec2<i32>(select(1i, -2147483647i, true), firstLeadingBit(u_input.a.x)), Struct_1(vec4<bool>(true, true, true, true), arg_0 << (0u % 32u), func_3(u_input.d, arg_2.x, global4[_wgslsmith_index_u32(u_input.b.x, 18u)], Struct_1(vec4<bool>(true, true, false, false), 35060i, 1u)))) | ((true || (arg_0 > arg_1.x)) != (u_input.b.x < 4294967295u)), true || any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)));
    var var_1 = global2[_wgslsmith_index_u32(4981u, 25u)];
    let var_2 = u_input.b;
    let var_3 = true;
    var var_4 = ~(~u_input.b.xy >> (var_2.zx % vec2<u32>(32u)));
    return _wgslsmith_sub_vec3_u32(abs(~select(vec3<u32>(var_1.c, u_input.b.x, var_2.x), u_input.b, false)), u_input.b) | _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, 61909u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(28311u, 7u)], 64386u), vec3<u32>(var_2.x, 31060u, 28396u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 11116u, var_2.x))) & var_2, var_2);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(arg_0, Struct_1(!(!(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x))), ~min(_wgslsmith_mod_i32(1i, 26094i), u_input.a.x), abs(~arg_3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -668f))), vec3<i32>(firstTrailingBit(arg_0.b & u_input.d), ~arg_0.b, _wgslsmith_add_i32(38529i, -4874i)));
    global3 = array<Struct_2, 2>();
    var var_1 = _wgslsmith_mod_vec4_u32(min(vec4<u32>(4370u & arg_3.x, func_3(u_input.a.x, 466f, global4[_wgslsmith_index_u32(1u, 18u)], Struct_1(arg_0.a, arg_0.b, 26660u)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(51791u, 7u)], 7u)], arg_3.x >> (arg_3.x % 32u)) | ~reverseBits(vec4<u32>(arg_0.c, global0[_wgslsmith_index_u32(18790u, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], arg_0.c)), ~(~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(arg_3.x, 7u)], u_input.c, u_input.c)))), _wgslsmith_div_vec4_u32(reverseBits(abs(vec4<u32>(u_input.c, u_input.c, arg_3.x, 4294967295u))) >> (_wgslsmith_div_vec4_u32(min(vec4<u32>(var_0.a.c, 0u, 53285u, arg_0.c), vec4<u32>(4294967295u, 69039u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40465u, 7u)], 7u)], u_input.c)), vec4<u32>(24161u, u_input.b.x, 4294967295u, var_0.b.c)) % vec4<u32>(32u)), select(min(vec4<u32>(52u, arg_3.x, u_input.b.x, arg_3.x), vec4<u32>(47315u, global0[_wgslsmith_index_u32(var_0.b.c, 7u)], var_0.a.c, 1u)) << (~vec4<u32>(u_input.b.x, var_0.a.c, u_input.b.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(max(vec4<u32>(17780u, 0u, arg_3.x, 7268u), vec4<u32>(36704u, u_input.b.x, 1u, 41742u)), abs(vec4<u32>(32487u, var_0.b.c, global0[_wgslsmith_index_u32(4294967295u, 7u)], 12057u))), false)));
    global2 = array<Struct_1, 25>();
    let var_2 = _wgslsmith_mod_i32(2147483647i, -(~_wgslsmith_mult_i32(~var_0.d.x, 1i)));
    return global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(arg_3.x, 7u)], 55200u) >> (var_1.x % 32u), 18u)];
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = func_5(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], u_input.b.x)) & (firstLeadingBit(vec3<u32>(71722u, u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 7u)])) | min(u_input.b, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7043u, 0u))), firstTrailingBit(~func_2(17096i, vec3<i32>(u_input.d, u_input.a.x, 30389i), vec4<f32>(-1051f, arg_0, -1000f, -843f)))), 18u)], arg_0, vec3<bool>(true, true, true), ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), vec2<u32>(u_input.c, 25659u)), u_input.b.xx)));
    let var_1 = vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x);
    let var_2 = u_input.d;
    var var_3 = any(select(!select(!vec2<bool>(var_1.x, false), func_5(var_0, arg_0, vec3<bool>(true, true, var_1.x), vec2<u32>(1u, var_0.c)).a.zy, select(var_1.zw, var_1.ww, var_0.a.xx)), vec2<bool>(var_0.a.x, true), !var_1.wy));
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~979u), 116207u, 1u), 25u)], Struct_1(select(var_1, vec4<bool>(true, var_1.x, true, var_1.x), func_5(Struct_1(var_0.a, 1i, 46839u), _wgslsmith_f_op_f32(arg_0 * -1544f), select(vec3<bool>(var_0.a.x, var_1.x, var_0.a.x), vec3<bool>(var_1.x, true, false), var_0.a.xwy), vec2<u32>(4294967295u, 12255u)).a), u_input.a.x, countOneBits(_wgslsmith_add_u32(countOneBits(var_0.c), ~11580u))), -194f, u_input.a);
    return false;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = u_input.a.xy;
    global4 = array<Struct_1, 18>();
    let var_1 = u_input.b.yx;
    var var_2 = u_input.a.xx;
    global3 = array<Struct_2, 2>();
    return func_5(func_5(func_5(global2[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_1.c) + _wgslsmith_f_op_f32(-1000f * 967f)), arg_1.b.a.zzy, ~func_2(-18522i, u_input.a, vec4<f32>(-217f, arg_1.c, arg_1.c, arg_1.c)).yy), arg_1.c, !vec3<bool>(true, arg_2, true), ~countOneBits(abs(var_1))), _wgslsmith_f_op_f32(arg_1.c + -824f), !select(arg_1.b.a.zwx, arg_1.a.a.yzx, true), abs(vec2<u32>(~0u, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d;
    global1 = -_wgslsmith_dot_vec4_i32((~vec4<i32>(0i, -33969i, u_input.a.x, u_input.d) >> ((vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], u_input.c, 1u, 1u) >> (vec4<u32>(1u, 17266u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~(~vec4<i32>(u_input.d, u_input.a.x, -1i, -1i)), reverseBits(max(vec4<i32>(-1i, u_input.a.x, -11435i, 45276i), vec4<i32>(-1i, -11383i, 10335i, u_input.a.x))));
    var var_0 = _wgslsmith_clamp_u32(~(firstLeadingBit(6820u) >> (~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 20697u), u_input.b), 7u)] % 32u)), 0u, ~(~1u) & ~u_input.b.x);
    var var_1 = func_6(!vec2<bool>(true && select(false, false, true), func_1(_wgslsmith_f_op_f32(-373f + -753f))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_5(func_5(func_5(global4[_wgslsmith_index_u32(70740u, 18u)], -309f, vec3<bool>(true, false, false), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], 1u)), _wgslsmith_f_op_f32(-180f + 288f), func_5(Struct_1(vec4<bool>(true, false, false, true), 14370i, 33306u), 715f, vec3<bool>(false, false, true), u_input.b.zx).a.wzw, _wgslsmith_add_vec2_u32(u_input.b.yy, u_input.b.yz)), -301f, vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13140u, 7u)], 7u)] != 56413u, false, all(vec3<bool>(false, false, false))), u_input.b.xz).c, global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(~0u, 7u)]), 7u)]), 2u)], false, false);
    global2 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_5(Struct_1(var_1.a, 1i, 1695u), _wgslsmith_f_op_f32(abs(-170f)), vec3<bool>(var_1.a.x, true, var_1.a.x), u_input.b.zy).b, 1i, _wgslsmith_clamp_i32(~2147483647i, -2147483647i, 110007i), u_input.a.x) & _wgslsmith_div_vec4_i32((vec4<i32>(1i, u_input.d, var_1.b, 2147483647i) | vec4<i32>(0i, u_input.d, -1i, -78823i)) >> (~vec4<u32>(3664u, var_1.c, 4294967295u, 32426u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 10417i, u_input.a.x, 2147483647i)), vec4<i32>(var_1.b, -28910i, -19559i, u_input.a.x))), -318f, u_input.b.xx, _wgslsmith_mod_vec3_u32(vec3<u32>(max(global0[_wgslsmith_index_u32(0u, 7u)], 4294967295u), ~21947u >> ((var_1.c >> (0u % 32u)) % 32u), firstTrailingBit(1u)), u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(572f, -607f) * vec2<f32>(-134f, -991f)))))));
}

