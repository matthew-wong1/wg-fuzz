struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1147f, vec4<i32>(37055i, 19838i, 7389i, -59759i));

var<private> global1: array<f32, 2> = array<f32, 2>(-2392f, -1307f);

var<private> global2: array<u32, 14> = array<u32, 14>(5578u, 0u, 0u, 41723u, 0u, 1u, 4294967295u, 926u, 35315u, 4294967295u, 0u, 4294967295u, 33239u, 40845u);

var<private> global3: array<i32, 27>;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 63577u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(23878u, 27u)];
    var var_1 = Struct_2(arg_1);
    let var_2 = global0.b.x;
    global0 = arg_1;
    let var_3 = Struct_2(var_1.a);
    return global2[_wgslsmith_index_u32(countOneBits(57068u << (~u_input.c % 32u)), 14u)];
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> u32 {
    global4 = u_input.d.yx;
    let var_0 = arg_2.x;
    global2 = array<u32, 14>();
    let var_1 = !arg_3;
    var var_2 = ~(firstLeadingBit(vec4<u32>(u_input.d.x, global2[_wgslsmith_index_u32(select(0u, global4.x, false), 14u)], min(global4.x, 4294967295u), _wgslsmith_mod_u32(u_input.c, 25930u))) ^ vec4<u32>(101415u, ~global2[_wgslsmith_index_u32(37436u, 14u)] << (global2[_wgslsmith_index_u32(25899u, 14u)] % 32u), global4.x & countOneBits(global2[_wgslsmith_index_u32(global4.x, 14u)]), select(max(36044u, 8566u), ~u_input.c, true)));
    return ~_wgslsmith_sub_u32(1u, reverseBits(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 829f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 14u)], 2u)], 626f)), Struct_1(global0.a, vec4<i32>(arg_0.x, -1i, 18698i, u_input.b)), -211f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_1 {
    global4 = ~vec2<u32>(1u, firstTrailingBit(u_input.c << (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 14u)], 20240u) % 32u)));
    global0 = Struct_1(-2149f, ~(-vec4<i32>(min(-25978i, arg_2), _wgslsmith_div_i32(-1i, arg_2), arg_2, global0.b.x)));
    global1 = array<f32, 2>();
    global0 = Struct_1(global1[_wgslsmith_index_u32(36989u << (firstLeadingBit(26779u | (global4.x >> (28776u % 32u))) % 32u), 2u)], global0.b);
    global1 = array<f32, 2>();
    return Struct_1(_wgslsmith_f_op_f32(-arg_3), vec4<i32>(~(-_wgslsmith_dot_vec2_i32(global0.b.xy, vec2<i32>(2147483647i, u_input.b))), -1i, countOneBits(_wgslsmith_dot_vec2_i32(global0.b.yz, vec2<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 27u)], u_input.a.x))) >> (func_2(_wgslsmith_sub_vec2_i32(global0.b.yz, vec2<i32>(arg_1, arg_1)), -vec4<i32>(u_input.b, 33756i, arg_2, -2147483647i), vec2<bool>(true, false), vec4<bool>(true, true, true, false)) % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(87733i, global3[_wgslsmith_index_u32(14830u, 27u)], 2147483647i, global3[_wgslsmith_index_u32(u_input.d.x, 27u)]), min(vec4<i32>(arg_1, arg_2, -1i, -1i), vec4<i32>(global0.b.x, -2147483647i, 0i, u_input.a.x))), arg_2 | _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(7442u, 27u)], -10064i, 26182i), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(u_input.d.zy, global0.b.x ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, -21779i, 10970i), vec3<i32>(global3[_wgslsmith_index_u32(global4.x, 27u)], -1i, u_input.b)) >> (~u_input.d.x % 32u)), -30901i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1235f, global0.a)) * _wgslsmith_f_op_f32(max(-322f, _wgslsmith_f_op_f32(f32(-1f) * -311f))))));
    global2 = array<u32, 14>();
    global3 = array<i32, 27>();
    var var_1 = 0i;
    var var_2 = Struct_2(Struct_1(-515f, ~vec4<i32>(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(54660u, 27u)], var_0.a.b.x), -1i, 1i, ~2335i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 2u)] - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.a)))), -1392f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)))), var_2.a.a)));
    var var_4 = func_1(u_input.d.yz, var_0.a.b.x, ~(-(~firstLeadingBit(27828i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(936f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + global0.a))));
    var var_5 = 16249u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_dot_vec4_i32(select(global0.b, var_2.a.b, false), abs(vec4<i32>(-1i, u_input.b, global3[_wgslsmith_index_u32(global4.x, 27u)], var_4.b.x))), 58010i));
}

