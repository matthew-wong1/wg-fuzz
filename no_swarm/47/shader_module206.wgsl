struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 28>;

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 27>;

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    global2 = ~firstLeadingBit(_wgslsmith_mod_vec3_u32(arg_2.a, arg_2.a));
    var var_0 = -_wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(-17025i), -(12528i ^ global3[_wgslsmith_index_u32(arg_2.a.x, 27u)])), vec2<i32>(-35913i, select(1i, global3[_wgslsmith_index_u32(~0u, 27u)], true)));
    var var_1 = Struct_1(arg_2.a, vec2<bool>(global2.x < 5851u, false), arg_0, !(!arg_2.d));
    var var_2 = _wgslsmith_div_i32(45921i, var_1.c);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, firstTrailingBit(arg_2.a.x) << (~66347u % 32u)), 28u)]), 213f, global1[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(71068u, arg_2.a.x) ^ (global2.x ^ var_1.a.x)), 28u)], global1[_wgslsmith_index_u32(global2.x, 28u)]);
    return _wgslsmith_mult_i32(-22427i, arg_2.c);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = vec3<u32>(1u, 35601u, 0u);
    var var_0 = Struct_1(~_wgslsmith_mod_vec3_u32(max(arg_0.yyy, arg_1.a) ^ firstLeadingBit(arg_2.a), vec3<u32>(arg_1.a.x, 26848u, 0u) | ~vec3<u32>(25040u, global2.x, arg_1.a.x)), select(!(!vec2<bool>(arg_2.b.x, arg_2.d)), !select(select(vec2<bool>(arg_1.d, arg_1.b.x), arg_2.b, false), !vec2<bool>(false, arg_2.b.x), false), select(!(!arg_2.b), select(select(vec2<bool>(false, arg_1.d), arg_1.b, arg_2.b), !vec2<bool>(true, arg_2.d), true), !select(arg_2.b, vec2<bool>(arg_2.d, arg_1.d), arg_2.b))), (arg_2.c | -_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 27u)], -2147483647i, -1i, 9797i), vec4<i32>(-2147483647i, arg_2.c, u_input.a.x, 0i))) >> (_wgslsmith_mod_u32(global0.x, global0.x) % 32u), true);
    let var_1 = countOneBits(func_1(firstTrailingBit(-1i), true, global4[_wgslsmith_index_u32(min(arg_0.x, 4294967295u) & ~arg_2.a.x, 20u)]) ^ firstTrailingBit(min(11008i, _wgslsmith_mod_i32(16976i, var_0.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global0.x, 28u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.a.x, 28u)] + _wgslsmith_f_op_f32(f32(-1f) * -325f))) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32((9851u & arg_0.x) | ~79624u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(37872u, 106734u, arg_2.a.x), vec3<u32>(105986u, 30282u, 12369u))), 28u)] + -1303f));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-438f)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(68390u, 28u)])))) + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_0.a.x << (var_0.a.x % 32u), 28u)], global1[_wgslsmith_index_u32(1u, 28u)]))))), 923f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3, 330f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(37688u, 28u)], global1[_wgslsmith_index_u32(25118u, 28u)]))))))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = 576f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + global1[_wgslsmith_index_u32(countOneBits(~global0.x), 28u)]) * -543f);
    global2 = _wgslsmith_clamp_vec3_u32(max(arg_2.a, vec3<u32>(~countOneBits(38448u), 4294967295u, ~_wgslsmith_mult_u32(40097u, 14994u))), arg_3.a, ~vec3<u32>(arg_3.a.x, 2532u, ~_wgslsmith_add_u32(0u, 53758u)));
    let var_1 = arg_3;
    global1 = array<f32, 28>();
    global0 = arg_3.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.x, 28u)] + global1[_wgslsmith_index_u32(arg_3.a.x, 28u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 28u)]), _wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0.x, 28u)], arg_1.x))), -1877f)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = arg_0.a;
    global2 = ~arg_0.a;
    var var_0 = Struct_1(vec3<u32>(arg_0.a.x, global2.x, arg_0.a.x), !(!arg_0.b), -_wgslsmith_div_i32(global3[_wgslsmith_index_u32(4294967295u >> (min(1u, global0.x) % 32u), 27u)], ~_wgslsmith_div_i32(u_input.a.x, -29631i)), arg_0.d);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 28u)]))))), _wgslsmith_f_op_f32(-253f * global1[_wgslsmith_index_u32(firstTrailingBit((17191u << (global0.x % 32u)) & global2.x), 28u)]));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(39778u, 34206u, 0u, 25916u), arg_0, Struct_1(vec3<u32>(0u, var_0.a.x, var_0.a.x), var_0.b, 2147483647i, arg_0.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(56861u, 28u)])), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~0u, 28u)]))), Struct_1(min(vec3<u32>(0u, global0.x, 7689u), abs(vec3<u32>(var_0.a.x, var_0.a.x, global0.x))), !arg_0.b, 0i, true), global4[_wgslsmith_index_u32(~53924u, 20u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(-1419f)), -846f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(0u, 28u)]))))));
    return abs(var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(~func_1(abs(firstLeadingBit(-2147483647i)), true, Struct_1(~vec3<u32>(global0.x, 39633u, global0.x), vec2<bool>(true, false), 2147483647i & u_input.a.x, true)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 16620i), vec2<i32>(global3[_wgslsmith_index_u32(21220u, 27u)], 1i))), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, global3[_wgslsmith_index_u32(global2.x, 27u)]), u_input.a)), u_input.a));
    global3 = array<i32, 27>();
    global2 = ~min(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.x, global0.x, global0.x) | select(vec3<u32>(4294967295u, 0u, global0.x), vec3<u32>(0u, global0.x, global0.x), false), vec3<u32>(~global0.x, 1u, func_2(Struct_1(vec3<u32>(global0.x, 4294967295u, 21622u), vec2<bool>(true, true), u_input.a.x, false)))), vec3<u32>(max(min(global2.x, 19137u), ~12885u), global0.x, 1u));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f + global1[_wgslsmith_index_u32(2564u, 28u)])))), _wgslsmith_f_op_f32(floor(296f))));
    var var_2 = (max(-vec4<i32>(u_input.a.x, 2023i, u_input.a.x, u_input.a.x) & ~vec4<i32>(1i, -9119i, global3[_wgslsmith_index_u32(0u, 27u)], -19160i), max(vec4<i32>(global3[_wgslsmith_index_u32(global2.x, 27u)], 0i, global3[_wgslsmith_index_u32(global2.x, 27u)], u_input.a.x), vec4<i32>(-14646i, var_0, -1i, 0i) | vec4<i32>(0i, -2147483647i, -1i, var_0))) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(13635u, global2.x, 1u, global2.x) << (vec4<u32>(9278u, global2.x, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(global2.x, global2.x, global0.x, global2.x) << (vec4<u32>(79301u, global2.x, global2.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~reverseBits(vec4<i32>(u_input.a.x, max(var_0, global3[_wgslsmith_index_u32(global0.x, 27u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(var_0, global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(43516u, 27u)])), 2147483647i));
    let var_3 = global4[_wgslsmith_index_u32(~4294967295u >> (global0.x % 32u), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zx);
}

