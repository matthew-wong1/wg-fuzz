struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<vec2<u32>, 31>;

var<private> global2: array<Struct_1, 19>;

var<private> global3: vec2<f32>;

var<private> global4: array<vec3<u32>, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = -reverseBits(-109i);
    let var_1 = true;
    var_0 = ~2147483647i;
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1148f - arg_2.x)), -1016f) * arg_2), countOneBits(vec4<i32>(_wgslsmith_mult_i32(arg_0.d.x, -1i), firstLeadingBit(-arg_0.d.x), _wgslsmith_div_i32(arg_0.b.b.x, u_input.c), u_input.d.x)));
    global2 = array<Struct_1, 19>();
    var var_1 = -1000f;
    var var_2 = var_0.b;
    global3 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.b.a));
    return arg_0.c;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(1u, 14u)], -296f), vec2<f32>(-1158f, global0[_wgslsmith_index_u32(arg_1.x, 14u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 14u)], global3.x)))))), vec4<i32>(~(~(~(-1i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~u_input.d.xyz, firstLeadingBit(vec3<i32>(u_input.d.x, u_input.d.x, -6251i))), u_input.d.x), i32(-1i) * -10642i, u_input.c));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-403f, 280f, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 1708f) - global3.x)))), global2[_wgslsmith_index_u32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1211f, 187f, global3.x, 799f) + vec4<f32>(var_0.a.x, global3.x, 1756f, global0[_wgslsmith_index_u32(arg_1.x, 14u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1256f, var_0.a.x)), var_0.b), _wgslsmith_mod_u32(~29324u, max(arg_1.x, 8664u)), ~u_input.d.wy), 497f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1081f)), _wgslsmith_f_op_f32(select(-1692f, var_0.a.x, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-165f, -1066f) * var_0.a))), -556f), 19u)], firstTrailingBit(_wgslsmith_sub_u32(func_3(Struct_2(vec4<f32>(735f, -1245f, 285f, -1250f), var_0, arg_0, u_input.d.zx), _wgslsmith_f_op_f32(global3.x - -1484f), _wgslsmith_f_op_vec2_f32(abs(var_0.a)), _wgslsmith_f_op_f32(floor(1097f))), ~27240u)), _wgslsmith_mod_vec2_i32(u_input.d.zz >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) ^ global1[_wgslsmith_index_u32(4294967295u, 31u)], arg_1) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.c), u_input.d.wx, var_0.b.yz), u_input.d.zz)));
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = -2147483647i;
    var var_1 = Struct_3(select(vec4<bool>(false, all(vec3<bool>(true, false, arg_0.x)), true, arg_0.x), !select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(true, true, arg_0.x, arg_0.x), arg_0.x), false));
    var_1 = Struct_3(select(!select(!var_1.a, !vec4<bool>(false, var_1.a.x, false, arg_0.x), all(vec2<bool>(true, arg_0.x))), !select(vec4<bool>(var_1.a.x, arg_0.x, arg_0.x, var_1.a.x), select(vec4<bool>(false, var_1.a.x, arg_0.x, true), vec4<bool>(arg_0.x, true, false, true), var_1.a), arg_0.x || false), true));
    var var_2 = Struct_4(1i);
    var var_3 = func_3(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1285f, global3.x, arg_0.x)), arg_1.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1156f)))), arg_2)), arg_2);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(!vec3<bool>(any(vec2<bool>(false, false)), true, func_1(vec3<bool>(false, false, true))), vec3<bool>(false, true, u_input.c <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 13059i), u_input.d.yyx)), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -839f, global3.x, global0[_wgslsmith_index_u32(30789u, 14u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 758f, -2179f, global0[_wgslsmith_index_u32(u_input.e, 14u)]) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global3.x, -2391f, global3.x)))), func_2(_wgslsmith_mult_u32(~u_input.b, reverseBits(1u)), ~(~u_input.a.yy)), 1u, ~abs(vec2<i32>(-10454i, u_input.d.x))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 14u)] * global0[_wgslsmith_index_u32(~u_input.a.x, 14u)]), 1u);
    let var_1 = func_4(vec3<bool>(false, any(vec3<bool>(true, true, true)) & true, false), func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), vec3<bool>(select(true, true, false), true, true), vec3<bool>(true, true, true)), func_4(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), any(vec4<bool>(true, false, true, true))), Struct_2(_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(455f, global3.x, var_0.b.a.x, -837f)), Struct_1(var_0.b.a, vec4<i32>(u_input.d.x, 26513i, -30593i, u_input.c)), var_0.c, -vec2<i32>(1i, u_input.d.x)), -1325f, ~_wgslsmith_mult_u32(var_0.c, var_0.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, global3.x)))), ~30668u), _wgslsmith_f_op_f32(var_0.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) - -117f)), ~0u).a;
    let var_2 = var_0.a;
    var var_3 = -(~(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.x, u_input.c), u_input.d.zz))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(func_3(func_4(vec3<bool>(true, true, true), Struct_2(var_0.a, Struct_1(vec2<f32>(-682f, -886f), var_0.b.b), u_input.b, var_0.b.b.zy), 524f, 4294967295u), -960f, _wgslsmith_f_op_vec2_f32(select(var_0.b.a, var_1.yy, false)), _wgslsmith_f_op_f32(378f - -1000f)), 14u)], -282f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))) + var_0.a.wzz));
    var var_5 = ~max(2147483647i, ~(-9862i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), func_4(vec3<bool>(false, true, false), Struct_2(var_1, global2[_wgslsmith_index_u32(var_0.c, 19u)], var_0.c, u_input.d.xw), -564f, reverseBits(19008u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2166f - global0[_wgslsmith_index_u32(0u, 14u)])), var_0.c).a.x));
}

