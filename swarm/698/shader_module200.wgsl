struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_5(Struct_1(vec3<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(485f, global1.a.a.x)) - _wgslsmith_div_f32(global1.b, global1.b))), _wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(2147483647i, global1.a.b)), vec4<f32>(1184f, global1.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_f_op_f32(-global1.a.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1532f - global1.b), _wgslsmith_f_op_f32(ceil(global1.b)))), false), global1.a, Struct_2(global1.a, 1f));
    var var_1 = _wgslsmith_f_op_vec3_f32(var_0.c.a.c.zzz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(1192f, -832f, -1078f) - vec3<f32>(-465f, -734f, global1.a.a.x)))));
    global0 = array<bool, 31>();
    var var_2 = ~min(vec2<u32>(_wgslsmith_mod_u32(31488u, ~u_input.d), u_input.d), ~vec2<u32>(~u_input.d, 0u));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(var_0.b.a.x * 515f), _wgslsmith_f_op_f32(min(-338f, -225f)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(296f, var_0.b.c.x), global1.b), var_1.x, var_0.a.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-401f * global1.b)) * -1015f), var_1.x, 1608f));
    return var_2.x;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), -1000f, true & global0[_wgslsmith_index_u32(u_input.a, 31u)])));
    var var_1 = ~vec4<u32>(_wgslsmith_add_u32(u_input.d, min(_wgslsmith_div_u32(0u, u_input.a), 79905u << (1u % 32u))), 55474u, func_3(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d, 32075u), 31u)]), 1u);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(705f, arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1402f + -1707f))));
    var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~max(var_1.x, 58575u), _wgslsmith_mult_u32(u_input.a, 13132u & var_1.x)), _wgslsmith_mult_u32(27500u, u_input.d & ~0u), 0u, countOneBits(62091u)), ~(abs(select(vec4<u32>(0u, var_1.x, 1120u, 4294967295u), vec4<u32>(25419u, 4294967295u, u_input.d, u_input.a), vec4<bool>(global1.a.d, global0[_wgslsmith_index_u32(4294967295u, 31u)], true, global1.a.d))) << (firstTrailingBit(~vec4<u32>(42844u, u_input.a, var_1.x, 1u)) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1611f))))));
    return Struct_2(Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b))), _wgslsmith_f_op_f32(select(global1.b, global1.a.a.x, global0[_wgslsmith_index_u32(u_input.d, 31u)]))), 2147483647i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f), -1584f), -1833f, _wgslsmith_div_f32(671f, _wgslsmith_f_op_f32(-1258f * arg_0.x)), 1496f), false), 398f);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1231f + -919f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) - _wgslsmith_f_op_f32(-arg_3.e.a.x)))) * arg_2.c.wy);
    var var_1 = Struct_3(arg_3.c.x | arg_3.c.x, arg_3.a, vec4<f32>(_wgslsmith_f_op_f32(arg_0.b - 747f), 153f, -407f, arg_3.e.a.x));
    var var_2 = (arg_3.b << (min(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.a, 38176u, 4294967295u), vec4<u32>(arg_3.c.x, 109481u, 11816u, 12977u)), min(select(vec4<u32>(4294967295u, var_1.a, 1u, u_input.a), vec4<u32>(0u, 75000u, u_input.d, u_input.a), false), vec4<u32>(76312u, 19011u, 72135u, 4982u))) % vec4<u32>(32u))) | vec4<i32>(-_wgslsmith_sub_i32(global1.a.b, global1.a.b), 30133i, 26440i, func_2(vec4<f32>(358f, arg_3.a.b, -114f, arg_2.c.x)).a.b);
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(u_input.a, select(arg_3.c.x, _wgslsmith_add_u32(arg_3.c.x << (var_1.a % 32u), arg_1), (arg_3.c.x > 1u) && true)), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(~47162u, max(0u, arg_3.c.x), ~4294967295u), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(5662u, 41224u, var_1.a)), ~vec3<u32>(arg_1, var_1.a, 0u)) << (vec3<u32>(reverseBits(arg_1), ~1u, var_1.a) % vec3<u32>(32u))));
    let var_4 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))), arg_0.b, -1445f, -842f)).a;
    return Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-320f - global1.b)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_5 {
    var var_0 = _wgslsmith_dot_vec2_i32((vec2<i32>(-1i, global1.a.b) >> (max(reverseBits(vec2<u32>(0u, u_input.d)), reverseBits(vec2<u32>(u_input.d, 3469u))) % vec2<u32>(32u))) ^ vec2<i32>(1i, max(global1.a.b, _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, arg_0.a.b))), _wgslsmith_sub_vec2_i32(-u_input.b, _wgslsmith_sub_vec2_i32(abs(u_input.c.yz), -vec2<i32>(193i, 1i)) | select(~u_input.c.xz, vec2<i32>(1i, 1i), func_2(vec4<f32>(global1.a.a.x, -539f, 2419f, 893f)).a.d)));
    global0 = array<bool, 31>();
    var_0 = abs(~(~0i) ^ reverseBits(abs(global1.a.b)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.a - vec3<f32>(-1269f, arg_0.b, global1.a.c.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1485f, 1195f, 120f), arg_2.a)))) - vec3<f32>(774f, arg_2.a.x, _wgslsmith_f_op_f32(-570f * _wgslsmith_div_f32(1365f, -495f)))), _wgslsmith_add_i32(36548i, func_4(func_2(global1.a.c), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.a), vec3<u32>(u_input.d, 0u, u_input.d))), global1.a, Struct_4(func_2(arg_2.c), -vec4<i32>(global1.a.b, -1i, -17359i, arg_2.b), vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), func_4(arg_0, 75423u, Struct_1(vec3<f32>(701f, arg_2.c.x, -494f), 19122i, arg_2.c, global1.a.d), Struct_4(arg_0, vec4<i32>(-73869i, 23253i, 7830i, 0i), vec2<u32>(u_input.d, 4294967295u), -65085i, Struct_1(vec3<f32>(arg_1.x, 672f, -926f), global1.a.b, vec4<f32>(arg_0.a.a.x, arg_2.a.x, -329f, arg_1.x), false))).a.b, Struct_1(vec3<f32>(960f, global1.a.a.x, arg_1.x), arg_2.b, arg_0.a.c, arg_2.d))).a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, _wgslsmith_f_op_f32(-570f - arg_1.x), arg_1.x, -1217f) + _wgslsmith_f_op_vec4_f32(arg_2.c + vec4<f32>(global1.a.a.x, _wgslsmith_f_op_f32(arg_0.b + arg_0.b), _wgslsmith_f_op_f32(-arg_0.b), -1713f))), all(select(!vec4<bool>(arg_2.d, false, true, false), !select(vec4<bool>(arg_0.a.d, arg_2.d, false, true), vec4<bool>(true, arg_0.a.d, arg_0.a.d, true), vec4<bool>(arg_0.a.d, true, true, global0[_wgslsmith_index_u32(105004u, 31u)])), !select(vec4<bool>(global1.a.d, true, global1.a.d, false), vec4<bool>(false, false, false, arg_2.d), vec4<bool>(arg_0.a.d, arg_2.d, false, true)))));
    global1 = arg_0;
    return Struct_5(arg_0.a, func_4(Struct_2(func_2(vec4<f32>(-754f, arg_1.x, var_1.a.x, -863f)).a, _wgslsmith_f_op_f32(-func_4(arg_0, 4294967295u, arg_2, Struct_4(Struct_2(global1.a, arg_2.a.x), vec4<i32>(arg_2.b, 31955i, var_1.b, arg_0.a.b), vec2<u32>(u_input.d, u_input.d), u_input.b.x, arg_2)).a.a.x)), u_input.a ^ 0u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(-730f, -499f, -277f)) * arg_0.a.c.ywy), ~(-arg_2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) * _wgslsmith_f_op_vec4_f32(select(arg_0.a.c, vec4<f32>(1546f, arg_2.c.x, -585f, arg_2.c.x), arg_2.d))), ~u_input.d > u_input.d), Struct_4(Struct_2(func_2(vec4<f32>(323f, arg_2.c.x, 317f, 210f)).a, _wgslsmith_f_op_f32(-var_1.c.x)), max(reverseBits(vec4<i32>(1i, 2147483647i, 1i, 0i)), -vec4<i32>(8990i, -2147483647i, arg_0.a.b, -2147483647i)), reverseBits(vec2<u32>(66496u, u_input.d) & vec2<u32>(u_input.d, u_input.a)), arg_0.a.b, Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a.a), var_1.b, _wgslsmith_f_op_vec4_f32(global1.a.c + vec4<f32>(arg_1.x, arg_0.b, global1.a.a.x, global1.a.a.x)), !arg_2.d))).a, Struct_2(func_2(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-922f * -1387f), _wgslsmith_f_op_f32(global1.a.c.x - arg_0.a.c.x), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))).a, -238f));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = -1771f;
    var_0 = global1.b;
    global0 = array<bool, 31>();
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, -479f, arg_2.a.x) + arg_2.c.xxy), _wgslsmith_f_op_vec3_f32(max(arg_2.a, vec3<f32>(arg_0.x, arg_2.c.x, arg_1.b.a.x)))), global1.a.b, _wgslsmith_f_op_vec4_f32(-func_2(global1.a.c).a.c), false), func_4(func_5(arg_1.c, arg_0.yxz, func_4(Struct_2(Struct_1(vec3<f32>(arg_0.x, arg_1.b.c.x, arg_1.c.b), global1.a.b, arg_0, arg_1.c.a.d), arg_0.x), 11233u, arg_1.c.a, Struct_4(arg_1.c, vec4<i32>(47388i, -31i, 0i, 30362i), vec2<u32>(4294967295u, u_input.a), -4338i, Struct_1(vec3<f32>(-517f, -1000f, -1573f), arg_2.b, arg_1.b.c, false))).a).c, 1u, func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-964f, 258f, arg_2.a.x, -803f), global1.a.c)).a, Struct_4(Struct_2(Struct_1(arg_0.wyw, -2147483647i, vec4<f32>(arg_1.b.a.x, arg_2.c.x, -1407f, 186f), global0[_wgslsmith_index_u32(u_input.d, 31u)]), -3418f), vec4<i32>(-19973i, arg_2.b, arg_2.b, arg_3) & vec4<i32>(0i, u_input.b.x, global1.a.b, global1.a.b), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_add_i32(global1.a.b, 38397i), Struct_1(vec3<f32>(1000f, 137f, 258f), arg_2.b, vec4<f32>(arg_0.x, 848f, arg_2.c.x, arg_2.c.x), true))).b), vec4<i32>(arg_2.b, 0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.b, arg_3, 44194i), vec3<i32>(arg_2.b, 55192i, arg_3)), 0i), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 4294967295u) | vec2<u32>(u_input.d, u_input.d), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.d), ~vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.d, ~u_input.d)) >> (vec2<u32>(2401u, u_input.d) % vec2<u32>(32u)), _wgslsmith_sub_i32(-3051i, u_input.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1264f + arg_1.a.c.x), _wgslsmith_f_op_f32(-arg_2.c.x), global1.a.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(arg_1.a.a.x + 1010f), _wgslsmith_f_op_f32(-arg_1.b.c.x)), true)), abs(i32(-1i) * -10911i), arg_1.a.c, any(vec3<bool>(true, u_input.d >= 0u, !arg_2.d))));
    let var_2 = _wgslsmith_add_i32(firstTrailingBit(var_1.a.a.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.c.x), vec3<i32>(34465i, 9100i ^ var_1.e.b, 48142i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x - -1816f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.e.a.x + var_1.a.a.c.x), _wgslsmith_f_op_f32(exp2(var_1.e.c.x)), var_1.a.a.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.a.x))))), firstTrailingBit(global1.a.b), _wgslsmith_f_op_vec4_f32(-func_5(var_1.a, arg_1.b.c.yzw, func_5(var_1.a, vec3<f32>(-1007f, global1.b, 350f), func_2(arg_2.c).a).a).a.c), global0[_wgslsmith_index_u32(0u, 31u)]);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    global1 = Struct_2(Struct_1(vec3<f32>(global1.b, arg_0, arg_1), _wgslsmith_add_i32(-2147483647i, u_input.b.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1.a.c), vec4<f32>(-575f, arg_1, -140f, _wgslsmith_f_op_f32(arg_0 - -770f)))), global0[_wgslsmith_index_u32(u_input.a, 31u)]), arg_1);
    global1 = Struct_2(func_6(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.a.c, vec4<f32>(640f, -1440f, global1.a.c.x, arg_1))), global1.a.c))), func_5(func_4(func_2(global1.a.c), 24602u, global1.a, Struct_4(Struct_2(global1.a, 1814f), vec4<i32>(u_input.c.x, global1.a.b, 10978i, 0i), vec2<u32>(u_input.d, u_input.a), 35280i, global1.a)), vec3<f32>(_wgslsmith_f_op_f32(select(356f, arg_0, false)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_4(func_2(global1.a.c), max(64559u, u_input.d), Struct_1(global1.a.c.zzx, -2147483647i, vec4<f32>(arg_1, arg_1, -930f, arg_1), global0[_wgslsmith_index_u32(30675u, 31u)]), Struct_4(Struct_2(Struct_1(global1.a.c.zxz, u_input.b.x, vec4<f32>(-1455f, 693f, arg_0, 734f), global0[_wgslsmith_index_u32(55456u, 31u)]), global1.b), vec4<i32>(-1i, 22284i, global1.a.b, -1i), vec2<u32>(20401u, 4294967295u), -1i, Struct_1(global1.a.c.zwx, global1.a.b, vec4<f32>(arg_0, global1.b, 982f, global1.b), true))).a), func_5(Struct_2(Struct_1(vec3<f32>(789f, -601f, -1007f), -2147483647i, vec4<f32>(271f, -1617f, -430f, 394f), global1.a.d), _wgslsmith_f_op_f32(-arg_0)), global1.a.c.yzz, Struct_1(vec3<f32>(arg_1, -503f, 687f), -9968i, vec4<f32>(534f, arg_0, -1110f, global1.b), !global0[_wgslsmith_index_u32(32617u, 31u)])).a, u_input.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec4_f32(step(global1.a.c, global1.a.c)), Struct_5(global1.a, global1.a, Struct_2(Struct_1(vec3<f32>(391f, 1122f, arg_0), global1.a.b, vec4<f32>(arg_0, -1000f, -556f, -1000f), true), arg_1)), func_5(Struct_2(global1.a, -152f), global1.a.c.wzx, global1.a).b, global1.a.b).a.x + _wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(min(2637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(122f, arg_1))))))));
    global1 = Struct_2(func_6(global1.a.c, func_5(func_2(_wgslsmith_f_op_vec4_f32(floor(global1.a.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1251f, 183f, arg_0)), global1.a), global1.a, -global1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f + arg_0) - -1218f));
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 10355u), vec2<u32>(u_input.a, 3232u)), vec2<u32>(0u, 4294967295u) >> (vec2<u32>(2360u, var_0) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_mod_u32(~1u, 51612u), 1u & (u_input.d | 1u)), ~vec2<u32>(var_0 & 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(56877u, var_0), vec2<u32>(u_input.d, var_0), vec2<u32>(var_0, u_input.d)), ~vec2<u32>(var_0, var_0))));
    return Struct_2(func_2(func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_0, global1.a.c.x)) + _wgslsmith_f_op_vec4_f32(global1.a.c - vec4<f32>(arg_0, arg_0, 200f, arg_0))), func_5(func_5(Struct_2(global1.a, -1955f), vec3<f32>(-705f, arg_0, global1.b), global1.a).c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -213f, global1.b))), global1.a), Struct_1(global1.a.a, func_6(global1.a.c, Struct_5(Struct_1(vec3<f32>(1449f, -1342f, 1000f), u_input.b.x, vec4<f32>(-1205f, global1.b, -1810f, 708f), global0[_wgslsmith_index_u32(var_0, 31u)]), Struct_1(vec3<f32>(global1.b, 1419f, arg_0), 25103i, vec4<f32>(-947f, global1.a.c.x, global1.a.a.x, global1.a.c.x), global0[_wgslsmith_index_u32(var_0, 31u)]), Struct_2(global1.a, -1483f)), Struct_1(global1.a.c.wxy, 0i, vec4<f32>(arg_0, -420f, global1.a.c.x, -343f), true), global1.a.b).b, _wgslsmith_f_op_vec4_f32(-global1.a.c), global1.a.d), 10459i).c).a, -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 31u)], false | !global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]));
    var var_1 = u_input.b;
    var var_2 = func_1(_wgslsmith_f_op_f32(step(global1.a.a.x, 1920f)), _wgslsmith_f_op_f32(-global1.a.a.x));
    var var_3 = var_0.yyx;
    let var_4 = u_input.b.x;
    let var_5 = ~vec4<u32>(u_input.d, _wgslsmith_sub_u32(u_input.d, select(~29062u, _wgslsmith_dot_vec2_u32(vec2<u32>(2698u, 39675u), vec2<u32>(66210u, 33045u)), any(var_0))), u_input.a, ((23973u >> (u_input.a % 32u)) << (0u % 32u)) >> (max(1u, u_input.d) % 32u));
    var_1 = -max(~(-vec2<i32>(2147483647i, 1i)) ^ ~u_input.b, u_input.b);
    let var_6 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(vec4<f32>(_wgslsmith_f_op_f32(-var_6.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.a.x) - var_2.b), global1.b, 268f), Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a.a.x, -754f, -1016f))), _wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_f_op_vec4_f32(-var_2.a.c), true), global1.a, Struct_2(func_1(var_2.b, var_6.c.x).a, -510f)), var_2.a, var_1.x).b, vec3<u32>(~countOneBits(~43207u), _wgslsmith_div_u32(u_input.a, min(26522u, _wgslsmith_dot_vec3_u32(var_5.yzw, var_5.yxy))), 4294967295u), var_5, min(vec2<u32>(var_5.x, 0u), vec2<u32>(func_3(true), 1u)));
}

