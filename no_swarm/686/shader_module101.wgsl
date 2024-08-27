struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(4294967295u, 0u, 0u, 64225u), vec4<u32>(0u, 45328u, 36365u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 23060u, 1u), vec4<u32>(0u, 22696u, 1190u, 34499u), vec4<u32>(0u, 49830u, 1u, 0u), vec4<u32>(0u, 3993u, 1u, 47928u), vec4<u32>(0u, 105450u, 2953u, 4294967295u), vec4<u32>(0u, 69670u, 41775u, 1u), vec4<u32>(26115u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 92061u, 0u), vec4<u32>(0u, 0u, 34946u, 30497u), vec4<u32>(4294967295u, 15753u, 4294967295u, 1321u), vec4<u32>(25599u, 49609u, 14256u, 4294967295u), vec4<u32>(21391u, 0u, 1u, 0u), vec4<u32>(1u, 0u, 56502u, 1u), vec4<u32>(795u, 0u, 18853u, 85839u), vec4<u32>(4294967295u, 89544u, 49134u, 0u), vec4<u32>(1u, 20373u, 11088u, 135289u), vec4<u32>(1u, 0u, 69850u, 114048u), vec4<u32>(24896u, 4294967295u, 48490u, 93005u));

var<private> global1: array<bool, 22> = array<bool, 22>(false, false, true, false, true, true, true, false, false, true, false, true, true, true, false, true, true, true, false, true, false, true);

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true));

var<private> global3: array<vec2<u32>, 24>;

var<private> global4: array<i32, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<f32> {
    global4 = array<i32, 14>();
    global0 = array<vec4<u32>, 20>();
    var var_0 = 17828u;
    global4 = array<i32, 14>();
    var_0 = ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~global0[_wgslsmith_index_u32(29666u, 20u)], vec4<u32>(24381u, 0u, 1933u, arg_0) << (global0[_wgslsmith_index_u32(u_input.c.x, 20u)] % vec4<u32>(32u))), vec4<u32>(arg_0, 56943u, arg_0, 2495u) >> (select(vec4<u32>(5722u, 21106u, 60983u, arg_0), vec4<u32>(u_input.c.x, u_input.b, arg_0, arg_0), global2[_wgslsmith_index_u32(0u, 28u)]) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, 1501f)))) + vec2<f32>(2016f, arg_2.a));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    global2 = array<vec4<bool>, 28>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f + _wgslsmith_f_op_f32(step(-1747f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + 1210f);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-426f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), 1f));
    global4 = array<i32, 14>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1258f, 662f), vec2<f32>(1000f, -1354f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(1u, Struct_1(1749f, vec3<bool>(arg_1, global1[_wgslsmith_index_u32(1u, 22u)], arg_1), vec4<f32>(510f, -1496f, -477f, -370f), vec3<i32>(-15325i, 9089i, 46327i), vec2<f32>(1065f, -119f)), Struct_1(1319f, vec3<bool>(false, arg_1, arg_1), vec4<f32>(453f, -1757f, -1204f, -409f), vec3<i32>(23247i, global4[_wgslsmith_index_u32(34353u, 14u)], global4[_wgslsmith_index_u32(54339u, 14u)]), vec2<f32>(1803f, -1000f)), vec2<i32>(global4[_wgslsmith_index_u32(1u, 14u)], 1i))))))));
    return Struct_1(_wgslsmith_div_f32(-1042f, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_2.x))))), vec3<bool>(arg_1, any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_1), arg_1)) && true, any(vec2<bool>(!arg_1, !arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-160f, _wgslsmith_f_op_f32(var_2.x - 866f), var_2.x, _wgslsmith_div_f32(var_2.x, 1711f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, 949f, -394f, -971f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 683f, var_2.x, var_2.x), vec4<f32>(-921f, var_2.x, var_2.x, 2829f), false)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, 151f, var_2.x, -693f)))))), select((_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -30758i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.d.x, global4[_wgslsmith_index_u32(arg_0, 14u)])) ^ vec3<i32>(u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(u_input.e.x, 14u)])) ^ -(~vec3<i32>(15388i, 25465i, global4[_wgslsmith_index_u32(4294967295u, 14u)])), ~firstTrailingBit(-vec3<i32>(global4[_wgslsmith_index_u32(u_input.e.x, 14u)], u_input.a.x, u_input.d.x)), arg_1), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 1000f))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> vec4<u32> {
    var var_0 = func_2(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.zz), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, 1u) | arg_1, 24u)]), false);
    var var_1 = var_0.b.zz;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec3<bool>(func_2(countOneBits(4294967295u), global1[_wgslsmith_index_u32(16779u, 22u)] & true).b.x || var_1.x, var_1.x, all(!global2[_wgslsmith_index_u32(min(u_input.e.x, arg_1), 28u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(438f, var_0.c.x, var_0.e.x, 811f))), countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, var_0.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)), countOneBits(var_0.d))), var_0.c.zx);
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(4294967295u, 30982u, u_input.b, 10764u), vec4<u32>(4294967295u, 0u, 8379u, arg_1) ^ global0[_wgslsmith_index_u32(0u, 20u)]), countOneBits(reverseBits(vec4<u32>(0u, arg_1, u_input.b, arg_1)))), ~(_wgslsmith_mod_u32(arg_1, 0u) & 4294967295u)), u_input.c.x), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 28>();
    global0 = array<vec4<u32>, 20>();
    global3 = array<vec2<u32>, 24>();
    global3 = array<vec2<u32>, 24>();
    global3 = array<vec2<u32>, 24>();
    global1 = array<bool, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~global3[_wgslsmith_index_u32(u_input.c.x, 24u)]), max(_wgslsmith_add_vec2_u32(u_input.e, u_input.e), ~u_input.c.xy)), 20u)] | (global0[_wgslsmith_index_u32(u_input.e.x, 20u)] | (vec4<u32>(u_input.b, u_input.b, 36611u, u_input.e.x) & func_1(vec2<f32>(411f, -721f), 4294967295u))), 0i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(u_input.c.x, global1[_wgslsmith_index_u32(0u, 22u)]).e), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(195f, 1463f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, 1896f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f * 585f)), -368f))), select(vec4<i32>(~1i, 1i, -2147483647i, ~_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(u_input.e.x, 14u)], 2147483647i, 1i)), vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.d.x), any(vec3<bool>(false, true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], false, global1[_wgslsmith_index_u32(1u, 22u)], true))))), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b, u_input.c.x, 1u)), u_input.c));
}

