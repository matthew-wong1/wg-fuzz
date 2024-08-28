struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(4294967295u);
    let var_1 = ~(max(-vec4<i32>(46889i, u_input.a, -39704i, global0[_wgslsmith_index_u32(arg_1.x, 7u)]), _wgslsmith_mult_vec4_i32(arg_2.d, _wgslsmith_mod_vec4_i32(vec4<i32>(-16854i, -22507i, -51404i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 7u)], -7915i, -2147483647i, global0[_wgslsmith_index_u32(u_input.d, 7u)])))) ^ ~(-select(vec4<i32>(arg_2.d.x, 0i, global0[_wgslsmith_index_u32(18688u, 7u)], 24746i), vec4<i32>(-64643i, -14368i, -35104i, u_input.a), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))));
    let var_2 = Struct_5(Struct_4(Struct_1(firstTrailingBit(countOneBits(1u)), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x), vec3<f32>(-1034f, arg_2.c.x, -1000f), false)) - _wgslsmith_f_op_vec3_f32(arg_2.c + vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x))), _wgslsmith_div_vec4_i32(min(arg_2.d, vec4<i32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(6036u, 7u)], -1562i)), _wgslsmith_mod_vec4_i32(var_1, vec4<i32>(-9639i, 40903i, 2147483647i, -2147483647i)))), Struct_2(vec3<bool>(!arg_0.x, all(vec4<bool>(arg_0.x, true, false, arg_0.x)), arg_0.x), arg_2), Struct_2(!arg_0, Struct_1(~u_input.b.x, arg_1.x, arg_2.c, select(vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(var_0, 7u)], -1i), vec4<i32>(4373i, 1i, -1i, var_1.x), arg_0.x))), ~var_0), Struct_2(arg_0, Struct_1(arg_2.b, ~(~arg_2.b), arg_2.c, countOneBits(vec4<i32>(arg_2.d.x, -2147483647i, global0[_wgslsmith_index_u32(130290u, 7u)], var_1.x)))), Struct_3(true, ~(_wgslsmith_dot_vec3_u32(u_input.c.ywy, vec3<u32>(49981u, 52990u, var_0)) << ((arg_2.b << (arg_2.b % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.c, arg_2.c) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(137f, 3019f, arg_2.c.x), arg_2.c))))), Struct_1(31138u, max(countOneBits(4294967295u), min(5381u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 3130f, arg_2.c.x))), select(-arg_2.d, arg_2.d, false))), 11205u);
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    return abs(1u);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<u32>) -> vec4<i32> {
    var var_0 = Struct_3(~(~_wgslsmith_div_u32(u_input.d, 4294967295u)) > _wgslsmith_div_u32(func_3(!vec3<bool>(true, arg_1, arg_1), u_input.c.wzz, Struct_1(0u, arg_2.x, vec3<f32>(1000f, -169f, 830f), vec4<i32>(u_input.a, -1076i, -14619i, u_input.a))), ~(~u_input.c.x)), _wgslsmith_sub_u32(~40309u >> ((u_input.d ^ 4294967295u) % 32u), arg_2.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(805f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), 423f)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(-353f)))))), Struct_1(max(1u << (_wgslsmith_sub_u32(2666u, arg_2.x) % 32u), u_input.b.x), _wgslsmith_mod_u32(4294967295u, u_input.d ^ _wgslsmith_mod_u32(u_input.c.x, arg_2.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-906f + -690f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1490f + 2481f))), ~(vec4<i32>(0i, 23303i, global0[_wgslsmith_index_u32(5946u, 7u)], u_input.a) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-56823i, -7193i, 1i, 13259i), vec4<i32>(18182i, global0[_wgslsmith_index_u32(47146u, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -1i)))));
    var_0 = Struct_3(all(!select(!vec4<bool>(var_0.a, false, false, true), select(vec4<bool>(var_0.a, false, arg_1, true), vec4<bool>(true, true, arg_1, false), arg_1), !var_0.a)), arg_2.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), arg_0))), Struct_1(arg_2.x, ~countOneBits(_wgslsmith_dot_vec4_u32(arg_2, u_input.c)), var_0.d.c, _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16108u, 0u, arg_2.x, 0u), u_input.c), 7u)], u_input.a ^ -2147483647i, -var_0.d.d.x, ~(-18123i)), -select(var_0.d.d, var_0.d.d, var_0.a))));
    var var_1 = var_0.a;
    let var_2 = !select(vec4<bool>(arg_1 | (arg_1 & arg_1), true, true, true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1, arg_1, var_0.a, false), vec4<bool>(arg_1, true, arg_1, false)), select(vec4<bool>(var_0.a, var_0.a, false, arg_1), vec4<bool>(true, true, false, true), vec4<bool>(false, true, arg_1, false)), !vec4<bool>(var_0.a, true, false, arg_1)), !arg_1);
    let var_3 = var_0.d.d.x;
    return _wgslsmith_clamp_vec4_i32(firstTrailingBit(~abs(var_0.d.d)), vec4<i32>(~countOneBits(28320i ^ u_input.a), ~(~(-3943i)), abs(firstTrailingBit(-1i)), select(-8157i, 2147483647i & select(0i, -19096i, var_0.a), all(!var_2.zx))), var_0.d.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    global0 = array<i32, 7>();
    var var_0 = abs(-(arg_0.d >> (vec4<u32>(arg_1.b.b, arg_1.b.b, 15976u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(23948u, _wgslsmith_add_u32(u_input.b.x, 77158u), 98861u, firstLeadingBit(0u)) % vec4<u32>(32u))) & firstTrailingBit(_wgslsmith_mult_vec4_i32(arg_0.d, arg_0.d & _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(22688u, 7u)], 1i, 56398i, u_input.a), vec4<i32>(-1i, arg_0.d.x, arg_1.b.d.x, -1i))));
    var var_1 = Struct_2(arg_1.a, Struct_1(u_input.d & abs(8699u), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(arg_1.b.c)), vec3<f32>(arg_0.c.x, -2192f, -375f)))), abs(arg_0.d)));
    let var_2 = max(var_1.b.a, ~_wgslsmith_sub_u32(~arg_1.b.a, abs(arg_0.b)));
    var_0 = vec4<i32>(~(~var_1.b.d.x), var_1.b.d.x, var_0.x, var_0.x);
    return Struct_3(select(var_1.a.x, !all(var_1.a.xz), arg_1.b.c.x == _wgslsmith_f_op_f32(max(arg_0.c.x, arg_1.b.c.x))), ~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c)), Struct_1(1u << (abs(var_2) % 32u), var_1.b.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.c)), _wgslsmith_f_op_vec3_f32(arg_0.c - arg_1.b.c)), var_1.b.c, arg_1.a.x)), arg_0.d | arg_1.b.d));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    return func_4(arg_1.a, arg_1.b).d;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(307f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(-127f - 555f))))));
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    var var_1 = func_5(func_4(Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2967u, u_input.b.x, u_input.c.x), vec3<u32>(u_input.d, u_input.c.x, 56519u)), 85344u), _wgslsmith_mod_u32(~u_input.c.x, 37133u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -405f)))), vec4<i32>(u_input.a, 41155i, u_input.a, u_input.a) | func_2(var_0, arg_0, vec4<u32>(u_input.d, 4622u, 66261u, 10908u))), Struct_2(select(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(arg_0, true, true), vec3<bool>(false, false, arg_0)), Struct_1(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 4294967295u), vec3<f32>(501f, var_0, 1140f), ~vec4<i32>(0i, 7250i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], u_input.a)))), Struct_4(Struct_1(116005u, u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-586f, var_0, var_0), vec3<f32>(-804f, 263f, 322f), vec3<bool>(arg_0, arg_0, arg_0)))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-16790i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 9388i, -1i)), vec4<i32>(u_input.a, -14580i, 2147483647i, 12469i))), Struct_2(vec3<bool>(func_4(Struct_1(u_input.c.x, 26244u, vec3<f32>(-1593f, 1105f, var_0), vec4<i32>(0i, 44273i, u_input.a, global0[_wgslsmith_index_u32(17668u, 7u)])), Struct_2(vec3<bool>(arg_0, arg_0, arg_0), Struct_1(0u, u_input.b.x, vec3<f32>(var_0, 667f, var_0), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -1i, -43161i)))).a, arg_0, arg_0), Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(u_input.d, 0u)), 4294967295u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, var_0))), _wgslsmith_mult_vec4_i32(vec4<i32>(-22814i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 26213i, global0[_wgslsmith_index_u32(34607u, 7u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 26483i, global0[_wgslsmith_index_u32(29961u, 7u)], 10841i)))), Struct_2(select(!vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, arg_0, true), !arg_0), func_4(func_4(Struct_1(1u, 4294967295u, vec3<f32>(var_0, var_0, var_0), vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 2147483647i)), Struct_2(vec3<bool>(arg_0, false, arg_0), Struct_1(21944u, u_input.d, vec3<f32>(-807f, -1515f, var_0), vec4<i32>(u_input.a, -23183i, -2147483647i, 2147483647i)))).d, Struct_2(vec3<bool>(false, arg_0, false), Struct_1(37238u, 9410u, vec3<f32>(var_0, 1581f, -452f), vec4<i32>(global0[_wgslsmith_index_u32(1u, 7u)], u_input.a, global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)])))).d), u_input.c.x));
    return Struct_2(!select(vec3<bool>(arg_0, arg_0, any(vec3<bool>(false, arg_0, true))), select(select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(arg_0, arg_0, false), arg_0 || arg_0), !arg_0), func_4(Struct_1(~9554u, ~1u, _wgslsmith_f_op_vec3_f32(func_4(Struct_1(4294967295u, 4294967295u, vec3<f32>(-1000f, var_0, var_1.c.x), vec4<i32>(0i, 1i, 0i, global0[_wgslsmith_index_u32(62324u, 7u)])), Struct_2(vec3<bool>(arg_0, arg_0, arg_0), Struct_1(var_1.b, 29138u, vec3<f32>(var_1.c.x, var_0, -1930f), vec4<i32>(var_1.d.x, 3761i, global0[_wgslsmith_index_u32(0u, 7u)], u_input.a)))).c - vec3<f32>(var_1.c.x, -495f, -2776f)), vec4<i32>(var_1.d.x, global0[_wgslsmith_index_u32(18985u, 7u)], var_1.d.x, 0i) ^ ~var_1.d), Struct_2(!(!vec3<bool>(arg_0, arg_0, arg_0)), func_4(Struct_1(0u, 22867u, vec3<f32>(var_0, var_1.c.x, -1721f), vec4<i32>(13557i, var_1.d.x, var_1.d.x, global0[_wgslsmith_index_u32(u_input.d, 7u)])), Struct_2(vec3<bool>(true, true, arg_0), Struct_1(u_input.d, 1u, var_1.c, var_1.d))).d)).d);
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = ~_wgslsmith_add_u32(~(~2775u), ~arg_3.b.a) & 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.b.c.x, -195f, 693f, -365f))) * vec4<f32>(-1000f, arg_3.b.c.x, arg_3.b.c.x, -484f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.c.x, 1158f, arg_3.b.c.x, -454f) - vec4<f32>(692f, arg_3.b.c.x, -1013f, arg_3.b.c.x))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-865f - -692f), arg_3.b.c.x, _wgslsmith_f_op_f32(arg_3.b.c.x + 1552f), _wgslsmith_div_f32(-1000f, 667f)))), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(arg_3.b.c.x, -1171f)), _wgslsmith_f_op_f32(trunc(arg_3.b.c.x)), arg_3.b.c.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(arg_3.b.c.x - arg_3.b.c.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2469f, 1000f) + var_1.xx) - _wgslsmith_f_op_vec2_f32(arg_3.b.c.xx + arg_3.b.c.zz)) + func_5(func_4(Struct_1(1u, 285u, vec3<f32>(var_1.x, arg_3.b.c.x, var_1.x), arg_3.b.d), Struct_2(vec3<bool>(true, arg_1.x, arg_1.x), Struct_1(2531u, arg_3.b.b, vec3<f32>(arg_3.b.c.x, arg_3.b.c.x, var_1.x), vec4<i32>(u_input.a, 0i, u_input.a, global0[_wgslsmith_index_u32(arg_0, 7u)])))), Struct_4(Struct_1(27628u, 4294967295u, vec3<f32>(-2043f, -657f, -727f), vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 7u)], 42281i, arg_2)), arg_3, arg_3, arg_3.b.a)).c.yx), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c) < var_0)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2073f + arg_3.b.c.x), var_1.x)), 1000f), var_1.yy)));
    var var_3 = Struct_1(~_wgslsmith_add_u32(u_input.d | abs(23462u), select(~u_input.d, ~3786u, true)), ~var_0, _wgslsmith_f_op_vec3_f32(max(func_4(arg_3.b, Struct_2(select(arg_3.a, arg_1.zzx, arg_3.a.x), Struct_1(26750u, var_0, var_1.xzw, vec4<i32>(1i, arg_3.b.d.x, 28624i, u_input.a)))).c, vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b.c.x), arg_3.b.c.x, var_1.x))), ~(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2927i, global0[_wgslsmith_index_u32(0u, 7u)], -1i, 2147483647i), vec4<i32>(1i, u_input.a, global0[_wgslsmith_index_u32(arg_3.b.a, 7u)], arg_3.b.d.x)) << ((u_input.c & vec4<u32>(arg_3.b.a, 63970u, 70685u, var_0)) % vec4<u32>(32u))));
    let var_4 = ~(vec3<u32>(var_3.a, ~49549u, func_1(false).b.a) & firstTrailingBit(reverseBits(~vec3<u32>(1u, 4294967295u, 13472u))));
    return func_1(all(arg_1) && (false && (var_1.x < _wgslsmith_f_op_f32(-var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1656f)));
    var_0 = 2147483647i;
    var var_2 = u_input.c.zy;
    let var_3 = abs(~(~(var_2.x | _wgslsmith_mult_u32(var_2.x, 1u))));
    let var_4 = func_6(u_input.b.x, !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true)), vec4<bool>(true, false, true, any(vec2<bool>(false, false))), true), -(-min(global0[_wgslsmith_index_u32(var_2.x, 7u)], -244i) ^ (i32(-1i) * -2147483647i)), func_1(false));
    let var_5 = var_4.a.xz;
    global0 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(-36609i, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c.x, 7u)])), _wgslsmith_mult_i32(-24031i, 1i), func_2(_wgslsmith_f_op_f32(-var_1), var_4.a.x, vec4<u32>(1u, u_input.b.x, 33099u, u_input.b.x)).x) ^ func_4(Struct_1(~var_3, var_2.x, var_4.b.c, var_4.b.d), var_4).d.d.zyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1219f))), ~(~u_input.c.zwz), var_4.b.c.x);
}

