struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: array<i32, 9> = array<i32, 9>(0i, 1691i, -14691i, 2147483647i, -5179i, 1i, 25960i, i32(-2147483648), 0i);

var<private> global2: array<u32, 11> = array<u32, 11>(84736u, 31498u, 4294967295u, 0u, 57027u, 0u, 0u, 43457u, 4294967295u, 98992u, 1u);

var<private> global3: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(10747u, 1777f, 16442u, vec3<bool>(true, false, true)), vec3<u32>(59588u, 0u, 71561u), 83500u, 15252u, Struct_1(0u, 873f, 4294967295u, vec3<bool>(false, true, true))));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(317f + var_0.x), _wgslsmith_div_f32(var_0.x, -652f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(ceil(var_0.x)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), 1419f, -1000f, -118f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, var_0.x, -146f, var_0.x)) * vec4<f32>(var_0.x, var_0.x, -1206f, -1652f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, var_0.x, var_0.x, var_0.x)))))));
    let var_2 = any(vec3<bool>(all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), true, !(4294967295u > u_input.b)));
    global0 = array<Struct_3, 22>();
    let var_3 = Struct_1(0u, _wgslsmith_f_op_f32(min(-287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_1.x, -3025f)), 587f))))), 1u, select(select(vec3<bool>(true, true, true), vec3<bool>(var_2, all(vec3<bool>(false, false, var_2)), any(vec2<bool>(var_2, var_2))), !(!vec3<bool>(var_2, false, true))), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 9u)] != -10209i, var_2, all(vec3<bool>(true, true, true))), vec3<bool>(!(!var_2), select(all(vec2<bool>(var_2, var_2)), all(vec4<bool>(true, var_2, false, var_2)), var_2), !all(vec3<bool>(false, var_2, var_2)))));
    return -1065f;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    var var_0 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(~(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 11u)], 11272u, 1u, 28994u))), vec4<u32>(~(~1u), ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 11u)], 41364u), max(global2[_wgslsmith_index_u32(1u, 11u)], ~0u), min(countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(8151u, 1u, global2[_wgslsmith_index_u32(10616u, 11u)]), vec3<u32>(1u, 1u, u_input.b)))));
    global2 = array<u32, 11>();
    var var_1 = Struct_4(min(u_input.a, ~((vec2<i32>(-1i, -41379i) >> (var_0.wz % vec2<u32>(32u))) & (u_input.a >> (vec2<u32>(20919u, var_0.x) % vec2<u32>(32u))))), global0[_wgslsmith_index_u32(0u, 22u)], vec2<i32>(~(-(arg_0.x >> (var_0.x % 32u))), u_input.a.x), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~1u)), ~(~(~global2[_wgslsmith_index_u32(1u, 11u)]))), 1u)], var_0.x);
    let var_2 = global2[_wgslsmith_index_u32(var_1.d.a.c, 11u)];
    let var_3 = -1049f;
    return -2528f;
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    global1 = array<i32, 9>();
    var var_0 = !arg_0.a.d;
    global1 = array<i32, 9>();
    let var_1 = _wgslsmith_add_u32(~33142u, 0u) >> (abs(select(_wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(4294967295u, 4294967295u)), u_input.b, false)) % 32u);
    let var_2 = Struct_1(~global2[_wgslsmith_index_u32(47320u, 11u)], _wgslsmith_f_op_f32(func_4((vec3<i32>(0i, global1[_wgslsmith_index_u32(65006u, 9u)], -2147483647i) << (arg_0.b % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(45126u, 9u)], -2147483647i, 14267i) << (arg_0.b % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(7989i, u_input.a.x, global1[_wgslsmith_index_u32(arg_0.b.x, 9u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), ~u_input.b, vec3<bool>(!any(!vec4<bool>(true, true, var_0.x, false)), any(select(vec4<bool>(true, arg_0.e.d.x, var_0.x, false), !vec4<bool>(true, arg_0.a.d.x, true, arg_0.a.d.x), true)), false));
    return var_2;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(global3[_wgslsmith_index_u32(~41729u, 1u)], -906f);
    global3 = array<Struct_3, 1>();
    global1 = array<i32, 9>();
    let var_1 = Struct_4(abs(u_input.a) ^ -u_input.a, global3[_wgslsmith_index_u32(func_2(Struct_3(var_0, max(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, 1u, 0u), vec3<u32>(100822u, var_0.a, var_0.c)), vec3<u32>(1u, 4294967295u, 1u) ^ vec3<u32>(global2[_wgslsmith_index_u32(51076u, 11u)], 64571u, global2[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25952u, 0u, u_input.b), vec4<u32>(var_0.c, 109583u, u_input.b, 0u)) & (4294967295u << (global2[_wgslsmith_index_u32(0u, 11u)] % 32u)), _wgslsmith_div_u32(func_2(global0[_wgslsmith_index_u32(14413u, 22u)], -319f).c, 42231u), func_2(Struct_3(var_0, vec3<u32>(1656u, 0u, u_input.b), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58599u, 11u)], 11u)], 0u, Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], var_0.b, global2[_wgslsmith_index_u32(26193u, 11u)], vec3<bool>(false, false, var_0.d.x))), var_0.b)), -721f).c, 1u)], -(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a) >> (select(vec2<u32>(var_0.a, var_0.c), vec2<u32>(var_0.c, var_0.c), vec2<bool>(true, var_0.d.x)) % vec2<u32>(32u))) & abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a)), global0[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_clamp_u32(var_0.a | var_0.a, _wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(20853u, 11u)]), var_0.c))), 22u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(~64326u, _wgslsmith_div_u32(1u, 34206u)), ~vec2<u32>(u_input.b, 49621u)));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_1.c.x, -11940i, global1[_wgslsmith_index_u32(abs(~4294967295u), 9u)]), global1[_wgslsmith_index_u32(48686u, 9u)]), reverseBits(vec2<i32>(2147483647i, ~global1[_wgslsmith_index_u32(var_1.b.a.c, 9u)])));
    return global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21736u, 11u)], 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<u32, 11>();
    global2 = array<u32, 11>();
    var var_1 = abs(countOneBits(~1u));
    global3 = array<Struct_3, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, i32(-1i) * -71045i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a.x), u_input.a.x), vec4<i32>(7596i, global1[_wgslsmith_index_u32(firstTrailingBit(~var_0.b.x), 9u)], ~27882i, u_input.a.x)), ~(~(~var_0.b)), ~vec3<i32>(~abs(u_input.a.x), 0i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.b), var_0.b), 9u)]));
}

