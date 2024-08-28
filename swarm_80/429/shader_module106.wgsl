struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: i32 = -36605i;

var<private> global3: array<bool, 2>;

var<private> global4: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(0u, 21458u), vec2<u32>(106863u, 0u), vec2<u32>(47646u, 2525u), vec2<u32>(99878u, 0u), vec2<u32>(4319u, 109231u), vec2<u32>(57826u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(48508u, 19440u), vec2<u32>(35228u, 10597u), vec2<u32>(75331u, 2965u), vec2<u32>(8065u, 0u), vec2<u32>(0u, 0u), vec2<u32>(52807u, 4294967295u), vec2<u32>(12565u, 0u), vec2<u32>(1u, 0u), vec2<u32>(46472u, 39441u), vec2<u32>(6935u, 18865u), vec2<u32>(0u, 37449u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(113291u, 0u), vec2<u32>(1u, 0u), vec2<u32>(79611u, 1u), vec2<u32>(1u, 0u), vec2<u32>(28682u, 42384u), vec2<u32>(0u, 1u), vec2<u32>(27659u, 56738u), vec2<u32>(55359u, 1u), vec2<u32>(4294967295u, 49327u), vec2<u32>(1u, 21543u), vec2<u32>(0u, 1u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(-218f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(306f, -653f, -1562f, 454f)))))))));
    global3 = array<bool, 2>();
    var var_1 = _wgslsmith_f_op_f32(abs(var_0.x));
    let var_2 = ~4294967295u;
    let var_3 = arg_0;
    return var_3.a;
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(abs(-vec4<i32>(arg_0.e, -57695i, 27028i, 7539i)), vec4<i32>(arg_0.e, i32(-1i) * -u_input.a, -arg_0.e, -23520i)), select(firstLeadingBit(~(vec3<u32>(arg_0.a, 4294967295u, 4294967295u) & vec3<u32>(arg_0.d, arg_0.d, arg_0.a))), ~vec3<u32>(4294967295u, ~13377u, arg_0.a), false), arg_0.c);
    let var_1 = Struct_2(arg_0.d, select(select(vec2<i32>(arg_0.e, u_input.a ^ var_0.a.x), -vec2<i32>(u_input.a, 32688i) ^ (arg_0.b ^ arg_0.b), vec2<bool>(var_0.a.x < 16682i, global3[_wgslsmith_index_u32(abs(arg_0.a), 2u)])), _wgslsmith_add_vec2_i32(var_0.a.yx, vec2<i32>(var_0.a.x, ~u_input.a)), select(!func_1(Struct_4(Struct_2(83188u, var_0.a.yw, vec3<bool>(true, var_0.c.x, global3[_wgslsmith_index_u32(arg_0.d, 2u)]), arg_0.a, -17061i)), Struct_1(-60525i, var_0.a.x, vec4<i32>(u_input.a, -2147483647i, var_0.a.x, 2147483647i)), vec3<bool>(false, true, arg_0.c.x)).c.yz, vec2<bool>(var_0.a.x >= -2147483647i, true), select(func_1(Struct_4(Struct_2(3315u, vec2<i32>(-15875i, arg_0.e), vec3<bool>(true, false, arg_0.c.x), 22738u, var_0.a.x)), Struct_1(-2147483647i, u_input.a, var_0.a), var_0.c).c.xy, vec2<bool>(false, false), var_0.c.xz))), vec3<bool>(true, any(vec2<bool>(global0.x, var_0.c.x)) | true, 1i != var_0.a.x), firstLeadingBit(~(32523u & var_0.b.x)) >> (77618u % 32u), -(~u_input.a));
    var_0 = Struct_3(var_0.a, ~_wgslsmith_mult_vec3_u32(var_0.b, ~var_0.b) | firstLeadingBit(vec3<u32>(var_1.d, 0u | var_0.b.x, 0u >> (arg_0.d % 32u))), select(var_1.c, arg_0.c, var_1.c));
    var_0 = Struct_3(var_0.a << ((_wgslsmith_mod_vec4_u32(~vec4<u32>(31363u, 0u, 0u, var_0.b.x), ~vec4<u32>(4294967295u, var_0.b.x, 31882u, var_1.d)) & select(_wgslsmith_mod_vec4_u32(vec4<u32>(5792u, arg_0.a, var_1.a, 1u), vec4<u32>(4294967295u, 0u, 1u, arg_0.d)), ~vec4<u32>(36205u, arg_0.a, 44649u, 1u), func_1(Struct_4(Struct_2(1u, vec2<i32>(3028i, u_input.a), var_1.c, var_1.d, -17115i)), Struct_1(var_1.b.x, var_0.a.x, vec4<i32>(-1i, u_input.a, -27958i, arg_0.b.x)), vec3<bool>(true, false, global3[_wgslsmith_index_u32(64901u, 2u)])).c.x)) % vec4<u32>(32u)), vec3<u32>(select(var_1.d, abs(~45480u), any(vec4<bool>(false, var_0.c.x, global3[_wgslsmith_index_u32(arg_0.d, 2u)], true)) == any(vec4<bool>(var_1.c.x, global0.x, arg_0.c.x, global0.x))), countOneBits(var_0.b.x & (var_1.a & 37401u)), var_0.b.x), vec3<bool>(arg_0.b.x >= -min(u_input.a, 2147483647i), false, !((var_1.d <= var_1.a) != (var_0.c.x || global3[_wgslsmith_index_u32(19356u, 2u)]))));
    let var_2 = abs(firstLeadingBit(_wgslsmith_add_i32(~var_0.a.x, countOneBits(u_input.a >> (arg_0.d % 32u)))));
    return firstLeadingBit(abs(~vec4<u32>(0u, ~4294967295u, _wgslsmith_div_u32(var_0.b.x, var_0.b.x), 1u)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = arg_0.c.xx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f), -1000f))));
    let var_2 = Struct_3(~(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_2.e, 2147483647i, -2147483647i) << (vec4<u32>(4294967295u, 7218u, 1u, arg_0.a) % vec4<u32>(32u)), vec4<i32>(u_input.a, -41820i, 24532i, 47378i)) << (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a, 14212u, arg_2.a, 19506u), vec4<u32>(4294967295u, 0u, 1337u, arg_0.d))) % vec4<u32>(32u))), vec3<u32>(abs(arg_0.a), 45760u, arg_2.a), vec3<bool>(!(!global0.x), global0.x, true));
    let var_3 = min(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global4[_wgslsmith_index_u32(31672u, 31u)] << (vec2<u32>(var_2.b.x, 4294967295u) % vec2<u32>(32u)), global4[_wgslsmith_index_u32(22256u, 31u)]), abs(max(var_2.b.xy, var_2.b.zx)))), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, arg_2.a), vec2<u32>(_wgslsmith_sub_u32(arg_2.a, var_2.b.x), ~1u)) >> (vec2<u32>(abs(1u), 68052u) % vec2<u32>(32u)));
    let var_4 = ~var_2.b.x;
    return _wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(57002u, 3062u, 0u, var_3.x) & ~vec4<u32>(arg_2.a, 40754u, 39403u, 25667u)), ~_wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(31581u, 15799u, 38687u, var_4)), vec4<u32>(var_3.x, arg_2.a, arg_2.a, var_2.b.x), !vec4<bool>(true, arg_2.c.x, global3[_wgslsmith_index_u32(var_4, 2u)], true)), func_3(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 21>();
    let var_0 = Struct_1(-3859i, u_input.a, abs(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a), 1i, 0i, _wgslsmith_sub_i32(u_input.a, -17280i))));
    let var_1 = Struct_4(Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(10093u, 0u, 4294967295u, 73960u)), vec4<u32>(1u, 4294967295u, 29638u, 8529u)), ~_wgslsmith_mod_u32(4294967295u, 34935u)), vec2<i32>(var_0.b, 0i), !vec3<bool>(true, !global3[_wgslsmith_index_u32(4294967295u, 2u)], true), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 0u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_mod_i32(~(-1i), min(abs(-1i), _wgslsmith_mult_i32(2147483647i, u_input.a)))));
    var var_2 = var_1.a;
    var var_3 = ~func_2(func_1(var_1, var_0, !var_1.a.c), _wgslsmith_mod_i32(2147483647i, -1i), var_1.a);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(f32(-1f) * -573f))) - _wgslsmith_f_op_f32(-842f - -1615f)))) - -201f);
    var_4 = -393f;
    let var_5 = vec4<u32>(~_wgslsmith_sub_u32(var_3.x, ~var_2.a), (~var_2.a | firstLeadingBit(var_1.a.d)) ^ var_3.x, 4725u, 67456u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(386f + _wgslsmith_div_f32(743f, -1272f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-713f + -888f) - -127f), var_2.c.x))), 1u, firstLeadingBit(vec3<i32>(-1i, i32(-1i) * -1i, _wgslsmith_div_i32(u_input.a >> (0u % 32u), 0i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2467f)) * -491f), _wgslsmith_div_f32(_wgslsmith_div_f32(310f, 433f), _wgslsmith_f_op_f32(select(-775f, 171f, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-197f, -1563f)), _wgslsmith_f_op_f32(-501f * -1326f))));
}

