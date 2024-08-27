struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_1, 1>();
    let var_0 = 320f;
    let var_1 = u_input.a.x;
    var var_2 = !vec2<bool>(!all(vec4<bool>(false, false, false, true)), true || (~u_input.a.x > 0u));
    global0 = array<Struct_1, 11>();
    return _wgslsmith_add_vec3_i32(-u_input.e, _wgslsmith_sub_vec3_i32(u_input.e, u_input.c));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = select(select(vec3<bool>(false, all(vec4<bool>(true, true, false, true)) == select(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true && all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(u_input.c.x <= u_input.d, u_input.e.x == u_input.c.x, all(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, true))))), !(!vec3<bool>(true, true, u_input.a.x >= u_input.b)), vec3<bool>(true && !(u_input.c.x == u_input.e.x), true, true));
    var_0 = select(select(select(vec3<bool>(-556f >= arg_1.a.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true), vec3<bool>(true, true, true), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, true), false), vec3<bool>(true, false, true))), vec3<bool>((false && var_0.x) && var_0.x, 950f != _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -2147483647i), u_input.e.xy) != -u_input.d), !var_0.x), select(select(vec3<bool>(var_0.x, !var_0.x, !var_0.x), !vec3<bool>(false, var_0.x, true), false), select(vec3<bool>(any(vec4<bool>(true, true, false, var_0.x)), any(vec4<bool>(false, true, true, true)), true), vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x & var_0.x, true), var_0.x), select(vec3<bool>(1198f <= arg_1.a.x, false, var_0.x || var_0.x), vec3<bool>(true, var_0.x, any(vec2<bool>(var_0.x, var_0.x))), all(!vec3<bool>(true, var_0.x, false)))), !vec3<bool>(true, false, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 18407u, u_input.b)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(19834u, u_input.a.x), vec2<u32>(1u, u_input.a.x))));
    var_0 = select(!select(vec3<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), false), var_0.x), false), select(!vec3<bool>(any(vec4<bool>(true, var_0.x, var_0.x, true)), true, false), !(!vec3<bool>(false, var_0.x, true)), any(vec2<bool>(var_0.x == false, u_input.d > 11548i))), any(select(vec2<bool>(!var_0.x, true), select(vec2<bool>(var_0.x, false), var_0.xx, var_0.yz), abs(u_input.b) >= _wgslsmith_mult_u32(u_input.a.x, 0u))));
    var var_1 = ~vec4<i32>(-3344i, u_input.e.x, u_input.e.x, -countOneBits(-19867i)) | (min(-select(vec4<i32>(u_input.c.x, -2147483647i, -41757i, u_input.e.x), vec4<i32>(2491i, 30737i, -419i, u_input.c.x), true), -(~vec4<i32>(u_input.e.x, u_input.c.x, u_input.e.x, 5139i))) & vec4<i32>(countOneBits(-15660i), min(~u_input.c.x, u_input.c.x), firstLeadingBit(_wgslsmith_sub_i32(48516i, u_input.e.x)), ~(-u_input.d)));
    global0 = array<Struct_1, 11>();
    return firstLeadingBit(_wgslsmith_clamp_u32(0u, 29119u, _wgslsmith_mult_u32(0u, u_input.b)));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~20859u >> (_wgslsmith_div_u32(1u, ~0u) % 32u), 11u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))));
    var var_2 = arg_1;
    var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(abs(abs(7927u)), _wgslsmith_add_u32(func_3(global1[_wgslsmith_index_u32(27126u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]), u_input.b), _wgslsmith_clamp_u32(47767u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~u_input.b)), 1u, true), 1u)];
    let var_3 = vec3<u32>(~(~u_input.a.x), ~30464u, ~u_input.a.x & 1u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(var_1.a, _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(round(var_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    var var_0 = -select(reverseBits(u_input.e), func_1(), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))));
    var var_1 = func_2(-485f, true);
    var_0 = abs(vec3<i32>(4668i, -2147483647i, -22282i));
    var_0 = _wgslsmith_div_vec3_i32(-(u_input.c & u_input.c), u_input.c);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(59191u, 0u, 71264u, 85508u), vec4<u32>(1u, u_input.b, 6083u, u_input.b))), ~1u, ~u_input.a.x, ~u_input.b), select(vec4<u32>(~u_input.b, ~4294967295u, u_input.b, 21327u) & vec4<u32>(u_input.a.x >> (u_input.b % 32u), u_input.a.x | u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(~34840u, u_input.b, countOneBits(u_input.a.x), firstTrailingBit(70228u)) | ~(~vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x)), true)), 11u)];
    global1 = array<Struct_1, 1>();
    global0 = array<Struct_1, 11>();
    var var_3 = _wgslsmith_f_op_f32(select(var_1.a.x, var_2.a.x, all(vec3<bool>(false, select(true, true, true), (-57269i | var_0.x) < firstLeadingBit(12831i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(~var_0.x, ~_wgslsmith_clamp_i32(-16703i, var_0.x, 0i), _wgslsmith_mod_i32(var_0.x, -1i), ~u_input.d), vec4<i32>(-1i, 35469i, ~(var_0.x ^ u_input.e.x), firstTrailingBit(0i) << (_wgslsmith_mod_u32(18544u, 13828u) % 32u))), min(var_0.x, i32(-1i) * -1i), abs(~vec4<u32>(1u, ~u_input.a.x, firstTrailingBit(50392u), 65898u)), 9090u, _wgslsmith_dot_vec2_i32(u_input.c.xy, min(u_input.e.yy | vec2<i32>(2147483647i, var_0.x), u_input.e.yz | u_input.c.zx) | u_input.c.xy));
}

