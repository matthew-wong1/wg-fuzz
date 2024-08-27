struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(520f, 554f, -1647f, -1385f);

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: array<f32, 26>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-1000f, 1000f), vec2<f32>(1000f, 1549f), vec2<f32>(-768f, -1055f), vec2<f32>(364f, -765f), vec2<f32>(-149f, 488f), vec2<f32>(-499f, -1000f), vec2<f32>(-952f, -602f), vec2<f32>(1212f, 1910f), vec2<f32>(651f, 796f), vec2<f32>(-903f, -126f), vec2<f32>(1843f, 1000f), vec2<f32>(1136f, 2220f), vec2<f32>(-558f, 974f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2858i, u_input.b.x, u_input.b.x | u_input.b.x, ~(-2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, -16747i), -vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_div_vec4_i32(vec4<i32>(~1i, _wgslsmith_mult_i32(-10497i, u_input.a.x), _wgslsmith_clamp_i32(-u_input.b.x, firstLeadingBit(u_input.b.x), ~u_input.a.x), firstLeadingBit(~u_input.a.x)), ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2922i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a.x, -47059i, u_input.a.x, -13317i), vec4<i32>(u_input.b.x, u_input.a.x, 0i, u_input.a.x)))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 4u)];
    var var_2 = select(vec4<bool>(true, select(true, global1.x, false), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.b, arg_3.b, arg_3.b), ~vec3<u32>(0u, arg_3.b, 0u)) < arg_3.b, false), select(vec4<bool>(true, !any(arg_0), true, false), !(!vec4<bool>(arg_3.a.x, global1.x, global1.x, true)), true), vec4<bool>(arg_3.a.x, !arg_3.a.x, arg_3.a.x, true));
    var var_3 = !any(!select(!vec3<bool>(arg_3.a.x, false, true), vec3<bool>(arg_0.x, var_2.x, false), false));
    global2 = array<f32, 26>();
    return vec2<i32>(u_input.b.x, var_0.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec2_i32(max(min(max(-u_input.b, ~u_input.a), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_1.b, 34811i)), abs(48922i))), func_3(vec3<bool>(!arg_1.d, all(global1.zx), true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.x, ~arg_1.a.x), 4u)], vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(33913u, 4u)] - global2[_wgslsmith_index_u32(arg_1.a.x, 26u)]), _wgslsmith_div_f32(-1145f, 2089f)), Struct_3(!vec3<bool>(arg_1.d, arg_1.d, global1.x), _wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(1u, arg_1.a.x, arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(sign(1893f))))), firstTrailingBit(func_3(vec3<bool>(!arg_1.d, global1.x, arg_1.c == 30961i), _wgslsmith_f_op_f32(sign(-649f)), vec2<f32>(_wgslsmith_f_op_f32(1000f + 1161f), -979f), Struct_3(vec3<bool>(false, true, arg_1.d), _wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x), global0[_wgslsmith_index_u32(~1u, 4u)]))));
    global2 = array<f32, 26>();
    var var_1 = true;
    var_1 = global1.x;
    let var_2 = Struct_3(vec3<bool>(arg_1.d, all(!select(vec4<bool>(true, global1.x, arg_1.d, arg_1.d), vec4<bool>(true, false, true, global1.x), true)), false), _wgslsmith_mult_u32(max(1u, 1u), _wgslsmith_mult_u32(abs(7746u << (arg_1.a.x % 32u)), ~34196u)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.a.x, 26u)] * 859f));
    return 6057i;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec3<bool> {
    global0 = array<f32, 4>();
    global3 = func_2(global2[_wgslsmith_index_u32(~1u, 26u)], Struct_1(~(~vec4<u32>(9342u, 11116u, arg_1, arg_1)), u_input.a.x, -(~1i), false)) | 0i;
    var var_0 = Struct_3(!(!(!vec3<bool>(false, false, global1.x))), _wgslsmith_clamp_u32(arg_1, _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1, arg_1), arg_1 & 25469u)), 66228u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(206f))));
    global1 = vec3<bool>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1, 1u, 8345u), vec3<u32>(arg_1, 0u, arg_1), true), vec3<u32>(27984u, 56743u, var_0.b) | vec3<u32>(79991u, var_0.b, 2156u)), 4u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-350f, global2[_wgslsmith_index_u32(var_0.b, 26u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1, 26u)])), true)) >= _wgslsmith_f_op_f32(select(522f, _wgslsmith_f_op_f32(f32(-1f) * -1233f), global1.x)), global1.x, true & var_0.a.x);
    global0 = array<f32, 4>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 26>();
    global0 = array<f32, 4>();
    var var_0 = Struct_4(vec4<u32>(0u, 18400u, ~15272u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(82442u, 71865u, 22814u), vec3<u32>(1u, 1u, 1u))));
    var var_1 = countOneBits(~(~(~_wgslsmith_add_u32(var_0.a.x, 13500u))));
    var var_2 = select(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, 1000f, -514f, global2[_wgslsmith_index_u32(1u, 26u)])))), var_0.a.x), !(!(!vec3<bool>(false, global1.x, true))), !vec3<bool>(!global1.x, global1.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, 1i) >> (var_0.a.zw % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, _wgslsmith_div_f32(-1081f, _wgslsmith_f_op_f32(1082f - 384f)), -548f, global2[_wgslsmith_index_u32(var_0.a.x, 26u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(var_0.a.x, 4u)], global2[_wgslsmith_index_u32(var_0.a.x, 26u)], -183f))) - vec4<f32>(-1125f, global0[_wgslsmith_index_u32(var_0.a.x, 4u)], global0[_wgslsmith_index_u32(104002u, 4u)], 151f)))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~var_0.a.yw, vec2<u32>(3213u, 3469u)), var_0.a.x), ~select(~vec2<u32>(var_0.a.x, 48050u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(var_0.a.x, 411u), var_0.a.yw) | abs(vec2<u32>(4294967295u, var_0.a.x)), vec2<bool>(false, 16335u >= var_0.a.x)));
}

