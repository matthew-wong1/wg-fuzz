struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: vec4<f32> = vec4<f32>(366f, 1071f, -404f, 801f);

var<private> global3: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(797f, -2236f, 151f), vec3<f32>(-706f, 1000f, -356f), vec3<f32>(235f, -1000f, 1334f), vec3<f32>(-1543f, -1093f, -1077f), vec3<f32>(-142f, 1534f, -970f), vec3<f32>(-773f, -2239f, 1410f), vec3<f32>(-910f, 2639f, 722f), vec3<f32>(151f, -1181f, -152f), vec3<f32>(343f, 503f, -473f));

var<private> global4: array<Struct_2, 1>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = arg_1.a;
    let var_1 = max(-vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1970i, u_input.b.x), vec3<i32>(2147483647i, 35642i, -1i)), -(-59356i >> (var_0.a % 32u)), arg_1.e, 47863i), vec4<i32>(~u_input.c.x, 6732i, _wgslsmith_mod_i32(min(_wgslsmith_mod_i32(-32424i, -45314i), u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 11175u), _wgslsmith_div_u32(u_input.a, 47625u)), 17u)]), countOneBits(countOneBits(u_input.c.x)) | -3996i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-global2.zzz);
    let var_3 = Struct_1(max(25425u, _wgslsmith_clamp_u32(u_input.a, 0u, u_input.a)), _wgslsmith_f_op_vec3_f32(arg_1.a.b - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-452f, -974f, -1278f), vec3<f32>(global2.x, 633f, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(-global2.wzw))))), ~vec2<u32>(_wgslsmith_add_u32(arg_1.a.a, firstTrailingBit(4294967295u)), ~u_input.a));
    global4 = array<Struct_2, 1>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-720f, -783f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(min(322f, 202f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 1413f, global2.x, 748f) + vec4<f32>(var_2.x, -304f, var_2.x, global2.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(761f, -569f, var_3.b.x, -293f), vec4<f32>(var_3.b.x, -838f, var_3.b.x, global2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(481f, global2.x, var_2.x, 310f), vec4<f32>(-1431f, 793f, var_2.x, 133f)), select(vec4<bool>(false, true, true, arg_2.x), vec4<bool>(false, true, arg_0, arg_1.c.x), vec4<bool>(true, arg_1.b, arg_2.x, arg_2.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.b.x, -174f, 1020f, 691f), _wgslsmith_div_vec4_f32(vec4<f32>(582f, var_0.b.x, global2.x, 532f), vec4<f32>(var_2.x, -278f, global2.x, -207f))))));
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, Struct_2(Struct_1(1u, global3[_wgslsmith_index_u32(0u, 9u)], vec2<u32>(u_input.a, 25255u)), any(vec2<bool>(true, true)), vec3<bool>(true, true, true), vec4<u32>(8794u, u_input.a, 38903u, u_input.a) ^ vec4<u32>(u_input.a, 12750u, u_input.a, 63816u), _wgslsmith_sub_i32(-16900i, global0[_wgslsmith_index_u32(u_input.a, 17u)])), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)))));
    var var_0 = Struct_2(Struct_1(15574u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(951f, _wgslsmith_f_op_f32(global2.x - -161f), _wgslsmith_div_f32(-2200f, 507f)))), _wgslsmith_mod_vec2_u32(select(reverseBits(vec2<u32>(1u, 16981u)), vec2<u32>(u_input.a, 39854u), true), ~vec2<u32>(u_input.a, u_input.a))), true, vec3<bool>(true, false, max(u_input.a & u_input.a, countOneBits(u_input.a)) > max(u_input.a | u_input.a, _wgslsmith_clamp_u32(u_input.a, 86299u, u_input.a))), firstLeadingBit(vec4<u32>(1u >> (~u_input.a % 32u), firstLeadingBit(~u_input.a), 52284u, ~0u)), i32(-1i) * -30954i);
    var var_1 = global4[_wgslsmith_index_u32(~1u >> (u_input.a % 32u), 1u)];
    var var_2 = var_0.a;
    var var_3 = vec2<f32>(1520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1991f - -409f)));
    return global4[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(16919u, var_0.d.x)), 1u)];
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-391f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global2.x))), global2.x, -349f, _wgslsmith_f_op_f32(select(global2.x, global2.x, true)));
    global3 = array<vec3<f32>, 9>();
    global2 = vec4<f32>(global2.x, -882f, 667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1074f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(891f, global2.x))) + arg_0.b.x));
    let var_0 = func_2();
    var var_1 = var_0.c.x;
    return Struct_2(Struct_1(4294967295u, global2.wwx, vec2<u32>(0u, ~min(u_input.a, var_0.a.c.x))), (~(~u_input.a) ^ arg_0.a) < ~(~(~4294967295u)), select(select(var_0.c, !vec3<bool>(var_0.b, var_0.c.x, var_0.b), false), vec3<bool>(true && (1176f >= arg_0.b.x), any(var_0.c.xx), true), any(select(vec4<bool>(var_0.c.x, true, false, var_0.b), select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.c.x, false, false, var_0.b), vec4<bool>(var_0.b, true, var_0.b, var_0.c.x)), select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.c.x, var_0.b, false), vec4<bool>(var_0.b, var_0.c.x, false, false))))), firstTrailingBit(~select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_0.c.x, var_0.a.a), var_0.d), vec4<u32>(4294967295u, arg_0.c.x, 0u, 1u), !vec4<bool>(false, false, var_0.b, var_0.c.x))), min(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.e, -2147483647i, -19951i), vec3<i32>(var_0.e, var_0.e, 17776i)), u_input.b >> (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u))), 1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    global0 = array<i32, 17>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_3);
    var var_1 = vec4<u32>(~firstTrailingBit(0u), ~46581u, u_input.a, arg_1.a);
    let var_2 = vec4<bool>((i32(-1i) * -14323i) != func_2().e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(floor(var_0.x)))) <= global2.x, arg_2, false);
    var var_3 = arg_1;
    return func_1(func_2().a).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_1(29789u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1474f, 1601f, global2.x), global3[_wgslsmith_index_u32(23403u, 9u)], false)), global2.xyy), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 26128u)))), Struct_1(~(~_wgslsmith_div_u32(u_input.a, 9299u)), _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(abs(u_input.a), 9u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-305f, global2.x, 621f))), vec2<u32>(4294967295u, 32479u)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.ww)));
    let var_1 = -(select(i32(-1i) * -2147483647i, -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.c, var_0.c), 17u)], false) << ((~(~4294967295u) >> (min(var_0.c.x << (1u % 32u), u_input.a) % 32u)) % 32u));
    let var_2 = _wgslsmith_mult_u32(~87474u, ~(~u_input.a) ^ _wgslsmith_add_u32(6283u, ~var_0.c.x));
    var var_3 = all(func_2().c);
    var var_4 = vec4<i32>(~global0[_wgslsmith_index_u32(var_2, 17u)] | -(max(global0[_wgslsmith_index_u32(var_0.c.x, 17u)], -5455i) & u_input.d), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_1, -2147483647i, var_1), vec3<i32>(-2552i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0.a, 17u)], u_input.d), -62049i)), firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, -1i), var_1, -u_input.c.x))), _wgslsmith_div_i32(~(~(-u_input.b.x)), u_input.c.x), firstTrailingBit(global0[_wgslsmith_index_u32(~1u, 17u)]));
    let var_5 = var_1;
    let var_6 = func_2();
    let var_7 = ~select(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(var_0.c.x, var_2, var_2, 4294967295u), vec4<u32>(u_input.a, 1u, var_2, var_0.a), vec4<bool>(var_6.b, var_6.c.x, var_6.c.x, true)), _wgslsmith_mod_vec4_u32(var_6.d, vec4<u32>(1u, 0u, 26759u, var_0.a) << (var_6.d % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, var_2), func_2().a.a), firstLeadingBit(~var_2), countOneBits(var_2), 1u), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, var_6.c.x, var_6.c.x, true), false), vec4<bool>(true, true, any(vec3<bool>(false, true, false)), !var_6.b), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_6.a.b.yx)) * vec2<f32>(var_0.b.x, var_0.b.x)))), vec4<u32>(var_7.x, firstTrailingBit(0u), 47743u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 48246u, 31394u), var_6.d.wxy) >> (~vec3<u32>(u_input.a, u_input.a, 42779u) % vec3<u32>(32u)), countOneBits(vec3<u32>(var_0.a, 4294967295u, 0u)))));
}

