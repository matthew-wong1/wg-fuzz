struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(100296u, 37054u, 11692u, 4294967295u), 822f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    return Struct_2(global1.a, global1.a, Struct_1(~vec4<u32>(firstTrailingBit(0u), 0u, ~global2.a.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)))), !global1.d, _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(-46999i, 13056i, -1i) << (vec3<u32>(31026u, global2.a.x, global0[_wgslsmith_index_u32(1u, 12u)]) % vec3<u32>(32u))), vec3<i32>(~(-u_input.a), u_input.a, i32(-1i) * -26242i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global1.b.a.x;
    return Struct_1(global1.b.a, func_2(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.a.x, 1u, global1.b.a.x), _wgslsmith_sub_vec3_u32(arg_1.a.zwx, vec3<u32>(1u, arg_1.a.x, arg_0.a.a.x))), ~abs(global2.a.wxw)), !(select(true, global1.d.x, true) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-870f + arg_0.a.b), _wgslsmith_f_op_f32(round(-546f)))))).c.b);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = global1.d.xwy;
    var var_1 = select(global1.d, !global1.d, !select(!global1.d, !select(global1.d, global1.d, false), true));
    var var_2 = Struct_2(func_3(func_2(~(~arg_0.a.xyy), true, arg_0.b), Struct_1(~(vec4<u32>(global1.b.a.x, arg_0.a.x, global1.b.a.x, global0[_wgslsmith_index_u32(93300u, 12u)]) << (arg_0.a % vec4<u32>(32u))), 1218f)), Struct_1(global1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(112f * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b)))), Struct_1(~vec4<u32>(reverseBits(4294967295u), ~global1.a.a.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(43982u, 12u)], arg_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, global2.a.x, global2.a.x), vec3<u32>(arg_0.a.x, global1.a.a.x, 104729u))), global2.b), global1.d, vec3<i32>(-868i, ~(~global1.e.x), 1i));
    var var_3 = 1u & ~_wgslsmith_clamp_u32(~arg_0.a.x >> (global0[_wgslsmith_index_u32(6667u, 12u)] % 32u), ~global2.a.x, func_2(vec3<u32>(0u, 1u, 65188u), var_0.x, _wgslsmith_f_op_f32(-1774f * var_2.b.b)).b.a.x);
    global1 = func_2(vec3<u32>(global2.a.x, global1.c.a.x, ~(~min(4350u, 44963u))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b + global1.c.b)) == _wgslsmith_f_op_f32(-var_2.c.b)) || any(vec2<bool>(true, !var_0.x)), global2.b);
    return _wgslsmith_sub_u32(global1.b.a.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(select(_wgslsmith_mod_vec4_i32(vec4<i32>(35998i, global1.e.x, -67787i, global1.e.x), _wgslsmith_add_vec4_i32(vec4<i32>(10937i, global1.e.x, global1.e.x, 2147483647i), vec4<i32>(0i, u_input.a, global1.e.x, global1.e.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-57865i, u_input.a, u_input.a, -2147483647i), vec4<i32>(global1.e.x, u_input.a, global1.e.x, global1.e.x)), global1.d)) | (_wgslsmith_div_vec4_i32(~abs(vec4<i32>(u_input.a, -60971i, 51061i, u_input.a)), vec4<i32>(~u_input.a, global1.e.x, _wgslsmith_clamp_i32(2905i, u_input.a, -1i), u_input.a)) << (vec4<u32>(global0[_wgslsmith_index_u32(0u, 12u)], min(global0[_wgslsmith_index_u32(108909u, 12u)], global2.a.x) ^ global2.a.x, max(global0[_wgslsmith_index_u32(func_1(global1.c, true), 12u)], 21044u), firstTrailingBit(global2.a.x)) % vec4<u32>(32u)));
    global1 = Struct_2(global1.a, global1.a, func_2(vec3<u32>(global1.b.a.x, global2.a.x, ~(~global1.b.a.x)), !global1.d.x, global1.b.b).a, global1.d, abs(-vec3<i32>(global1.e.x, var_0.x, -u_input.a)));
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var var_1 = func_2(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~18228u, ~global2.a.x), global2.a.x, _wgslsmith_div_u32(4294967295u, abs(global1.c.a.x))), global2.a.x ^ ~(~57344u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global1.a.a.x, global1.a.a.x, global0[_wgslsmith_index_u32(global1.a.a.x, 12u)]), vec3<u32>(global1.a.a.x, global1.b.a.x, 0u)), _wgslsmith_clamp_vec3_u32(global2.a.zyx, vec3<u32>(1u, global1.b.a.x, 70279u), vec3<u32>(global1.c.a.x, global0[_wgslsmith_index_u32(29054u, 12u)], global2.a.x))), global2.a.x, false), 12u)], 12u)]), !global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1225f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), global1.c.b)))).c.a.x;
    let var_2 = global1.c.b;
    let var_3 = func_2(~(~vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b.a.x, 4294967295u), 12u)], func_3(Struct_2(Struct_1(global2.a, global2.b), Struct_1(vec4<u32>(global2.a.x, 1u, global0[_wgslsmith_index_u32(29789u, 12u)], 23688u), global1.a.b), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global1.b.a.x, 12u)], 82818u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34916u, 12u)], 12u)], 1u), global2.b), global1.d, vec3<i32>(16838i, var_0.x, u_input.a)), global1.c).a.x, _wgslsmith_div_u32(4294967295u, global2.a.x))), any(!select(vec3<bool>(global1.d.x, false, false), vec3<bool>(global1.d.x, false, global1.d.x), global1.d.wzz)) | false, 547f);
    var var_4 = reverseBits(max(global1.c.a, ~global1.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(0i, -1i) | u_input.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, 1000f, var_3.b.b), vec3<f32>(var_3.c.b, -1306f, -321f))) * vec3<f32>(_wgslsmith_div_f32(global1.b.b, var_3.b.b), -887f, global2.b)))));
}

