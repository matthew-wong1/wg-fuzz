struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 25>;

var<private> global2: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 4294967295u), vec2<u32>(29218u, 1585u), vec2<u32>(62574u, 26306u), vec2<u32>(1u, 175u), vec2<u32>(0u, 9152u), vec2<u32>(1u, 15040u), vec2<u32>(35408u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(43311u, 42369u), vec2<u32>(57559u, 37702u), vec2<u32>(109166u, 13354u), vec2<u32>(84748u, 6949u), vec2<u32>(35579u, 0u), vec2<u32>(864u, 81320u), vec2<u32>(1u, 55770u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(20050u, 0u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 0u, 12184u), vec3<u32>(10670u, 74022u, u_input.a.x) ^ u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 47851u, u_input.a.x), u_input.a)), firstTrailingBit(u_input.a));
    global2 = array<vec2<u32>, 23>();
    let var_1 = false;
    let var_2 = arg_0;
    let var_3 = select(u_input.a.x >= _wgslsmith_mod_u32(4294967295u, u_input.b), var_1, var_2.a);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-556f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1230f, 990f))))) + _wgslsmith_f_op_f32(select(-997f, 971f, var_1)))));
}

fn func_2() -> Struct_2 {
    let var_0 = -(vec3<i32>(~(-77525i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, 2147483647i) | global0.b.zy, _wgslsmith_sub_vec2_i32(global0.b.zx, vec2<i32>(1i, 1i))), 1i) | vec3<i32>(14511i, max(~global0.b.x, 10754i), global0.b.x));
    let var_1 = global1[_wgslsmith_index_u32(~(~u_input.b), 25u)];
    global2 = array<vec2<u32>, 23>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(true, var_0)))));
    global0 = Struct_1(true, reverseBits(global0.b));
    return global1[_wgslsmith_index_u32(u_input.a.x | reverseBits(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(106085u, u_input.a.x), 21332u, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 23u)], ~u_input.a.xy))), 25u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 25>();
    global0 = arg_0.b;
    let var_0 = ~arg_2;
    var var_1 = Struct_2(-(vec2<i32>(-1i) * -(vec2<i32>(-2147483647i, global0.b.x) << (global2[_wgslsmith_index_u32(var_0.x, 23u)] % vec2<u32>(32u)))), arg_0.b);
    global1 = array<Struct_2, 25>();
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(44156u, select(u_input.a.x, 0u, global0.a)), 25u)], func_1(Struct_1(global0.a, vec3<i32>(global0.b.x, global0.b.x, _wgslsmith_div_i32(44402i, 56404i))), ~abs(global0.b.x), all(select(!vec4<bool>(false, true, global0.a, false), select(vec4<bool>(false, global0.a, global0.a, global0.a), vec4<bool>(true, true, false, false), vec4<bool>(global0.a, global0.a, global0.a, true)), vec4<bool>(global0.a, true, global0.a, global0.a))), true & any(select(vec2<bool>(false, global0.a), vec2<bool>(true, global0.a), vec2<bool>(false, global0.a)))), ~vec3<u32>(u_input.b, _wgslsmith_add_u32(u_input.a.x, ~19937u), countOneBits(_wgslsmith_add_u32(490u, u_input.a.x))), Struct_2(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1952i, 16689i) ^ global0.b.xz, global0.b.xy << (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u))), func_1(Struct_1(true, _wgslsmith_mod_vec3_i32(global0.b, vec3<i32>(global0.b.x, global0.b.x, global0.b.x))), 1i & func_2().a.x, false, !global0.a).b));
    global2 = array<vec2<u32>, 23>();
    global0 = func_2().b;
    let var_1 = select(!select(vec3<bool>(true && global0.a, global0.a, global0.a), !select(vec3<bool>(false, var_0.a, global0.a), vec3<bool>(true, true, global0.a), vec3<bool>(var_0.a, var_0.a, var_0.a)), !(!var_0.a)), !select(vec3<bool>(any(vec3<bool>(var_0.a, false, true)), !global0.a, !var_0.a), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, var_0.a, global0.a), !vec3<bool>(var_0.a, true, global0.a)), all(vec2<bool>(global0.a, true))), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), var_0.a), select(select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, var_0.a, global0.a), var_0.a), vec3<bool>(true, true, global0.a), true | global0.a), select(!vec3<bool>(global0.a, global0.a, var_0.a), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, global0.a, var_0.a), global0.a), !vec3<bool>(false, var_0.a, false)), vec3<bool>(true, global0.b.x >= var_0.b.x, any(vec4<bool>(true, global0.a, global0.a, var_0.a)))), !(!vec3<bool>(var_0.a, true, false))));
    let var_2 = func_1(Struct_1(false, ~(-var_0.b) & var_0.b), ~0i, 538f > _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1966f)), _wgslsmith_f_op_f32(min(695f, -1688f))))), false).b;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, -1085f, 1490f, -943f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1055f, -681f, -153f, 533f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-657f, -924f, 1948f, -1769f) * vec4<f32>(944f, 1412f, 417f, 1401f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-917f, -517f, 1000f, 2138f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -709f, 304f, -122f))), !vec4<bool>(var_1.x, var_1.x, global0.a, var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, -1223f, 239f, -941f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1141f, -1420f)), _wgslsmith_f_op_f32(floor(1154f)), _wgslsmith_f_op_f32(-1128f + 564f), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, vec3<i32>(var_2.b.x, 42108i, var_0.b.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1321f, 269f, 159f, 743f) + vec4<f32>(1486f, 1000f, 563f, -961f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2135f, 1000f, 218f, -435f), vec4<f32>(-1259f, -1301f, 372f, -1000f), vec4<bool>(var_1.x, global0.a, var_2.a, false)))))), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 32474u, u_input.a.x, 52487u), vec4<u32>(u_input.b, 1u, 0u, 1u), vec4<u32>(33314u, u_input.b, 14299u, u_input.a.x)) ^ ~vec4<u32>(5314u, u_input.b, 1u, 32747u))), min(vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(u_input.b, abs(u_input.b), ~125163u), ~u_input.b, ~(4294967295u & u_input.b)), ~(~(~vec4<u32>(u_input.a.x, 37047u, u_input.b, u_input.a.x)))));
}

