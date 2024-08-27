struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_5) -> vec3<bool> {
    return select(select(vec3<bool>(true, all(vec2<bool>(true, true)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, u_input.b < u_input.b, true))), vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), ~(~arg_0) < _wgslsmith_clamp_u32(arg_0, arg_0, arg_2.c.b.x), false), all(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> vec3<u32> {
    let var_0 = !(!select(vec3<bool>(all(vec2<bool>(arg_0, false)), true, false), !(!vec3<bool>(arg_0, arg_0, false)), func_3(_wgslsmith_mod_u32(4294967295u, arg_2.b.x), vec3<f32>(arg_3, 788f, arg_3), Struct_5(Struct_2(vec4<f32>(-308f, 791f, -267f, -1010f), vec4<u32>(4294967295u, arg_2.b.x, 64215u, arg_2.b.x)), vec3<u32>(1212u, 1u, u_input.a), arg_2))));
    var var_1 = true;
    var_1 = var_0.x;
    var_1 = (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, 1u, 1u), ~u_input.d) < reverseBits(arg_2.b.x)) | any(select(var_0.zy, vec2<bool>(!arg_0, any(var_0.xx)), vec2<bool>(arg_0, false)));
    let var_2 = arg_2;
    return _wgslsmith_add_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.a, arg_2.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_2.b.x), var_2.b.zyy)) << (max(min(arg_2.b.xyz, vec3<u32>(0u, u_input.d, arg_2.b.x)), _wgslsmith_div_vec3_u32(arg_2.b.zzw, arg_2.b.yxz)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(select(_wgslsmith_div_vec3_u32(var_2.b.ywz, var_2.b.wwy), min(vec3<u32>(u_input.d, var_2.b.x, 4294967295u), var_2.b.yxy), !var_0), arg_2.b.wyx), ~(~(~vec3<u32>(2389u, u_input.a, 0u))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = !vec4<bool>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1285f)) * _wgslsmith_f_op_f32(step(-335f, arg_0.c.a.x))) > arg_3.a.x, false, arg_2);
    let var_1 = 6151i;
    let var_2 = Struct_5(arg_3, ~_wgslsmith_div_vec3_u32(func_2(var_0.x, Struct_3(arg_3.a.x), Struct_2(arg_3.a, vec4<u32>(33809u, 40569u, 12941u, arg_3.b.x)), 639f), _wgslsmith_div_vec3_u32(arg_0.b, min(vec3<u32>(0u, arg_0.c.b.x, arg_0.a.b.x), vec3<u32>(4294967295u, arg_0.b.x, u_input.d)))), arg_0.a);
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~63233u, ~arg_0.c.b.x, arg_0.c.b.x, u_input.d), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c.b.x, 0u, 30174u, 12950u), vec4<u32>(1u, arg_3.b.x, 110561u, 1u), vec4<u32>(arg_3.b.x, arg_0.a.b.x, arg_0.c.b.x, arg_3.b.x)) >> (arg_3.b % vec4<u32>(32u))), arg_3.b.x);
    var var_4 = arg_1.xxx;
    return Struct_3(_wgslsmith_f_op_f32(-var_2.a.a.x));
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_4(Struct_1(vec2<i32>(u_input.c << (_wgslsmith_mod_u32(81516u, u_input.a) % 32u), u_input.c), vec2<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), u_input.c)), u_input.c, arg_0, func_4(Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1633f, 1397f, 1478f, 970f) + vec4<f32>(1492f, -899f, 140f, 570f)), ~vec4<u32>(u_input.d, 0u, u_input.a, 6698u)), ~func_2(arg_0, Struct_3(471f), Struct_2(vec4<f32>(-1000f, -286f, 1986f, -1006f), vec4<u32>(12701u, 0u, 19969u, 4294967295u)), 301f), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-404f, 470f, -1431f, -1744f) * vec4<f32>(-1228f, 1000f, -2496f, -1256f)), ~vec4<u32>(4294967295u, u_input.a, 93587u, u_input.a))), (vec4<i32>(u_input.c, u_input.c, u_input.c, -37076i) ^ ~vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.b)) | -_wgslsmith_mod_vec4_i32(vec4<i32>(-15850i, u_input.b, -8715i, u_input.c), vec4<i32>(22737i, u_input.b, u_input.b, -2147483647i)), !all(func_3(u_input.d, vec3<f32>(-406f, 1046f, 488f), Struct_5(Struct_2(vec4<f32>(-631f, -880f, 167f, -695f), vec4<u32>(u_input.d, u_input.a, 64059u, u_input.d)), vec3<u32>(u_input.d, u_input.d, u_input.a), Struct_2(vec4<f32>(383f, -1780f, -665f, 920f), vec4<u32>(u_input.d, u_input.a, u_input.d, 20271u)))).zz), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-155f, -734f, 114f, 672f) * vec4<f32>(-1000f, -816f, -225f, 317f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-817f, 808f, 1936f, -1206f), vec4<f32>(1000f, -2056f, -679f, 1483f))), _wgslsmith_add_vec4_u32(~vec4<u32>(36848u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.d, u_input.d, 6340u, u_input.a)))));
    var var_1 = vec2<u32>(26015u, _wgslsmith_mod_u32(0u, u_input.a));
    var var_2 = var_0;
    var var_3 = Struct_3(_wgslsmith_div_f32(-542f, _wgslsmith_div_f32(207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1597f) - _wgslsmith_f_op_f32(f32(-1f) * -1439f)))));
    var var_4 = _wgslsmith_sub_vec2_u32(reverseBits(reverseBits(vec2<u32>(var_1.x, u_input.a))) & vec2<u32>(~var_1.x, ~36603u), _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(31194u, var_1.x)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 94481u), ~vec2<u32>(51320u, 26241u), _wgslsmith_add_vec2_u32(vec2<u32>(82217u, 4294967295u), vec2<u32>(u_input.d, 33592u))))) << (~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_mult_u32(9059u, var_1.x))) % vec2<u32>(32u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), true)));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(-max(-vec3<i32>(var_0.b, var_0.b, -60033i), vec3<i32>(var_0.b, 23384i, var_0.a.a.x)), vec3<i32>(1i, 48857i, u_input.b)), 1i);
    var var_2 = var_0.d;
    var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a) + var_2.a) * 2239f) - var_0.d.a));
    let var_3 = !select(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.c, false, var_0.c), true), !(!(!vec3<bool>(var_0.c, var_0.c, true))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.a + _wgslsmith_f_op_f32(floor(var_2.a))), -623f, var_2.a, -1597f), u_input.d, vec2<i32>(-1i) * -(~vec2<i32>(-1i, var_0.a.a.x) & ~vec2<i32>(var_0.a.a.x, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(round(301f)))))), _wgslsmith_f_op_f32(max(var_2.a, func_4(Struct_5(Struct_2(vec4<f32>(413f, var_0.d.a, 1621f, -816f), vec4<u32>(u_input.a, u_input.d, u_input.a, 54614u)), _wgslsmith_sub_vec3_u32(vec3<u32>(48441u, 1u, u_input.d), vec3<u32>(u_input.d, u_input.d, 4294967295u)), Struct_2(vec4<f32>(1000f, var_2.a, var_0.d.a, var_0.d.a), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.d))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 2147483647i, var_1.x, 1i), vec4<i32>(41238i, var_1.x, var_1.x, -60126i) ^ vec4<i32>(var_0.a.b.x, var_1.x, 2147483647i, 1i)), true, Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1243f, 138f, -375f, var_0.d.a))), select(vec4<u32>(1u, 20696u, u_input.a, u_input.d), vec4<u32>(u_input.a, 37147u, u_input.d, u_input.a), var_0.c))).a)));
}

