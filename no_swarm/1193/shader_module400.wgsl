struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(vec2<i32>(firstLeadingBit(arg_1.d.x), arg_2.a.x), max(u_input.c, vec4<u32>(firstTrailingBit(u_input.c.x), u_input.b, u_input.b ^ u_input.b, 18445u) & _wgslsmith_add_vec4_u32(u_input.c, u_input.c)));
    var_0 = Struct_2(arg_2.d.zx, vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(var_0.b, select(vec4<u32>(46471u, u_input.c.x, 0u, 10539u), vec4<u32>(2163u, u_input.c.x, u_input.b, var_0.b.x), vec4<bool>(false, arg_0.e.x, true, arg_0.e.x)))), var_0.b.x, ~35073u, var_0.b.x));
    global0 = array<bool, 23>();
    var var_1 = -u_input.a;
    let var_2 = arg_1;
    return select(arg_0.a, _wgslsmith_mod_vec3_i32(-(~vec3<i32>(-1i, -1i, var_2.b)), max(var_2.d.www, vec3<i32>(firstLeadingBit(arg_2.c), -2147483647i, _wgslsmith_mod_i32(-59583i, 57170i)))), any(vec2<bool>(true, false)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    global0 = array<bool, 23>();
    var var_0 = arg_0;
    var_0 = Struct_1(~arg_0.d.wxw, countOneBits(_wgslsmith_sub_i32(var_0.a.x, -(u_input.a << (arg_1.b.x % 32u)))), ~(~_wgslsmith_sub_i32(-var_0.b, abs(arg_1.a.x))), ~min(var_0.d, ~var_0.d), select(arg_0.e, select(select(!vec2<bool>(var_0.e.x, global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<bool>(true, true), !vec2<bool>(true, arg_3.x)), vec2<bool>(!global0[_wgslsmith_index_u32(1u, 23u)], true), false & global0[_wgslsmith_index_u32(~arg_1.b.x, 23u)]), arg_3.xz));
    var var_1 = var_0.d >> (min(_wgslsmith_add_vec4_u32(countOneBits(u_input.c) << (vec4<u32>(24186u, 4294967295u, u_input.c.x, 1293u) % vec4<u32>(32u)), abs(u_input.c << (arg_1.b % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.b) << (~vec4<u32>(7361u, u_input.c.x, u_input.c.x, 27281u) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 0u >> (arg_1.b.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 53405u, u_input.b), vec3<u32>(arg_1.b.x, u_input.b, arg_1.b.x)), _wgslsmith_sub_u32(arg_1.b.x, 4294967295u)))) % vec4<u32>(32u));
    var var_2 = Struct_3(vec2<bool>(all(vec2<bool>(true, var_0.e.x)) || any(vec2<bool>(var_0.e.x, arg_3.x)), false), _wgslsmith_mod_vec3_u32(arg_1.b.wwx, _wgslsmith_div_vec3_u32(countOneBits(firstLeadingBit(u_input.c.xyw)), min(vec3<u32>(0u, 4294967295u, 45230u), ~arg_1.b.wzw))));
    return 1000f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(min(arg_0.d.yxz, vec3<i32>(-15995i, arg_0.a.x, 0i)), vec3<i32>(0i, -48654i, 1i), vec3<i32>(arg_0.b, arg_0.c, arg_1.b)), reverseBits(vec3<i32>(u_input.a, 2147483647i, u_input.a)) ^ func_3(arg_1, Struct_1(arg_0.a, 2147483647i, 2147483647i, vec4<i32>(1i, u_input.a, arg_1.a.x, arg_0.a.x), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)])), arg_0)), 21357i, ~(i32(-1i) * -42791i), vec4<i32>(-419i, ~(-u_input.a), arg_0.d.x, ~arg_1.b), select(select(vec2<bool>(arg_1.e.x, arg_0.e.x), vec2<bool>(true, true), select(arg_0.e, vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)]), arg_0.e.x)), arg_0.e, all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], arg_0.e.x, true)))), Struct_2(func_3(arg_1, arg_0, Struct_1(_wgslsmith_div_vec3_i32(arg_0.a, arg_1.a), _wgslsmith_add_i32(u_input.a, arg_0.a.x), 55163i, -arg_1.d, vec2<bool>(false, arg_1.e.x))).zz, reverseBits(min(~u_input.c, vec4<u32>(69742u, u_input.c.x, u_input.b, 1u)))), -604f, !(!vec3<bool>(arg_1.e.x || true, true, true))));
    var var_1 = !(!(!vec3<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, arg_1.e.x)), arg_0.e.x)));
    let var_2 = 727f;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~0u, abs(~u_input.b)) ^ _wgslsmith_add_u32(1u, u_input.b), u_input.c.x >> (~32129u % 32u));
    let var_4 = ~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, firstTrailingBit(1i), countOneBits(u_input.a), select(-44191i, u_input.a, true)), vec4<i32>(func_3(Struct_1(arg_0.a, 2147483647i, 2147483647i, vec4<i32>(u_input.a, u_input.a, 37595i, 0i), arg_1.e), arg_1, Struct_1(arg_0.a, u_input.a, 0i, arg_0.d, vec2<bool>(true, arg_0.e.x))).x, 1i, u_input.a, ~u_input.a)));
    return Struct_1(~countOneBits(~arg_0.a), firstTrailingBit(36781i), i32(-1i) * -2147483647i, (vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -12652i, -2147483647i, 4003i), arg_1.d)) >> (vec4<u32>(6915u, 1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 64166u, var_3, u_input.b)), vec4<u32>(u_input.b, var_3, u_input.b, 3617u)), 3421u) % vec4<u32>(32u)), select(vec2<bool>(arg_0.e.x, true), arg_0.e, arg_1.e));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(arg_2.a.x, u_input.a, arg_3)), ~arg_0.d.wxy, -select(vec3<i32>(-12566i, u_input.a, arg_0.b), vec3<i32>(17313i, u_input.a, 1i), false)), arg_3, _wgslsmith_mod_i32(~(-1i), func_3(func_2(arg_0, func_2(arg_0, Struct_1(arg_0.a, 0i, u_input.a, arg_0.d, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], arg_1)))), func_2(arg_0, func_2(arg_0, arg_0)), arg_0).x), -func_2(Struct_1(~arg_0.d.wzw, u_input.a, arg_0.b, reverseBits(arg_0.d), vec2<bool>(true, arg_1)), Struct_1(func_3(arg_0, Struct_1(arg_0.d.xyw, 0i, 7286i, arg_0.d, vec2<bool>(arg_1, true)), arg_0), _wgslsmith_add_i32(arg_3, -26141i), arg_3, min(arg_0.d, arg_0.d), select(arg_0.e, arg_0.e, arg_0.e))).d, arg_0.e);
    var var_1 = u_input.c.zz;
    let var_2 = Struct_2(arg_2.a, vec4<u32>(countOneBits(~max(var_1.x, arg_2.b.x)), ~(1u ^ reverseBits(var_1.x)), _wgslsmith_dot_vec3_u32(select(select(u_input.c.wyz, vec3<u32>(1u, var_1.x, var_1.x), arg_1), u_input.c.xxz | vec3<u32>(u_input.b, 15532u, 404u), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.b.x, 23u)], false, var_0.e.x), vec3<bool>(var_0.e.x, arg_0.e.x, global0[_wgslsmith_index_u32(0u, 23u)]), var_0.e.x)), arg_2.b.wyx ^ ~vec3<u32>(var_1.x, 1u, arg_2.b.x)), min(arg_2.b.x, var_1.x)));
    global0 = array<bool, 23>();
    let var_3 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1141f, 453f)))) * _wgslsmith_f_op_f32(func_4(Struct_1(min(var_0.d.xzz, arg_0.a), 20421i, 41424i, var_0.d, var_0.e), var_2, _wgslsmith_f_op_f32(min(-1986f, 1343f)), !select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.e.x, false), vec3<bool>(true, false, false))))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(25881u, abs(var_1.x), u_input.c.x, var_1.x), _wgslsmith_mult_vec4_u32(var_2.b, ~vec4<u32>(0u, 44093u, var_1.x, var_1.x))) >> ((((~vec4<u32>(var_1.x, arg_2.b.x, u_input.c.x, var_2.b.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b.x, arg_2.b.x, 16741u, arg_2.b.x), arg_2.b)) << (arg_2.b % vec4<u32>(32u))) >> (arg_2.b % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_1() -> Struct_3 {
    var var_0 = !(min(1u, 0u) == _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c.x, u_input.b, 17072u), u_input.c.xyx ^ vec3<u32>(u_input.b, u_input.b, 14507u)), u_input.c.xxw));
    let var_1 = true;
    let var_2 = Struct_2(_wgslsmith_sub_vec2_i32(max(firstLeadingBit(vec2<i32>(u_input.a, 1i)), reverseBits(vec2<i32>(u_input.a, 38396i))) ^ _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, u_input.a), firstLeadingBit(vec2<i32>(-2147483647i, 25773i))), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(0i, u_input.a)), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, 65301i), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 68920u, 4294967295u, 16861u), func_5(func_2(Struct_1(vec3<i32>(u_input.a, 23316i, u_input.a), u_input.a, 39151i, vec4<i32>(0i, 12262i, u_input.a, -8471i), vec2<bool>(var_1, var_1)), Struct_1(vec3<i32>(-1i, u_input.a, -12448i), u_input.a, u_input.a, vec4<i32>(u_input.a, u_input.a, 0i, 1i), vec2<bool>(true, var_1))), false, Struct_2(vec2<i32>(u_input.a, u_input.a), u_input.c), -9787i)) ^ vec4<u32>(~(u_input.c.x << (59010u % 32u)), 1u, u_input.c.x ^ _wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(1u, u_input.c.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(6543u, 1u, 4294967295u), select(u_input.c.wwy, u_input.c.wyx, true))));
    let var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-570f, _wgslsmith_f_op_f32(612f - 1656f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -588f))))))));
    return Struct_3(select(!select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(global0[_wgslsmith_index_u32(20197u, 23u)], true)), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 23u)], false)), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(27975u, 23u)])), select(select(true, true, true), any(vec2<bool>(false, var_1)) && false, (u_input.a > u_input.a) | var_1)), _wgslsmith_mult_vec3_u32(u_input.c.zyw >> (u_input.c.xyy % vec3<u32>(32u)), u_input.c.yyw ^ _wgslsmith_sub_vec3_u32(max(u_input.c.xzy, vec3<u32>(82548u, 1u, 1u)), ~vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 1i;
    var var_2 = !vec3<bool>(true, any(func_1().a), global0[_wgslsmith_index_u32(2948u, 23u)]);
    let var_3 = (-47847i << (_wgslsmith_mod_u32(32673u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b.x, var_0.b.x), vec3<u32>(var_0.b.x, 4294967295u, 51954u)) | firstTrailingBit(0u)) % 32u)) < -2147483647i;
    var_2 = select(vec3<bool>(-firstTrailingBit(var_1) <= (u_input.a & u_input.a), any(select(vec4<bool>(true, true, true, var_0.a.x), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 23u)], true, false, var_0.a.x), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.b.x, 23u)], var_3), vec4<bool>(var_3, true, false, false), var_2.x))), func_1().a.x), vec3<bool>(var_3, var_2.x & !(true | var_3), !var_0.a.x), all(vec2<bool>(!global0[_wgslsmith_index_u32(var_0.b.x, 23u)], !var_3)) && any(vec4<bool>(true, var_2.x, var_3, true)));
    let var_4 = _wgslsmith_f_op_f32(trunc(1113f));
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 1i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-34408i, 2147483647i), vec2<i32>(-39397i, 8780i))));
}

