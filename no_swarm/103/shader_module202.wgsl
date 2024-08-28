struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(705f);

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: vec3<f32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global1 = array<vec3<bool>, 21>();
    let var_0 = !vec4<bool>(0u != (firstTrailingBit(u_input.d.x) << (u_input.d.x % 32u)), true, any(select(global1[_wgslsmith_index_u32(~50089u, 21u)], global1[_wgslsmith_index_u32(~4294967295u, 21u)], u_input.d.x != 2829u)), !any(vec4<bool>(false, false, false, false)));
    let var_1 = 4294967295u;
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, -227f) - global2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, -784f) + _wgslsmith_div_f32(-1666f, -1588f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1303f, _wgslsmith_f_op_f32(-810f - -1671f), -382f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, -860f, global0.a), vec3<f32>(-1686f, 1701f, global2.x))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.a, 1738f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, global2.x, 167f)))))))));
    global1 = array<vec3<bool>, 21>();
    return -358f;
}

fn func_2() -> Struct_1 {
    let var_0 = ~select(~u_input.d.x, _wgslsmith_mult_u32(firstTrailingBit(~1u), _wgslsmith_mod_u32(countOneBits(u_input.d.x), 4294967295u)), false);
    global0 = Struct_1(-905f);
    var var_1 = !select(vec2<bool>(_wgslsmith_f_op_f32(func_3(u_input.d)) > _wgslsmith_f_op_f32(-global0.a), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)))), select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), all(global1[_wgslsmith_index_u32(~57210u, 21u)])), false);
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1157f, 775f)), global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x + global0.a))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(-1194f * -987f)))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1667f)))), -1747f)));
    let var_2 = Struct_1(1853f);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1250f)))) - global0.a));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = func_2();
    global2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1351f * _wgslsmith_f_op_f32(sign(193f))), global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-198f))), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(445f, global2.x))))));
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1108f + 523f)))), _wgslsmith_f_op_f32(abs(global2.x))));
    let var_1 = u_input.c.x;
    global1 = array<vec3<bool>, 21>();
    return select(vec4<bool>(true, any(select(vec3<bool>(arg_2.x, arg_2.x, true), select(global1[_wgslsmith_index_u32(85563u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], true), arg_2.x)), all(global1[_wgslsmith_index_u32(countOneBits(reverseBits(15718u)), 21u)]), false), vec4<bool>(any(vec2<bool>(u_input.b.x == u_input.a, any(vec2<bool>(false, arg_2.x)))), true, any(!select(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(11326u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])), arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, select(!arg_2.x, true, true)), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, any(select(vec2<bool>(arg_2.x, arg_2.x), arg_2, vec2<bool>(true, true)))), true));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = select(select(!func_4(arg_0.zx, func_2(), vec2<bool>(true, true), global2.xx), func_4(_wgslsmith_mod_vec2_i32(abs(arg_0.yy), _wgslsmith_mult_vec2_i32(u_input.c.yz, u_input.b)), func_2(), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(select(global2.yz, _wgslsmith_f_op_vec2_f32(-global2.zx), vec2<bool>(false, false)))), func_4(vec2<i32>(0i, arg_0.x), func_2(), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1114f) - vec2<f32>(global0.a, global2.x))))), vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, global0.a)) * _wgslsmith_f_op_f32(-global0.a)) <= global0.a, !func_4(firstTrailingBit(vec2<i32>(-1i, -1i)), Struct_1(280f), vec2<bool>(false, false), global2.zx).x, true), func_4(-(~(~vec2<i32>(u_input.c.x, 1i))), func_2(), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, false))), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, 278f), _wgslsmith_f_op_vec2_f32(exp2(global2.zz)), vec2<bool>(true, true))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(abs(global2.x))))));
    var_1 = _wgslsmith_f_op_f32(func_3(~min(u_input.d, max(u_input.d, ~vec2<u32>(4035u, 1u)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f * func_2().a) - global0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c.wxz)) + 1665f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(floor(-295f))))));
    global1 = array<vec3<bool>, 21>();
    var var_2 = ~(~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.xzw, ~vec3<i32>(u_input.b.x, -24447i, u_input.c.x), u_input.c.zwz), _wgslsmith_mod_vec3_i32(u_input.c.xww << (vec3<u32>(u_input.d.x, 2210u, u_input.d.x) % vec3<u32>(32u)), countOneBits(u_input.c.zwy)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.c.x), vec3<i32>(-1i, 58546i, u_input.b.x))));
    var var_3 = _wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(firstLeadingBit(~u_input.d.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(2734u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, global2.x, global0.a, 487f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, global0.a, var_1.a, var_1.a) + vec4<f32>(var_1.a, -1000f, 1000f, var_0.a))) - vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-1074f + var_0.a), _wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(-2229f * global0.a)))), select(vec2<i32>(i32(-1i) * -3506i, 28483i), ~(vec2<i32>(-2147483647i, u_input.c.x) | abs(vec2<i32>(u_input.a, -43137i))), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), func_4(vec2<i32>(u_input.a, -27515i), Struct_1(var_0.a), vec2<bool>(true, true), vec2<f32>(-178f, var_0.a)).x), !func_4(vec2<i32>(var_2.x, -13807i), var_1, vec2<bool>(true, false), vec2<f32>(var_1.a, -775f)).wy)), u_input.d.x);
}

