struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, -1i, -41701i), 429f, vec3<f32>(572f, -100f, 1478f));

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(4043u, -671f), Struct_2(4294967295u, -1509f), Struct_2(15610u, 2295f), Struct_2(1u, -1094f), Struct_2(1u, -1000f), Struct_2(4246u, 1000f), Struct_2(6473u, 2643f), Struct_2(4294967295u, -2032f), Struct_2(38594u, -218f), Struct_2(43220u, 240f), Struct_2(1u, -202f), Struct_2(14125u, -984f), Struct_2(1u, 564f), Struct_2(35976u, -1206f), Struct_2(4294967295u, 1493f), Struct_2(0u, 511f), Struct_2(1u, 207f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    let var_0 = vec3<i32>(~(-6255i) & (1i >> (_wgslsmith_div_u32(1u, arg_1) % 32u)), ~(-(-19043i | global0.a.x)), global0.a.x) & _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, global0.a.x), vec3<i32>(global0.a.x, -16233i, global0.a.x)) << (vec3<u32>(27222u, 8724u, arg_3) % vec3<u32>(32u)), vec3<i32>(global0.a.x, abs(-27083i), ~global0.a.x)), vec3<i32>(-1i) * -(global0.a ^ global0.a));
    let var_1 = 57233u >> (_wgslsmith_sub_u32(4294967295u, ~select(firstLeadingBit(arg_1), arg_3, any(vec2<bool>(false, true)))) % 32u);
    var var_2 = Struct_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x))))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.x)));
    let var_4 = Struct_1(reverseBits(var_0), -727f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global0.c, arg_2))) + global0.c))));
    return var_4.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_2 {
    return Struct_2(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(abs(13437u), countOneBits(arg_1.a.x)), ~95889u), _wgslsmith_f_op_f32(func_3(~arg_0.x, ~arg_0.x | ~u_input.a, vec3<f32>(-1126f, 246f, -2667f), ~arg_1.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> Struct_3 {
    global0 = Struct_1(vec3<i32>(-1i, firstTrailingBit(~firstTrailingBit(-27933i)), _wgslsmith_dot_vec2_i32(-global0.a.zx | vec2<i32>(global0.a.x, global0.a.x), _wgslsmith_mod_vec2_i32(arg_1.a.zx, -arg_1.a.zz))), -503f, vec3<f32>(-143f, _wgslsmith_f_op_f32(944f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b, global0.b)) - _wgslsmith_f_op_f32(min(-769f, arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1913f)))));
    let var_0 = _wgslsmith_mod_i32(arg_2, arg_2) > global0.a.x;
    var var_1 = arg_3;
    global0 = arg_1;
    let var_2 = Struct_3(((arg_1.a.x | abs(global0.a.x)) >> (54908u % 32u)) << (~arg_3.a.x % 32u), global1[_wgslsmith_index_u32(514u, 17u)], Struct_1(min(vec3<i32>(0i, arg_1.a.x, -17743i) ^ arg_1.a, arg_1.a) >> ((~vec3<u32>(0u, arg_0.a, arg_0.a) & ~vec3<u32>(4294967295u, arg_0.a, 11154u)) % vec3<u32>(32u)), arg_0.b, arg_1.c), Struct_1(countOneBits(-vec3<i32>(arg_1.a.x, 27488i, arg_1.a.x)), -1221f, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(415f, -799f, arg_1.c.x) + vec3<f32>(-655f, 1000f, 1873f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.c))))), firstTrailingBit(-39500i) ^ _wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.a.x, -1i, -62287i, -60843i)), vec4<i32>(arg_1.a.x, arg_1.a.x, arg_2, global0.a.x)));
    return Struct_3(2147483647i, func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, arg_0.a), firstLeadingBit(vec2<u32>(var_1.a.x, 0u))), Struct_4(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(107288u, 0u, 18030u, arg_3.a.x), vec4<u32>(u_input.a, 1u, var_2.b.a, 68960u)), arg_3.a.x))), var_2.c, Struct_1(~abs(vec3<i32>(global0.a.x, 0i, 41285i)), 423f, var_2.c.c), 2147483647i);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = u_input.a;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b) * -1000f), global0.b, -1745f);
    global1 = array<Struct_2, 17>();
    var var_2 = Struct_4(_wgslsmith_add_vec2_u32(select(arg_1.xx, vec2<u32>(arg_1.x, var_0), vec2<bool>(false, true)), vec2<u32>(countOneBits(27223u), ~4294967295u)) ^ vec2<u32>(var_0, ~14547u));
    return func_4(func_2(vec2<u32>(var_0, func_2(arg_1.yz, Struct_4(vec2<u32>(u_input.a, 0u))).a) >> (abs(vec2<u32>(5266u, 4294967295u) & vec2<u32>(63467u, u_input.a)) % vec2<u32>(32u)), Struct_4(arg_1.wz)), func_4(func_4(func_2(var_2.a, Struct_4(var_2.a)), Struct_1(vec3<i32>(arg_0.a, global0.a.x, 0i) & vec3<i32>(0i, -42902i, arg_2.x), -517f, _wgslsmith_f_op_vec3_f32(-var_1)), _wgslsmith_sub_i32(6343i, 2147483647i), Struct_4(arg_1.xz)).b, Struct_1(-(global0.a | vec3<i32>(arg_2.x, -2147483647i, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(700f, global0.c.x, false)) + _wgslsmith_f_op_f32(f32(-1f) * -749f)), global0.c), ~(-(~0i)), Struct_4(vec2<u32>(55105u, ~u_input.a))).c, 2147483647i, Struct_4(arg_1.wy));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = Struct_4(select(~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, arg_0))), countOneBits(vec2<u32>(arg_1, u_input.a)), !select(!vec2<bool>(arg_3, true), select(vec2<bool>(arg_3, true), vec2<bool>(true, arg_3), arg_3), true)));
    var var_1 = func_5(func_4(func_2(vec2<u32>(_wgslsmith_clamp_u32(28469u, arg_1, arg_0), 1u), var_0), Struct_1(max(vec3<i32>(arg_2, 0i, 1i), vec3<i32>(2147483647i, -29159i, arg_2)), _wgslsmith_div_f32(global0.c.x, global0.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-206f, 445f, 1507f), vec3<f32>(global0.b, -2270f, global0.c.x)), _wgslsmith_f_op_vec3_f32(round(global0.c))))), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global0.a.yz, vec2<i32>(2147483647i, -1i)), global0.a.x)), Struct_4(reverseBits(vec2<u32>(4294967295u, 4294967295u)))), abs(vec4<u32>(abs(arg_1) << (_wgslsmith_sub_u32(u_input.a, var_0.a.x) % 32u), _wgslsmith_clamp_u32(u_input.a, func_4(Struct_2(0u, -258f), Struct_1(global0.a, global0.c.x, global0.c), 27583i, Struct_4(var_0.a)).b.a, select(arg_1, 74673u, arg_3)), _wgslsmith_add_u32(~51969u, ~arg_1), 26880u)), vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 24191i, global0.a.x, global0.a.x), vec4<i32>(arg_2, 1i, -10666i, -1i), select(arg_3, arg_3, arg_3)), vec4<i32>(-global0.a.x, -1i, arg_2, arg_2)), -_wgslsmith_sub_i32(0i, global0.a.x) >> (arg_0 % 32u), abs(global0.a.x)), global0.a.x);
    var var_2 = vec4<i32>(countOneBits(27169i), arg_2, (func_4(global1[_wgslsmith_index_u32(14526u, 17u)], Struct_1(vec3<i32>(var_1.c.a.x, global0.a.x, -1i), var_1.b.b, vec3<f32>(global0.b, 1127f, var_1.d.b)), -1i, Struct_4(var_0.a)).d.a.x | (-1i | var_1.d.a.x)) >> (~(~4294967295u) % 32u), global0.a.x) & firstLeadingBit(~(-abs(vec4<i32>(arg_2, global0.a.x, arg_2, arg_2))));
    var var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(select(~u_input.a, u_input.a, arg_3), 24437u) << (abs(_wgslsmith_clamp_vec2_u32(var_0.a, _wgslsmith_clamp_vec2_u32(var_0.a, var_0.a, var_0.a), vec2<u32>(21824u, 4294967295u))) % vec2<u32>(32u)), var_0.a, var_0.a);
    global1 = array<Struct_2, 17>();
    return ~reverseBits(_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_1, var_1.b.a), var_0.a), ~vec2<u32>(33532u, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_sub_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(37023u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~19866u), func_1(80641u, ~u_input.a, select(9517i, global0.a.x, false), true)));
    let var_1 = 1986i;
    let var_2 = countOneBits(1i);
    global1 = array<Struct_2, 17>();
    global0 = func_4(global1[_wgslsmith_index_u32(3038u, 17u)], func_5(Struct_3(-50669i, func_2(vec2<u32>(var_0, u_input.a), Struct_4(vec2<u32>(3200u, 17150u))), func_4(global1[_wgslsmith_index_u32(var_0, 17u)], func_4(Struct_2(u_input.a, global0.b), Struct_1(global0.a, global0.c.x, global0.c), var_2, Struct_4(vec2<u32>(u_input.a, 1u))).d, _wgslsmith_dot_vec2_i32(global0.a.xz, global0.a.yz), Struct_4(vec2<u32>(u_input.a, 4294967295u))).d, Struct_1(_wgslsmith_sub_vec3_i32(global0.a, vec3<i32>(-2147483647i, -2147483647i, 0i)), _wgslsmith_f_op_f32(global0.c.x * 375f), vec3<f32>(global0.b, global0.c.x, global0.c.x)), ~(var_2 ^ 0i)), abs(~select(vec4<u32>(var_0, u_input.a, 7072u, 35035u), vec4<u32>(var_0, 77482u, 39131u, 75468u), true)), vec3<i32>(func_5(Struct_3(var_2, Struct_2(u_input.a, -1138f), Struct_1(global0.a, -1228f, global0.c), Struct_1(vec3<i32>(-1i, -2147483647i, 35888i), global0.b, global0.c), 2147483647i), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), vec4<u32>(18207u, u_input.a, 33783u, u_input.a), vec4<u32>(var_0, var_0, 23224u, 4294967295u)), _wgslsmith_sub_vec3_i32(global0.a, global0.a), global0.a.x).e, i32(-1i) * -var_2, abs(var_2)), _wgslsmith_div_i32(-44299i, 53385i)).c, _wgslsmith_add_i32(countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, 36446i, var_1), vec4<i32>(var_2, global0.a.x, 2147483647i, 85653i))), -17863i), Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 311u) ^ vec2<u32>(7277u, 4294967295u), vec2<u32>(20481u, var_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0, 63u, 4294967295u) ^ vec4<u32>(u_input.a, 2648u, var_0, var_0), vec4<u32>(74348u, 51498u, 0u, 4294967295u) << (vec4<u32>(var_0, 1u, 0u, u_input.a) % vec4<u32>(32u)))))).c;
    global0 = Struct_1(func_4(global1[_wgslsmith_index_u32(3059u, 17u)], Struct_1(_wgslsmith_div_vec3_i32(-global0.a, min(global0.a, global0.a)), -119f, vec3<f32>(global0.b, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-global0.b))), 36405i, Struct_4(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(var_0, 9797u), vec2<u32>(93286u, 1u)))).d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f * -719f) + func_4(Struct_2(4294967295u, global0.c.x), Struct_1(vec3<i32>(1i, 28155i, -2147483647i), -788f, global0.c), global0.a.x, Struct_4(vec2<u32>(var_0, 1u))).b.b), 628f))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(firstLeadingBit(4294967295u | var_0), var_0 & 39572u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 46280u, u_input.a), vec4<u32>(0u, 0u, var_0, var_0))), vec3<i32>(var_2, var_2, reverseBits(i32(-1i) * -18539i)), _wgslsmith_f_op_f32(-global0.c.x), global0.c, _wgslsmith_f_op_f32(-474f - _wgslsmith_f_op_f32(f32(-1f) * -476f)));
}

