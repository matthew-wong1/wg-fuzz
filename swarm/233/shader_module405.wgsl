struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: vec4<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = all(vec3<bool>(select(false, true, true), true, (false && any(vec2<bool>(false, true))) || all(vec2<bool>(false, true))));
    var var_1 = Struct_1(~4294967295u, arg_0.b.b | vec4<u32>(9236u, arg_0.b.a, _wgslsmith_mod_u32(25497u, 1u), u_input.a.x), vec3<u32>(1u, reverseBits(~(~arg_0.b.d.x)), reverseBits(arg_0.a.c.x)), ~arg_0.a.b.yy);
    global1 = ~select(max(firstLeadingBit(vec4<i32>(global1.x, -55596i, 3035i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -99501i, u_input.b, global1.x), vec4<i32>(u_input.c, -2147483647i, global1.x, 4173i))), reverseBits(max(-vec4<i32>(u_input.b, u_input.b, -19177i, -9996i), abs(vec4<i32>(u_input.c, global1.x, -26283i, 17548i)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)));
    var var_2 = arg_0.a.b;
    let var_3 = firstTrailingBit(~abs(61336u));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1057f, 1753f)))) * -262f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622f - 1000f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(192f, -293f, false)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    var_0 = global0[_wgslsmith_index_u32(~0u, 28u)];
    var var_1 = var_0.b;
    let var_2 = global1.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(1u ^ arg_1, firstTrailingBit(u_input.a.x)), ~var_1.d.x), 28u)])) * vec2<f32>(-930f, 859f));
    return _wgslsmith_f_op_f32(floor(1377f));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = ~(-arg_3.a.xw);
    let var_1 = Struct_3(arg_0, countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.c, vec3<u32>(4294967295u, 2789u, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.x, 55596u, arg_0.a), vec3<u32>(4294967295u, 45285u, u_input.a.x))) & arg_0.c.x), abs(vec2<u32>(1u >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), 1u)));
    let var_2 = Struct_2(var_1.a, arg_0);
    let var_3 = vec2<i32>(2147483647i, var_0.x);
    var var_4 = vec2<u32>(~13327u, var_2.b.a);
    return arg_3;
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = vec2<i32>(~abs(_wgslsmith_div_i32(arg_1.a.x << (4734u % 32u), global1.x)), arg_1.a.x);
    var var_2 = Struct_1(u_input.a.x, u_input.a, u_input.a.zzx, firstTrailingBit(countOneBits(reverseBits(u_input.a.yy))));
    var var_3 = global1.x;
    var var_4 = Struct_1(var_2.c.x, vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(~var_2.a), _wgslsmith_mult_u32(_wgslsmith_mult_u32(2054u, 54962u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 7262u, var_2.c.x), var_2.c))), (_wgslsmith_clamp_u32(u_input.a.x, 30085u, 62041u) | 1u) << (_wgslsmith_add_u32(~168432u, max(var_2.c.x, u_input.a.x)) % 32u), ~abs(0u), firstTrailingBit(var_2.d.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(39655u, var_2.a & ~u_input.a.x, ~abs(var_2.b.x)), vec3<u32>(_wgslsmith_div_u32(var_2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 79848u, 14536u), vec3<u32>(42033u, 1u, u_input.a.x))), abs(u_input.a.x), var_2.c.x), ~u_input.a.xzx), vec2<u32>(~select(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 22736u, var_2.c.x, var_2.c.x), var_2.b), true), var_2.d.x));
    return global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~u_input.a.x, var_4.c.x)), 28u)];
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 28>();
    return Struct_1(~(~firstTrailingBit(u_input.a.x)), arg_1.b, ~vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~arg_1.b.xy, u_input.a.xw), 14253u & arg_1.d.x), abs(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(select(u_input.a.x, 4294967295u, true), u_input.a.x))));
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-1420f + -1000f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.d.x, 4294967295u), 28u)])).x);
    let var_2 = ~(~global1.x >> (u_input.a.x % 32u));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.b.x)) * _wgslsmith_f_op_f32(351f * -104f))))), 303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x - -796f) - -898f))), var_0);
    let var_4 = !vec2<bool>(!all(!vec2<bool>(arg_3.c, false)), false);
    return Struct_3(arg_2, 0u, _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(27573u, 50770u), arg_2.b.zy) & vec2<u32>(select(arg_0, 0u, arg_3.c), 76670u), _wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.yy), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), ~arg_2.c.yx, u_input.a.xy)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_7(_wgslsmith_div_u32(countOneBits(66156u), u_input.a.x), func_6(vec3<f32>(_wgslsmith_f_op_f32(-1f), 2114f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1163f + -1738f))), Struct_1(firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), vec4<u32>(abs(1u), u_input.a.x, 42817u, 4155u << (1u % 32u)), vec3<u32>(u_input.a.x, ~5297u, ~u_input.a.x), u_input.a.zx), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f * -159f)), func_4(Struct_1(1u, u_input.a, vec3<u32>(1u, 0u, 36713u), u_input.a.zx), true, _wgslsmith_f_op_f32(func_2(vec4<i32>(0i, global1.x, 17672i, u_input.c), u_input.a.x)), Struct_4(vec4<i32>(global1.x, u_input.b, global1.x, -22901i), vec4<f32>(360f, 1366f, -704f, -810f), true)))), Struct_1(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(abs(17909u), firstLeadingBit(u_input.a.x))), vec4<u32>(u_input.a.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 10339u), u_input.a.wz)), firstTrailingBit(u_input.a.x << (u_input.a.x % 32u)), u_input.a.x), _wgslsmith_add_vec3_u32((vec3<u32>(1u, u_input.a.x, u_input.a.x) | vec3<u32>(116610u, u_input.a.x, u_input.a.x)) | vec3<u32>(u_input.a.x, 42876u, 1u), vec3<u32>(57768u, 4294967295u, u_input.a.x) | u_input.a.ywy), vec2<u32>(u_input.a.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 104558u), vec4<u32>(33052u, u_input.a.x, u_input.a.x, 99237u))))), func_4(Struct_1(u_input.a.x, firstLeadingBit(vec4<u32>(u_input.a.x, 17899u, 1u, 0u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 2068u), u_input.a.xyw)), vec2<u32>(28477u, u_input.a.x) & _wgslsmith_mult_vec2_u32(u_input.a.yy, u_input.a.yw)), any(vec3<bool>(true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-337f, -684f)))), func_4(Struct_1(u_input.a.x, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 103870u, 50618u, 0u), vec4<u32>(43011u, u_input.a.x, 4294967295u, u_input.a.x)), min(u_input.a.yww, vec3<u32>(1u, 4492u, u_input.a.x)), u_input.a.yy), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1168f)), 628f)), func_4(func_6(vec3<f32>(-1767f, -1163f, 298f), Struct_1(0u, vec4<u32>(u_input.a.x, 21069u, u_input.a.x, u_input.a.x), vec3<u32>(65196u, 4294967295u, u_input.a.x), u_input.a.yw), global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), true, 1515f, func_4(Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 377u), u_input.a.wzx, vec2<u32>(u_input.a.x, u_input.a.x)), false, 1544f, Struct_4(vec4<i32>(0i, global1.x, u_input.c, 0i), vec4<f32>(670f, 162f, 731f, 608f), false))))));
    global1 = min(vec4<i32>(-(~_wgslsmith_mult_i32(global1.x, 7114i)), u_input.c & -33344i, _wgslsmith_mod_i32(~(-20969i), u_input.c), max(-global1.x, global1.x >> (~28139u % 32u))), -((vec4<i32>(2147483647i, -2147483647i, global1.x, -43494i) ^ vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c)) ^ ~(~vec4<i32>(-23550i, -2147483647i, global1.x, 0i))));
    var_0 = Struct_3(func_7(~_wgslsmith_sub_u32(_wgslsmith_add_u32(79042u, var_0.a.d.x), ~1u), Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, var_0.a.b.x), 1u), u_input.a, vec3<u32>(4294967295u, var_0.a.b.x, func_7(u_input.a.x, Struct_1(1u, vec4<u32>(4294967295u, var_0.c.x, u_input.a.x, u_input.a.x), vec3<u32>(var_0.c.x, u_input.a.x, 72424u), vec2<u32>(78645u, u_input.a.x)), var_0.a, Struct_4(vec4<i32>(u_input.c, global1.x, 0i, 0i), vec4<f32>(1109f, -1000f, 472f, -1732f), true)).c.x), u_input.a.xz), Struct_1(reverseBits(var_0.c.x), ~(~vec4<u32>(u_input.a.x, var_0.b, var_0.b, 118995u)), ~(vec3<u32>(33915u, var_0.b, var_0.b) >> (vec3<u32>(var_0.a.d.x, var_0.c.x, var_0.a.d.x) % vec3<u32>(32u))), vec2<u32>(firstTrailingBit(var_0.a.a), 61960u)), Struct_4(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -24718i, global1.x, u_input.b), vec4<i32>(16063i, 63342i, -17561i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -19503i, -2147483647i, -2147483647i), vec4<i32>(23171i, global1.x, -3774i, 0i))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(931f, -1000f, -611f, -1095f), vec4<f32>(537f, 874f, 365f, -1146f), vec4<bool>(true, true, true, true))), false)).a, var_0.c.x ^ (reverseBits(~u_input.a.x) ^ var_0.a.c.x), ~u_input.a.yx ^ firstTrailingBit(vec2<u32>(select(var_0.c.x, var_0.a.a, false), u_input.a.x)));
    var var_1 = u_input.b;
    var_1 = 2147483647i;
    return func_7(abs(abs(_wgslsmith_mult_u32(firstLeadingBit(var_0.b), u_input.a.x))), var_0.a, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1646f - -440f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-930f, -594f))), Struct_4(select(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, -2147483647i), vec4<i32>(u_input.b, u_input.c, -21586i, 1i)), vec4<i32>(43718i, u_input.c, -16641i, -62749i), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)), vec4<f32>(-1622f, _wgslsmith_f_op_f32(f32(-1f) * -993f), -617f, _wgslsmith_f_op_f32(-1000f - -509f)), true)).a, Struct_4(vec4<i32>(u_input.b << (~110124u % 32u), abs(firstLeadingBit(global1.x)), -(global1.x | u_input.b), _wgslsmith_dot_vec3_i32(global1.yyw, vec3<i32>(global1.x, 2147483647i, 22324i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1580f, 2414f, -618f, 215f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -927f, -1053f, -400f), vec4<f32>(-129f, 1126f, -1426f, -263f))) + _wgslsmith_div_vec4_f32(vec4<f32>(1124f, 1000f, 1000f, -615f), vec4<f32>(319f, 154f, 277f, -373f)))), true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), ~u_input.a.x, vec2<u32>(1u, ~u_input.a.x));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 27536i, _wgslsmith_div_i32(global1.x, -max(u_input.c, 2147483647i))), -vec3<i32>(6953i >> (~4294967295u % 32u), global1.x, global1.x));
    global1 = vec4<i32>(2147483647i, abs(u_input.c) ^ 0i, -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -10759i, u_input.c)), global1.zwy), abs(global1.x) ^ _wgslsmith_clamp_i32(select(global1.x, var_1.x, false) >> (~77395u % 32u), 0i, -func_4(var_0.a, false, 1500f, Struct_4(vec4<i32>(var_1.x, 1i, global1.x, 2147483647i), vec4<f32>(-355f, 542f, 1413f, -166f), true)).a.x));
    let var_2 = vec3<u32>(func_7(4294967295u, var_0.a, func_7(func_5(_wgslsmith_div_f32(-881f, 512f), Struct_4(vec4<i32>(global1.x, u_input.b, global1.x, 2147483647i), vec4<f32>(-560f, 1156f, 1555f, 370f), false)).b.a, var_0.a, Struct_1(18350u, ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, var_0.a.b.x), abs(vec3<u32>(u_input.a.x, u_input.a.x, var_0.c.x)), func_5(-1010f, Struct_4(vec4<i32>(global1.x, u_input.c, var_1.x, u_input.c), vec4<f32>(158f, -2172f, -476f, -1000f), false)).a.b.xz), Struct_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-23059i, -55959i, -2147483647i, 0i), vec4<i32>(var_1.x, var_1.x, global1.x, u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-264f, -159f, 802f, 909f)), true)).a, Struct_4(vec4<i32>(-global1.x, 0i, ~global1.x, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-838f, 1189f, 182f, -1295f), vec4<f32>(1413f, 1010f, -473f, 573f))), true)).b, var_0.b, var_0.b);
    let var_3 = Struct_1(1u, vec4<u32>(4294967295u, ~_wgslsmith_sub_u32(~var_0.c.x, 4294967295u), min(_wgslsmith_mod_u32(u_input.a.x, 1u), ~(var_0.a.c.x >> (u_input.a.x % 32u))), 28142u >> (u_input.a.x % 32u)), vec3<u32>(_wgslsmith_mult_u32(~1u, ~u_input.a.x) << ((85604u >> (_wgslsmith_mult_u32(var_2.x, var_0.c.x) % 32u)) % 32u), 1411u, 56248u), max(vec2<u32>(1u, 0u), vec2<u32>(~var_2.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, _wgslsmith_f_op_f32(step(-1924f, _wgslsmith_f_op_f32(f32(-1f) * -1977f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_2.x, ~var_2.x), u_input.a.x, u_input.a.x), ~vec3<u32>(1u, _wgslsmith_mod_u32(1u, var_0.c.x), var_3.b.x), max(vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.xx, u_input.a.zw), ~34347u, abs(var_3.a)), min(vec3<u32>(0u, var_2.x, var_3.d.x), var_0.a.b.xzz))));
}

