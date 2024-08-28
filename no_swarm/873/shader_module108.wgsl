struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1232f, -678f, vec2<u32>(0u, 28981u), 3860u), Struct_1(-284f, 920f, vec2<u32>(31538u, 0u), 4294967295u), Struct_1(-1702f, 1000f, vec2<u32>(13900u, 70619u), 0u), Struct_1(-227f, -490f, vec2<u32>(7193u, 1u), 17775u), Struct_1(-1183f, -1710f, vec2<u32>(0u, 0u), 0u), Struct_1(-1000f, -1071f, vec2<u32>(19776u, 28530u), 0u), Struct_1(-1434f, -2014f, vec2<u32>(0u, 32368u), 56521u), Struct_1(416f, 824f, vec2<u32>(19937u, 15469u), 4294967295u), Struct_1(1054f, -2030f, vec2<u32>(0u, 13639u), 1u), Struct_1(-838f, -809f, vec2<u32>(0u, 0u), 4294967295u), Struct_1(1959f, 1079f, vec2<u32>(48872u, 17057u), 37211u), Struct_1(813f, 178f, vec2<u32>(4294967295u, 86506u), 64940u), Struct_1(-918f, 1062f, vec2<u32>(17861u, 1u), 4294967295u), Struct_1(-293f, -1170f, vec2<u32>(1280u, 98648u), 63694u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = !select(!vec2<bool>(global0.x, global0.x), select(select(vec2<bool>(false, false), vec2<bool>(false, false), !vec2<bool>(false, global0.x)), select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(false, global0.x), any(vec3<bool>(true, global0.x, global0.x))), select(any(vec2<bool>(false, global0.x)), true, global0.x)), vec2<bool>(!any(vec4<bool>(global0.x, false, true, global0.x)), true));
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-673f, -2142f, 607f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1191f, -495f, 133f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(round(386f)), -600f))));
    let var_2 = vec4<u32>(1u, 44552u, 13433u, 0u);
    global1 = array<Struct_1, 14>();
    global0 = !vec2<bool>(var_0.x, true);
    return _wgslsmith_f_op_vec2_f32(floor(var_1.a.zy));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(vec2<f32>(296f, -383f) - vec2<f32>(-964f, -404f))))), ~70484u, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1872f - _wgslsmith_f_op_f32(step(1000f, 1762f))), _wgslsmith_f_op_f32(ceil(-1424f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), -58050i & -countOneBits(~u_input.a), global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(1000f, var_0.c.a.x)), 1551f, ~vec2<u32>(0u, ~min(arg_0, var_0.b)), 23220u);
    let var_2 = var_0;
    let var_3 = global1[_wgslsmith_index_u32(arg_0, 14u)];
    let var_4 = min(max(select(~1i, reverseBits(u_input.a), true), -2147483647i), -8048i) <= _wgslsmith_dot_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_2.d, var_0.d, u_input.a), vec4<i32>(var_0.d, 10995i, u_input.a, 2656i)) ^ max(vec4<i32>(3148i, var_2.d, var_2.d, -1i), vec4<i32>(var_0.d, var_2.d, var_2.d, var_0.d))) >> (vec4<u32>(var_2.b, ~1u, abs(56166u), 0u | var_0.b) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(-var_2.d, _wgslsmith_mod_i32(u_input.a, u_input.a)), var_2.d, -2147483647i, u_input.a));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = vec2<u32>(arg_1.b, max(arg_1.b, _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(4294967295u, 1u)), ~(~vec2<u32>(arg_1.b, arg_1.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, arg_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1617f, -1413f) * arg_1.c.a)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(130f, arg_0) - _wgslsmith_f_op_f32(trunc(arg_1.a.x))), _wgslsmith_f_op_f32(func_2(0u).c.a.x * _wgslsmith_div_f32(1000f, 824f)), _wgslsmith_f_op_vec2_f32(func_3()).x))));
    var var_2 = 826f;
    var var_3 = -vec4<i32>(arg_1.d << (_wgslsmith_div_u32(func_2(25909u).b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.b, arg_1.b), vec3<u32>(arg_1.b, var_0.x, 0u))) % 32u), ~arg_1.d, u_input.a | (u_input.a | _wgslsmith_div_i32(arg_1.d, arg_1.d)), u_input.a << (0u % 32u));
    let var_4 = all(vec4<bool>(func_2(abs(var_0.x << (arg_1.b % 32u))).e, !((arg_0 <= -1147f) == global0.x), false, all(!(!vec4<bool>(false, false, true, global0.x)))));
    return var_0;
}

fn func_1() -> vec4<bool> {
    let var_0 = func_4(1913f, func_2(22660u));
    let var_1 = Struct_4(!vec2<bool>(global0.x, all(!vec2<bool>(global0.x, true))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-154f, 1000f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(957f, -1000f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-194f, 262f), vec2<f32>(-184f, -581f)))) + vec2<f32>(_wgslsmith_div_f32(-320f, -903f), 1f)))), max(countOneBits(abs(1u)), ~1u), func_2(max(~var_0.x, 492u)).c, u_input.a << ((0u >> (select(var_0.x, var_0.x, true) % 32u)) % 32u), select(var_0.x, var_0.x, true) >= var_0.x);
    var var_3 = global1[_wgslsmith_index_u32(min(select(47899u, var_2.b, var_1.a.x), abs(~func_2(~var_0.x).b)), 14u)];
    let var_4 = func_2(~1u).c;
    return !select(!(!(!vec4<bool>(false, false, var_1.a.x, false))), select(select(select(vec4<bool>(var_1.a.x, var_2.e, global0.x, global0.x), vec4<bool>(true, var_1.a.x, true, global0.x), vec4<bool>(global0.x, var_1.a.x, var_1.a.x, true)), !vec4<bool>(var_2.e, false, var_2.e, global0.x), true), vec4<bool>(!var_2.e, any(vec4<bool>(false, global0.x, var_1.a.x, var_2.e)), var_0.x == 38612u, true), vec4<bool>(u_input.a <= -1i, any(vec2<bool>(true, true)), false, u_input.a == var_2.d)), select(select(select(vec4<bool>(global0.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), true), !vec4<bool>(true, var_2.e, var_2.e, true), !vec4<bool>(false, var_2.e, true, true)), select(vec4<bool>(var_2.e, true, true, false), !vec4<bool>(false, false, var_1.a.x, var_2.e), true), !(!vec4<bool>(false, false, true, global0.x))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    global0 = arg_1.a;
    global0 = !arg_0.yz;
    var var_0 = 205f;
    return func_2(~arg_2.c.x).c;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> Struct_5 {
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(~vec2<u32>(4294967295u, 1u))), abs(4294967295u)), 14u)];
    global0 = vec2<bool>(!(!(!global0.x)), select(func_1().x, var_1.a < _wgslsmith_f_op_f32(687f - _wgslsmith_f_op_f32(arg_1.a.x + 1409f)), global0.x));
    var var_2 = arg_1;
    var var_3 = arg_1;
    return Struct_5(Struct_4(vec2<bool>(!any(vec4<bool>(true, false, arg_3.x, global0.x)), var_1.c.x >= 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-369f * -112f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1447f)))), _wgslsmith_div_f32(-671f, -1000f), true)));
    let var_1 = func_6(vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - _wgslsmith_f_op_f32(-584f * 1932f)) - _wgslsmith_f_op_f32(-var_0)), 1413f), func_5(func_1(), Struct_4(select(vec2<bool>(true, true), !vec2<bool>(global0.x, true), vec2<bool>(global0.x, false))), Struct_1(var_0, -1000f, vec2<u32>(1u, 1u), ~(~0u)), select(func_1().xww, vec3<bool>(true, !global0.x, global0.x), global0.x)), _wgslsmith_f_op_f32(154f * 135f), !vec2<bool>(true, global0.x));
    var var_2 = -631f;
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(678f * _wgslsmith_f_op_f32(f32(-1f) * -1244f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0)), var_0))))));
    var_2 = _wgslsmith_f_op_f32(-118f * var_0);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1756f, 202f, 1000f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 847f, var_0) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1266f, -221f, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-527f, var_0, var_0), vec3<f32>(var_0, 343f, var_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 670f, var_0)))))));
    var var_4 = (_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(440u, 36444u, 49381u, 85410u) >> (select(vec4<u32>(4294967295u, 0u, 4294967295u, 28579u), vec4<u32>(60720u, 90573u, 4294967295u, 22994u), vec4<bool>(global0.x, false, var_1.a.a.x, global0.x)) % vec4<u32>(32u))) & ~(~(~vec4<u32>(0u, 78324u, 77942u, 61146u)))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u ^ func_4(var_3.x, Struct_3(var_3.zx, 0u, Struct_2(vec3<f32>(var_0, 674f, var_3.x)), 23660i, var_1.a.a.x)).x, abs(18316u), firstLeadingBit(abs(55966u)), _wgslsmith_clamp_u32(abs(165u), ~4294967295u, ~53999u)), vec4<u32>(abs(37917u), min(54317u, 0u), ~0u, _wgslsmith_mult_u32(0u, 7344u)) >> (vec4<u32>(~24557u, _wgslsmith_dot_vec2_u32(vec2<u32>(24915u, 3005u), vec2<u32>(5512u, 53386u)), 22325u, _wgslsmith_mult_u32(1u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_5 = !vec2<bool>(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(23482u, 18987u, var_4.x), vec3<u32>(var_4.x, 26447u, 4294967295u))).b <= var_4.x, global0.x);
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1143f - var_3.x) + _wgslsmith_f_op_f32(var_3.x - 534f)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ -(~u_input.a), 0u, ~var_4.x);
}

