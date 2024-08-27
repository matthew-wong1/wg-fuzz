struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 4> = array<bool, 4>(false, false, true, true);

var<private> global2: vec4<f32> = vec4<f32>(-1456f, 2382f, 725f, -1199f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(48613u, 4u)];
    let var_1 = all(!select(select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_1.a.a, 4u)], true, global1[_wgslsmith_index_u32(44677u, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_1.b.a, 4u)], true, false), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(2387u, 4u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(30665u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.b.a, 4u)], false, global1[_wgslsmith_index_u32(1u, 4u)]))), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.a.a, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], true, false, global1[_wgslsmith_index_u32(0u, 4u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)], true, true)), false));
    var var_2 = select(select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_1, true, global1[_wgslsmith_index_u32(arg_1.d.a, 4u)]), vec4<bool>(true, var_1, var_1, var_1)), !(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 4u)], var_1)), global1[_wgslsmith_index_u32(global0.a << (u_input.a.x % 32u), 4u)]), vec4<bool>(!(!var_1), var_1, any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(var_1, true, global1[_wgslsmith_index_u32(global0.a, 4u)], true))), vec4<bool>(all(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(99239u, 4u)], all(!vec3<bool>(global1[_wgslsmith_index_u32(global0.a, 4u)], true, false)), var_1)), select(select(select(!vec4<bool>(var_1, true, var_1, true), !vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b.a, 4u)], var_1, false, false), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0.a, 4u)], var_1), vec4<bool>(false, global1[_wgslsmith_index_u32(global0.a, 4u)], global1[_wgslsmith_index_u32(global0.a, 4u)], true), global1[_wgslsmith_index_u32(global0.a, 4u)])), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_1.a.a, 4u)], var_1), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], var_1, true, false), global1[_wgslsmith_index_u32(0u, 4u)]), select(var_1, !global1[_wgslsmith_index_u32(49794u, 4u)], true)), select(vec4<bool>(true, false, false, false), vec4<bool>(any(vec3<bool>(true, false, false)), false, any(vec2<bool>(false, false)), any(vec2<bool>(false, true))), all(vec3<bool>(var_1, true, true))), !vec4<bool>(var_1, false || global1[_wgslsmith_index_u32(global0.a, 4u)], 0i > u_input.d, var_1)), !(!(!select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(47622u, 4u)], var_1, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec4<bool>(false, false, var_1, var_1)))));
    var_0 = var_1;
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1832f, arg_1.b.b, global2.x, arg_0) - vec4<f32>(643f, -730f, arg_0, global0.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-638f, -1456f, 1125f, global2.x) * vec4<f32>(1338f, global0.b, 408f, arg_0))))))));
    return select(false, var_1, global0.a >= global0.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec2<bool> {
    global2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.b)), 366f), _wgslsmith_f_op_f32(sign(global2.x)), global0.b, 745f)))));
    let var_0 = Struct_3(any(vec2<bool>(!func_3(-668f, Struct_2(Struct_1(global0.a, global0.b), Struct_1(1u, arg_1.x), global2.yzz, Struct_1(global0.a, 1408f))), all(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)], true)))), ~(_wgslsmith_div_i32(arg_0.x, -u_input.d) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -6507i, u_input.b, arg_0.x) & vec4<i32>(1i, 0i, -1i, -4026i), vec4<i32>(u_input.b, -66768i, 0i, u_input.b) >> (vec4<u32>(0u, 4581u, 37702u, u_input.c.x) % vec4<u32>(32u)))), abs(91680u), u_input.c.xxw);
    var var_1 = Struct_1(global0.a, _wgslsmith_f_op_f32(arg_1.x - global0.b));
    var var_2 = false;
    let var_3 = ~(~_wgslsmith_div_vec3_i32(~(vec3<i32>(var_0.b, -21327i, u_input.d) << (var_0.d % vec3<u32>(32u))), vec3<i32>(var_0.b, u_input.d | -2147483647i, _wgslsmith_clamp_i32(u_input.b, u_input.d, -1i))));
    return vec2<bool>(!(_wgslsmith_div_i32(var_3.x, u_input.b) > var_0.b), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(20060u, 4u)], false, var_0.a), vec3<bool>(var_0.a, false, false), vec3<bool>(true, true, var_0.a)))));
}

fn func_4(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(u_input.c.x), _wgslsmith_f_op_f32(global0.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(229f + global0.b), _wgslsmith_f_op_f32(global2.x * 1287f)))), Struct_1(4294967295u, 796f), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global2.x, global0.b)), _wgslsmith_f_op_f32(abs(-276f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x)))), global2.xzy), Struct_1(1u, 581f));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(894f, 818f, global2.x, 1121f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, 293f, global0.b, global2.x)), vec4<f32>(global0.b, global2.x, var_0.c.x, -1702f), true)))));
    var var_1 = reverseBits(~(-reverseBits(vec2<i32>(u_input.b, 13508i)))) | (~abs(select(vec2<i32>(-70779i, u_input.b), vec2<i32>(u_input.b, u_input.b), global1[_wgslsmith_index_u32(1u, 4u)])) ^ min(~(vec2<i32>(0i, -1i) << (u_input.a % vec2<u32>(32u))), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-7826i, -2147483647i), vec2<i32>(u_input.d, u_input.b)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 389f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1227f, -1019f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, var_0.b.b))))) - _wgslsmith_f_op_vec2_f32(-var_0.c.yz));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(global2.yzy, var_0.c, any(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(39226u, 4u)], false, global1[_wgslsmith_index_u32(3976u, 4u)], arg_0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(67093u, 4u)], arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, global1[_wgslsmith_index_u32(11572u, 4u)], arg_0.x)), !vec4<bool>(false, arg_0.x, false, false), arg_0.x || global1[_wgslsmith_index_u32(1821u, 4u)]))));
    return vec4<i32>(var_1.x, var_1.x, ~(~(-1i | var_1.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_1.x, u_input.d), vec2<i32>(var_1.x, var_1.x)), vec2<i32>(0i >> (var_0.b.a % 32u), var_1.x)), _wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(1i), var_1.x), ~(vec2<i32>(-2147483647i, -39531i) ^ vec2<i32>(u_input.d, u_input.b)))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_0, Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global0.b)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global2.x, arg_0.b))))), 1f, arg_0.b), arg_0);
    let var_1 = min(func_4(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 4u)], true), func_2(vec2<i32>(3450i, 13353i), var_0.c.xy), false)) << (~u_input.c % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.d, 22775i, u_input.d, u_input.b) | vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.b)), vec4<i32>(firstLeadingBit(-21854i), u_input.b | 12681i, 1i, ~u_input.d))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), -819f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(global2.x * global0.b)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, -384f), vec2<f32>(1508f, global2.x), func_2(var_1.xz, global2.xx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.zx)));
    var var_3 = max(firstTrailingBit(-(vec2<i32>(-11865i, 4645i) ^ reverseBits(vec2<i32>(-15706i, var_1.x)))), func_4(!select(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(18653u, 4u)]), vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]))).yw);
    return Struct_2(var_0.a, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-897f, var_0.c.x, _wgslsmith_f_op_f32(step(1000f, 939f))), global2.yzy)), Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), arg_0.b)));
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_3(!all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_0.d.a, 4u)], global1[_wgslsmith_index_u32(41967u, 4u)]), false), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(global0.a, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.b.a, 4u)], global1[_wgslsmith_index_u32(7381u, 4u)], true))), ~u_input.b, 6463u, _wgslsmith_sub_vec3_u32(max(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(83723u, global0.a, global0.a), u_input.c.zyz, false), _wgslsmith_clamp_vec3_u32(u_input.c.www, vec3<u32>(46273u, u_input.c.x, global0.a), u_input.c.xwy), _wgslsmith_add_vec3_u32(vec3<u32>(35022u, arg_0.a.a, 36777u), vec3<u32>(2546u, 39971u, 32845u))), vec3<u32>(45040u, 29277u, 18611u) ^ u_input.c.wwz), ~firstTrailingBit(vec3<u32>(u_input.a.x, 31311u, arg_0.d.a) ^ vec3<u32>(arg_0.d.a, arg_0.b.a, 4005u))));
    var var_1 = 1i;
    let var_2 = func_1(arg_0.d).b;
    let var_3 = u_input.c.xz | (var_0.d.yy >> (u_input.a % vec2<u32>(32u)));
    global1 = array<bool, 4>();
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_5(func_1(Struct_1(firstLeadingBit(98102u), _wgslsmith_f_op_f32(f32(-1f) * -1217f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    var var_0 = vec2<i32>(-7680i, abs(_wgslsmith_mult_i32(~(-2147483647i), abs(u_input.b))) ^ u_input.d);
    var var_1 = func_1(func_1(Struct_1(~_wgslsmith_mult_u32(global0.a, global0.a), global0.b)).d);
    var_1 = Struct_2(func_1(Struct_1(var_1.d.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(717f, 414f, global1[_wgslsmith_index_u32(52079u, 4u)])))))).a, Struct_1(117112u, _wgslsmith_f_op_f32(-786f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(875f + -1000f), -1035f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(trunc(global0.b))), Struct_1(_wgslsmith_div_u32(global0.a << (~global0.a % 32u), global0.a), 1f));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1335f, global0.b, global2.x, 1169f) * vec4<f32>(global0.b, -716f, global2.x, -135f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b, -139f, var_1.b.b, -856f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.b, -115f, global0.b, var_1.d.b)), var_0.x >= -1i))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-577f, global0.b, global2.x, global2.x), vec4<f32>(1889f, global0.b, var_1.d.b, global0.b)) * _wgslsmith_div_vec4_f32(vec4<f32>(-414f, 334f, var_1.b.b, global2.x), vec4<f32>(global2.x, global2.x, global0.b, global0.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(317f - _wgslsmith_f_op_f32(round(global0.b))), var_1.a.b, -1000f, global0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1644f), global0.b, _wgslsmith_f_op_f32(abs(global2.x))))));
    global0 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, -786f, vec2<u32>(27895u, global0.a) & _wgslsmith_add_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(4294967295u, var_1.b.a)), u_input.c.zz), ~((vec4<i32>(-1i) * -vec4<i32>(0i, -6461i, 48596i, 7639i)) | (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, var_0.x, u_input.d, u_input.d), vec4<i32>(-38365i, u_input.d, -2147483647i, var_0.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 2147483647i, -49230i, 13521i), vec4<i32>(u_input.d, var_0.x, var_0.x, u_input.d), vec4<i32>(var_0.x, u_input.b, var_0.x, 0i)))));
}

