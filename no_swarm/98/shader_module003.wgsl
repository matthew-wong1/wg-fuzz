struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 27>();
    global2 = select(vec3<bool>(480f < _wgslsmith_f_op_f32(min(-1173f, _wgslsmith_f_op_f32(-arg_2.a))), countOneBits(_wgslsmith_div_u32(arg_0, u_input.a.x)) < (reverseBits(123498u) ^ ~u_input.a.x), global2.x), select(vec3<bool>(false, global2.x, true), select(vec3<bool>(true, true, false), select(!vec3<bool>(true, global2.x, true), vec3<bool>(arg_2.d, false, global2.x), !global2.x), vec3<bool>(true, false, true)), global2.x), select(!(!(!vec3<bool>(true, false, arg_2.d))), !(!select(vec3<bool>(global2.x, false, true), vec3<bool>(arg_2.d, false, true), global2.x)), true));
    var var_0 = arg_2;
    var var_1 = abs(_wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(-64081i, 7857i, arg_2.c, arg_2.c), countOneBits(vec4<i32>(arg_2.c, var_0.c, 26575i, arg_2.c))), -max(vec4<i32>(arg_2.c, arg_2.c, 8056i, -2147483647i), max(vec4<i32>(26455i, 36844i, 29803i, var_0.c), vec4<i32>(-1194i, arg_2.c, arg_2.c, 50912i)))));
    let var_2 = global0[_wgslsmith_index_u32(~(4294967295u >> (u_input.a.x % 32u)), 27u)];
    return ~arg_1.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.c;
    global0 = array<Struct_1, 27>();
    let var_1 = !select(select(!global2.zz, vec2<bool>(arg_1.d, false), true), !global2.yx, !global2.xz);
    var var_2 = Struct_1(-533f, 1u, 1i, false && (5303i == -var_0));
    var var_3 = ~min(vec4<i32>(~_wgslsmith_sub_i32(arg_1.c, -1i), _wgslsmith_clamp_i32(arg_1.c ^ 760i, var_2.c ^ -1i, select(arg_1.c, 1i, global2.x)), -1i, var_0), vec4<i32>(var_0, -var_0, 21745i, -2147483647i));
    return select(vec3<bool>(false, all(vec2<bool>(true, var_1.x)), any(vec3<bool>(u_input.a.x < var_2.b, true, true))), !select(vec3<bool>(var_1.x, true, global2.x), vec3<bool>(!arg_1.d, arg_1.c < 1i, true), _wgslsmith_add_i32(arg_1.c, var_3.x) == 64548i), true);
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -431f)))), u_input.a.x, max(firstLeadingBit(55736i), -93691i), false);
    global1 = array<vec2<i32>, 26>();
    global2 = !func_4(vec4<f32>(-1219f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))), var_0.a, -151f), global0[_wgslsmith_index_u32(func_3(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, var_0.b), firstLeadingBit(u_input.a.x)), firstLeadingBit(u_input.a >> (vec2<u32>(var_0.b, var_0.b) % vec2<u32>(32u))), Struct_1(331f, ~4294967295u, _wgslsmith_mult_i32(var_0.c, -12284i), var_0.c < -106325i)), 27u)]);
    var var_1 = vec3<u32>(87313u, var_0.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(21611u, ~39361u, abs(u_input.a.x), 0u), vec4<u32>(1u, ~79110u, 49337u, u_input.a.x)));
    var var_2 = Struct_1(271f, 4294967295u, _wgslsmith_dot_vec2_i32(firstLeadingBit(select(global1[_wgslsmith_index_u32(48247u, 26u)], global1[_wgslsmith_index_u32(var_1.x, 26u)], vec2<bool>(true, global2.x))), reverseBits(vec2<i32>(1i, 0i))) | (1i | -var_0.c), !(!func_4(vec4<f32>(816f, var_0.a, var_0.a, -230f), var_0).x));
    return abs(vec3<i32>(_wgslsmith_mult_i32(var_2.c | (i32(-1i) * -1i), ~(-66452i) & var_0.c), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.c, var_0.c) ^ var_0.c, _wgslsmith_add_i32(-var_0.c, -7069i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, -1i) ^ reverseBits(global1[_wgslsmith_index_u32(23724u, 26u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, 0i) ^ global1[_wgslsmith_index_u32(var_1.x, 26u)], vec2<i32>(-16652i, var_2.c), ~vec2<i32>(var_0.c, 0i)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = Struct_1(arg_3, 1u, arg_1.x, true);
    let var_1 = Struct_1(-1188f, var_0.b, var_0.c, true);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + var_0.a), -1445f)), _wgslsmith_clamp_u32(~(~_wgslsmith_mod_u32(var_1.b, u_input.a.x)), var_0.b, min(1u, max(1u, 0u))), var_1.c, !select(var_0.d, true, !(false & global2.x)));
    global1 = array<vec2<i32>, 26>();
    var var_3 = ~abs(var_2.c);
    return var_0.d;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(176f)), u_input.a.x, ~(~min(0i, firstTrailingBit(1i))), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-915f, -1289f)))), ~func_2(), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(1i, 0i, -32953i)), select(vec3<i32>(-2147483647i, -2147483647i, 1i), vec3<i32>(-13353i, -2147483647i, 8569i), global2.x)), -select(vec3<i32>(-2147483647i, 32177i, -1i), vec3<i32>(10856i, -7359i, -35878i), arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f * 336f) + _wgslsmith_f_op_f32(sign(-795f)))))));
    var var_1 = vec3<i32>(-1i) * -reverseBits(vec3<i32>(var_0.c, _wgslsmith_mult_i32(var_0.c, -1i), 1i | var_0.c));
    var_1 = vec3<i32>(var_0.c, _wgslsmith_sub_i32(var_0.c, abs(-17780i)) ^ firstTrailingBit(min(-2147483647i, min(-2147483647i, 2147483647i))), var_1.x);
    let var_2 = _wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(var_1.x, ~var_0.c, 6372i, ~var_0.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -6082i, -40085i, var_1.x), vec4<i32>(30529i, var_1.x, 17195i, -2147483647i), vec4<i32>(-15687i, var_1.x, var_0.c, var_1.x)) ^ (vec4<i32>(var_1.x, var_0.c, 1i, var_0.c) ^ vec4<i32>(var_1.x, 4925i, -53926i, -5338i)), _wgslsmith_f_op_f32(-var_0.a) < 534f)), abs(vec4<i32>(var_0.c, 2147483647i, var_1.x, -15066i) ^ (vec4<i32>(-1i, var_0.c, var_1.x, 25151i) << (vec4<u32>(var_0.b, 1u, var_0.b, 12232u) % vec4<u32>(32u)))) >> (abs(reverseBits(vec4<u32>(47552u, var_0.b, var_0.b, 19883u))) % vec4<u32>(32u)));
    global1 = array<vec2<i32>, 26>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(!vec3<bool>(all(global2.xx), true, true), !vec3<bool>(func_1(false), false, !global2.x), !(!(!vec3<bool>(global2.x, global2.x, false)))), vec3<bool>(max(u_input.a.x << (4294967295u % 32u), func_3(u_input.a.x, vec2<u32>(21699u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 27u)])) < u_input.a.x, false, false), all(!vec3<bool>(any(vec4<bool>(global2.x, global2.x, false, global2.x)), true, true)));
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_div_i32(3465i, -1i);
    var_0 = countOneBits(_wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(func_2().x, -1i)));
    let var_2 = global0[_wgslsmith_index_u32(~(~func_3(countOneBits(u_input.a.x ^ 46923u), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), Struct_1(293f, u_input.a.x, firstLeadingBit(18403i), global2.x))), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(22758u, 24936u), u_input.a), vec2<u32>(var_2.b, u_input.a.x)) & _wgslsmith_clamp_u32(u_input.a.x, ~1u, ~u_input.a.x)));
}

