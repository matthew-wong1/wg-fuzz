struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = vec2<i32>(~46605i, ~(~_wgslsmith_mod_i32(-1i, i32(-1i) * -44268i)));
    global0 = array<Struct_1, 1>();
    var var_1 = arg_0;
    let var_2 = arg_1;
    var var_3 = var_1.e;
    return _wgslsmith_div_f32(1186f, _wgslsmith_f_op_f32(f32(-1f) * -246f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0.yx;
    global0 = array<Struct_1, 1>();
    var var_1 = ~_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b.x, -max(0i, 1i)), abs(abs(countOneBits(1i))));
    let var_2 = reverseBits(vec2<i32>(u_input.a, -2147483647i)) << (_wgslsmith_mod_vec2_u32(select(select(select(vec2<u32>(22582u, 0u), vec2<u32>(39680u, 1u), arg_1.c.x), ~vec2<u32>(0u, 0u), arg_1.d.x && arg_1.e.x), vec2<u32>(1u, 1u), !vec2<bool>(arg_1.d.x, false)), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(96007u, 16037u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) << (firstLeadingBit(vec2<u32>(46522u, 44259u)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(568f, 715f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_0.x)))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1405f)) - _wgslsmith_f_op_f32(round(arg_1.a.x))), -1267f), arg_0.yx)));
    return 0u;
}

fn func_2() -> vec3<bool> {
    var var_0 = -2147483647i;
    var_0 = 16335i;
    let var_1 = global0[_wgslsmith_index_u32(~1u, 1u)];
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x), -1205f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 917f, -452f), vec3<f32>(1257f, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -591f, 1000f)), vec3<f32>(var_1.a.x, -1223f, 1013f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, vec4<i32>(0i, var_1.b.x, 6387i, var_1.b.x), vec3<bool>(true, false, var_1.e.x), var_1.d, var_1.e), Struct_1(var_1.a, var_1.b, vec3<bool>(false, var_1.c.x, var_1.e.x), vec2<bool>(var_1.c.x, true), var_1.e))), _wgslsmith_f_op_f32(sign(var_1.a.x))), vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)))), min(max(vec4<i32>(2147483647i, var_1.b.x, u_input.a, u_input.b.x), countOneBits(var_1.b)), abs(var_1.b)), vec3<bool>(any(vec2<bool>(var_1.c.x, var_1.d.x)) || true, var_1.d.x, var_1.c.x), vec2<bool>(var_1.e.x, any(!vec2<bool>(true, var_1.d.x))), var_1.e));
    let var_3 = _wgslsmith_f_op_f32(-var_1.a.x);
    return vec3<bool>(true, true, true);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = vec4<i32>(-1i, 0i, arg_3, _wgslsmith_mod_i32(-2147483647i, -5790i));
    var_0 = vec4<i32>(-2380i, i32(-1i) * -arg_3, -_wgslsmith_clamp_i32(2147483647i, countOneBits(89291i), 0i), -72744i);
    global0 = array<Struct_1, 1>();
    let var_1 = false;
    let var_2 = firstLeadingBit(arg_1.xwy);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(714f))), -1000f), _wgslsmith_mult_vec4_i32(select(~arg_0.b, -vec4<i32>(1i, arg_0.b.x, arg_3, arg_0.b.x), true), ~(-arg_0.b)) ^ -arg_0.b, vec3<bool>(any(select(vec2<bool>(false, var_1), !vec2<bool>(arg_0.d.x, true), all(arg_0.c))), arg_0.c.x, (3179u < ~var_2.x) || true), arg_0.e.ww, select(arg_0.e, vec4<bool>(all(vec2<bool>(var_1, arg_2)), true, var_1, arg_0.c.x), select(vec4<bool>(false, var_1, true, func_2().x), !select(vec4<bool>(arg_0.c.x, var_1, false, arg_0.c.x), vec4<bool>(false, true, arg_0.e.x, true), false), arg_2)));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = array<Struct_1, 1>();
    var var_0 = vec3<u32>(~98948u, 2689u, ~16242u);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f + _wgslsmith_f_op_f32(step(289f, 1580f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f + -639f) + _wgslsmith_f_op_f32(1078f * 1075f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f), -378f)), 467f)));
    var var_2 = func_5(Struct_1(var_1.xz, vec4<i32>(i32(-1i) * -u_input.a, 2147483647i, u_input.b.x | arg_0, u_input.a), !func_2(), vec2<bool>(false, arg_0 <= -u_input.b.x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), false)), max(vec4<u32>(1u, 0u, ~var_0.x, select(1u, 48513u, false)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, var_0.x)), 43224u, var_0.x, var_0.x)) ^ ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 37827u, 24131u, var_0.x), vec4<u32>(0u, 60444u, 11732u, var_0.x))), !select(true, var_0.x > 1u, true) | false, ~8841i);
    var var_3 = min(53923u, 37440u);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_0 = select(vec3<bool>(!all(vec2<bool>(true, true)) || true, true, u_input.a > countOneBits(2147483647i)), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), func_1(22000i)), vec3<bool>(true, true, true)), !vec3<bool>(func_1(u_input.a).x, true, all(vec2<bool>(false, true))), func_5(global0[_wgslsmith_index_u32(~(~61879u), 1u)], vec4<u32>(~1u, ~33517u, 1u, ~68467u), true, -u_input.b.x).e.x), func_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(10727u, 17306u, 63512u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(42851u, 1u, 43379u))) ^ ~(~40778u), 1u)], vec4<u32>(~func_4(vec3<f32>(1042f, 127f, -726f), global0[_wgslsmith_index_u32(48124u, 1u)]), 0u, abs(1u), ~1u), any(vec4<bool>(false, false, true, false)) || func_1(u_input.b.x).x, ~(-11463i << (0u % 32u))).d.x);
    var var_1 = vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 0u, 29896u, 34618u)), ~vec4<u32>(17730u, 18649u, 41064u, 1u)), (~_wgslsmith_dot_vec2_u32(vec2<u32>(20045u, 0u), vec2<u32>(35353u, 6048u)) | _wgslsmith_mod_u32(26744u, countOneBits(1u))) << (_wgslsmith_mult_u32(abs(reverseBits(1u)), 1u) % 32u));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1985f), -611f)), vec4<u32>(~(~1u), 0u, 0u ^ _wgslsmith_sub_u32(countOneBits(var_1.x), ~0u), 42713u), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1375f)), _wgslsmith_f_op_f32(trunc(2054f))));
}

