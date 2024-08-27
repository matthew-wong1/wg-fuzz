struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_3, 26>;

var<private> global3: array<f32, 32> = array<f32, 32>(536f, 736f, -312f, -1668f, -1000f, 1427f, -708f, -1000f, -1097f, -1165f, 113f, 250f, 901f, 698f, 925f, -2328f, 136f, -1847f, -695f, -597f, -2400f, 638f, -911f, -505f, 907f, -283f, -1099f, 949f, 447f, 702f, -1091f, 997f);

var<private> global4: f32 = -1022f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(arg_0, ~select(~firstLeadingBit(u_input.a.zx), ~u_input.a.xz, true), vec4<i32>(36217i, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x & u_input.a.x, -1i), i32(-1i) * -17236i), -1i, min(u_input.a.x, u_input.a.x | -2147483647i)), -876f, -(vec3<i32>(i32(-1i) * -3316i, u_input.a.x, 1i) ^ (u_input.a << (vec3<u32>(arg_0.a.x, arg_1.a.x, arg_0.a.x) % vec3<u32>(32u)))));
    let var_1 = all(vec3<bool>(true, true, true));
    let var_2 = false;
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(15097i, var_0.e.x, -1i, var_0.c.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.c.x, -15475i, ~(-55491i)), ~min(vec3<i32>(u_input.a.x, u_input.a.x, var_0.b.x), vec3<i32>(1i, 6674i, 27309i))), _wgslsmith_add_i32(-firstLeadingBit(-16312i), _wgslsmith_dot_vec2_i32(u_input.a.xx, -vec2<i32>(-4373i, var_0.b.x))), min(_wgslsmith_div_i32(var_0.b.x, -2147483647i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.e.x, var_0.b.x), _wgslsmith_mult_i32(-4081i, 0i))), _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), var_0.c.x, u_input.a.x)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_0.a.a.x, 32u)])) + _wgslsmith_f_op_f32(step(869f, -323f)));
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 6365u), 32u)] + global3[_wgslsmith_index_u32(arg_1.a.x, 32u)]))))), var_0.d, -1353f, 1862f);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    global2 = array<Struct_3, 26>();
    let var_0 = arg_2;
    var var_1 = var_0.a.a.x;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1182f)));
    let var_2 = Struct_2(Struct_1(countOneBits(~min(var_0.a.a, arg_2.a.a))), _wgslsmith_clamp_vec2_i32(~(-countOneBits(vec2<i32>(-25332i, var_0.b.x))), var_0.b, ~(-vec2<i32>(arg_2.c.x, 1i))), arg_2.c, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(~vec2<u32>(var_0.a.a.x, arg_2.a.a.x)), var_0.a)).x, _wgslsmith_div_vec3_i32(var_0.c.zyx, firstTrailingBit(-arg_2.c.yzz)) << (max(~arg_0.ywx, abs(_wgslsmith_mod_vec3_u32(arg_0.xyx, arg_0.zzy))) % vec3<u32>(32u)));
    return 1i;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec2<u32>(3575u, 0u));
    var var_1 = Struct_2(var_0, vec2<i32>(reverseBits(_wgslsmith_div_i32(min(0i, u_input.a.x), -25715i)), abs(func_4(vec4<u32>(var_0.a.x, 10250u, 11381u, var_0.a.x), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<u32>(var_0.a.x, 1u)), Struct_1(vec2<u32>(103345u, var_0.a.x)))), Struct_2(Struct_1(vec2<u32>(1u, 32015u)), vec2<i32>(-2147483647i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(56111u, 32u)], vec3<i32>(u_input.a.x, 0i, u_input.a.x))))), vec4<i32>(u_input.a.x, i32(-1i) * -reverseBits(u_input.a.x), 9737i, 1i), -244f, _wgslsmith_mod_vec3_i32(-(vec3<i32>(1i, u_input.a.x, 25809i) << (vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 0i, -2147483647i), u_input.a), vec3<i32>(-u_input.a.x, 1i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)))));
    var var_2 = abs(u_input.a.x) == abs(-1i);
    global2 = array<Struct_3, 26>();
    let var_3 = _wgslsmith_add_u32(var_0.a.x, var_0.a.x);
    return 27477u;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_3(func_2() == (~103164u >> (arg_2.x % 32u)), abs(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(12028i, u_input.a.x, 0i, -1i) >> (arg_0 % vec4<u32>(32u))), vec4<i32>(arg_1, -2147483647i, arg_1, arg_1) << (~vec4<u32>(arg_2.x, arg_0.x, 0u, arg_0.x) % vec4<u32>(32u)), max(vec4<i32>(-2147483647i, 1i, 1i, u_input.a.x) & vec4<i32>(-33904i, arg_1, u_input.a.x, u_input.a.x), vec4<i32>(arg_1, -9330i, arg_1, -1i)))));
    let var_1 = !(!vec2<bool>(_wgslsmith_f_op_f32(-746f - -239f) != _wgslsmith_f_op_f32(167f - global3[_wgslsmith_index_u32(arg_2.x, 32u)]), any(!vec2<bool>(var_0.a, var_0.a))));
    var var_2 = Struct_2(Struct_1(reverseBits(select(arg_2.yz, max(arg_0.zw, vec2<u32>(arg_0.x, arg_2.x)), var_1.x))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(_wgslsmith_div_i32(-5582i, -39670i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 10796i, u_input.a.x, u_input.a.x), var_0.b))), -var_0.b.yz), var_0.b, -1161f, var_0.b.wxw);
    global1 = array<Struct_1, 18>();
    var var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~0u, firstTrailingBit(arg_0.x)) | 1u, var_2.a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.a.x, arg_0.x, arg_0.x), ~vec3<u32>(arg_0.x, 15314u, arg_2.x)) & var_2.a.a.x)), 18u)];
    return Struct_3(var_1.x, ~select(vec4<i32>(var_2.e.x ^ var_0.b.x, 0i, var_0.b.x, 0i << (var_3.a.x % 32u)), var_2.c, vec4<bool>(all(vec4<bool>(var_0.a, true, var_0.a, false)), any(vec2<bool>(false, false)), true, true)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = select(vec4<bool>(select(select(true, true, false), !arg_0.a, _wgslsmith_mod_i32(u_input.a.x, -1i) > -1i), any(vec3<bool>(arg_0.a & true, all(vec3<bool>(arg_0.a, false, arg_0.a)), arg_0.a)), -2147483647i > arg_0.b.x, !all(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a))), vec4<bool>(all(select(!vec2<bool>(arg_0.a, false), !vec2<bool>(arg_0.a, arg_0.a), arg_0.a)), true, false, !func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, 1u, arg_1), vec4<u32>(0u, 4294967295u, arg_1, arg_1)), firstLeadingBit(u_input.a.x), vec4<u32>(arg_1, arg_1, 1u, arg_1)).a), arg_0.a & any(select(vec3<bool>(true, arg_0.a, false), select(vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_0.a, false, false), vec3<bool>(false, arg_0.a, arg_0.a)), vec3<bool>(false, arg_0.a, true))));
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(arg_1), 18u)];
    var var_2 = firstLeadingBit(~_wgslsmith_mult_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(14117u, 50128u, 0u), vec3<u32>(var_1.a.x, 4093u, 44580u), vec3<u32>(var_1.a.x, 4294967295u, var_1.a.x))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_1, 4294967295u), vec3<u32>(0u, 7487u, 4294967295u)))));
    let var_3 = _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~arg_1, 32u)], global3[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_clamp_u32(abs(4294967295u), var_1.a.x << (var_1.a.x % 32u), max(4294967295u, var_1.a.x))), 32u)]);
    var var_4 = _wgslsmith_add_vec4_u32(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a.x, 22312u, 38334u, arg_1), vec4<u32>(1u, var_2.x, arg_1, arg_1) >> (vec4<u32>(32870u, var_2.x, var_1.a.x, 0u) % vec4<u32>(32u)))), abs(vec4<u32>(80073u, max(var_1.a.x, 0u), abs(978u), 1u) >> (abs(vec4<u32>(51474u, var_1.a.x, 0u, var_1.a.x)) % vec4<u32>(32u))));
    return var_4.x;
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_3(all(select(vec2<bool>(select(arg_1, true, arg_1), arg_1), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), true), false)), abs(~vec4<i32>(i32(-1i) * -19112i, arg_3, firstLeadingBit(u_input.a.x), func_4(vec4<u32>(arg_2, arg_2, 1u, arg_2), vec4<f32>(977f, global3[_wgslsmith_index_u32(1u, 32u)], -780f, 1579f), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 18u)], vec2<i32>(u_input.a.x, 1i), vec4<i32>(-7949i, arg_3, u_input.a.x, 33721i), -304f, vec3<i32>(2147483647i, u_input.a.x, 0i))))));
    global2 = array<Struct_3, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(61573u, 32u)]), _wgslsmith_div_f32(-429f, global3[_wgslsmith_index_u32(arg_2, 32u)]), global3[_wgslsmith_index_u32(~arg_2, 32u)]) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0), global1[_wgslsmith_index_u32(1u << (0u % 32u), 18u)])).yyz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(111448u, 32u)]), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, 57406u), 32u)])), ~1u == func_2())) - vec3<f32>(global3[_wgslsmith_index_u32(~0u, 32u)], global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, arg_2), abs(arg_0)), 32u)], 367f));
    global4 = global3[_wgslsmith_index_u32(arg_2, 32u)];
    var var_2 = Struct_1(arg_0);
    return select(!vec3<bool>(any(select(vec2<bool>(arg_1, var_0.a), vec2<bool>(false, false), var_0.a)), arg_1 && !var_0.a, any(select(vec4<bool>(false, arg_1, var_0.a, var_0.a), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, var_0.a)))), vec3<bool>(var_0.a, var_0.a, var_0.a), !any(vec2<bool>(all(vec4<bool>(true, arg_1, false, var_0.a)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(6192u, 1u, 1u), vec3<u32>(0u, 1u, 4294967295u)), ~18271u), func_5(func_1(vec4<u32>(1u, 4294967295u, 45387u, 46139u), 42794i, vec4<u32>(1u, 1u, 31569u, 0u)), _wgslsmith_add_u32(1u, 1u), firstTrailingBit(-37265i))), vec2<u32>(~4294967295u << (1u % 32u), 4294967295u), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(2653u, 0u)), vec2<u32>(1u, 1u))), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~min(40072u, 1u), _wgslsmith_mult_u32(1u, 0u)), func_5(Struct_3(true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(3960u, 0u, 48024u, 48921u) % vec4<u32>(32u))), ~1u, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 11399i, -u_input.a.x))), 29564i);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2494f)))))));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, ~func_4(vec4<u32>(22467u, 24972u, 0u, 1u), vec4<f32>(global3[_wgslsmith_index_u32(1u, 32u)], -426f, global3[_wgslsmith_index_u32(4294967295u, 32u)], 1000f), Struct_2(global1[_wgslsmith_index_u32(18878u, 18u)], u_input.a.zy, vec4<i32>(u_input.a.x, u_input.a.x, 26878i, u_input.a.x), 1000f, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), ~(u_input.a.x >> (~12620u % 32u)), u_input.a.x << (_wgslsmith_sub_u32(~0u, 1u) % 32u), u_input.a.x), ~_wgslsmith_add_vec4_i32(~abs(vec4<i32>(0i, u_input.a.x, 43250i, u_input.a.x)), vec4<i32>(0i, -u_input.a.x, abs(-13370i), u_input.a.x)));
    var_1 = 1710f;
    let var_3 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(44430u, 0u), ~14725u), vec2<u32>(_wgslsmith_clamp_u32(1u, 27984u, 1u), func_5(global2[_wgslsmith_index_u32(0u, 26u)], 4294967295u, -1i))) | vec2<u32>(1u, 1u));
    let var_4 = Struct_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(0u, 1u)), vec2<u32>(4294967295u, 5503u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(var_2.x, 2295i)), var_2.x, 0i, -var_2);
}

