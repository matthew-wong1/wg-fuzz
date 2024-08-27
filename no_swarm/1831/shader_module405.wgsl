struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: vec2<f32> = vec2<f32>(-543f, -519f);

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<bool, 31> = array<bool, 31>(true, false, false, false, false, true, true, false, true, false, true, false, false, true, false, false, false, false, true, false, true, false, false, true, false, false, true, false, false, false, false);

var<private> global4: array<bool, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<bool>) -> i32 {
    global4 = array<bool, 18>();
    var var_0 = vec3<u32>(max(~abs(~4294967295u), ~_wgslsmith_div_u32(0u, global0.x | 0u)), global0.x, _wgslsmith_dot_vec3_u32(u_input.a.zyw, abs(vec3<u32>(max(61640u, 59456u), global0.x, firstLeadingBit(1u)))));
    var var_1 = ~(~vec4<i32>(0i, ~1i, 2147483647i, firstLeadingBit(abs(-24542i))));
    var var_2 = firstLeadingBit(var_1.x);
    var_0 = u_input.a.wyz;
    return 1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = false;
    global3 = array<bool, 31>();
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(18547u, 18u)], -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, -30988i), arg_2.e), arg_2.c, _wgslsmith_clamp_i32(-arg_2.e, arg_2.e, arg_2.e | arg_2.e), ~arg_2.e), vec3<i32>(_wgslsmith_sub_i32(arg_2.e, _wgslsmith_mod_i32(arg_2.e, arg_2.c) | func_3(vec2<u32>(19530u, arg_2.d), true, vec4<bool>(arg_2.a.x, true, global4[_wgslsmith_index_u32(arg_0.x, 18u)], arg_2.a.x))), -25877i, countOneBits(~1i)));
    global2 = array<Struct_1, 1>();
    let var_2 = global0.x;
    return Struct_2(global2[_wgslsmith_index_u32(var_1.a.d & arg_0.x, 1u)], arg_2.a.x, max(firstTrailingBit(firstTrailingBit(var_1.c ^ var_1.c)), vec4<i32>(_wgslsmith_clamp_i32(65577i, -arg_2.e, var_1.d.x), ~(arg_2.c >> (1u % 32u)), abs(~var_1.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, 23687i) | var_1.c.zz, ~vec2<i32>(arg_2.e, 2147483647i)))), countOneBits(vec3<i32>(0i, -select(var_1.d.x, var_1.a.c, arg_2.a.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(35897i, var_1.a.e), -arg_2.e))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1.a, any(select(select(select(vec4<bool>(false, arg_2.x, false, arg_0.a.a.x), vec4<bool>(false, false, true, false), vec4<bool>(arg_2.x, true, false, false)), select(vec4<bool>(arg_0.a.a.x, false, false, global3[_wgslsmith_index_u32(global0.x, 31u)]), vec4<bool>(false, true, false, arg_1.a.a.x), arg_2.x), global3[_wgslsmith_index_u32(38463u, 31u)] && false), !(!vec4<bool>(false, global4[_wgslsmith_index_u32(arg_0.a.d, 18u)], true, global4[_wgslsmith_index_u32(arg_0.a.d, 18u)])), select(vec4<bool>(arg_2.x, false, arg_2.x, false), !vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), !vec4<bool>(arg_2.x, false, arg_2.x, false)))), _wgslsmith_div_vec4_i32(-arg_1.c, -select(~arg_0.c, arg_0.c, true)), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(arg_1.d, _wgslsmith_div_vec3_i32(vec3<i32>(0i, 5714i, arg_3.x), vec3<i32>(1i, 5408i, 2147483647i))), vec3<i32>(~(-56209i), select(15390i, arg_1.a.e, false), abs(arg_0.c.x)) << (u_input.a.yyw % vec3<u32>(32u))));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-arg_0.c.x, func_2(select(_wgslsmith_mod_vec3_u32(u_input.a.wzw, u_input.a.yzz), u_input.a.yzy, false), arg_1.a.b, func_2(vec3<u32>(var_0.a.d, 70851u, var_0.a.d), _wgslsmith_f_op_f32(f32(-1f) * -1285f), Struct_1(vec3<bool>(false, false, false), var_0.a.b, var_0.c.x, 42285u, -54333i)).a).c.x), ~arg_0.c.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))));
    var var_3 = global2[_wgslsmith_index_u32(min(u_input.b & arg_1.a.d, 113040u), 1u)];
    var_3 = func_2(~vec3<u32>(~0u, ~5672u, ~arg_1.a.d) << (vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 0u, arg_1.a.d)), firstLeadingBit(u_input.a.wzx)), select(u_input.a.x, firstLeadingBit(4294967295u), u_input.c > 59032u), countOneBits(arg_0.a.d >> (u_input.b % 32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b * var_0.a.b) * global1.x), func_2(u_input.a.yyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.b, _wgslsmith_f_op_f32(select(718f, 1178f, true)), false)) * arg_0.a.b), func_2(u_input.a.yyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(trunc(arg_1.a.b)), 0i, 2296u, func_2(u_input.a.yyx, -489f, Struct_1(var_0.a.a, -740f, arg_1.d.x, u_input.b, arg_0.c.x)).d.x)).a).a).a;
    return func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.wyw, u_input.a.xxx), countOneBits(u_input.a.ywz)), _wgslsmith_sub_vec3_u32(u_input.a.yww, select(select(vec3<u32>(global0.x, u_input.a.x, 58845u), vec3<u32>(4294967295u, 1u, 0u), false), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.d, 103886u, 1u), vec3<u32>(var_3.d, 26400u, arg_0.a.d)), arg_1.b))), arg_0.a.b, func_2(vec3<u32>(~_wgslsmith_sub_u32(var_3.d, 3385u), 32264u, ~arg_0.a.d), 1399f, global2[_wgslsmith_index_u32(76619u, 1u)]).a);
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = u_input.a.xw;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1125f, arg_0.a.b))));
    global0 = vec2<u32>(4294967295u, abs(1u));
    let var_0 = Struct_2(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(~global0.x, 31u)], global3[_wgslsmith_index_u32(~global0.x, 31u)], true), global1.x, -arg_0.d.x, 2814u, -_wgslsmith_sub_i32(arg_0.a.e, i32(-1i) * -2147483647i)), func_2(countOneBits(~u_input.a.xyx), arg_0.a.b, Struct_1(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 31u)], arg_0.b), vec3<bool>(false, false, false), global3[_wgslsmith_index_u32(87318u, 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b - 279f) - -422f), -15389i, global0.x, _wgslsmith_clamp_i32(arg_0.a.c, i32(-1i) * -2147483647i, arg_0.c.x))).b, select(arg_0.c, vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.a.e), arg_0.c)), 0i, arg_0.c.x, max(_wgslsmith_add_i32(arg_0.d.x, -83434i), arg_0.a.e)), func_2(u_input.a.zxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 195f) - _wgslsmith_f_op_f32(-587f - global1.x)), func_4(Struct_2(Struct_1(arg_0.a.a, global1.x, arg_0.a.e, u_input.a.x, arg_0.d.x), false, arg_0.c, vec3<i32>(-6320i, arg_0.c.x, -1i)), arg_0, arg_0.a.a.xy, -arg_0.c.wx).a).b), vec3<i32>(arg_0.d.x ^ ~abs(arg_0.a.e), -53791i, func_3(u_input.a.wx, select(!global4[_wgslsmith_index_u32(19312u, 18u)], !global4[_wgslsmith_index_u32(25334u, 18u)], false), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(17936u, 31u)], global3[_wgslsmith_index_u32(u_input.a.x, 31u)], true)))));
    var var_1 = Struct_2(func_4(func_4(func_4(Struct_2(Struct_1(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0.a.d, 31u)], global4[_wgslsmith_index_u32(global0.x, 18u)]), global1.x, -1i, arg_0.a.d, 2147483647i), global4[_wgslsmith_index_u32(global0.x, 18u)], arg_0.c, arg_0.c.zyw), arg_0, select(vec2<bool>(true, false), arg_0.a.a.yx, var_0.a.a.x), -var_0.c.yy), Struct_2(func_2(vec3<u32>(9949u, var_0.a.d, 25314u), -241f, global2[_wgslsmith_index_u32(var_0.a.d, 1u)]).a, func_2(vec3<u32>(4294967295u, 4294967295u, global0.x), -1974f, Struct_1(var_0.a.a, -2025f, var_0.a.e, global0.x, var_0.d.x)).a.a.x, vec4<i32>(0i, var_0.a.e, var_0.d.x, -1i), ~arg_0.c.zwz), !select(arg_0.a.a.xx, vec2<bool>(true, false), global3[_wgslsmith_index_u32(1u, 31u)]), vec2<i32>(firstTrailingBit(arg_0.a.e), ~1i)), var_0, func_2(vec3<u32>(~9719u, ~1u, global0.x | u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f - global1.x)), Struct_1(var_0.a.a, -417f, -var_0.c.x, ~u_input.b, -1i)).a.a.zy, _wgslsmith_mod_vec2_i32(vec2<i32>(~arg_0.a.e, -25312i), arg_0.c.wy)).a, (false & (any(vec4<bool>(false, false, true, false)) & any(vec3<bool>(global4[_wgslsmith_index_u32(35118u, 18u)], arg_0.b, false)))) && !var_0.b, var_0.c ^ vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.a.c, var_0.d.x), vec3<i32>(0i, -47147i, 1i)) << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u), -var_0.d.x, -17215i), arg_0.d);
    return 1u;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<i32> {
    var var_0 = !(!global3[_wgslsmith_index_u32(4294967295u, 31u)]);
    let var_1 = arg_0;
    var var_2 = vec4<u32>(1u, ~func_5(func_4(Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global4[_wgslsmith_index_u32(arg_1, 18u)], vec4<i32>(1i, -44307i, 0i, 2147483647i), vec3<i32>(-19402i, 2046i, -2147483647i)), func_2(u_input.a.zzx, global1.x, global2[_wgslsmith_index_u32(74446u, 1u)]), func_2(vec3<u32>(u_input.b, 1u, u_input.c), -962f, Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 31u)], false, false), var_1, -1i, 1u, 2147483647i)).a.a.yy, max(vec2<i32>(-49508i, -22558i), vec2<i32>(0i, 2147483647i)))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_1, u_input.c, 0u, 1u)), global0.x) & _wgslsmith_sub_u32(u_input.b, _wgslsmith_clamp_u32(min(u_input.b, 1u), _wgslsmith_add_u32(0u, arg_1), _wgslsmith_mod_u32(22902u, 57668u))), global0.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1000f) + vec2<f32>(var_1, arg_0))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-973f, arg_0) - vec2<f32>(arg_0, 665f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1060f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2139f, arg_0))))))));
    var var_3 = -reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(func_2(var_2.ywy, -116f, Struct_1(vec3<bool>(true, global3[_wgslsmith_index_u32(global0.x, 31u)], global3[_wgslsmith_index_u32(arg_1, 31u)]), global1.x, 33250i, 19648u, 16602i)).c, abs(vec4<i32>(10891i, 47490i, 17433i, -2147483647i))), max(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(0i, -20440i, -1i, 2147483647i), vec4<i32>(0i, 2147483647i, -1i, 19593i), vec4<bool>(false, global4[_wgslsmith_index_u32(arg_1, 18u)], global4[_wgslsmith_index_u32(65326u, 18u)], global4[_wgslsmith_index_u32(var_2.x, 18u)])))));
    return _wgslsmith_clamp_vec3_i32(var_3.zyx, var_3.xww, var_3.xyz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(~99913u, 1u)], false, vec4<i32>(min(firstTrailingBit(~(-1i)), -1i), reverseBits(max(~16520i, _wgslsmith_dot_vec2_i32(vec2<i32>(66531i, -20271i), vec2<i32>(20681i, -13049i)))), ~(1i << (0u % 32u)), 1i), -(~(func_1(203f, global0.x) >> (u_input.a.wzx % vec3<u32>(32u)))));
    global2 = array<Struct_1, 1>();
    global0 = ~u_input.a.yx;
    let var_1 = Struct_1(var_0.a.a, var_0.a.b, var_0.c.x, global0.x, ~(-var_0.c.x));
    var var_2 = func_4(func_4(var_0, var_0, func_4(var_0, var_0, vec2<bool>(global3[_wgslsmith_index_u32(func_5(var_0), 31u)], false), min(~var_0.d.zy, var_0.d.zy)).a.a.xz, vec2<i32>(func_2(vec3<u32>(4294967295u, 4294967295u, 1u), -638f, Struct_1(var_0.a.a, 246f, 2147483647i, u_input.b, 6476i)).c.x, ~0i)), var_0, func_2(firstTrailingBit(min(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 31821u, global0.x), u_input.a.wyx), vec3<u32>(u_input.b, var_0.a.d, 0u))), _wgslsmith_f_op_f32(trunc(-711f)), var_1).a.a.zy, vec2<i32>((-2147483647i ^ var_1.e) | 1i, ~(var_1.e | -55663i)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zzw, u_input.a.xyx), 25462u) % vec2<u32>(32u)));
    var var_3 = select(select(select(!(!vec4<bool>(global4[_wgslsmith_index_u32(10727u, 18u)], true, global4[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), !vec4<bool>(var_1.a.x, var_2.a.a.x, global4[_wgslsmith_index_u32(var_1.d, 18u)], var_0.b), true | var_0.a.a.x), vec4<bool>(var_1.a.x, true, _wgslsmith_add_u32(7587u, var_2.a.d) <= func_4(Struct_2(Struct_1(vec3<bool>(var_0.a.a.x, var_0.b, false), 2521f, var_0.c.x, 41357u, -2147483647i), false, vec4<i32>(1i, 0i, 0i, var_1.c), var_0.d), var_0, vec2<bool>(var_1.a.x, global4[_wgslsmith_index_u32(4294967295u, 18u)]), var_0.c.xy).a.d, true), !vec4<bool>(true, any(var_1.a), var_1.a.x, true)), !(!(!(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 18u)], var_0.b, global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(u_input.a.x, 31u)])))), !select(vec4<bool>(!var_0.a.a.x, !var_1.a.x, true, all(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global3[_wgslsmith_index_u32(1u, 31u)], var_1.a.x))), vec4<bool>(!var_0.b, !var_2.b, any(var_2.a.a.yx), true), global4[_wgslsmith_index_u32(~(~var_1.d), 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f + -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1571f)) * 243f)))), ~_wgslsmith_clamp_i32(17381i, -6708i, var_2.c.x), 247f, 60132u, var_2.a.d);
}

