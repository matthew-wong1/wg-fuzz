struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(4979u, 9u)];
    var var_1 = arg_1 < _wgslsmith_mult_i32(~(-19293i) >> (_wgslsmith_div_u32(u_input.a >> (arg_2 % 32u), var_0.a >> (arg_2 % 32u)) % 32u), _wgslsmith_sub_i32(~countOneBits(arg_1), (i32(-1i) * -30385i) & ~arg_0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.c.a.a, var_0.d.a)))), vec2<bool>((!var_0.d.b.x | (11331u > u_input.a)) & all(vec3<bool>(false, true, true)), var_0.c.a.b.x));
    var var_3 = var_0.d;
    var_1 = true || !var_3.b.x;
    return var_0.c.a.b;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), ~12204u) ^ _wgslsmith_div_u32(~u_input.c.x, u_input.a), u_input.c.x, ~(firstTrailingBit(u_input.a) << (1u % 32u)), u_input.a), Struct_1(_wgslsmith_f_op_f32(arg_0 - -1000f), select(vec2<bool>(true, true), func_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -34112i)), ~2147483647i, u_input.c.x), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(round(arg_0)))), func_3(vec3<i32>(u_input.b >> (u_input.a % 32u), 1i, u_input.b ^ 11713i), abs(u_input.b), 8200u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, 2001f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(318f, 249f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1831f, arg_0), vec2<f32>(arg_0, arg_0), false))))));
    var var_1 = ~(var_0.a.x ^ (_wgslsmith_clamp_u32(37554u, _wgslsmith_div_u32(var_0.a.x, u_input.a), var_0.a.x) ^ (abs(0u) ^ var_0.a.x)));
    var var_2 = !select(vec4<bool>(true, !var_0.c.b.x, true, var_0.c.b.x), select(vec4<bool>(true, any(vec2<bool>(var_0.b.b.x, true)), -1000f >= arg_0, true), select(vec4<bool>(var_0.b.b.x, var_0.b.b.x, var_0.c.b.x, false), !vec4<bool>(var_0.c.b.x, false, var_0.c.b.x, true), var_0.b.b.x), !vec4<bool>(false, false, false, var_0.c.b.x)), !(!(!vec4<bool>(var_0.b.b.x, true, var_0.b.b.x, var_0.c.b.x))));
    var var_3 = u_input.b;
    var_2 = !vec4<bool>(false, var_2.x, true || func_3(vec3<i32>(1169i, u_input.b, u_input.b), -13337i, 1u).x, all(!vec2<bool>(var_0.c.b.x, var_0.b.b.x)));
    return var_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_4, 9>();
    let var_0 = !vec4<bool>(all(vec2<bool>(all(vec3<bool>(arg_1.b.x, arg_1.b.x, false)), arg_1.b.x)), any(select(vec3<bool>(true, arg_0, arg_1.b.x), !vec3<bool>(true, arg_1.b.x, arg_1.b.x), true)), arg_1.b.x || true, arg_1.b.x);
    global0 = array<Struct_4, 9>();
    global0 = array<Struct_4, 9>();
    let var_1 = u_input.b;
    return ~1u;
}

fn func_1() -> Struct_1 {
    var var_0 = countOneBits((select(~vec4<i32>(u_input.b, u_input.b, -2457i, 25260i), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), false) << (~(vec4<u32>(4294967295u, 1u, u_input.a, 76846u) | u_input.c) % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u)));
    let var_1 = (u_input.c.x >= u_input.c.x) | false;
    let var_2 = abs(func_4(all(vec2<bool>(var_1, true)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)))));
    let var_3 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f * -308f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-976f))))), select(select(select(select(vec2<bool>(true, var_3), vec2<bool>(var_1, true), var_1), select(vec2<bool>(true, true), vec2<bool>(var_3, false), var_3), false), !vec2<bool>(false, var_3), !func_2(-561f).b), vec2<bool>(all(select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_3), vec2<bool>(var_3, true))), !(u_input.a >= 57415u)), all(vec4<bool>(all(vec2<bool>(var_3, var_1)), var_1, var_3, true))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(~_wgslsmith_div_u32(47656u, ~u_input.c.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_1.a))).a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1908f, 903f)), _wgslsmith_div_f32(arg_1.a, -1488f))), Struct_2(Struct_1(arg_1.a, vec2<bool>(true, true))), func_2(arg_1.a));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(599f, _wgslsmith_f_op_f32(min(func_1().a, -1493f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, 731f, true)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1259f) * _wgslsmith_f_op_f32(arg_1.a * -305f)), _wgslsmith_f_op_f32(f32(-1f) * -471f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * var_0.d.a) + arg_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-595f)))))), var_0.d.a);
    global0 = array<Struct_4, 9>();
    var var_2 = Struct_3(vec4<u32>(8365u, ~var_0.a, 1u >> (_wgslsmith_mult_u32(u_input.c.x, 79931u) % 32u), 93092u) << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(36155u, 0u, u_input.c.x, 1u)) | firstLeadingBit(u_input.c), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_0.a, 12805u, u_input.c.x, var_0.a), u_input.c, vec4<bool>(true, false, arg_1.b.x, var_0.d.b.x)), ~u_input.c, ~vec4<u32>(41180u, u_input.c.x, arg_0, 18121u))) % vec4<u32>(32u)), var_0.d, func_2(_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yw) + _wgslsmith_f_op_vec2_f32(round(var_1.zx))));
    let var_3 = Struct_3(var_2.a, func_1(), var_2.b, var_1.yz);
    return Struct_2(var_0.c.a);
}

fn func_6(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(max(~_wgslsmith_sub_vec4_i32(vec4<i32>(1697i, 14197i, 2147483647i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstLeadingBit(vec4<i32>(-15452i, 0i, 15234i, 1i) >> (u_input.c % vec4<u32>(32u)))), ~vec4<i32>(0i, 1i, u_input.b, 20330i) << (vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_add_u32(3714u, u_input.c.x), reverseBits(u_input.a), u_input.a) % vec4<u32>(32u))), u_input.b, _wgslsmith_div_i32(i32(-1i) * -73564i, u_input.b));
    var var_1 = arg_2.a.b;
    let var_2 = _wgslsmith_mult_i32(u_input.b ^ 0i, -u_input.b);
    let var_3 = arg_1.zz;
    var var_4 = arg_0;
    return Struct_1(-687f, !arg_2.a.b);
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = any(select(!(!func_6(false, vec3<f32>(arg_0.a.a, arg_0.a.a, arg_0.a.a), arg_0).b), vec2<bool>(true, arg_0.a.b.x), vec2<bool>(select(!arg_0.a.b.x, true || arg_0.a.b.x, true), false)));
    var_0 = true;
    var var_1 = vec2<f32>(arg_0.a.a, -1524f);
    var_0 = false;
    var var_2 = _wgslsmith_div_f32(func_1().a, func_6(arg_0.a.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(trunc(1853f)), _wgslsmith_f_op_f32(-arg_0.a.a)) * vec3<f32>(299f, _wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(trunc(945f)))), func_5(u_input.a, arg_0.a)).a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.c.x, ~(~(u_input.c.x >> (1u % 32u))));
    let var_1 = u_input.b;
    let var_2 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(false, true, true, true))));
    var var_3 = -742f;
    let var_4 = true;
    global0 = array<Struct_4, 9>();
    let var_5 = func_7(Struct_2(func_6(!var_4, vec3<f32>(_wgslsmith_f_op_f32(select(-1435f, -649f, false)), -1000f, _wgslsmith_f_op_f32(170f - -1385f)), func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 0u, 4294967295u), u_input.c), func_1()))), _wgslsmith_mult_u32(~select(44418u, u_input.a, var_2), abs(u_input.a) ^ 91888u), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, var_1), vec2<i32>(var_1, -1i)), vec2<i32>(-66285i, var_1) | vec2<i32>(31858i, u_input.b)), u_input.b), reverseBits(-vec2<i32>(42852i, -67730i) ^ (vec2<i32>(-1i, u_input.b) & vec2<i32>(var_1, 0i)))));
    global0 = array<Struct_4, 9>();
    var var_6 = -var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_5.a.a, _wgslsmith_f_op_f32(func_1().a - _wgslsmith_f_op_f32(-func_7(Struct_2(Struct_1(var_5.a.a, vec2<bool>(true, false))), 100791u, vec2<i32>(-9578i, -41476i)).a.a))), 19525u);
}

