struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, true, true, true, true, true, false);

var<private> global2: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_1(arg_1.a, -(~max(vec3<i32>(-4049i, arg_1.a, u_input.e) | arg_1.d.b, arg_1.d.b)), firstTrailingBit(vec4<u32>(~14394u, u_input.c.x, ~u_input.b, arg_1.d.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, 1f))), -896f)));
    var var_1 = ~(~var_0.c.x);
    let var_2 = arg_1;
    let var_3 = 8648u;
    let var_4 = var_0.c.x;
    return ~reverseBits(_wgslsmith_clamp_vec4_u32(~var_0.c, arg_1.d.c, vec4<u32>(var_3, var_0.c.x, 1u, arg_1.d.c.x))) ^ select(~(~vec4<u32>(var_4, var_0.c.x, 1u, 0u)), _wgslsmith_mult_vec4_u32(~(~var_2.d.c), arg_1.d.c), select(select(!vec4<bool>(true, var_2.e.x, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 8u)], true, global1[_wgslsmith_index_u32(var_4, 8u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_2.d.c.x, 8u)], var_2.e.x, false, var_2.e.x)), select(global2[_wgslsmith_index_u32(~u_input.b, 29u)], !vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(0u, 8u)]), true), any(!global2[_wgslsmith_index_u32(var_4, 29u)])));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global1 = array<bool, 8>();
    let var_0 = Struct_1(arg_0.b.x, arg_2.b, reverseBits(~select(vec4<u32>(arg_1.x, u_input.b, arg_1.x, arg_0.c.x), abs(vec4<u32>(arg_0.c.x, 4294967295u, arg_1.x, 4294967295u)), true)), 379f);
    let var_1 = 4294967295u;
    let var_2 = select(1u & u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, arg_1.x, 25775u, var_1), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 1u), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1765f, arg_0.d, -564f)), Struct_2(arg_0.a, arg_0.d, arg_2.d, Struct_1(11116i, vec3<i32>(-58785i, 0i, 0i), vec4<u32>(var_1, 22851u, arg_0.c.x, var_0.c.x), var_0.d), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 8u)], global1[_wgslsmith_index_u32(u_input.d.x, 8u)])), _wgslsmith_f_op_f32(ceil(1560f))).x, var_1, (arg_0.c.x >> (36131u % 32u)) << (u_input.c.x % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -226f) >= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-959f - var_0.d), _wgslsmith_f_op_f32(min(var_0.d, 343f))), arg_0.d)));
    global1 = array<bool, 8>();
    return 1540f;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<f32>) -> i32 {
    global1 = array<bool, 8>();
    global2 = array<vec4<bool>, 29>();
    let var_0 = -86495i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(countOneBits(u_input.e), vec3<i32>(u_input.a.x, 9193i, 2147483647i), ~vec4<u32>(51374u, 4294967295u, 30686u, 51406u), _wgslsmith_f_op_f32(866f + arg_2.x)), ~(~vec3<u32>(u_input.b, 0u, u_input.d.x)), Struct_1(abs(arg_0.x), reverseBits(vec3<i32>(93827i, u_input.e, var_0)), func_3(arg_2, Struct_2(var_0, 1149f, global0.x, Struct_1(19973i, arg_0, vec4<u32>(36891u, 0u, 38255u, 0u), global0.x), vec2<bool>(global1[_wgslsmith_index_u32(20827u, 8u)], true)), arg_2.x), _wgslsmith_f_op_f32(-arg_1))))));
    var var_2 = Struct_1(_wgslsmith_mult_i32(u_input.e, firstLeadingBit(firstLeadingBit(1i))), arg_0, ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.b), ~vec4<u32>(u_input.b, 4294967295u, u_input.d.x, 24909u)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(295f, -1223f, global0.x) * arg_2), Struct_2(u_input.e, -202f, 803f, Struct_1(u_input.e, arg_0, vec4<u32>(32572u, 0u, 4294967295u, 4294967295u), -757f), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])), _wgslsmith_f_op_f32(arg_2.x * 913f))), _wgslsmith_f_op_f32(func_4(Struct_1(~2147483647i, u_input.a.wwy, reverseBits(vec4<u32>(4294967295u, 23278u, u_input.b, u_input.d.x)), 987f), u_input.d, Struct_1(arg_0.x, ~_wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(-7259i, 2147483647i, -16796i)), _wgslsmith_add_vec4_u32(vec4<u32>(51689u, u_input.c.x, u_input.d.x, 4294967295u), vec4<u32>(0u, u_input.c.x, 4294967295u, 0u)) << ((vec4<u32>(u_input.c.x, 3836u, u_input.b, 4294967295u) | vec4<u32>(u_input.c.x, 0u, u_input.d.x, 38898u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -837f) - _wgslsmith_f_op_f32(arg_1 + arg_1))))));
    return select(arg_0.x, 4906i, any(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 8u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], false), false))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(abs(_wgslsmith_div_i32(~u_input.e, ~(i32(-1i) * -41418i))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), global0.x, true)), global0.x))), 1000f, Struct_1(_wgslsmith_div_i32(i32(-1i) * -33737i, abs(reverseBits(arg_0.x))), abs(~countOneBits(vec3<i32>(arg_0.x, arg_0.x, arg_0.x))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 68123u, 4294967295u), vec3<u32>(10896u, u_input.c.x, 1u)), u_input.c.x, u_input.b, 1u), _wgslsmith_f_op_f32(step(-852f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(func_4(Struct_1(arg_0.x, vec3<i32>(-1i, u_input.a.x, u_input.e), vec4<u32>(18922u, 4294967295u, u_input.d.x, 0u), 859f), vec3<u32>(40362u, u_input.d.x, u_input.c.x), Struct_1(arg_0.x, arg_0, vec4<u32>(24243u, 42892u, u_input.c.x, u_input.c.x), 1183f))), !arg_1.x))))), vec2<bool>(false, countOneBits(abs(arg_0.x)) < u_input.a.x));
    var var_1 = min(~(~(-(~vec4<i32>(1i, u_input.e, 1i, var_0.a)))), abs(_wgslsmith_mod_vec4_i32(countOneBits(u_input.a), vec4<i32>(0i, -33202i, 0i, 1i))));
    var var_2 = ~_wgslsmith_mod_i32(-36403i, 2147483647i);
    var var_3 = ~0u << (_wgslsmith_mult_u32(var_0.d.c.x, _wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(50526u, 4294967295u, u_input.c.x), vec3<u32>(30566u, var_0.d.c.x, 5352u)), ~vec3<u32>(0u, 27184u, 4294967295u)))) % 32u);
    var var_4 = vec4<i32>(min(u_input.a.x, ~arg_0.x), ~1i, -52935i, -(arg_0.x << (~(~20594u) % 32u)));
    return Struct_1(-(-(i32(-1i) * -27180i) >> (~func_3(vec3<f32>(-1183f, 536f, var_0.c), var_0, 1120f).x % 32u)), _wgslsmith_div_vec3_i32(u_input.a.zww, arg_0), var_0.d.c, _wgslsmith_f_op_f32(step(178f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(var_0.d, vec3<u32>(var_0.d.c.x, u_input.c.x, 1u), var_0.d)), global0.x)))))));
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    global2 = array<vec4<bool>, 29>();
    let var_0 = func_5(vec3<i32>(48759i, -func_2(select(u_input.a.zzy, vec3<i32>(u_input.e, arg_1, u_input.a.x), true), _wgslsmith_f_op_f32(arg_0 * 237f), vec3<f32>(1130f, -375f, -346f)), arg_1), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.xy, _wgslsmith_div_vec2_u32(max(u_input.d.yx, u_input.c.xx), vec2<u32>(29759u, u_input.c.x))), u_input.c.xx), 29u)]);
    let var_1 = var_0;
    var var_2 = _wgslsmith_mult_u32(firstLeadingBit(var_0.c.x) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.yx, var_0.c.ww), ~vec2<u32>(u_input.c.x, u_input.c.x)) % 32u), _wgslsmith_mult_u32(51342u, var_1.c.x));
    var_2 = var_0.c.x;
    return global1[_wgslsmith_index_u32(72502u, 8u)];
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec3_i32(arg_1.xzx, vec3<i32>(1644i, u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -59969i, u_input.a.x), vec3<i32>(u_input.e, -2147483647i, u_input.e)) | arg_1.x));
    var var_1 = Struct_1(~(-1i), -abs(~firstTrailingBit(vec3<i32>(u_input.a.x, arg_1.x, -1871i))), vec4<u32>(~u_input.b, ~_wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.zx), _wgslsmith_div_u32(u_input.b, ~(~u_input.d.x)), _wgslsmith_dot_vec2_u32(u_input.c.xz, func_5(_wgslsmith_mod_vec3_i32(u_input.a.yzw, arg_1.xxy), arg_0).c.zw)), _wgslsmith_f_op_f32(-global0.x));
    var_1 = func_5(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, var_1.a, select(_wgslsmith_mod_i32(var_1.b.x, var_0.x), -var_0.x, arg_0.x)), u_input.a.wwz), !vec4<bool>(false, any(arg_0.zw), any(global2[_wgslsmith_index_u32(9595u, 29u)]), arg_0.x));
    global2 = array<vec4<bool>, 29>();
    let var_2 = ~_wgslsmith_mod_vec2_u32(min(abs(u_input.d.zx), ~(u_input.c.yy | vec2<u32>(u_input.b, 4294967295u))), var_1.c.ww);
    return Struct_2(-firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15856i, -1i), vec3<i32>(u_input.a.x, var_0.x, u_input.a.x)), abs(u_input.a.x))), -1598f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.d + var_1.d))), Struct_1(var_0.x, _wgslsmith_clamp_vec3_i32(firstTrailingBit(var_1.b), var_1.b, vec3<i32>(8563i, -31386i, -21017i)) >> (~vec3<u32>(u_input.c.x, 4294967295u, var_1.c.x) % vec3<u32>(32u)), abs(var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d))))), select(!arg_0.wy, vec2<bool>(arg_0.x != false, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!global1[_wgslsmith_index_u32(64381u, 8u)]);
    let var_1 = func_6(vec4<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 0u), 8u)], false)), false, func_1(_wgslsmith_div_f32(-1154f, 1460f), ~u_input.e & _wgslsmith_sub_i32(-25088i, u_input.e)), true), vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(u_input.a.x, u_input.e, 1i)), u_input.a.yyw), ~2147483647i, i32(-1i) * -firstTrailingBit(2147483647i), -1i));
    global2 = array<vec4<bool>, 29>();
    var var_2 = var_1.d.a;
    let var_3 = u_input.b;
    let var_4 = 764f;
    var var_5 = func_6(!(!global2[_wgslsmith_index_u32(var_3, 29u)]), -select(vec4<i32>(1i, 2147483647i, func_6(vec4<bool>(var_1.e.x, false, true, true), u_input.a).d.b.x, firstTrailingBit(0i)), abs(-vec4<i32>(u_input.e, 0i, var_1.a, u_input.e)), !func_6(global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a).e.x)).d;
    let var_6 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1860f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4))), _wgslsmith_f_op_f32(f32(-1f) * -548f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, var_5.d, 1221f) * vec3<f32>(-250f, var_5.d, -412f))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

