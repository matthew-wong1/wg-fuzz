struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: vec3<i32> = vec3<i32>(-1878i, 0i, -17568i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = ~arg_1.c;
    let var_1 = ~(~_wgslsmith_add_u32(arg_0 ^ ~arg_1.c.x, _wgslsmith_div_u32(arg_0 | 30768u, abs(38668u))));
    var_0 = u_input.c;
    var_0 = countOneBits(vec4<u32>(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.c.x, 25814u, 9744u, 39455u), vec4<u32>(5338u, 1u, arg_0, 51617u), vec4<bool>(true, true, false, false)), countOneBits(u_input.c)), _wgslsmith_clamp_u32(~(~u_input.c.x), ~13561u, ~u_input.c.x), ~(u_input.a ^ var_1), 24632u));
    let var_2 = true;
    return vec2<bool>(!all(select(select(vec4<bool>(arg_1.a.c.b.x, true, var_2, false), vec4<bool>(var_2, false, true, false), false), select(vec4<bool>(var_2, arg_1.a.b.b.x, false, false), vec4<bool>(false, false, arg_1.a.c.b.x, arg_1.b.b.x), true), 2147483647i >= global0[_wgslsmith_index_u32(0u, 3u)])), false);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(4697u, 3u)], 0i, 2147483647i, -2147483647i), vec4<i32>(_wgslsmith_mod_i32(-1i, -14438i), select(global1.x, global0[_wgslsmith_index_u32(70607u, 3u)], false), 20170i, arg_2.x)), reverseBits(1i), -2147483647i));
    global0 = array<i32, 3>();
    var var_1 = Struct_3(Struct_2(-912f, Struct_1(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), func_3(countOneBits(1u), Struct_3(Struct_2(742f, Struct_1(true, vec2<bool>(false, true), vec3<bool>(true, false, true), 11219i), Struct_1(false, vec2<bool>(false, true), vec3<bool>(false, false, false), 2147483647i)), Struct_1(true, vec2<bool>(false, true), vec3<bool>(false, true, false), -1i), u_input.c)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), global1.x), Struct_1(!all(vec3<bool>(true, false, false)), vec2<bool>(true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), _wgslsmith_dot_vec2_i32(-arg_2.xx, _wgslsmith_div_vec2_i32(global1.zz, vec2<i32>(arg_2.x, arg_1.x))))), Struct_1(select(select(61999u, u_input.a, true) <= arg_0, true, true), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, all(vec2<bool>(true, false)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(false, true, true)), true, false)), _wgslsmith_mod_i32(-u_input.b, global0[_wgslsmith_index_u32(4982u << (_wgslsmith_div_u32(24360u, arg_0) % 32u), 3u)])), ~u_input.c);
    global1 = max(~var_0.a, _wgslsmith_clamp_vec3_i32(var_0.a, ~(~arg_2), -countOneBits(~var_0.a)));
    global0 = array<i32, 3>();
    return vec4<bool>(var_1.b.c.x, all(!var_1.b.c), all(!(!vec3<bool>(var_1.b.b.x, true, var_1.a.c.a))), any(select(var_1.a.b.c.zy, var_1.b.b, any(select(vec4<bool>(var_1.b.c.x, var_1.b.a, var_1.a.c.c.x, false), vec4<bool>(var_1.b.c.x, var_1.b.a, var_1.a.b.a, var_1.a.c.b.x), vec4<bool>(true, var_1.b.a, false, var_1.a.b.a))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = Struct_4(abs(firstLeadingBit(-vec3<i32>(1i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 3u)]) ^ -vec3<i32>(arg_3.x, -2147483647i, -1i))));
    let var_1 = u_input.c.x;
    var var_2 = select(vec3<bool>(true, any(vec4<bool>(true, true, true, !arg_0.x)), arg_2.x >= _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(step(arg_2.x, -1124f))))), vec3<bool>(false && (arg_2.x <= _wgslsmith_f_op_f32(f32(-1f) * -1373f)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, var_0.a.x, var_0.a.x), vec4<i32>(-20163i, var_0.a.x, -42589i, global1.x)) < abs(1i), true & any(arg_0.zx)), select(!select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(!(!vec3<bool>(arg_0.x, false, false)), vec3<bool>(select(arg_0.x, true, true), true & arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(true, arg_0.x, arg_0.x), arg_0.zzw, true))), !arg_0.zyw));
    var var_3 = vec4<u32>(1u, _wgslsmith_mod_u32(1u, arg_1 & countOneBits(~66901u)), ~_wgslsmith_sub_u32(u_input.a, arg_1), 50364u);
    var var_4 = ~max(u_input.c, u_input.c);
    return Struct_5(1569f, vec3<bool>(true, true, -2147483647i <= (-global0[_wgslsmith_index_u32(19519u, 3u)] ^ firstTrailingBit(global1.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_5) -> Struct_3 {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, 452f)), _wgslsmith_f_op_f32(min(-830f, -116f))), -1342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -752f), 629f, any(vec2<bool>(true, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, -401f, true)) + arg_1.a))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -441f, arg_1.a) * vec3<f32>(arg_0, -1000f, -971f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1004f, arg_3.a, 1439f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1380f, arg_0) * vec3<f32>(arg_0, arg_3.a, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-191f, 106f, arg_3.a))) + vec3<f32>(-852f, -1000f, 1000f))))))));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-(~3247i), select(_wgslsmith_sub_i32(u_input.b, -16445i), firstTrailingBit(global0[_wgslsmith_index_u32(0u, 3u)]), arg_1.b.x & arg_1.b.x), u_input.b, firstTrailingBit(~(-61567i))), ~vec4<i32>(-u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 3u)] | -51625i, _wgslsmith_mult_i32(19977i, u_input.b), i32(-1i) * -15600i)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b | global1.x, global1.x << (u_input.c.x % 32u), global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.b), vec4<i32>(-7563i, firstTrailingBit(0i), ~2147483647i, global0[_wgslsmith_index_u32(~u_input.a, 3u)]))));
    var_0 = ~u_input.c.x;
    var var_3 = Struct_4(_wgslsmith_sub_vec3_i32(max(firstLeadingBit(~vec3<i32>(u_input.b, var_2, -2147483647i)), vec3<i32>(var_2 | -2147483647i, -1i, 1i)), max(vec3<i32>(u_input.b, var_2, -3319i) << (vec3<u32>(0u, u_input.c.x, 0u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 3u)], -2147483647i, -349i), vec3<i32>(0i, -2147483647i, var_2)), vec3<i32>(u_input.b, 1i, 1i)))));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(-1110f * _wgslsmith_div_f32(arg_1.a, -388f))), Struct_1(true && !arg_1.b.x, select(arg_2.xz, select(vec2<bool>(false, arg_2.x), arg_3.b.yy, arg_1.b.xz), func_4(vec4<bool>(arg_3.b.x, false, arg_3.b.x, true), 0u, vec4<f32>(-2138f, -671f, -1087f, -233f), vec4<i32>(u_input.b, global1.x, global0[_wgslsmith_index_u32(55559u, 3u)], var_3.a.x)).b.yy), select(vec3<bool>(arg_2.x, true, false), !vec3<bool>(arg_3.b.x, arg_1.b.x, true), !vec3<bool>(arg_1.b.x, arg_3.b.x, false)), firstLeadingBit(~1i)), Struct_1(!arg_1.b.x || (false && arg_3.b.x), func_2(_wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_div_vec3_i32(var_3.a, var_3.a), var_3.a).zx, func_4(func_2(u_input.a, var_3.a, var_3.a), abs(26306u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(818f, arg_3.a, var_1.x, arg_1.a)), -vec4<i32>(-52124i, -1893i, -4614i, var_3.a.x)).b, reverseBits(u_input.b))), Struct_1(!arg_2.x & select(any(arg_3.b), any(vec4<bool>(true, false, arg_2.x, false)), true), vec2<bool>(func_2(u_input.a << (u_input.c.x % 32u), -var_3.a, vec3<i32>(1i, u_input.b, global1.x)).x, arg_2.x || true), vec3<bool>(func_4(select(vec4<bool>(arg_2.x, true, false, arg_3.b.x), vec4<bool>(arg_3.b.x, arg_1.b.x, false, true), arg_1.b.x), u_input.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(426f, var_1.x, arg_0, 1000f))), abs(vec4<i32>(-13586i, u_input.b, 2147483647i, -1i))).b.x, !(-524f < arg_0), any(vec3<bool>(arg_2.x, false, arg_1.b.x))), 38348i), min(vec4<u32>(~(~u_input.c.x), u_input.a, u_input.c.x, 1u), ~u_input.c));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_5(arg_3.a.a, !arg_3.a.c.c);
    var var_1 = var_0.b;
    global0 = array<i32, 3>();
    let var_2 = func_5(-366f, func_4(select(!func_2(0u, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global1.x, -2147483647i), vec3<i32>(37009i, 17270i, -2147483647i)), select(!vec4<bool>(false, false, true, arg_3.a.c.a), func_2(arg_3.c.x, vec3<i32>(5170i, arg_3.a.c.d, global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec3<i32>(2147483647i, 2147483647i, -5858i)), func_3(u_input.c.x, arg_3).x), 332f > _wgslsmith_f_op_f32(-var_0.a)), max(~min(4643u, 554u), 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), -1570f, 1418f, _wgslsmith_f_op_f32(select(-1000f, 605f, var_1.x)))), vec4<i32>(arg_3.a.b.d, 1i, _wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(13519i, arg_3.a.c.d)), _wgslsmith_div_i32(arg_0.x, arg_2.x))), !vec4<bool>(var_0.b.x, all(vec4<bool>(false, false, arg_3.a.c.c.x, false)), true, false), var_0);
    let var_3 = Struct_4(vec3<i32>(abs(~(-1707i)), ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(8725i, u_input.b, -1i)), firstLeadingBit(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(50096u, 3u)], arg_3.a.c.d))), global0[_wgslsmith_index_u32(4294967295u, 3u)]));
    return func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.a), _wgslsmith_f_op_f32(233f * 871f))), 318f)), var_0, func_2(var_2.c.x, ~abs(var_3.a), vec3<i32>(_wgslsmith_clamp_i32(arg_2.x, arg_3.b.d, global0[_wgslsmith_index_u32(0u, 3u)]), u_input.b, _wgslsmith_clamp_i32(-11347i, global1.x, 3246i)) | var_3.a), var_0);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    var var_0 = Struct_4(vec3<i32>(((i32(-1i) * -9766i) << (firstTrailingBit(3224u) % 32u)) | firstLeadingBit(1i), firstTrailingBit(arg_0.b.d), ~(36337i << (select(arg_3, 30081u, arg_1.a.b.b.x) % 32u))));
    global0 = array<i32, 3>();
    return arg_2.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = 728f;
    var var_1 = 4294967295u;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(940f, var_0), _wgslsmith_f_op_f32(min(var_0, -661f)), true))))), !select(vec3<bool>(u_input.a < 1u, false, true), vec3<bool>(true, true, true), func_6(func_1(vec2<i32>(-2147483647i, 24253i), u_input.c.x, vec2<i32>(0i, 10437i), Struct_3(Struct_2(-1187f, Struct_1(false, vec2<bool>(true, false), vec3<bool>(false, true, false), 1i), Struct_1(false, vec2<bool>(true, false), vec3<bool>(false, false, false), u_input.b)), Struct_1(false, vec2<bool>(true, false), vec3<bool>(false, false, false), global1.x), vec4<u32>(u_input.c.x, 58036u, u_input.c.x, u_input.c.x))), func_1(global1.xx, u_input.a, vec2<i32>(global1.x, u_input.b), Struct_3(Struct_2(-1203f, Struct_1(false, vec2<bool>(false, true), vec3<bool>(false, false, false), -1i), Struct_1(true, vec2<bool>(true, false), vec3<bool>(false, true, true), -55903i)), Struct_1(false, vec2<bool>(false, false), vec3<bool>(false, true, true), -30287i), vec4<u32>(u_input.c.x, 62034u, 70198u, 32467u))), func_5(1000f, Struct_5(var_0, vec3<bool>(false, true, false)), vec4<bool>(false, true, true, true), Struct_5(-119f, vec3<bool>(false, true, true))).a, ~4294967295u)));
    var_2 = Struct_5(_wgslsmith_f_op_f32(-var_0), vec3<bool>(!func_2(_wgslsmith_sub_u32(u_input.a, 4294967295u), vec3<i32>(0i, 26241i, -4661i), -vec3<i32>(-44895i, global1.x, -2147483647i)).x, true, !(!select(true, false, var_2.b.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(632f, var_0, 412f, -624f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1062f, 1161f, var_2.a, var_0)))) + vec4<f32>(1839f, _wgslsmith_f_op_f32(f32(-1f) * -1027f), -1000f, _wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(332f)), _wgslsmith_f_op_f32(min(var_2.a, var_2.a)), _wgslsmith_f_op_f32(var_0 * -198f), var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xyx, 42101u);
}

