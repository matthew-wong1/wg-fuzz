struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(36731u, 19150u, 6026u, 4480u);

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(0u, 83797u));

var<private> global3: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(431f, -413f, -1000f), vec3<f32>(1021f, -271f, 922f), vec3<f32>(2331f, 920f, 435f), vec3<f32>(-273f, -1000f, -579f), vec3<f32>(523f, 1200f, -180f), vec3<f32>(-285f, -1913f, -2318f), vec3<f32>(1227f, -1229f, 1000f), vec3<f32>(818f, 1271f, -434f), vec3<f32>(-2028f, 1262f, -416f), vec3<f32>(-1405f, -1217f, 544f), vec3<f32>(412f, 1048f, 204f), vec3<f32>(1000f, -1000f, 1100f), vec3<f32>(1160f, -1000f, -385f), vec3<f32>(-402f, 1280f, 1668f), vec3<f32>(-1673f, 1000f, 1076f), vec3<f32>(393f, -149f, 443f), vec3<f32>(166f, 646f, -522f), vec3<f32>(-1613f, -409f, -237f), vec3<f32>(1575f, -108f, 1124f), vec3<f32>(642f, -1940f, 105f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -557f);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(4294967295u, global0.x, 7958u, 15325u))), ~(vec4<u32>(4294967295u, 0u, u_input.b, 1u) ^ vec4<u32>(44880u, 0u, global0.x, global0.x))) | u_input.e);
    var var_2 = Struct_4(_wgslsmith_mult_u32(global0.x, global0.x), var_1, global2[_wgslsmith_index_u32(1u, 1u)]);
    return -(-(u_input.a.x ^ arg_0.x) | abs(-(i32(-1i) * -3980i)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    global3 = array<vec3<f32>, 20>();
    global3 = array<vec3<f32>, 20>();
    let var_0 = Struct_3(Struct_2(abs(0i | ~u_input.d.x), (-vec3<i32>(-30426i, 0i, 27979i) | vec3<i32>(u_input.d.x, u_input.c, u_input.c)) ^ abs(vec3<i32>(u_input.c, -7046i, u_input.a.x))), _wgslsmith_f_op_f32(sign(873f)), Struct_2(-33263i, vec3<i32>(u_input.c, -22696i, _wgslsmith_sub_i32(u_input.c, func_3(vec4<i32>(u_input.a.x, -1i, 20669i, -2147483647i))))));
    var var_1 = Struct_5(global1[_wgslsmith_index_u32(~(u_input.b | 17430u) << (arg_3.x % 32u), 22u)], any(vec3<bool>(true, -u_input.d.x <= 2147483647i, false)));
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.c, 1i), min(func_3(vec4<i32>(-40958i, u_input.a.x, -2147483647i, -24095i)), var_0.c.b.x), ~_wgslsmith_mult_i32(-3721i, u_input.a.x), 1i), -vec4<i32>(1i, -1i, u_input.c, ~u_input.c)), max(_wgslsmith_div_vec3_i32(var_0.a.b, var_0.c.b), vec3<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_0.a.b.x, -1i), _wgslsmith_clamp_vec3_i32(var_0.a.b, var_0.a.b, vec3<i32>(var_0.c.a, 24938i, -2147483647i))), ~(-1i) ^ u_input.a.x)));
    return global1[_wgslsmith_index_u32(var_1.a.a, 22u)];
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = vec4<bool>(true, !(_wgslsmith_f_op_f32(f32(-1f) * -138f) != _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(628f, -678f), _wgslsmith_f_op_f32(min(-100f, -612f))))), false, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_3(Struct_2(~u_input.d.x, vec3<i32>(firstLeadingBit(u_input.a.x), ~(-2147483647i), u_input.c) ^ firstLeadingBit(abs(vec3<i32>(0i, 49513i, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-421f + 151f), _wgslsmith_f_op_f32(step(-1485f, 168f))))))), Struct_2(min(2147483647i, ~(u_input.c >> (global0.x % 32u))), vec3<i32>(1i, -reverseBits(u_input.c), -u_input.a.x << (1u % 32u))));
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(1167f + _wgslsmith_f_op_f32(sign(var_1.b))) >= _wgslsmith_f_op_f32(max(1748f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.b + var_1.b)))), var_0.x, var_0.x, all(var_0.yxw));
    let var_3 = false;
    global1 = array<Struct_1, 22>();
    return Struct_2(11712i, countOneBits(max(var_1.c.b, _wgslsmith_clamp_vec3_i32(min(var_1.a.b, var_1.c.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -40267i, u_input.d.x), vec3<i32>(-41788i, u_input.c, u_input.d.x)), min(vec3<i32>(1i, u_input.a.x, 29948i), vec3<i32>(var_1.a.a, -70021i, u_input.c))))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_4(~(~(~firstLeadingBit(arg_1.x))), global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(min(global0.x, 1u), ~global0.x), ~1u & select(global0.x, 71422u, true), (0i | arg_2.x) <= ~1i) >> (arg_1.x % 32u), 22u)], ~(_wgslsmith_mod_vec2_u32(vec2<u32>(50550u, global0.x), reverseBits(vec2<u32>(global0.x, 46041u))) & (_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0), arg_1) | ~vec2<u32>(0u, 37812u))));
    var var_1 = _wgslsmith_f_op_f32(-1393f + -1535f);
    var var_2 = Struct_3(func_4(Struct_4(arg_1.x, func_2(any(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, false, true, true)), ~var_0.c), firstTrailingBit(vec2<u32>(u_input.e, arg_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) + -1399f)))), func_4(Struct_4(~arg_0, Struct_1(0u), countOneBits(vec2<u32>(global0.x, u_input.e)))));
    var_0 = Struct_4(firstLeadingBit(abs(reverseBits(~u_input.b))), Struct_1(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e, 0u, 1678u), abs(4294967295u))), var_0.c);
    let var_3 = Struct_1(countOneBits(22968u & _wgslsmith_clamp_u32(~global0.x, global0.x, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(75315u, u_input.e)))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, -u_input.c), -(u_input.a.x | -7651i)) >> (u_input.e % 32u), u_input.d.x << (max(countOneBits(u_input.e), 1u) % 32u));
    let var_2 = global2[_wgslsmith_index_u32(u_input.e, 1u)];
    let var_3 = Struct_2(abs(u_input.d.x), -(vec3<i32>(reverseBits(-2147483647i), u_input.c, _wgslsmith_sub_i32(-9676i, var_1.x)) ^ -_wgslsmith_clamp_vec3_i32(vec3<i32>(-54728i, -20577i, -1i), vec3<i32>(u_input.a.x, -30092i, u_input.a.x), vec3<i32>(-1i, u_input.c, var_1.x))));
    let var_4 = vec2<i32>(var_1.x, 2147483647i);
    var var_5 = func_1(var_2.x, _wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(~4294967295u >> (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, global0.x, 1u, 4294967295u), vec4<u32>(25124u, u_input.e, 21546u, 1u))) % 32u), 1u)], vec2<u32>(1089u, ~global0.x)), abs(vec3<i32>(21082i, (var_4.x >> (1u % 32u)) | _wgslsmith_mult_i32(var_3.a, 1i), max(u_input.d.x, var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-279f))))));
    let var_6 = select(vec4<bool>(true, true, true, true), vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) + _wgslsmith_f_op_f32(-807f - 804f)) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1284f, 144f)), -1067f, all(vec4<bool>(false, true, false, false)))), true, !all(vec4<bool>(true, true, true, false))), !select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true)));
    var var_7 = Struct_4(abs(_wgslsmith_dot_vec2_u32(~(~global2[_wgslsmith_index_u32(var_2.x, 1u)]), vec2<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, u_input.e), u_input.e >> (1350u % 32u)))), func_2(var_6.x, !var_6.x, any(var_6), global2[_wgslsmith_index_u32(u_input.e, 1u)]), vec2<u32>(var_2.x >> (~(var_2.x << (global0.x % 32u)) % 32u), max(18553u, 46450u)));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, vec4<u32>(4294967295u, ~global0.x, global0.x, 0u));
}

