struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 3>;

var<private> global2: array<Struct_4, 24>;

var<private> global3: i32 = -1i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_1(select(vec2<bool>(global0.x, false), !(!global0.xx), global0.x & any(!vec2<bool>(global0.x, false))), !select(select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, false, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(global0.x, true, true, global0.x), global0.x != false), vec4<bool>(true, all(vec3<bool>(global0.x, false, global0.x)), true, true), true), 4000u, global0.yx);
    global3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-38664i, min(u_input.b, u_input.a.x | 0i), -arg_0.x), _wgslsmith_mod_vec3_i32(u_input.a, select(-_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -10595i), u_input.a), u_input.a, !select(vec3<bool>(var_0.b.x, false, false), var_0.b.yyw, false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(firstTrailingBit(var_0.c & u_input.c)), 3u)]));
    var var_2 = var_0;
    let var_3 = -(~select(min(vec4<i32>(2147483647i, -4614i, -17530i, 1i), vec4<i32>(1i, 37222i, u_input.b, 0i)), min(vec4<i32>(u_input.b, u_input.b, u_input.a.x, arg_0.x), vec4<i32>(arg_0.x, 0i, -11884i, u_input.a.x)), vec4<bool>(var_2.d.x, var_0.a.x, global0.x, true))) ^ vec4<i32>(20960i, 9974i, u_input.b, u_input.b);
    return ~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c, var_0.c), ~vec2<u32>(var_0.c, u_input.c)) & (u_input.c << ((u_input.c >> (var_0.c % 32u)) % 32u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = true;
    var var_1 = arg_2.c.x;
    let var_2 = (2147483647i >> (func_3(reverseBits(u_input.a.yz)) % 32u)) << (max(_wgslsmith_div_u32(~arg_0.x, u_input.c) << (1u % 32u), _wgslsmith_mult_u32(1u | _wgslsmith_clamp_u32(15568u, 1u, u_input.c), 0u)) % 32u);
    var var_3 = ~_wgslsmith_sub_u32(abs(1u), firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_0, arg_0)));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.d * arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 587f)), global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(1u, 23418u)), 3u)], arg_2.d) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(714f, 121f, arg_2.d, -618f) - vec4<f32>(arg_1.x, arg_2.d, arg_1.x, arg_2.d))))));
    return reverseBits((_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, u_input.c), ~vec2<u32>(41105u, u_input.c)) & arg_0.xz) << (arg_0.zy % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(func_2(vec3<u32>(25559u, u_input.c, 4294967295u), vec3<f32>(arg_0.x, -1000f, -329f), Struct_2(vec2<i32>(u_input.a.x, u_input.b), false, vec3<bool>(global0.x, true, global0.x), global1[_wgslsmith_index_u32(0u, 3u)])), select(vec2<u32>(46400u, u_input.c), vec2<u32>(4294967295u, 4294967295u), false)) & select(~vec2<u32>(u_input.c, u_input.c) | vec2<u32>(u_input.c, 21960u), abs(~vec2<u32>(u_input.c, u_input.c)), global0.yz), func_2(vec3<u32>(u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.c), select(u_input.c, 9230u, false)) | ~vec3<u32>(32053u, 81345u, u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -830f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + arg_0))), Struct_2(u_input.a.xy, u_input.c < 1u, vec3<bool>(all(vec3<bool>(false, global0.x, global0.x)), true, global0.x | global0.x), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)], -907f))))));
    var var_1 = u_input.a;
    var var_2 = vec4<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.c, 3u)] > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(19137u, 3u)])) * _wgslsmith_div_f32(1917f, arg_0.x)) + -1594f), !(-871f == _wgslsmith_div_f32(_wgslsmith_div_f32(-590f, 1478f), arg_0.x)));
    var_1 = _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, u_input.b, var_1.x), u_input.a)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a.x, _wgslsmith_mult_i32(u_input.b, 0i), 33810i), countOneBits(u_input.a)), ~_wgslsmith_add_vec3_i32(u_input.a, -u_input.a)));
    let var_3 = ~_wgslsmith_sub_vec3_i32(abs(reverseBits(u_input.a)), ~u_input.a);
    return var_2.wxx;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.c, 24u)];
    global3 = reverseBits(_wgslsmith_dot_vec2_i32(arg_0.b, u_input.a.zz));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-295f, 231f), _wgslsmith_f_op_f32(min(1101f, 1462f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3, arg_0.a))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(871f + _wgslsmith_div_f32(arg_2, 1000f)), -276f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(307f, arg_0.a), _wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(163f, global1[_wgslsmith_index_u32(0u, 3u)])))))));
    let var_2 = var_0.b;
    var var_3 = true;
    return Struct_1(var_2.c.xy, select(!select(!vec4<bool>(true, var_0.c.e, var_0.c.d.b.x, true), select(arg_0.c.b, var_0.c.d.b, vec4<bool>(false, arg_1.x, arg_1.x, global0.x)), arg_0.d.b), !var_0.c.c.b, select(var_0.c.c.b, !select(vec4<bool>(true, arg_1.x, var_2.c.x, true), var_0.c.c.b, var_0.c.d.b), vec4<bool>(true, true, true, false))), ~0u, vec2<bool>(any(arg_0.d.b.xw), !(!func_1(vec3<f32>(arg_3, arg_3, 1823f)).x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(select(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, u_input.b), firstLeadingBit(-11623i)), -18144i, ~arg_2.x, -(~0i)), vec4<i32>(~arg_3.b.x, abs(1i), arg_3.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.x, 61520i, 2147483647i), vec3<i32>(9309i, arg_1.b.a.x, u_input.b))), (-u_input.a.x | ~17725i) < abs(~arg_2.x)), Struct_2(~vec2<i32>(abs(u_input.b), arg_3.b.x), func_4(arg_1.c, vec3<bool>(global0.x, arg_3.c.a.x, true), arg_3.a, _wgslsmith_f_op_f32(step(arg_1.c.a, global1[_wgslsmith_index_u32(1u, 3u)]))).b.x, func_4(arg_1.c, func_1(vec3<f32>(1541f, global1[_wgslsmith_index_u32(arg_3.d.c, 3u)], 865f)), -590f, 1570f).b.xwx, 1000f), Struct_3(global1[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(~vec2<i32>(arg_3.b.x, arg_3.b.x), vec2<i32>(arg_2.x, arg_1.b.a.x))), arg_3.c, func_4(arg_1.c, select(func_1(vec3<f32>(2144f, -348f, arg_1.c.a)), vec3<bool>(true, true, arg_3.d.a.x), select(arg_1.c.d.b.wyx, vec3<bool>(arg_0.b.x, global0.x, false), arg_1.c.d.b.xwz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)]) * -1550f), _wgslsmith_f_op_f32(f32(-1f) * -2096f)), !any(arg_1.c.d.b)));
    global1 = array<f32, 3>();
    let var_1 = true;
    var var_2 = Struct_2(arg_2.zx, arg_1.b.c.x, vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.c, 3u)] + arg_1.c.a), -731f) <= var_0.b.d, _wgslsmith_div_i32(_wgslsmith_mod_i32(-964i, -18712i), 21360i) > u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(617f + -547f), _wgslsmith_f_op_f32(849f + 1151f), arg_1.c.e))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(557f, var_0.c.a)), _wgslsmith_f_op_f32(-833f * arg_3.a)))));
    let var_3 = func_4(var_0.c, arg_1.b.c, arg_3.a, _wgslsmith_f_op_f32(-arg_3.a));
    return Struct_2(arg_2.zz, any(!(!vec2<bool>(var_3.b.x, global0.x))), func_1(vec3<f32>(-1198f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -376f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)]) * arg_3.a))), global1[_wgslsmith_index_u32(u_input.c, 3u)]);
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(-arg_0.d))));
    var var_1 = !any(vec3<bool>(false & arg_3.d.x, true, arg_3.c > 54352u));
    var var_2 = _wgslsmith_sub_u32(arg_3.c, 1u) >= countOneBits(_wgslsmith_div_u32(0u ^ abs(arg_3.c), ~u_input.c >> (arg_3.c % 32u)));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 4392u), arg_3.c, u_input.c), 24u)];
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(820f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2085f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-295f, 250f) + _wgslsmith_f_op_f32(f32(-1f) * -1427f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_3.c.a)), 1000f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, -593f) + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.c, 3u)], var_3.c.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_f_op_f32(f32(-1f) * -293f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(func_4(Struct_3(-236f, u_input.a.zx, Struct_1(vec2<bool>(global0.x, false), vec4<bool>(true, false, false, true), 4294967295u, vec2<bool>(true, global0.x)), Struct_1(vec2<bool>(true, global0.x), vec4<bool>(false, false, false, global0.x), u_input.c, global0.xy), true), func_1(vec3<f32>(-774f, global1[_wgslsmith_index_u32(23076u, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(39580u, 0u)), 3u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 3u)])), global2[_wgslsmith_index_u32(58386u, 24u)], -select(vec3<i32>(-2147483647i, u_input.b, u_input.a.x), vec3<i32>(-1i, 0i, 1i), vec3<bool>(true, global0.x, false)), Struct_3(_wgslsmith_f_op_f32(274f * -564f), -vec2<i32>(u_input.a.x, u_input.a.x), func_4(Struct_3(global1[_wgslsmith_index_u32(0u, 3u)], vec2<i32>(u_input.b, u_input.a.x), Struct_1(vec2<bool>(global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), 1u, global0.xz), Struct_1(vec2<bool>(false, global0.x), vec4<bool>(global0.x, false, true, global0.x), u_input.c, global0.xx), global0.x), vec3<bool>(false, true, false), -174f, global1[_wgslsmith_index_u32(2440u, 3u)]), Struct_1(vec2<bool>(global0.x, global0.x), vec4<bool>(false, true, true, global0.x), u_input.c, vec2<bool>(true, false)), !global0.x)), global1[_wgslsmith_index_u32(countOneBits(~(~79504u)), 3u)], -_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a) << (vec3<u32>(4294967295u, u_input.c, u_input.c | 1u) % vec3<u32>(32u)), Struct_1(global0.yy, select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.x, false, global0.x, global0.x), global0.x), ~(u_input.c | u_input.c), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1811f, global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]))).xy))));
    var var_2 = global2[_wgslsmith_index_u32(1u ^ u_input.c, 24u)];
    var_2 = global2[_wgslsmith_index_u32(~var_2.c.c.c, 24u)];
    var var_3 = ~var_2.c.d.c;
    var_0 = true;
    var var_4 = Struct_2(min(vec2<i32>(abs(-20122i), min(reverseBits(-39259i), -63974i)), firstTrailingBit(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 42152i), u_input.a.xy)))), var_1 <= var_2.b.d, !(!(!(!vec3<bool>(var_2.c.d.b.x, false, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) - var_2.c.a)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.c.c.c, min(~u_input.c, var_2.c.c.c << (41119u % 32u))), 3u)], false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), select(vec3<u32>(func_2(~vec3<u32>(4294967295u, var_2.c.c.c, 55767u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_2.b.d, var_4.d)), var_2.b).x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(37252u, 1u))), _wgslsmith_sub_u32(func_3(var_4.a), ~var_2.c.c.c)), ~vec3<u32>(max(u_input.c, var_2.c.c.c), ~var_2.c.d.c, ~4294967295u), true), vec4<f32>(382f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.d + var_1))), _wgslsmith_f_op_f32(1208f * var_2.c.a))), _wgslsmith_f_op_f32(-1455f + _wgslsmith_f_op_f32(1000f + -858f)), 639f), vec3<i32>(-_wgslsmith_sub_i32(-23238i, u_input.a.x), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(-5714i, u_input.b)), _wgslsmith_mod_i32(firstLeadingBit(2147483647i), 1i ^ u_input.b)), reverseBits(u_input.a.x)));
}

