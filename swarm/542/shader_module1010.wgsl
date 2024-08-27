struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, true, true, false, true, true, true, true, false, false, false, true, false, true, true, true, false, false, true, false, false, false, true, false, false, true, false, true);

var<private> global1: array<vec3<i32>, 25>;

var<private> global2: array<bool, 24> = array<bool, 24>(false, false, false, true, true, false, false, false, false, false, true, false, true, false, true, false, false, false, true, true, false, false, true, false);

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_4(firstTrailingBit(~global1[_wgslsmith_index_u32(u_input.c, 25u)] << (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c), vec3<u32>(u_input.c, 4760u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_mult_i32(u_input.b, -32262i) > 1i);
    var_0 = Struct_4(select(global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(min(~(1u & u_input.a), ~(~4294967295u)), 25u)], false), var_0.b);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.a), 22u)];
    var_0 = Struct_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(1i, u_input.d.x), -_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(0u, 25u)], vec3<i32>(-1i, -18938i, 2147483647i))), _wgslsmith_add_vec3_i32(firstLeadingBit(var_0.a), _wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(1120i, 1i, -53952i))) >> (~vec3<u32>(var_1.b.x, 0u, 4294967295u) % vec3<u32>(32u)), var_0.a << (~(vec3<u32>(var_1.b.x, 7790u, 0u) ^ vec3<u32>(64009u, 42914u, 0u)) % vec3<u32>(32u))), false);
    var_0 = Struct_4(var_0.a, global0[_wgslsmith_index_u32(~(~4294967295u), 28u)]);
    return select(vec2<bool>(!global2[_wgslsmith_index_u32(u_input.c, 24u)], true), vec2<bool>(!(!all(vec2<bool>(true, global0[_wgslsmith_index_u32(5865u, 28u)]))), _wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(22009i, var_1.a, 7176i)) >= ~_wgslsmith_mod_i32(0i, 2147483647i)), select(!(!vec2<bool>(false, var_1.d)), !(!select(vec2<bool>(var_1.d, var_0.b), vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true), vec2<bool>(false, false))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.e, 28u)], var_0.b, var_0.b, global0[_wgslsmith_index_u32(1u, 28u)]), vec4<bool>(var_0.b, var_1.d, var_1.d, var_1.d), vec4<bool>(var_0.b, false, false, var_0.b))) & !(true & var_0.b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = func_3();
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(min(arg_3, u_input.c), _wgslsmith_sub_u32(~u_input.c, countOneBits(~u_input.a))), 22u)], any(vec4<bool>(var_0.x, any(!vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 28u)], false, false)), !global2[_wgslsmith_index_u32(firstTrailingBit(arg_3), 24u)], true)), ~4294967295u, Struct_2(4294967295u, 1u ^ min(arg_3, u_input.a)), abs(vec2<u32>(0u, ~u_input.c)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-333f)))))))));
    global1 = array<vec3<i32>, 25>();
    var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(201f + 323f)))), _wgslsmith_f_op_f32(select(1000f, -819f, any(vec3<bool>(var_1.b, var_0.x, true))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f + 926f)))))));
    return Struct_4(global1[_wgslsmith_index_u32((_wgslsmith_mult_u32(1u, 96874u) >> (arg_3 % 32u)) | 67055u, 25u)] & firstLeadingBit(vec3<i32>(arg_1.x, arg_0.x, 0i) | -vec3<i32>(0i, 1i, -2147483647i)), all(vec4<bool>(true, false, false, true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(498f)))) - -1066f))) - -622f);
    var var_1 = Struct_1(reverseBits(select(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.x, arg_1.a.x), arg_0.x), 2546i, select(true, false, all(vec2<bool>(true, true))))), vec2<u32>(~0u, 26042u), firstLeadingBit(~(-2147483647i)), global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(0u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 1u) << (vec2<u32>(0u, 62666u) % vec2<u32>(32u)), vec2<u32>(u_input.c, arg_2) << (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)))), u_input.c), 24u)], 40965u);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242f * -1717f)))), 127f));
    let var_2 = Struct_1(-_wgslsmith_dot_vec2_i32(arg_0.wz, ~vec2<i32>(arg_1.a.x, 2147483647i)) & firstLeadingBit(-(var_1.a & arg_1.a.x)), var_1.b >> (_wgslsmith_add_vec2_u32(var_1.b & ~vec2<u32>(u_input.c, 71892u), var_1.b) % vec2<u32>(32u)), ~(-36017i), false, var_1.b.x);
    var var_3 = var_1.a;
    return Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e, arg_2), countOneBits(var_2.b)) | (abs(36624u & arg_2) ^ 9086u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_2, 4294967295u), ~4294967295u & var_2.e) | 4294967295u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    global2 = array<bool, 24>();
    var var_0 = select(-_wgslsmith_sub_vec4_i32(-select(vec4<i32>(u_input.b, arg_1.a.c, -10681i, u_input.d.x), vec4<i32>(arg_1.a.a, 2147483647i, u_input.b, 43614i), global0[_wgslsmith_index_u32(arg_1.e.x, 28u)]), ~(~vec4<i32>(u_input.b, 53908i, -13265i, u_input.d.x))), vec4<i32>(u_input.b, ~arg_1.a.c, u_input.d.x << (max(40686u, ~arg_0.a) % 32u), firstTrailingBit(1i)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(u_input.a >> (~0u % 32u)), reverseBits(1u)), 28u)]);
    let var_1 = ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~var_0.x, firstTrailingBit(arg_1.a.a), 1i), -1i, abs(1i)), u_input.b, 8704i, var_0.x);
    global1 = array<vec3<i32>, 25>();
    global2 = array<bool, 24>();
    return abs(~abs(arg_0.a));
}

fn func_1() -> u32 {
    let var_0 = vec3<bool>(global0[_wgslsmith_index_u32(20194u, 28u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_5(func_4(abs(vec4<i32>(-2147483647i, -47778i, 0i, u_input.b)), func_2(u_input.d, global1[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a), ~u_input.c), Struct_3(global3[_wgslsmith_index_u32(u_input.c, 22u)], !global2[_wgslsmith_index_u32(u_input.c, 24u)], ~1u, Struct_2(u_input.a, u_input.a), abs(vec2<u32>(u_input.c, u_input.a)))), ~(~u_input.c)), 24u)], global2[_wgslsmith_index_u32(52586u, 24u)]);
    var var_1 = i32(-1i) * -_wgslsmith_clamp_i32(abs(0i), _wgslsmith_add_i32(~47211i, 2147483647i), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 25u)], global1[_wgslsmith_index_u32(~4294967295u, 25u)]));
    global1 = array<vec3<i32>, 25>();
    let var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 0u)), ~firstLeadingBit(vec2<u32>(u_input.c, u_input.c))), _wgslsmith_div_u32(reverseBits(~u_input.c), ~4294967295u)), firstLeadingBit(1u));
    let var_3 = vec3<u32>(var_2.b, 38345u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_2.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 57813u)), ~vec3<u32>(var_2.a, 0u, u_input.a)), vec3<u32>(1u, 74230u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.a, 21010u), vec4<u32>(var_2.a, u_input.a, 13126u, u_input.c)))));
    return ~u_input.c;
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = abs(select(_wgslsmith_mult_vec4_i32(select(reverseBits(vec4<i32>(-36551i, 1i, 1623i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, -24569i, 1i), vec4<i32>(-45296i, 0i, arg_1.x, u_input.b)), true), -vec4<i32>(-1i, -16857i, u_input.d.x, u_input.b) | -vec4<i32>(-2881i, -2147483647i, u_input.b, arg_1.x)), ~(-vec4<i32>(u_input.b, 51676i, 23493i, u_input.d.x)), !func_2(reverseBits(vec2<i32>(23317i, 52598i)), firstTrailingBit(global1[_wgslsmith_index_u32(0u, 25u)]), global2[_wgslsmith_index_u32(7558u, 24u)], u_input.c).b));
    var_0 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(-2147483647i, 1i)), abs(-10002i), i32(-1i) * -1i, _wgslsmith_add_i32(abs(func_2(min(vec2<i32>(-49157i, var_0.x), vec2<i32>(var_0.x, 21257i)), -vec3<i32>(-4802i, arg_1.x, -1i), true, u_input.a).a.x), var_0.x));
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(16125u, 22u)], _wgslsmith_div_i32(~_wgslsmith_sub_i32(-13518i, -57979i), var_0.x) <= max(-14386i, -29128i), 7880u, Struct_2(abs(~(~66118u)), 107279u), ~vec2<u32>(~4294967295u, _wgslsmith_sub_u32(94334u, abs(3658u))));
    var var_2 = vec2<bool>(true, global2[_wgslsmith_index_u32(reverseBits(select(4294967295u, 1u, true)), 24u)]);
    return Struct_4(arg_1, arg_0.x);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec3<i32>, 25>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(var_0.a.zy, arg_0.a.zx), -5836i, var_0.a.x), vec4<i32>(arg_0.a.x, arg_1.a.c, -_wgslsmith_mod_i32(u_input.d.x, ~14203i), -16690i));
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.d.a, _wgslsmith_clamp_u32(0u, 4294967295u, arg_1.e.x), 1u), vec3<u32>(arg_1.e.x, arg_1.d.a, 85147u)), _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 97266u, 12615u), vec3<u32>(u_input.c, arg_1.c, 31669u)), firstLeadingBit(vec3<u32>(34841u, 42789u, u_input.c)))) ^ (vec3<u32>(arg_1.e.x, 0u, reverseBits(u_input.a)) ^ _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1u, arg_1.c, u_input.a)) >> (vec3<u32>(9420u, arg_1.a.e, 55617u) % vec3<u32>(32u)), countOneBits(vec3<u32>(0u, 45025u, 1u))));
    let var_3 = (vec4<u32>(arg_1.e.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(40828u, 0u), vec2<u32>(58325u, 4294967295u)), 53677u), _wgslsmith_sub_u32(u_input.c, u_input.c), func_4(vec4<i32>(-6617i, 3346i, 24120i, 45534i), var_0, 0u).a << (1u % 32u)) & vec4<u32>(arg_1.a.b.x, 107632u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(69868u, u_input.a, arg_1.d.a, 58713u), vec4<u32>(85809u, var_2.x, u_input.a, arg_1.d.a)), 65076u), _wgslsmith_add_u32(_wgslsmith_mod_u32(27869u, u_input.a), ~0u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, firstLeadingBit(var_2.x), min(4294967295u, 42321u), abs(1u)), firstTrailingBit(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.c, 1u, arg_1.d.b), vec4<u32>(arg_1.e.x, var_2.x, u_input.a, 11229u)), arg_1.d.a, ~16379u))) % vec4<u32>(32u));
    return Struct_1(min(7352i, _wgslsmith_dot_vec4_i32(select(var_1, abs(vec4<i32>(-3277i, -1i, arg_0.a.x, 18906i)), select(vec4<bool>(arg_0.b, global0[_wgslsmith_index_u32(u_input.c, 28u)], true, global0[_wgslsmith_index_u32(42872u, 28u)]), vec4<bool>(arg_1.b, true, true, global2[_wgslsmith_index_u32(var_3.x, 24u)]), vec4<bool>(arg_0.b, false, false, true))), var_1 ^ countOneBits(var_1))), var_2.zy, var_0.a.x, !arg_0.b, _wgslsmith_mult_u32(firstTrailingBit(~4294967295u), var_2.x | (u_input.c ^ abs(u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 25>();
    var var_0 = func_7(func_6(!select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(29615u, 28u)], global0[_wgslsmith_index_u32(36283u, 28u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(23594u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], false), true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 24u)], global2[_wgslsmith_index_u32(16761u, 24u)], false, global0[_wgslsmith_index_u32(u_input.a, 28u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(67669u, 28u)], true, global2[_wgslsmith_index_u32(u_input.c, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(63310u, 28u)], global0[_wgslsmith_index_u32(46260u, 28u)], true, global2[_wgslsmith_index_u32(u_input.a, 24u)]), global0[_wgslsmith_index_u32(u_input.c, 28u)])), global1[_wgslsmith_index_u32(func_1(), 25u)]), Struct_3(Struct_1(20491i, ~vec2<u32>(u_input.c, 61169u), 15967i, ~4294967295u >= _wgslsmith_mult_u32(25390u, u_input.c), ~0u), true & global0[_wgslsmith_index_u32(u_input.c, 28u)], 1u, func_4(firstTrailingBit(~vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, u_input.b)), func_2(vec2<i32>(1i, 1i), func_6(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(1u, 28u)]), vec3<i32>(9825i, -2147483647i, -37332i)).a, true, 1u), ~min(4294967295u, u_input.c)), vec2<u32>(u_input.c, 22028u)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -901f), 799f));
    var var_2 = Struct_1(func_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, var_0.a), -vec2<i32>(2147483647i, -1i) ^ ~vec2<i32>(16566i, var_0.a)), global1[_wgslsmith_index_u32(0u, 25u)], true, 1u).a.x, vec2<u32>(var_0.e, countOneBits(1u)), reverseBits(~(~reverseBits(0i))), true, firstTrailingBit(abs(func_1())));
    global2 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2.c, ~var_2.a, min(min(_wgslsmith_mult_i32(var_0.a, -2147483647i), ~u_input.b), abs(u_input.b) ^ select(u_input.d.x, 2147483647i, false)), firstTrailingBit(_wgslsmith_div_i32(58966i, i32(-1i) * -56155i))), ~func_2(vec2<i32>(2147483647i, ~var_0.c), vec3<i32>(var_0.c, 1i, 50622i), all(vec2<bool>(true, global2[_wgslsmith_index_u32(6503u, 24u)])), ~1u).a, vec4<f32>(1f, 1f, 1f, 1f), 4294967295u >> (~(~(~var_0.e)) % 32u));
}

