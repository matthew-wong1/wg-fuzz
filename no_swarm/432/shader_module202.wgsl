struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
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

var<private> global1: array<Struct_1, 24>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<u32>(1u, 1u, 21167u, 111u)), Struct_1(vec4<u32>(0u, 79778u, 9183u, 0u)), Struct_1(vec4<u32>(27108u, 1u, 20065u, 0u)), Struct_1(vec4<u32>(0u, 14627u, 100386u, 0u)), Struct_1(vec4<u32>(59372u, 21022u, 59360u, 145834u)), Struct_1(vec4<u32>(4294967295u, 14112u, 0u, 24297u)), Struct_1(vec4<u32>(100682u, 38590u, 27416u, 4294967295u)), Struct_1(vec4<u32>(0u, 63826u, 0u, 0u)));

var<private> global4: i32 = -46204i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    let var_0 = ~min(u_input.c, global2.a.x ^ (92652u & _wgslsmith_clamp_u32(u_input.c, global2.a.x, 87646u)));
    global4 = _wgslsmith_add_i32(u_input.b, i32(-1i) * -7338i);
    var var_1 = Struct_1(~_wgslsmith_sub_vec4_u32(global0.a, ~(~u_input.a)));
    var var_2 = Struct_1(~select(_wgslsmith_add_vec4_u32(vec4<u32>(24951u, var_1.a.x, var_1.a.x, global0.a.x), var_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, global2.a.x, 4294967295u, global2.a.x), vec4<u32>(1u, var_1.a.x, var_0, global2.a.x)), true) ^ global2.a);
    let var_3 = global3[_wgslsmith_index_u32(var_2.a.x, 8u)];
    return select(select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), true), vec2<bool>(true, true)), vec2<bool>(true, true), true);
}

fn func_2() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(round(947f));
    let var_1 = global1[_wgslsmith_index_u32(~global2.a.x, 24u)];
    global2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(~global2.a.xxz, abs(var_1.a.wzx)) << ((var_1.a.x ^ (_wgslsmith_mult_u32(var_1.a.x, u_input.a.x) | firstTrailingBit(4294967295u))) % 32u)), 24u)];
    let var_2 = select(false, any(select(func_3(), vec2<bool>(false, all(vec3<bool>(true, true, true))), true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    global2 = Struct_1(~select(~global0.a, ~global0.a, vec4<bool>(false, true, var_2, var_2)) & _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global2.a.x, 0u, var_1.a.x, global2.a.x)), reverseBits(global2.a)));
    return select(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.b, -1i)), vec2<i32>(-33863i, firstTrailingBit(u_input.b))), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b, -10290i) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-13504i, ~u_input.b))), vec2<i32>(-(~u_input.b), u_input.b), !func_3());
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1943f)) + -907f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-548f * 234f), _wgslsmith_f_op_f32(trunc(-1760f)), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-274f, -1678f))))));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 1u, global0.a.x), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, global2.a.x, 63255u, global2.a.x)), countOneBits(global0.a) | vec4<u32>(global2.a.x, global0.a.x, 20459u, global2.a.x), vec4<u32>(59390u, reverseBits(16137u), ~arg_1.a.x, reverseBits(0u)))));
    let var_2 = 1209f;
    global3 = array<Struct_1, 8>();
    let var_3 = select(firstTrailingBit(_wgslsmith_add_i32(arg_0.x, _wgslsmith_clamp_i32(-75357i, 2147483647i, ~u_input.b))), -abs(-1i), false && all(vec4<bool>(true, true, true, true)));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.a.xwy & (~(~(~global2.a.yyw)) & vec3<u32>(1u, 0u, ~13992u | _wgslsmith_mod_u32(arg_1.a.x, 2010u)));
    let var_1 = func_4(_wgslsmith_mod_vec2_i32(-func_2(), vec2<i32>(16593i, _wgslsmith_clamp_i32(-7390i, 62313i, u_input.b))) | abs(~(~vec2<i32>(-1i, u_input.b))), global1[_wgslsmith_index_u32(~0u, 24u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1000f, arg_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(740f, arg_0, arg_0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-501f)));
    var var_4 = u_input.b;
    return func_4(vec2<i32>(~u_input.b, -(u_input.b ^ (0i | u_input.b))), func_4(~firstTrailingBit(-vec2<i32>(0i, -1i)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -1000f), 1226f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(2853f, 1015f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(115f * 292f)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(849f - -1000f) * 868f), 515f, _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(f32(-1f) * -300f)), -197f)))));
    global4 = -1i;
    global3 = array<Struct_1, 8>();
    var var_1 = func_1(var_0.x, Struct_1(~(~vec4<u32>(1u, u_input.c, u_input.a.x, 0u))));
    var var_2 = global2.a;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_2.xxz, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.a.x, func_4(vec2<i32>(u_input.b, u_input.b), global1[_wgslsmith_index_u32(9914u, 24u)]).a.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, var_2.x), 1u, var_1.a.x)), ~(~(~4294967295u)), _wgslsmith_mult_u32(~global0.a.x, 41551u >> (0u % 32u)) | _wgslsmith_dot_vec2_u32(global2.a.zz, min(vec2<u32>(14171u, 54559u), global0.a.xy)))), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, ~global2.a.x) << (firstLeadingBit(func_4(vec2<i32>(-2147483647i, u_input.b), Struct_1(var_3.a)).a.x) % 32u), reverseBits(33950u)), vec4<u32>(~(~_wgslsmith_dot_vec3_u32(var_2.zzw, vec3<u32>(global2.a.x, 4294967295u, 12383u))), ~4294967295u, func_4(vec2<i32>(-u_input.b, -21851i), func_1(-1372f, Struct_1(global2.a))).a.x, 1u), ~vec4<u32>(_wgslsmith_mult_u32(global2.a.x, 1u), ~31113u | _wgslsmith_mult_u32(var_2.x, 11056u), ~35251u, 35187u));
}

