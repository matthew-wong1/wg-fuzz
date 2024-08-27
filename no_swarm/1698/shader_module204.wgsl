struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 16>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_3 = Struct_3(Struct_2(-489i, false, Struct_1(4294967295u)), true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> bool {
    let var_0 = global0.a;
    let var_1 = Struct_5(_wgslsmith_sub_i32(_wgslsmith_div_i32(-8276i, _wgslsmith_mod_i32(68567i, 1148i)) << ((4294967295u << (u_input.d % 32u)) % 32u), _wgslsmith_add_i32(u_input.a, -1i)), vec3<f32>(_wgslsmith_f_op_f32(sign(295f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f - 953f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-438f, -714f), _wgslsmith_div_f32(509f, -510f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-883f, 456f, _wgslsmith_f_op_f32(floor(-322f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))), Struct_3(Struct_2(1i, global3.b & !global3.a.b, global3.a.c), true));
    global1 = array<u32, 16>();
    let var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.x, -1000f, var_1.c.x, 1695f), _wgslsmith_div_vec4_f32(vec4<f32>(1719f, var_1.b.x, var_1.b.x, -1511f), vec4<f32>(-1000f, 1362f, var_1.b.x, var_1.c.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.x, -1154f, var_1.c.x, var_1.c.x))))))));
    return var_2.a.b;
}

fn func_2() -> u32 {
    global0 = Struct_3(Struct_2(global2.x, true, global3.a.c), all(vec3<bool>(global0.b, func_3(vec3<i32>(u_input.a, global2.x, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)), all(select(vec4<bool>(global3.b, false, false, global0.a.b), vec4<bool>(false, true, global0.b, global0.a.b), global0.a.b)))));
    var var_0 = select(!(!vec3<bool>(!global3.b, global3.a.b, true)), vec3<bool>(all(select(!vec4<bool>(global3.b, true, global0.b, global3.b), !vec4<bool>(true, true, global3.b, false), !global0.b)), all(vec2<bool>(global3.b, true)), true), any(!(!select(vec2<bool>(true, global3.a.b), vec2<bool>(false, true), vec2<bool>(global3.b, global0.b)))));
    var_0 = !select(!select(select(vec3<bool>(false, false, false), vec3<bool>(global0.b, true, true), global3.b), select(vec3<bool>(var_0.x, global3.a.b, false), vec3<bool>(false, global0.a.b, var_0.x), vec3<bool>(global3.b, true, global0.b)), vec3<bool>(var_0.x, true, global0.a.b)), !vec3<bool>(false, all(vec3<bool>(global0.a.b, true, var_0.x)), true), vec3<bool>(any(select(vec3<bool>(global3.b, true, true), vec3<bool>(true, true, var_0.x), global0.a.b)), any(vec4<bool>(true, global0.a.b, false, false)), true || (false || global3.a.b)));
    let var_1 = !vec3<bool>(false, global3.b & global0.b, false);
    global0 = Struct_3(Struct_2(-(i32(-1i) * -global2.x), var_0.x, Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.a.c.a, 20639u >> (1u % 32u)), 16u)])), true);
    return global0.a.c.a;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<f32>) -> u32 {
    var var_0 = abs(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(37085u, global1[_wgslsmith_index_u32(4294967295u, 16u)], 82898u)), vec3<u32>(8133u, global0.a.c.a & 56330u, 24439u)));
    var_0 = ~(~vec3<u32>(_wgslsmith_div_u32(max(global0.a.c.a, global3.a.c.a), global3.a.c.a ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.c.a, 16u)], 16u)]), 0u, ~1u));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(func_2(), _wgslsmith_div_u32(firstLeadingBit(reverseBits(global0.a.c.a)), global0.a.c.a), 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(func_2(), func_2()), ~(~var_0.x), ~max(17625u, global1[_wgslsmith_index_u32(4294967295u, 16u)])), (~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global0.a.c.a, 16u)], var_0.x) ^ (vec3<u32>(4294967295u, 18685u, 4294967295u) | vec3<u32>(var_0.x, 17795u, 0u))) ^ firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(62461u, 16u)], 0u, 4294967295u) << (vec3<u32>(2985u, 1u, 0u) % vec3<u32>(32u)))));
    let var_2 = Struct_5(1i, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(f32(-1f) * -155f)))), vec3<f32>(_wgslsmith_div_f32(-289f, _wgslsmith_div_f32(1137f, arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.x, arg_3.x)) - arg_3.x), -572f))), vec3<f32>(164f, 1701f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x * arg_3.x)))), Struct_3(global3.a, arg_2.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_2.c);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 16>();
    let var_0 = 0u;
    var var_1 = Struct_5(-(~_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(9675i, 38093i)) << (_wgslsmith_sub_u32(4294967295u, func_1(2147483647i, global2.x, vec3<bool>(global3.a.b, false, global0.b), vec2<f32>(1203f, -570f))) % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1506f, _wgslsmith_div_f32(-400f, 903f)), _wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, 315f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f + -709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -132f))), _wgslsmith_f_op_f32(1f - -348f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), Struct_3(global3.a, true));
    let var_2 = -(abs(~(vec2<i32>(-53180i, var_1.a) | vec2<i32>(u_input.c.x, global2.x))) << (firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u) << (vec2<u32>(44110u, var_1.d.a.c.a) % vec2<u32>(32u)), vec2<u32>(4294967295u, 80013u))) % vec2<u32>(32u)));
    var var_3 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(global2.x, global2.x), min(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global3.a.a, 2147483647i, var_2.x), vec4<i32>(22430i, global0.a.a, -10895i, global0.a.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, global3.a.a, 1i, 7530i), vec4<i32>(var_1.a, 32117i, global2.x, global0.a.a))), min(global2.x, i32(-1i) * -1i), ~(-global3.a.a)), vec4<i32>(30005i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global3.a.a, var_1.a), vec3<i32>(-1i, -56102i, -1i)), -40749i, 1i));
    var var_4 = -1035f;
    var var_5 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.c))), Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(global2.yyz, global2.yzx) & ~global0.a.a, global0.a.b, global3.a.c), global3.a.b), Struct_2(-13316i, true, global3.a.c), global2.x);
    let var_6 = vec3<u32>((~_wgslsmith_add_u32(var_5.b.a.c.a, 0u) >> (29909u % 32u)) ^ ~_wgslsmith_div_u32(global0.a.c.a << (global3.a.c.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(14970u, var_5.b.a.c.a), vec2<u32>(var_5.b.a.c.a, 4294967295u))), global0.a.c.a, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(-global2.wyy, max(~(~(vec3<u32>(1u, 57975u, var_5.b.a.c.a) << (var_6 % vec3<u32>(32u)))), ~(~var_6) & ~(~var_6)), _wgslsmith_sub_i32(reverseBits(_wgslsmith_clamp_i32(36982i, ~(-36937i), max(var_1.a, global0.a.a))), global2.x), _wgslsmith_sub_vec2_i32(u_input.c, ~_wgslsmith_sub_vec2_i32(global2.xx, abs(vec2<i32>(var_1.a, var_5.c.a)))), var_1.d.a.c.a);
}

