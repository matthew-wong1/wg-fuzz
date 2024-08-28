struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, false, false, false, true, true, true, true, false, true, false, false, false, false, true);

var<private> global1: array<u32, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_4(~11894u, Struct_3(arg_0, true, Struct_1(abs(abs(1i))), -1000f, countOneBits(select(vec3<u32>(arg_1.x, 4402u, 4294967295u), firstLeadingBit(arg_1), !arg_0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -687f, -298f, -903f) * vec4<f32>(-438f, 1343f, -1193f, 1726f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1719f, 647f, 175f, 353f) + vec4<f32>(-417f, -409f, -1193f, 422f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(449f, -1000f, -612f, 227f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, -637f, 518f, -1000f)), select(vec4<bool>(false, arg_0.b.x, false, global0[_wgslsmith_index_u32(96712u, 16u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12788u, 20u)], 20u)], 20u)], 20u)], 16u)], global0[_wgslsmith_index_u32(arg_1.x, 16u)], true), vec4<bool>(false, arg_0.b.x, global0[_wgslsmith_index_u32(0u, 16u)], arg_0.b.x)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d - var_0.b.d) * -325f), 304f))));
    global0 = array<bool, 16>();
    var var_2 = true | !global0[_wgslsmith_index_u32(arg_1.x, 16u)];
    let var_3 = reverseBits(0u);
    return -arg_0.a;
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, global1[_wgslsmith_index_u32(105357u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 32713u), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(17058u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 20u)]), vec4<u32>(40768u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11835u, 20u)], 20u)], 33899u))));
    var var_1 = Struct_3(Struct_2(-func_3(Struct_2(vec2<i32>(0i, -17428i), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)]), Struct_1(u_input.a.x)), min(var_0.yyy, var_0.xzy)), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(41498u, 16u)]), global0[_wgslsmith_index_u32(33015u, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(46936u, 16u)], all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5221u, 20u)], 16u)], true, false, global0[_wgslsmith_index_u32(var_0.x, 16u)])), !global0[_wgslsmith_index_u32(var_0.x, 16u)]), any(select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 16u)], false), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31877u, 20u)], 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)]), false))), Struct_1(select(-33702i, u_input.a.x, true) ^ (i32(-1i) * -1i))), !select(any(!vec4<bool>(false, global0[_wgslsmith_index_u32(22832u, 16u)], false, false)), true, false), Struct_1(((0i << (0u % 32u)) >> (_wgslsmith_mult_u32(var_0.x, 0u) % 32u)) ^ -2147483647i), -980f, ~(~(~(~var_0.xzy))));
    var var_2 = select(!(!vec4<bool>(true, true, !var_1.a.b.x, false)), vec4<bool>(false, !any(select(var_1.a.b, vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 16u)], var_1.a.b.x), true)), ~(~var_1.e.x) > global1[_wgslsmith_index_u32(abs(var_1.e.x), 20u)], _wgslsmith_add_u32(var_0.x, reverseBits(global1[_wgslsmith_index_u32(4294967295u, 20u)])) <= _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(3123u, 20u)], countOneBits(17350u))), !vec4<bool>(all(var_1.a.b), var_1.a.b.x, false, any(!vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(63132u, 16u)]))));
    let var_3 = ~u_input.a;
    var_2 = vec4<bool>(var_1.b, global0[_wgslsmith_index_u32(var_1.e.x, 16u)], all(vec4<bool>(any(var_1.a.b), false, all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true)), any(vec4<bool>(var_1.a.b.x, var_1.b, var_1.a.b.x, global0[_wgslsmith_index_u32(70372u, 16u)])))) != false, true);
    return Struct_2(var_1.a.a << (~var_1.e.xy % vec2<u32>(32u)), vec3<bool>(true, !any(vec4<bool>(var_2.x, false, global0[_wgslsmith_index_u32(var_0.x, 16u)], var_2.x)), true), Struct_1(24261i));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_5 {
    let var_0 = ~((135i | func_3(arg_0, max(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(arg_1.x, 0u, global1[_wgslsmith_index_u32(45828u, 20u)]))).x) & (_wgslsmith_clamp_i32(~u_input.a.x, ~arg_0.c.a, func_2().a.x) & _wgslsmith_add_i32(func_2().a.x, arg_0.c.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1119f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-628f + 1227f), _wgslsmith_f_op_f32(round(-119f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1276f + 923f), _wgslsmith_f_op_f32(select(902f, 118f, global0[_wgslsmith_index_u32(arg_1.x, 16u)])))))), -475f, -341f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(f32(-1f) * -201f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) - 1f), 886f, -341f) * vec4<f32>(1016f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1171f + -1192f)), _wgslsmith_f_op_f32(round(847f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -976f))))));
    var var_2 = select(vec4<bool>(any(select(arg_0.b.yz, vec2<bool>(false, false), arg_0.b.x)) != all(arg_0.b.yy), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) < var_1.x, arg_0.b.x), !vec4<bool>(!global0[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(arg_1.x, 20u)], global1[_wgslsmith_index_u32(29427u, 20u)], global0[_wgslsmith_index_u32(arg_1.x, 16u)]), 16u)], !(global1[_wgslsmith_index_u32(arg_1.x, 20u)] >= 18069u), true, false), true);
    let var_3 = var_2.x;
    var var_4 = func_2().c;
    return Struct_5(Struct_2(firstLeadingBit(vec2<i32>(~2147483647i, abs(var_0))), vec3<bool>(true, true & global0[_wgslsmith_index_u32(4294967295u, 16u)], true), func_2().c), Struct_4(~_wgslsmith_div_u32(firstLeadingBit(21144u), ~0u), Struct_3(arg_0, false, arg_0.c, _wgslsmith_f_op_f32(-780f * 1157f), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(arg_1.x, 20u)])), _wgslsmith_f_op_vec4_f32(-var_1)), Struct_3(arg_0, var_2.x, arg_0.c, _wgslsmith_f_op_f32(-var_1.x), max(abs(select(vec3<u32>(15877u, arg_1.x, arg_1.x), vec3<u32>(arg_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14050u, 20u)], 20u)], 20u)], arg_1.x), true)), vec3<u32>(1u, arg_1.x, ~arg_1.x))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_5) -> Struct_2 {
    var var_0 = arg_1.x;
    global0 = array<bool, 16>();
    var var_1 = reverseBits(~_wgslsmith_mult_u32(abs(~arg_2.c.e.x), _wgslsmith_sub_u32(~4294967295u, firstTrailingBit(10077u))));
    global1 = array<u32, 20>();
    let var_2 = arg_1;
    return arg_2.b.b.a;
}

fn func_6(arg_0: Struct_5) -> Struct_1 {
    var var_0 = vec3<i32>(-1i) * -(~vec3<i32>(arg_0.b.b.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.a, -1i, -8147i, 2147483647i), vec4<i32>(u_input.a.x, arg_0.b.b.a.c.a, 16316i, u_input.a.x)), _wgslsmith_clamp_i32(-2623i, u_input.a.x, u_input.a.x)));
    let var_1 = func_4(func_4(func_5(vec3<bool>(!global0[_wgslsmith_index_u32(arg_0.c.e.x, 16u)], var_0.x >= var_0.x, true), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.b.b.e.x, 20u)], global1[_wgslsmith_index_u32(arg_0.c.e.x, 20u)], 801u, 0u), vec4<u32>(0u, 82334u, arg_0.b.a, arg_0.b.b.e.x)), 12714u, global1[_wgslsmith_index_u32(34936u, 20u)], 64225u), Struct_5(arg_0.c.a, func_4(arg_0.a, arg_0.b.b.e.yx).b, arg_0.b.b)), ~(~vec2<u32>(global1[_wgslsmith_index_u32(arg_0.c.e.x, 20u)], 1u)) | min(vec2<u32>(global1[_wgslsmith_index_u32(arg_0.b.b.e.x, 20u)], arg_0.c.e.x), arg_0.b.b.e.zx)).a, arg_0.b.b.e.xz).b.b.a;
    var var_2 = Struct_3(Struct_2(vec2<i32>(~(-1i), -var_0.x), func_4(func_4(var_1, vec2<u32>(arg_0.c.e.x, 0u)).a, ~(~vec2<u32>(13702u, global1[_wgslsmith_index_u32(arg_0.b.b.e.x, 20u)]))).c.a.b, func_5(!func_2().b, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82486u, 20u)] & 1u, 20u)], _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(1u, 20u)]), min(arg_0.b.b.e.x, 1u), 4294967295u), arg_0).c), func_4(func_5(!vec3<bool>(var_1.b.x, arg_0.a.b.x, false), vec4<u32>(arg_0.b.a, global1[_wgslsmith_index_u32(arg_0.b.b.e.x, 20u)], 6654u, 44838u) << (~vec4<u32>(arg_0.b.b.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.c.e.x, 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(38345u, 20u)], arg_0.c.e.x) % vec4<u32>(32u)), func_4(arg_0.c.a, _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.c.e.x, arg_0.c.e.x), vec2<u32>(global1[_wgslsmith_index_u32(arg_0.b.a, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)])))), arg_0.c.e.yx >> (vec2<u32>(firstLeadingBit(arg_0.b.b.e.x), ~arg_0.b.b.e.x) % vec2<u32>(32u))).a.b.x, var_1.c, _wgslsmith_f_op_f32(step(func_4(arg_0.b.b.a, arg_0.c.e.xx).b.c.x, _wgslsmith_f_op_f32(min(arg_0.b.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - -315f)))))), reverseBits(~vec3<u32>(1u, arg_0.c.e.x, func_4(arg_0.b.b.a, arg_0.c.e.zz).b.a)));
    var var_3 = false;
    var_2 = arg_0.c;
    return var_2.a.c;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<u32, 20>();
    return func_6(Struct_5(func_5(select(!vec3<bool>(true, false, arg_0), !vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 16u)], false), true), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47578u, 20u)], 20u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]) >> (~vec4<u32>(0u, 3373u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7057u, 20u)], 20u)], 20u)], 20u)], 1u) % vec4<u32>(32u)), func_4(func_2(), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13631u, 20u)], 20u)]))), Struct_4(10292u, Struct_3(func_5(vec3<bool>(true, arg_0, false), vec4<u32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33153u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)]), Struct_5(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, false, arg_0), Struct_1(u_input.a.x)), Struct_4(global1[_wgslsmith_index_u32(1777u, 20u)], Struct_3(Struct_2(vec2<i32>(0i, u_input.a.x), vec3<bool>(global0[_wgslsmith_index_u32(8832u, 16u)], arg_0, arg_0), Struct_1(u_input.a.x)), false, Struct_1(-1i), -1324f, vec3<u32>(4294967295u, 1u, 0u)), vec4<f32>(-1748f, 1000f, -470f, -1525f)), Struct_3(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(false, arg_0, true), Struct_1(-1i)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 16u)], Struct_1(0i), 1597f, vec3<u32>(4294967295u, 4294967295u, 81105u)))), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 20u)], 16u)], func_4(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7617u, 20u)], 20u)], 20u)], 20u)], 16u)], arg_0, true), Struct_1(u_input.a.x)), vec2<u32>(global1[_wgslsmith_index_u32(38506u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)])).a.c, _wgslsmith_f_op_f32(abs(-2031f)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 1929u, 4294967295u)), func_4(func_4(Struct_2(u_input.a, vec3<bool>(true, false, true), Struct_1(u_input.a.x)), vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69606u, 20u)], 20u)], 20u)], 20u)])).a, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)])).b.c), func_4(func_4(func_4(Struct_2(vec2<i32>(0i, -1i), vec3<bool>(global0[_wgslsmith_index_u32(52559u, 16u)], true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52708u, 20u)], 16u)]), Struct_1(-29248i)), vec2<u32>(1u, 4294967295u)).c.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(79156u, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<u32>(global1[_wgslsmith_index_u32(3815u, 20u)], global1[_wgslsmith_index_u32(57642u, 20u)]), vec2<u32>(38578u, 4294967295u))).a, ~max(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)]), vec2<u32>(0u, 4294967295u))).c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~abs(vec4<u32>(10879u, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(43422u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(92858u, 20u)], 20u)]))) | ~vec4<u32>(0u, ~global1[_wgslsmith_index_u32(0u, 20u)], ~58255u, 18906u));
    let var_1 = Struct_5(Struct_2(u_input.a, select(vec3<bool>(true, false, true), select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(false, true, true), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(62690u, 16u)]), vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 16u)], true, false))), ~34682u != ~global1[_wgslsmith_index_u32(4294967295u, 20u)]), func_1(global0[_wgslsmith_index_u32(~19142u, 16u)])), Struct_4(37202u, Struct_3(Struct_2(~vec2<i32>(u_input.a.x, -2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 16u)], global0[_wgslsmith_index_u32(69757u, 16u)], false), Struct_1(-1i)), ~u_input.a.x > -1i, Struct_1(i32(-1i) * -1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, 411f)), _wgslsmith_f_op_f32(abs(969f)), true)), vec3<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_0.x, 20u)], 20u)], 66944u, ~var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-924f, -1183f, 976f, -629f))) + vec4<f32>(-502f, -1000f, 480f, 652f)))), Struct_3(Struct_2(vec2<i32>(firstLeadingBit(22068i), i32(-1i) * -1i), vec3<bool>(true, true, true), Struct_1(1i)), func_4(Struct_2(vec2<i32>(u_input.a.x, 38411i), vec3<bool>(global0[_wgslsmith_index_u32(8289u, 16u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 16u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 16u)]), func_5(vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false, true), vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(var_0.x, 20u)], var_0.x), Struct_5(Struct_2(vec2<i32>(-2147483647i, u_input.a.x), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)]), Struct_1(15924i)), Struct_4(20087u, Struct_3(Struct_2(u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true, global0[_wgslsmith_index_u32(65855u, 16u)]), Struct_1(u_input.a.x)), false, Struct_1(-20847i), -654f, vec3<u32>(global1[_wgslsmith_index_u32(74041u, 20u)], 64722u, global1[_wgslsmith_index_u32(41293u, 20u)])), vec4<f32>(1227f, -455f, -315f, -576f)), Struct_3(Struct_2(vec2<i32>(3986i, -14890i), vec3<bool>(false, true, false), Struct_1(u_input.a.x)), global0[_wgslsmith_index_u32(4294967295u, 16u)], Struct_1(1i), -642f, vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(97500u, 20u)], 20u)])))).c), ~var_0.yx).b.b.b, func_1(all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -583f))), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(global1[_wgslsmith_index_u32(var_0.x, 20u)]), 1u >> (var_0.x % 32u), global1[_wgslsmith_index_u32(abs(4294967295u), 20u)]), 20u)], 20u)], var_0.x, abs(func_4(Struct_2(vec2<i32>(-1i, u_input.a.x), vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 16u)], global0[_wgslsmith_index_u32(var_0.x, 16u)]), Struct_1(-17664i)), var_0.xw).b.b.e.x))));
    global0 = array<bool, 16>();
    let var_2 = Struct_1(-u_input.a.x);
    let var_3 = firstLeadingBit(-vec4<i32>(reverseBits(~u_input.a.x), _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-7077i, -38385i)), firstLeadingBit(1i), _wgslsmith_mult_i32(abs(u_input.a.x), 0i)));
    let var_4 = var_3.xyy;
    var_0 = ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, 38069u) | max(vec4<u32>(1636u, global1[_wgslsmith_index_u32(var_0.x, 20u)], global1[_wgslsmith_index_u32(2119u, 20u)], global1[_wgslsmith_index_u32(5207u, 20u)]), vec4<u32>(global1[_wgslsmith_index_u32(53418u, 20u)], var_1.b.a, 55968u, 0u)), vec4<u32>(26377u, ~var_0.x, 37901u ^ var_0.x, reverseBits(var_1.c.e.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.e.x, var_0.x), ~var_1.b.b.e.zx), var_1.c.e.x, var_0.x, var_1.b.a), 24972i < _wgslsmith_clamp_i32(46023i, _wgslsmith_mult_i32(-18786i, var_2.a), var_1.b.b.c.a));
    let var_5 = (_wgslsmith_sub_vec2_u32(countOneBits(var_1.b.b.e.xx), vec2<u32>(11619u, ~42819u)) & vec2<u32>(5782u, _wgslsmith_dot_vec3_u32(~var_1.c.e, vec3<u32>(global1[_wgslsmith_index_u32(1u, 20u)], var_1.b.b.e.x, var_1.c.e.x)))) >> (var_1.c.e.yx % vec2<u32>(32u));
    var_0 = vec4<u32>(52759u, abs((19530u ^ var_1.c.e.x) & ~1u), ~(~global1[_wgslsmith_index_u32(~4294967295u, 20u)]), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_add_u32(53616u, var_1.c.e.x)), ~reverseBits(var_5.x), var_1.c.e.x)) | vec4<u32>(select(var_1.c.e.x, min(22418u, 0u) >> (_wgslsmith_clamp_u32(66200u, var_0.x, 78052u) % 32u), !global0[_wgslsmith_index_u32(0u, 16u)] | !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24263u, 20u)], 20u)], 16u)]), var_5.x, ~_wgslsmith_sub_u32(var_0.x ^ var_1.c.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.e.x, 20u)], 20u)], 20u)] & var_0.x), var_1.b.b.e.x & ~16107u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~vec3<u32>(0u, _wgslsmith_clamp_u32(30841u, var_5.x, 19585u), _wgslsmith_dot_vec2_u32(var_0.xw, var_0.xz)) >> (var_1.c.e % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(329f)) * -294f) + 274f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1858f, var_1.c.d, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, -224f, var_1.c.d)))), select(select(vec3<bool>(var_1.c.a.b.x, global0[_wgslsmith_index_u32(2628u, 16u)], var_1.c.b), func_2().b, vec3<bool>(var_1.a.b.x, false, true)), select(var_1.a.b, var_1.b.b.a.b, true), func_4(var_1.b.b.a, select(var_0.xz, var_0.zx, var_1.c.a.b.xy)).c.a.b.x))));
}

