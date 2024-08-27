struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(680f, 236f, 2733f, 790f);

var<private> global1: array<f32, 17> = array<f32, 17>(-1000f, 783f, 1218f, -1174f, -692f, 543f, 406f, 610f, 1498f, -400f, -1000f, 587f, 258f, 568f, -337f, 777f, 1550f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 21>;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), 55656i, vec2<u32>(29374u, 19099u), 36048i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> vec3<u32> {
    global3 = array<Struct_2, 21>();
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global2.c.x, global4.c.x) & (vec3<u32>(1u, 1u, global4.c.x) ^ vec3<u32>(1u, 34278u, global4.c.x)), ~vec3<u32>(global4.c.x, global2.c.x, 1214u)), 19209u, (_wgslsmith_add_u32(global4.c.x, 105132u) << (global4.c.x % 32u)) << (9124u % 32u), global4.c.x) >> (firstLeadingBit(vec4<u32>(global4.c.x, 4294967295u, ~_wgslsmith_div_u32(1u, global2.c.x), global2.c.x)) % vec4<u32>(32u));
    global1 = array<f32, 17>();
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1384f, global0.x, 199f, arg_3), _wgslsmith_f_op_vec4_f32(floor(arg_1))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 1088f, -1930f, arg_1.x)))), arg_1)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), 116f, -1900f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_1.x)))))));
    var var_1 = Struct_1(-((vec3<i32>(-1i) * -vec3<i32>(-16891i, global4.b, -2147483647i)) & (_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, global4.b, 36797i), vec3<i32>(u_input.a.x, 18326i, 2147483647i)) & select(u_input.a.xww, global4.a, arg_0))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.d, -39261i, _wgslsmith_add_i32(3451i, u_input.a.x), _wgslsmith_dot_vec2_i32(global4.a.xy, u_input.a.zx)), u_input.a)), ~(~vec2<u32>(36312u, global2.c.x)), min(_wgslsmith_mod_i32(firstTrailingBit(2147483647i & global4.d), 1i), -88577i));
    return firstTrailingBit(reverseBits(vec3<u32>(38342u, 1u, global4.c.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<f32, 17>();
    let var_0 = Struct_1(~arg_1.a, firstLeadingBit(-1i), ~vec2<u32>(countOneBits(global2.c.x) & (arg_1.c.x << (global2.c.x % 32u)), min(~4294967295u, ~arg_1.c.x)), _wgslsmith_dot_vec4_i32(-u_input.a, firstLeadingBit(u_input.a | u_input.a)));
    global0 = vec4<f32>(global0.x, global0.x, -304f, global0.x);
    let var_1 = Struct_1(-(global2.a << (func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1700f, global1[_wgslsmith_index_u32(arg_0.c.x, 17u)], -325f, -614f)), true, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(39489u, 17u)], -905f)) % vec3<u32>(32u))), global4.d, vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global4.c.x, var_0.c.x, 12568u), ~(~vec3<u32>(81549u, arg_0.c.x, 110246u))), 16903u), ~(~_wgslsmith_sub_i32(_wgslsmith_div_i32(global2.d, global4.d), arg_1.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(var_1.c.x, 0u)), ~52531u), 17u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(arg_1.c.x, 17u)])), global1[_wgslsmith_index_u32(~global4.c.x, 17u)])), 1415f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.yxw))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    global1 = array<f32, 17>();
    let var_0 = abs(global2.b);
    global4 = func_2(func_2(Struct_1(max(-global4.a, -vec3<i32>(arg_1.a.x, 0i, -38769i)), -_wgslsmith_mod_i32(-2147483647i, arg_2.d), vec2<u32>(3245u, 25834u), max(~arg_1.b, arg_1.d)), func_2(arg_0, func_2(arg_1, Struct_1(vec3<i32>(97232i, -22674i, arg_1.a.x), u_input.a.x, vec2<u32>(4294967295u, 0u), global2.b)))), Struct_1(select(func_2(Struct_1(vec3<i32>(global4.d, 34579i, var_0), arg_1.a.x, vec2<u32>(279u, 25516u), arg_2.a.x), Struct_1(arg_0.a, global4.a.x, vec2<u32>(global2.c.x, arg_0.c.x), arg_2.a.x)).a, ~arg_0.a, !any(vec3<bool>(arg_3.x, true, false))), 24177i ^ arg_1.a.x, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global4.c.x, 7290u), vec2<u32>(0u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(48914u, global4.c.x) | vec2<u32>(global4.c.x, 1u), ~arg_0.c)), _wgslsmith_div_i32(~global2.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(5373u, global4.c.x, arg_0.c.x, arg_2.c.x), vec4<u32>(28992u, 51132u, 58213u, 28909u)) % 32u), -2147483647i)));
    let var_1 = any(!(!select(select(vec2<bool>(false, arg_3.x), arg_3, vec2<bool>(arg_3.x, true)), arg_3, false)));
    let var_2 = Struct_2(arg_1, ~4294967295u);
    return -_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), ~arg_2.a.zy), arg_2.a.yx);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), !vec3<bool>(true, true, all(vec3<bool>(true, false, true)))));
    let var_1 = global0.yzz;
    let var_2 = !(!all(vec4<bool>(false, true, arg_2.x < arg_2.x, arg_2.x > arg_0.a.c.x)));
    let var_3 = Struct_1(vec3<i32>(arg_0.a.a.x, -_wgslsmith_div_i32(29240i >> (global2.c.x % 32u), arg_1.d), abs(-23370i)), arg_1.a.x, ~(~vec2<u32>(~52697u, arg_1.c.x)), func_2(func_2(arg_0.a, arg_0.a), func_2(Struct_1(-u_input.a.xzy, func_2(arg_0.a, Struct_1(u_input.a.xxx, arg_1.d, vec2<u32>(0u, 1u), arg_1.a.x)).d, arg_2.zy << (arg_1.c % vec2<u32>(32u)), arg_0.a.a.x), arg_0.a)).a.x);
    var_0 = var_2;
    return func_2(func_2(func_2(func_2(arg_0.a, Struct_1(global4.a, global2.d, global4.c, arg_0.a.d)), Struct_1(vec3<i32>(var_3.d, 12108i, arg_1.a.x), countOneBits(-3023i), ~vec2<u32>(global2.c.x, 0u), -17926i)), Struct_1(vec3<i32>(global2.d, 0i, ~2147483647i), firstLeadingBit(-32542i), ~vec2<u32>(2294u, 1u) ^ ~arg_1.c, _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(global2.b, var_3.b)))), arg_0.a);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(Struct_2(Struct_1(min(vec3<i32>(u_input.a.x, global4.d, global4.b), global2.a), func_4(Struct_1(vec3<i32>(0i, 18630i, 16994i), 2147483647i, global2.c, -27566i), func_2(Struct_1(global4.a, -2147483647i, global2.c, u_input.a.x), Struct_1(vec3<i32>(-1i, global2.a.x, global2.d), -23459i, vec2<u32>(4294967295u, 66039u), u_input.a.x)), Struct_1(vec3<i32>(-23318i, global2.d, 590i), u_input.a.x, global2.c, global2.d), vec2<bool>(true, true)), firstTrailingBit(~global4.c), _wgslsmith_add_i32(abs(global2.a.x), -2147483647i)), 54934u), func_2(func_2(Struct_1(select(vec3<i32>(2147483647i, u_input.a.x, global4.a.x), global2.a, false), _wgslsmith_add_i32(u_input.a.x, global4.b), _wgslsmith_mod_vec2_u32(global2.c, global2.c), _wgslsmith_div_i32(-20164i, u_input.a.x)), Struct_1(abs(vec3<i32>(global2.d, global4.a.x, u_input.a.x)), -24483i, _wgslsmith_mult_vec2_u32(vec2<u32>(global4.c.x, global4.c.x), vec2<u32>(0u, global4.c.x)), global2.d)), func_2(func_2(func_2(Struct_1(u_input.a.xyx, -2147483647i, vec2<u32>(5372u, 4294967295u), 41533i), Struct_1(vec3<i32>(global2.a.x, 2147483647i, u_input.a.x), global4.a.x, global2.c, u_input.a.x)), Struct_1(global2.a, 1i, vec2<u32>(40893u, global4.c.x), u_input.a.x)), Struct_1(max(global2.a, vec3<i32>(-2147483647i, global2.a.x, 4256i)), u_input.a.x, global4.c, -13106i))), vec3<u32>(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(64781u, 1u))), global2.c.x, global4.c.x));
    let var_1 = !select(!vec2<bool>(all(vec4<bool>(true, false, false, true)), true), vec2<bool>(true, true), vec2<bool>(true, false));
    var_0 = Struct_1(vec3<i32>(-(~2147483647i), _wgslsmith_add_i32(global2.a.x, u_input.a.x), global4.a.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.b, var_0.b), -2147483647i), global4.c, func_2(func_5(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, 19624u, 34090u), vec3<u32>(1u, var_0.c.x, 84620u)), 21u)], func_5(global3[_wgslsmith_index_u32(~1u, 21u)], Struct_1(var_0.a, -1i, vec2<u32>(global2.c.x, 31540u), u_input.a.x), vec3<u32>(1u, var_0.c.x, 0u)), ~select(vec3<u32>(global2.c.x, 4294967295u, 4294967295u), vec3<u32>(global2.c.x, 77797u, 4294967295u), vec3<bool>(var_1.x, var_1.x, var_1.x))), Struct_1(min(u_input.a.yyz, _wgslsmith_div_vec3_i32(vec3<i32>(global2.b, u_input.a.x, -2147483647i), vec3<i32>(0i, var_0.a.x, 9621i))), global4.a.x, ~_wgslsmith_div_vec2_u32(global2.c, vec2<u32>(1u, 4294967295u)), -11071i)).d);
    var_0 = func_5(global3[_wgslsmith_index_u32(~1u, 21u)], Struct_1(vec3<i32>(43971i, var_0.d, var_0.a.x), 2147483647i >> (global4.c.x % 32u), func_2(Struct_1(vec3<i32>(u_input.a.x, global4.b, -11997i), var_0.b, vec2<u32>(0u, global4.c.x), global2.d), Struct_1(vec3<i32>(global4.b, u_input.a.x, -16235i), i32(-1i) * -1i, _wgslsmith_add_vec2_u32(vec2<u32>(global2.c.x, var_0.c.x), global2.c), ~u_input.a.x)).c, -_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.d, global2.a.x), -1i)), firstTrailingBit(~(~func_3(vec3<bool>(false, false, var_1.x), vec4<f32>(global0.x, global1[_wgslsmith_index_u32(34153u, 17u)], -1153f, -927f), true, 410f))));
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~countOneBits(global4.c.x) | _wgslsmith_mult_u32(30864u, 0u), ~var_0.c.x), 21u)];
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    global2 = func_2(Struct_1(-vec3<i32>(_wgslsmith_mult_i32(2147483647i, 1i), global2.a.x, firstLeadingBit(arg_2.a.x)), _wgslsmith_add_i32(func_2(func_2(arg_0.a, arg_0.a), func_1().a).d, firstLeadingBit(-12638i)), ~vec2<u32>(global4.c.x, arg_2.c.x), abs(-(u_input.a.x ^ u_input.a.x))), func_1().a);
    global4 = Struct_1(vec3<i32>(arg_0.a.d, 1i, _wgslsmith_add_i32(~1i, -1i)), -82848i, ~vec2<u32>(arg_0.b, func_3(!vec3<bool>(arg_1, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(880f, -745f, global0.x, global0.x)), arg_1, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 17u)])).x), -abs(-1i));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-341f)))));
    return vec4<u32>(49612u, global4.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(45124u, 108538u), vec2<u32>(0u, 0u)) ^ global2.c.x, ~7135u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~func_6(func_1(), true, Struct_1(vec3<i32>(u_input.a.x, global4.b, u_input.a.x), -26415i, vec2<u32>(global4.c.x, global2.c.x), -14785i))), select(vec4<u32>(abs(0u), max(global2.c.x, global4.c.x), 0u, 13407u) >> (vec4<u32>(~global4.c.x, _wgslsmith_clamp_u32(global4.c.x, 17480u, global2.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.x, 47121u, global2.c.x), vec3<u32>(1u, 4294967295u, 4294967295u)), ~global2.c.x) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_u32(func_6(global3[_wgslsmith_index_u32(global4.c.x, 21u)], true, Struct_1(vec3<i32>(2147483647i, global2.a.x, u_input.a.x), 9567i, global2.c, 10871i)), vec4<u32>(global4.c.x, 66005u, 0u, 4294967295u) << (vec4<u32>(28268u, 4294967295u, global4.c.x, global2.c.x) % vec4<u32>(32u)))), true));
    global1 = array<f32, 17>();
    global2 = Struct_1(~(~_wgslsmith_clamp_vec3_i32(-global2.a, _wgslsmith_mod_vec3_i32(u_input.a.wwx, global2.a), -vec3<i32>(u_input.a.x, -2147483647i, global2.b))), -select(u_input.a.x, -2176i, all(vec3<bool>(true, true, true))), global4.c ^ global2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(~(global2.b ^ global2.a.x), firstLeadingBit(-2123i), 1i, _wgslsmith_dot_vec3_i32(global4.a, vec3<i32>(global4.d, u_input.a.x, global2.b))), _wgslsmith_mod_vec4_i32(vec4<i32>(-51681i, global2.a.x, 9365i, global2.b), abs(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a)))));
    let var_1 = ~select(0u, global4.c.x, !any(vec2<bool>(true, true)));
    let var_2 = func_2(func_2(func_2(func_2(func_1().a, func_5(Struct_2(Struct_1(global4.a, u_input.a.x, global4.c, global2.a.x), 11781u), Struct_1(global4.a, -476i, global2.c, u_input.a.x), vec3<u32>(1u, var_1, 44630u))), Struct_1(-global2.a, i32(-1i) * -12234i, vec2<u32>(4294967295u, global2.c.x), abs(global4.a.x))), Struct_1(~func_2(Struct_1(u_input.a.zxw, global2.d, vec2<u32>(0u, var_0), 19145i), Struct_1(global4.a, global4.d, vec2<u32>(global4.c.x, 1u), -1i)).a, u_input.a.x, global4.c, abs(global4.d & u_input.a.x))), func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global0.x, -1583f, 875f))))) + vec4<f32>(global1[_wgslsmith_index_u32(34165u, 17u)], _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 17u)])), global1[_wgslsmith_index_u32(~global2.c.x, 17u)], _wgslsmith_f_op_f32(f32(-1f) * -1910f))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~70035u, var_0), 17u)], global2.c.x, 1u);
}

