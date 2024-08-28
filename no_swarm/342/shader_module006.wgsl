struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(1u, 123881u, 27691u), vec3<u32>(1u, 20704u, 31687u), vec3<u32>(67259u, 1u, 1u), vec3<u32>(62357u, 36142u, 1u), vec3<u32>(20794u, 0u, 4294967295u), vec3<u32>(18788u, 0u, 51349u), vec3<u32>(21589u, 0u, 1u), vec3<u32>(31262u, 1u, 41687u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(40008u, 1u, 1u), vec3<u32>(38528u, 45257u, 16722u), vec3<u32>(1u, 4929u, 31890u), vec3<u32>(0u, 10369u, 1u), vec3<u32>(22773u, 4481u, 4294967295u), vec3<u32>(61517u, 14227u, 9643u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(610u, 29714u, 40291u), vec3<u32>(1u, 9588u, 60679u), vec3<u32>(37642u, 1972u, 4294967295u), vec3<u32>(0u, 1u, 6740u), vec3<u32>(1u, 0u, 0u), vec3<u32>(52324u, 1u, 1u), vec3<u32>(4294967295u, 1u, 14459u), vec3<u32>(47771u, 0u, 27832u), vec3<u32>(32739u, 5530u, 79193u), vec3<u32>(40527u, 4294967295u, 0u), vec3<u32>(171u, 4514u, 9678u), vec3<u32>(1u, 1u, 10192u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 47778u, 0u), vec3<u32>(50276u, 58280u, 21205u), vec3<u32>(93089u, 47092u, 0u));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-1i, vec3<f32>(-669f, 206f, -1868f), 1742f), Struct_1(0i, vec3<f32>(902f, 498f, 2572f), 1382f), Struct_1(-46780i, vec3<f32>(-603f, -579f, 486f), 360f), Struct_1(-74147i, vec3<f32>(223f, -1000f, 1133f), -1622f), Struct_1(i32(-2147483648), vec3<f32>(-359f, 1000f, 1000f), -386f));

var<private> global3: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global1 = array<vec3<u32>, 32>();
    var var_0 = global2[_wgslsmith_index_u32(max(u_input.c.x, 4294967295u | ~(0u ^ ~u_input.c.x)), 5u)];
    global1 = array<vec3<u32>, 32>();
    let var_1 = vec2<bool>((all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))) | any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false))) || true, any(vec3<bool>(true, true, true)));
    var var_2 = !(!vec4<bool>(true, _wgslsmith_mult_u32(0u, 4294967295u) >= ~u_input.c.x, true && (u_input.b < -50166i), var_1.x));
    return vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(390f, var_0.c), -100f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(max(-1760f, -588f)), any(vec4<bool>(true, var_1.x, false, true))))))), _wgslsmith_div_f32(1416f, _wgslsmith_f_op_f32(-var_0.c)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = vec3<bool>(false, all(arg_3), true);
    let var_2 = min(_wgslsmith_mod_i32(~(u_input.a.x ^ (0i | arg_0.a)), _wgslsmith_mod_i32(abs(-2147483647i ^ u_input.a.x), _wgslsmith_div_i32(-2147483647i, select(u_input.b, -16700i, var_1.x)))), arg_0.a);
    let var_3 = Struct_1(_wgslsmith_mod_i32(~(var_2 ^ -22499i), -1i ^ firstLeadingBit(arg_0.a)), _wgslsmith_f_op_vec3_f32(-arg_0.b), arg_0.c);
    global0 = array<vec4<f32>, 22>();
    return Struct_1(_wgslsmith_mult_i32(arg_0.a, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a, 34545i, -12224i), vec3<i32>(2147483647i, 41605i, arg_0.a)))), _wgslsmith_f_op_vec3_f32(func_3(var_3)), _wgslsmith_f_op_f32(floor(arg_0.c)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(~(-17655i), arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(round(896f)), any(vec2<bool>(arg_2.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - arg_0.c)))));
    return func_2(func_2(func_2(func_2(global2[_wgslsmith_index_u32(u_input.c.x << (37751u % 32u), 5u)], 114124u, arg_3.zxy, select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1, true), true)), reverseBits(1u), arg_3.xxx, !select(arg_3.zxz, vec3<bool>(true, true, false), vec3<bool>(arg_3.x, true, false))), _wgslsmith_div_u32(u_input.c.x, ~(~u_input.c.x)), vec3<bool>(arg_1, true, false), arg_3.yyz), u_input.c.x ^ 0u, select(vec3<bool>(select(arg_2.x, true, true), all(arg_2), arg_1), !select(select(arg_3.zwy, vec3<bool>(false, true, false), arg_3.xwx), select(arg_3.xyy, arg_3.xyw, true), !arg_1), vec3<bool>(arg_2.x, (u_input.c.x > u_input.c.x) & arg_3.x, all(arg_3))), vec3<bool>((15933u ^ firstTrailingBit(0u)) < ~u_input.c.x, all(select(!vec3<bool>(false, false, arg_3.x), !arg_3.xww, !arg_3.xyw)), true));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = countOneBits(vec3<u32>(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 0u, u_input.c.x), vec3<u32>(arg_1.x, 91943u, arg_1.x)) >> (~0u % 32u), ~(~1u)), 63653u));
    return arg_2.c;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(-_wgslsmith_div_vec4_i32(u_input.a, u_input.a), vec4<u32>(arg_1 | u_input.c.x, countOneBits(1u), 1u & arg_1, ~0u), func_4(func_2(Struct_1(u_input.b, arg_0.b, 212f), 0u, vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true, vec2<bool>(true, true), vec4<bool>(true, true, true, true)), vec4<i32>(-1i, u_input.a.x, 2147483647i, firstTrailingBit(1i)))), -2643f)) * -1564f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.c)))))), _wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(429f - _wgslsmith_f_op_f32(trunc(-608f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, 134f) + -1041f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f * 640f)))));
    global2 = array<Struct_1, 5>();
    let var_2 = ~abs(u_input.c);
    var var_3 = u_input.a.zw;
    return -350f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-u_input.b, vec3<f32>(785f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-773f)) * -352f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(18807u, 5u)], u_input.c.x)), _wgslsmith_f_op_f32(1283f * -1613f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_4(Struct_1(u_input.b, vec3<f32>(-149f, 622f, 606f), -1892f), false, vec2<bool>(false, true), vec4<bool>(true, true, true, true)).c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)));
    let var_1 = global2[_wgslsmith_index_u32(~4294967295u, 5u)];
    var var_2 = select(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_0.a >= var_1.a, false, true, false), vec4<bool>(false, all(vec4<bool>(true, false, true, false)), u_input.c.x <= u_input.c.x, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))), select(true, var_1.b.x <= _wgslsmith_f_op_f32(-884f * 239f), true)), vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(false, false)) == false, true, true, true), vec4<bool>(true, true, true, (-38986i <= var_0.a) || true), vec4<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false)), true, all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, false, false)))));
    var var_3 = Struct_1(firstLeadingBit(reverseBits(_wgslsmith_add_i32(var_1.a, -2663i)) & _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, 1i), var_1.a | 1i)), _wgslsmith_f_op_vec3_f32(-func_4(func_2(func_2(global2[_wgslsmith_index_u32(4294967295u, 5u)], u_input.c.x, vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, true)), u_input.c.x << (u_input.c.x % 32u), var_2.yyx, !vec3<bool>(false, var_2.x, var_2.x)), all(var_2.zyz), vec2<bool>(true, true), vec4<bool>(false, -1i > var_0.a, all(vec2<bool>(false, false)), all(vec3<bool>(var_2.x, var_2.x, var_2.x)))).b), _wgslsmith_f_op_f32(max(func_2(Struct_1(-1i, var_1.b, 1276f), abs(0u), select(!vec3<bool>(false, false, var_2.x), vec3<bool>(true, true, var_2.x), !vec3<bool>(true, false, var_2.x)), vec3<bool>(any(var_2.zx), var_2.x, true)).c, _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(f32(-1f) * -770f)))));
    var_2 = !vec4<bool>(all(!(!vec2<bool>(var_2.x, var_2.x))), var_2.x, var_2.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, -vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.b) ^ _wgslsmith_div_i32(var_3.a, var_0.a), -u_input.a.x), abs(reverseBits(1u)), vec3<i32>(countOneBits(-(~2147483647i)), ~var_1.a, ~(i32(-1i) * -5324i)), select(min(_wgslsmith_mult_i32(-var_0.a, -36451i), 13830i), 16238i, true));
}

