struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 22891i;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(41590u), Struct_2(0u), Struct_2(4294967295u), Struct_2(506u), Struct_2(33056u), Struct_2(1u), Struct_2(11890u), Struct_2(18752u), Struct_2(75492u), Struct_2(36383u), Struct_2(6397u), Struct_2(4294967295u), Struct_2(22673u), Struct_2(4294967295u), Struct_2(60937u), Struct_2(6772u));

var<private> global3: array<f32, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = any(vec2<bool>(!(!select(false, arg_1.x, arg_0.x)), true));
    var var_1 = global2[_wgslsmith_index_u32(1u | _wgslsmith_div_u32(~1u, ~(~u_input.a.x) >> ((1u ^ u_input.a.x) % 32u)), 16u)];
    var_0 = any(vec2<bool>(false | arg_0.x, !(any(vec3<bool>(global1.x, false, false)) | (global3[_wgslsmith_index_u32(u_input.a.x, 11u)] != global3[_wgslsmith_index_u32(u_input.a.x, 11u)]))));
    let var_2 = Struct_1(arg_1);
    var var_3 = var_2;
    return var_2;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    global0 = -(~(-1i));
    global1 = vec2<bool>(true & (_wgslsmith_div_i32(firstTrailingBit(0i), 14184i) < countOneBits(9656i)), all(vec2<bool>(!(!global1.x), global1.x || (arg_0 < arg_0))));
    global2 = array<Struct_2, 16>();
    let var_0 = 45134u;
    global1 = !select(!(!vec2<bool>(global1.x, false)), !(!vec2<bool>(global1.x, global1.x)), !(!(!vec2<bool>(global1.x, true))));
    return func_2(!(!vec2<bool>(all(vec3<bool>(false, true, global1.x)), true)), vec4<bool>(all(!vec2<bool>(global1.x, global1.x)), global1.x, _wgslsmith_f_op_f32(arg_1 - -611f) > arg_1, global1.x && false), 1i);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(select(vec4<bool>(select(false | global1.x, !arg_0, func_2(vec2<bool>(arg_0, true), vec4<bool>(global1.x, arg_0, false, arg_0), 27340i).a.x), global1.x & arg_0, true, false), !vec4<bool>(any(vec4<bool>(global1.x, global1.x, true, true)), true, global3[_wgslsmith_index_u32(0u, 11u)] != global3[_wgslsmith_index_u32(7060u, 11u)], u_input.a.x <= 1u), func_2(select(func_2(vec2<bool>(false, arg_0), vec4<bool>(false, true, global1.x, true), 2147483647i).a.yz, vec2<bool>(arg_0, global1.x), true), !vec4<bool>(global1.x, false, global1.x, arg_0), 2147483647i).a));
    global1 = !(!var_0.a.zw);
    var var_1 = true;
    var var_2 = global3[_wgslsmith_index_u32(~(20422u >> (arg_1.a % 32u)), 11u)];
    let var_3 = global2[_wgslsmith_index_u32(19029u, 16u)];
    return abs(~vec2<i32>(8481i, _wgslsmith_div_i32(_wgslsmith_add_i32(0i, 1i), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(~(~85695u)), 893f);
    var var_1 = Struct_2(_wgslsmith_sub_u32(u_input.a.x, 84406u));
    let var_2 = var_0;
    var var_3 = _wgslsmith_dot_vec2_i32(abs(func_3(var_2.a.x | func_1(4990u, global3[_wgslsmith_index_u32(1u, 11u)]).a.x, Struct_2(0u))), _wgslsmith_mod_vec2_i32(max(~select(vec2<i32>(0i, 51402i), vec2<i32>(7935i, 1i), var_2.a.x), -vec2<i32>(-17467i, 28026i)), ~(~countOneBits(vec2<i32>(-55489i, 1i)))));
    global0 = ~min(-_wgslsmith_add_i32(12847i, -1i), 1i);
    var var_4 = !func_2(var_2.a.xz, select(select(var_0.a, !vec4<bool>(false, var_2.a.x, true, var_0.a.x), func_1(1u, global3[_wgslsmith_index_u32(11587u, 11u)]).a.x), var_2.a, func_1(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 386f).a.x), 1i).a;
    var var_5 = var_2.a.xzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(u_input.a.zy, u_input.a.zx), ~(abs(abs(vec4<u32>(40096u, 19989u, 18532u, u_input.a.x))) | (countOneBits(vec4<u32>(var_1.a, 39565u, var_1.a, var_1.a)) & min(vec4<u32>(u_input.a.x, 1u, var_1.a, 54494u), vec4<u32>(0u, 3810u, u_input.a.x, var_1.a)))), _wgslsmith_add_vec4_u32(reverseBits((vec4<u32>(1u, 1u, u_input.a.x, 1u) ^ vec4<u32>(17297u, 4294967295u, 7842u, 40698u)) >> (~vec4<u32>(1u, 38431u, 1u, 0u) % vec4<u32>(32u))), select(countOneBits(vec4<u32>(0u, u_input.a.x, 30921u, 4294967295u)) | firstLeadingBit(vec4<u32>(60178u, var_1.a, u_input.a.x, 24937u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.a, 1u, u_input.a.x)), _wgslsmith_mod_u32(0u, 13371u), var_1.a, reverseBits(50225u)), var_0.a)), ~max(vec2<i32>(i32(-1i) * -48270i, 19866i), vec2<i32>(1i >> (1u % 32u), 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 11u)] + -779f), _wgslsmith_f_op_f32(f32(-1f) * -988f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 11u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-708f, -147f, 178f) - vec3<f32>(419f, global3[_wgslsmith_index_u32(13314u, 11u)], global3[_wgslsmith_index_u32(u_input.a.x, 11u)])) + vec3<f32>(562f, global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(74768u, 11u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-830f, global3[_wgslsmith_index_u32(4294967295u, 11u)], -707f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(var_1.a, 11u)], 1169f) * vec3<f32>(301f, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], -598f))))));
}

