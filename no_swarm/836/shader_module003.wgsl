struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, true, false, true, true, true, false, false, false, true, false, true, true, false, true, true, true, false, true);

var<private> global1: vec3<f32> = vec3<f32>(-1000f, -1076f, -407f);

var<private> global2: array<Struct_4, 9>;

var<private> global3: array<vec2<f32>, 9>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global3 = array<vec2<f32>, 9>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f + 543f)), !vec3<bool>(true, true, any(select(vec3<bool>(true, true, false), arg_0.a, vec3<bool>(false, true, false)))));
    var var_1 = all(arg_0.a.zy);
    global2 = array<Struct_4, 9>();
    var var_2 = vec4<bool>(select(all(vec4<bool>(var_0.b.x, false | var_0.b.x, any(vec3<bool>(false, var_0.b.x, arg_0.a.x)), false)), false, any(!vec2<bool>(var_0.b.x, false))), global0[_wgslsmith_index_u32(arg_0.c.x, 19u)], arg_0.a.x, false);
    return firstLeadingBit(max(vec2<u32>(~firstLeadingBit(47956u), _wgslsmith_add_u32(arg_0.c.x, 40217u)), vec2<u32>(~min(0u, u_input.b), 2703u)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_i32(-9906i, min(firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.b, arg_0.b, arg_0.b), vec4<i32>(-1i, arg_0.b, arg_0.b, arg_0.b))), abs(i32(-1i) * -19636i)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + 937f), _wgslsmith_f_op_f32(floor(-1094f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_div_f32(1813f, global1.x))))), select(select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], arg_0.a.x, global0[_wgslsmith_index_u32(1u, 19u)], true)), true, true), !select(arg_0.a, arg_0.a, vec3<bool>(false, true, arg_0.a.x)), select(!vec3<bool>(arg_0.a.x, arg_0.a.x, true), !arg_0.a, !global0[_wgslsmith_index_u32(4294967295u, 19u)])), vec3<bool>(false, global0[_wgslsmith_index_u32(0u & _wgslsmith_mult_u32(arg_0.c.x, 32665u), 19u)], all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(68323u, 19u)], global0[_wgslsmith_index_u32(arg_0.c.x, 19u)], false), vec4<bool>(arg_0.a.x, arg_0.a.x, false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(arg_0.c.x, 19u)], arg_0.a.x, global0[_wgslsmith_index_u32(u_input.b, 19u)])))), select(vec3<bool>(all(vec2<bool>(arg_0.a.x, arg_0.a.x)), global1.x != global1.x, all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(78990u, 19u)], arg_0.a.x, arg_0.a.x))), select(arg_0.a, select(vec3<bool>(false, arg_0.a.x, global0[_wgslsmith_index_u32(arg_0.c.x, 19u)]), vec3<bool>(true, arg_0.a.x, arg_0.a.x), false), true), vec3<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(~14205u, 19u)], global0[_wgslsmith_index_u32(~arg_0.c.x, 19u)]))));
    var var_2 = max(select(vec3<i32>(arg_0.b, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.b), vec2<i32>(arg_0.b, arg_0.b)), arg_0.b), -11175i | arg_0.b), -(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, arg_0.b), vec3<i32>(arg_0.b, arg_0.b, 1i))), false), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-33926i, reverseBits(-2147483647i), abs(2147483647i)), -(vec3<i32>(arg_0.b, 8184i, 1887i) << (vec3<u32>(arg_0.c.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))))));
    var_2 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, -1i), vec2<i32>(var_2.x, arg_0.b)) | (arg_0.b ^ 4267i), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, arg_0.b, arg_0.b), vec4<i32>(2147483647i, -26964i, 27590i, -2147483647i)), -28643i) & _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-(vec3<i32>(6161i, -57784i, var_2.x) >> (vec3<u32>(81966u, 37519u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(-31473i, arg_0.b, var_2.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, arg_0.b, 21396i), vec3<i32>(arg_0.b, 30689i, arg_0.b))), vec3<i32>(_wgslsmith_add_i32(var_2.x, -7446i), ~arg_0.b, arg_0.b)), max(reverseBits(vec3<i32>(-8094i, var_2.x, arg_0.b) >> (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))), select(-vec3<i32>(var_2.x, -2147483647i, 15890i), -vec3<i32>(0i, -2147483647i, var_2.x), arg_0.a)));
    global2 = array<Struct_4, 9>();
    return ~_wgslsmith_mult_u32(~(~0u), select(min(1u, arg_0.c.x) | _wgslsmith_add_u32(arg_0.c.x, 4294967295u), _wgslsmith_div_u32(arg_0.c.x, ~1738u), var_1.b.x & all(var_1.b.zy)));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = func_4(Struct_1(!vec3<bool>(any(vec2<bool>(false, false)), true, true), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 2147483647i, -23235i, 42101i) << (vec4<u32>(u_input.a.x, 4294967295u, 32049u, arg_1) % vec4<u32>(32u)), vec4<i32>(min(-3043i, -2147483647i), i32(-1i) * -6419i, i32(-1i) * -13069i, select(37147i, -68769i, false))), abs(func_3(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true, false), 1i, vec2<u32>(1u, u_input.b))))));
    let var_1 = !(!arg_0) | any(!(!select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.x)), global1.x)), select(select(select(!vec3<bool>(arg_0, false, var_1), vec3<bool>(true, true, true), !vec3<bool>(arg_0, false, false)), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), select(select(vec3<bool>(true, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 19u)], true), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(20668u, 19u)]))), !vec3<bool>(u_input.b >= u_input.a.x, false, true), var_1));
}

fn func_5(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec3_i32(~(-(firstTrailingBit(vec3<i32>(1i, 1i, -35919i)) & reverseBits(vec3<i32>(-28289i, 1i, -2147483647i)))), _wgslsmith_clamp_vec3_i32((vec3<i32>(-2147483647i, 0i, 12756i) & select(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(0i, -20786i, 0i), global0[_wgslsmith_index_u32(u_input.a.x, 19u)])) & vec3<i32>(_wgslsmith_mod_i32(-1i, -1i), ~42900i, 0i), ~vec3<i32>(i32(-1i) * -82656i, 10945i >> (0u % 32u), 51171i), vec3<i32>(~57565i, ~11614i, ~1i) >> (~abs(vec3<u32>(u_input.a.x, u_input.b, 1u)) % vec3<u32>(32u))));
    var_0 = abs(vec3<i32>(~var_0.x, ~firstLeadingBit(~var_0.x), -var_0.x));
    let var_1 = -(reverseBits(max(vec3<i32>(var_0.x, -1i, var_0.x), vec3<i32>(28744i, var_0.x, var_0.x))) ^ _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-27692i, 2147483647i, var_0.x), vec3<i32>(var_0.x, -1i, 19729i))), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 1i, 1i), ~vec3<i32>(var_0.x, var_0.x, -8152i)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -2147483647i, -8275i), vec3<i32>(var_0.x, -1i, 1i)))));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(u_input.b, 9u)], vec2<f32>(481f, 1085f)));
    return !vec3<bool>(global0[_wgslsmith_index_u32(~func_4(Struct_1(vec3<bool>(arg_0.a.b.x, false, var_2.b.x), var_1.x, vec2<u32>(0u, u_input.a.x))), 19u)], arg_0.a.b.x, func_2(true, _wgslsmith_mult_u32(0u, 0u)).b.x);
}

fn func_6(arg_0: vec3<bool>) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 619f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(370f, 630f))), _wgslsmith_f_op_f32(-387f * _wgslsmith_f_op_f32(select(-215f, global1.x, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-936f, 124f), _wgslsmith_f_op_f32(min(-215f, global1.x)), global1.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1645f, -1481f, 711f), vec3<f32>(-744f, global1.x, 149f)))))))));
    global0 = array<bool, 19>();
    global3 = array<vec2<f32>, 9>();
    let var_0 = Struct_3(func_2(false, ~63726u), vec4<bool>(func_2(any(select(arg_0, vec3<bool>(false, global0[_wgslsmith_index_u32(23054u, 19u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true, arg_0.x))), 0u).b.x, !any(vec2<bool>(global0[_wgslsmith_index_u32(63826u, 19u)], false)), arg_0.x, arg_0.x), select(vec3<bool>(all(arg_0.yz), !(global0[_wgslsmith_index_u32(u_input.b, 19u)] != true), any(vec3<bool>(arg_0.x, true, arg_0.x))), arg_0, true), func_2(!func_2(true, u_input.a.x).b.x & global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(0u, u_input.b), ~1u), 19u)], 65062u));
    var var_1 = Struct_1(arg_0, ~max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-11799i, -154i), _wgslsmith_mod_i32(-1i, 23993i)), _wgslsmith_add_i32(25639i, i32(-1i) * -114i)), min(u_input.a, u_input.a));
    return global2[_wgslsmith_index_u32(var_1.c.x << (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x ^ u_input.b, u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, var_1.c.x, u_input.b), vec3<u32>(var_1.c.x, var_1.c.x, 0u), vec3<u32>(var_1.c.x, 4294967295u, 15248u)), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), 4294967295u)) % 32u), 9u)];
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> vec3<u32> {
    global2 = array<Struct_4, 9>();
    global2 = array<Struct_4, 9>();
    let var_0 = 5451i;
    global0 = array<bool, 19>();
    let var_1 = func_6(func_5(Struct_3(func_2(global0[_wgslsmith_index_u32(6035u, 19u)] || global0[_wgslsmith_index_u32(arg_0, 19u)], 13059u), select(vec4<bool>(false, global0[_wgslsmith_index_u32(13135u, 19u)], false, global0[_wgslsmith_index_u32(0u, 19u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0, 19u)], true), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)])), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false, global0[_wgslsmith_index_u32(34734u, 19u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(31945u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)])), true), Struct_2(389f, !vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_0, 19u)])))));
    return vec3<u32>(1100u, 1u, ~(~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.yy;
    global3 = array<vec2<f32>, 9>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-global1.xx);
    global0 = array<bool, 19>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -972f), 1f);
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32((vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.b, u_input.b, u_input.a.x)) >> (~vec3<u32>(u_input.a.x, u_input.b, u_input.b) % vec3<u32>(32u)), reverseBits(func_1(u_input.a.x, -4684i, vec4<i32>(0i, -33844i, 66135i, 2147483647i)))), vec3<u32>(u_input.b, ~firstTrailingBit(u_input.b), ~(~40492u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * global1.x), 444f, func_2(global0[_wgslsmith_index_u32(~(81302u >> (u_input.b % 32u)), 19u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.b, 1u), vec4<u32>(u_input.a.x, 19816u, 0u, u_input.b)) | ~100589u).a, -233f), ~min(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, -8922i, 1i, 1i)), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(max(u_input.b, 4294967295u), _wgslsmith_div_u32(~4294967295u, ~u_input.b))));
}

