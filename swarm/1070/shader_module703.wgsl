struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<bool, 14> = array<bool, 14>(false, false, true, true, false, true, true, true, false, false, true, false, true, true);

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: Struct_1 = Struct_1(8665i, false, 37220u);

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), false, 25251u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> i32 {
    var var_0 = arg_0;
    var var_1 = u_input.a.x;
    global1 = array<bool, 14>();
    global4 = Struct_1(global3.a, global4.b || global4.b, 1u);
    let var_2 = _wgslsmith_f_op_f32(248f - 490f);
    return _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(33262i, var_0.a, var_0.a, global4.a) | vec4<i32>(arg_0.a, -2147483647i, arg_0.a, var_0.a), vec4<i32>(arg_0.a, -1i, -10849i, global3.a & global3.a)), abs(vec4<i32>(_wgslsmith_sub_i32(-1i, 35705i), max(0i, var_0.a), _wgslsmith_mod_i32(var_0.a, var_0.a), -2147483647i)), select(!select(vec4<bool>(false, var_0.b, var_0.b, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<bool>(false, true, true, false), true), vec4<bool>(var_0.b, any(global2[_wgslsmith_index_u32(1u, 26u)]), false == global3.b, global4.b | var_0.b), select(select(vec4<bool>(true, true, arg_0.b, global3.b), vec4<bool>(false, true, false, arg_0.b), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], var_0.b, true)), !vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 14u)], global4.b, true, global4.b), var_0.b))), countOneBits(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(var_0.a, global3.a, -2147483647i, 32985i), vec4<i32>(-1i, global3.a, 2147483647i, var_0.a)), vec4<i32>(-8169i, -2147483647i, arg_0.a, var_0.a))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_1(~(-func_3(arg_0, vec2<u32>(global4.c, arg_0.c), 0u)), global3.b && false, u_input.a.x);
    var_0 = global0[_wgslsmith_index_u32(u_input.b, 31u)];
    var_0 = Struct_1(var_0.a, !any(select(select(vec4<bool>(true, global3.b, global3.b, global3.b), vec4<bool>(global3.b, global1[_wgslsmith_index_u32(0u, 14u)], false, true), global4.b), !vec4<bool>(false, global3.b, var_0.b, false), arg_0.b)), ~(global4.c << (global4.c % 32u)));
    global4 = arg_0;
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global3.a, 28667i), vec3<i32>(24824i, 2147483647i, global3.a)) & -vec3<i32>(-30025i, 36137i, var_0.a)) & vec3<i32>(1i, 33239i, global3.a), _wgslsmith_clamp_vec3_i32(select(reverseBits(vec3<i32>(-17193i, 35321i, arg_0.a)), firstTrailingBit(vec3<i32>(1i, var_0.a, 2147483647i)), !vec3<bool>(global4.b, var_0.b, false)), ~_wgslsmith_add_vec3_i32(vec3<i32>(global3.a, global4.a, 0i), vec3<i32>(global3.a, -39577i, -1335i)), ~vec3<i32>(1i, 1i, -6764i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-9356i, 0i, var_0.a), vec3<i32>(-2147483647i, arg_0.a, -42911i)))), select(vec3<i32>(var_0.a, global3.a, global3.a) ^ vec3<i32>(2147483647i, _wgslsmith_mult_i32(arg_0.a, arg_0.a), i32(-1i) * -11374i), firstLeadingBit(vec3<i32>(0i, -25741i, 0i)), any(select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(global3.c, 14u)]), vec2<bool>(false, arg_0.b), global2[_wgslsmith_index_u32(var_0.c, 26u)]), global2[_wgslsmith_index_u32(0u ^ arg_0.c, 26u)], vec2<bool>(false, var_0.b)))));
    return firstTrailingBit(-(i32(-1i) * -37616i));
}

fn func_1() -> Struct_1 {
    var var_0 = !any(vec4<bool>(!global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(~32865u, 14u)], true, global4.b));
    global3 = global0[_wgslsmith_index_u32(global3.c, 31u)];
    let var_1 = Struct_1(func_2(Struct_1(-12999i, false, _wgslsmith_div_u32(u_input.b, 56550u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -494f), 1f)), any(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(global4.c, 14u)], global4.b, true), vec3<bool>(global4.b, global3.b, global3.b), vec3<bool>(global1[_wgslsmith_index_u32(global3.c, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], false)), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 14u)], true, global1[_wgslsmith_index_u32(global3.c, 14u)]), all(vec4<bool>(true, global4.b, global3.b, false)))), abs(~50722u));
    return Struct_1(_wgslsmith_mod_i32(~(-2147483647i), min(global3.a, var_1.a)), false, 77994u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<u32> {
    global4 = func_1();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(840f, -1458f, -304f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-333f, 1718f, -1000f))))))));
    let var_1 = func_1();
    var var_2 = _wgslsmith_div_vec2_f32(var_0.xy, _wgslsmith_f_op_vec2_f32(var_0.zz * _wgslsmith_f_op_vec2_f32(select(var_0.xx, _wgslsmith_f_op_vec2_f32(var_0.yx * var_0.yy), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_1.c, ~4294967295u, global3.c), 26u)]))));
    var var_3 = _wgslsmith_add_i32(min(-abs(-1i), _wgslsmith_dot_vec2_i32(~abs(arg_1.xz), vec2<i32>(~(-28030i), countOneBits(global4.a)))), global3.a);
    return abs(~(~vec4<u32>(~84666u, 1u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 45441u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_i32(-2147483647i, global3.a), true, u_input.b);
    var var_1 = func_4(func_1(), (vec3<i32>(-1i) * -(vec3<i32>(0i, var_0.a, -13159i) ^ vec3<i32>(-1i, -20446i, global4.a))) & reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 13740i, global3.a), vec3<i32>(47386i, var_0.a, -39585i) >> (vec3<u32>(4294967295u, 0u, global4.c) % vec3<u32>(32u)))));
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.xzw, _wgslsmith_div_vec3_u32(max(vec3<u32>(0u, global4.c, global3.c), var_1.www), vec3<u32>(u_input.a.x, 1u, var_1.x) << (var_1.yzw % vec3<u32>(32u)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~0u, ~var_1.x), countOneBits(12394u))) ^ 67721u, 31u)];
    var_1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(max(firstTrailingBit(vec4<u32>(22045u, var_0.c, 23002u, 21938u)), ~vec4<u32>(global3.c, 1u, 63016u, 4294967295u)), countOneBits(~vec4<u32>(83393u, var_0.c, var_1.x, u_input.b))), ~_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(45454u, var_1.x, global3.c, 34573u)), ~firstTrailingBit(vec4<u32>(var_1.x, 0u, 1u, 10826u))));
    var var_2 = select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global4.b, false), vec3<bool>(global1[_wgslsmith_index_u32(4577u, 14u)], global1[_wgslsmith_index_u32(var_0.c, 14u)], false)), !(!vec3<bool>(global4.b, global3.b, global3.b)), false), vec3<bool>(0u < global4.c, true, any(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.c, var_1.x), 26u)])), select(true, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(global3.c), 4294967295u), 14u)], any(vec4<bool>(all(vec4<bool>(false, false, var_0.b, true)), true, global1[_wgslsmith_index_u32(~global4.c, 14u)], true))));
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, firstTrailingBit(~u_input.b), 0u | global4.c, ~_wgslsmith_div_u32(104789u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~global4.c, func_4(global0[_wgslsmith_index_u32(var_1.x | 0u, 31u)], ~vec3<i32>(var_0.a, 8671i, global4.a)).x, global4.c, var_1.x), ~vec4<u32>(var_1.x, ~0u, var_1.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(_wgslsmith_add_vec3_i32(abs(vec3<i32>(global3.a, 1i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(global4.a, -12912i, global4.a), vec3<i32>(global4.a, -2147483647i, -14122i))), -(~vec3<i32>(global4.a, -1i, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1326f)))))));
}

