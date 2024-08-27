struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: vec4<i32> = vec4<i32>(29209i, -49568i, i32(-2147483648), -1i);

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: array<u32, 9>;

var<private> global4: Struct_1 = Struct_1(-115910i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    var var_0 = (_wgslsmith_mod_u32(arg_0, 29068u) != ~1u) & global0.x;
    let var_1 = Struct_1(1i);
    var var_2 = u_input.b;
    let var_3 = -(~firstTrailingBit(~(-4595i)));
    let var_4 = -13885i;
    return _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(reverseBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global4.a, u_input.b, 1883i), vec4<i32>(var_1.a, var_4, 1438i, -1i), vec4<i32>(-1i, global1.x, var_1.a, -16607i))), vec4<i32>(_wgslsmith_mod_i32(-11044i, global4.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 1i, var_1.a), vec4<i32>(u_input.b, 2147483647i, 2147483647i, 67368i)), -2147483647i, 18837i) >> (~(~vec4<u32>(global3[_wgslsmith_index_u32(arg_3.x, 9u)], u_input.a, 16800u, 0u)) % vec4<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = arg_1.b;
    var var_1 = u_input.b < u_input.b;
    let var_2 = arg_1;
    var_0 = arg_1.b;
    var_1 = !global0.x;
    return Struct_2(~func_3(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 38416u, arg_1.a.x, 0u), vec4<u32>(1u, 1u, 42763u, global3[_wgslsmith_index_u32(u_input.a, 9u)])), 9u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 170f), vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), 4294967295u >> (arg_1.a.x % 32u), vec3<u32>(_wgslsmith_div_u32(64318u, arg_1.a.x), max(u_input.a, arg_1.a.x), 11384u)), arg_1.b.b);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<i32>(countOneBits(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(-45406i, arg_1.a, global1.x))), _wgslsmith_clamp_i32(1i, -1i, 2147483647i), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-42514i, global1.x, u_input.b, u_input.b)), ~(vec4<i32>(2147483647i, 63892i, global1.x, 0i) ^ vec4<i32>(global4.a, u_input.b, 0i, arg_1.a))), -global1.x) << (firstTrailingBit(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(u_input.a, 20460u, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)])), vec4<u32>(4017u, u_input.a | 12076u, u_input.a, u_input.a ^ 18161u))) % vec4<u32>(32u));
    global1 = _wgslsmith_mod_vec4_i32(var_0, _wgslsmith_sub_vec4_i32(var_0, vec4<i32>(-1i) * -vec4<i32>(var_0.x, 116554i, -18462i, global4.a)));
    global4 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-217f))), 643f), Struct_3(select(abs(vec4<u32>(arg_2, arg_2, 1u, global3[_wgslsmith_index_u32(u_input.a, 9u)]) & vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.a, 9u)], 63u, u_input.a)), select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 23730u, 4294967295u, 1u), vec4<u32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(49610u, 9u)], 0u)), vec4<u32>(1u, 1u, 1u, 1u), false), true), Struct_2(arg_1.a, arg_1.b))).b;
    let var_1 = Struct_2(var_0.x, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1295f))), Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 10330u, global3[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a), vec4<u32>(arg_2, 0u, 3570u, 66674u)), vec4<u32>(arg_2, 77574u, 0u, u_input.a)), Struct_2(16017i, Struct_1(var_0.x)))).b);
    global4 = var_1.b;
    return Struct_2(~firstTrailingBit(abs(select(arg_1.b.a, -1i, true))), Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_1.b.a, u_input.b) >> (vec2<u32>(0u, 22177u) % vec2<u32>(32u))), max(var_0.xx, vec2<i32>(1i, var_1.a)))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = 1i;
    let var_1 = reverseBits(global1.yzx);
    let var_2 = vec2<bool>(-reverseBits(firstTrailingBit(global4.a)) == u_input.b, any(!vec3<bool>(global0.x, global3[_wgslsmith_index_u32(1u, 9u)] <= u_input.a, all(vec3<bool>(false, true, true)))));
    global1 = _wgslsmith_div_vec4_i32(-max(vec4<i32>(8247i, _wgslsmith_add_i32(global4.a, global1.x), select(-2147483647i, 0i, false), -u_input.b), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, arg_0.a, 2147483647i, global1.x)), firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.x, arg_2.b.b.a, 36460i, -21394i), max(-vec4<i32>(global1.x, -2147483647i, 1i, -35813i), vec4<i32>(11953i, 0i, arg_0.a, 2385i)))));
    let var_3 = all(var_2);
    return max(vec3<u32>(~(~arg_2.a.x), _wgslsmith_clamp_u32(4294967295u, arg_1, ~(~1u)), 1u), _wgslsmith_mult_vec3_u32(arg_2.a.yxx, countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(91175u, arg_1, global3[_wgslsmith_index_u32(1u, 9u)]), vec3<u32>(arg_2.a.x, 4294967295u, u_input.a)))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1231f)))), Struct_3(~(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(3154u, 9u)], u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)]) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], 1u, 2783u, global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<u32>(1u, 0u, global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(1u, 56642u, 31153u, 4294967295u))), Struct_2(24118i, func_4(true, Struct_2(u_input.b, Struct_1(-2740i)), u_input.a >> (u_input.a % 32u), select(global2[_wgslsmith_index_u32(49943u, 23u)], vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, true))).b)));
    var var_1 = select(vec4<bool>(select(global0.x, true, global0.x), global0.x, false, any(!vec4<bool>(true, false, global0.x, global0.x))), select(vec4<bool>(!global0.x, select(false, !global0.x, global0.x), true || global0.x, global0.x), select(!vec4<bool>(true, global0.x, global0.x, global0.x), !select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, true, false, false), global0.x), vec4<bool>(false, true, all(vec4<bool>(global0.x, true, false, false)), true)), global0.x), !(!(!select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, global0.x, false, global0.x)))));
    var var_2 = vec2<u32>(global3[_wgslsmith_index_u32(~(~arg_0.x), 9u)], 8004u);
    global0 = global2[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 23u)];
    return var_0.b;
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = vec3<bool>(global0.x, !arg_0, any(vec2<bool>(true, true)));
    var var_1 = firstLeadingBit(select(abs(global3[_wgslsmith_index_u32(~(49954u & u_input.a), 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 9u)], 1u), 0u), 9u)], true));
    let var_2 = global1.x;
    let var_3 = func_6(func_5(Struct_1(u_input.b), 0u, Struct_3(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], 4216u, u_input.a), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 94302u, 4294967295u)), abs(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], 23951u, 10300u, 15336u))), func_4(all(vec2<bool>(arg_0, false)), func_2(1000f, Struct_3(vec4<u32>(0u, 0u, u_input.a, 64951u), Struct_2(global1.x, Struct_1(21937i)))), _wgslsmith_add_u32(u_input.a, u_input.a), global2[_wgslsmith_index_u32(14227u, 23u)]))), abs(firstLeadingBit(-vec4<i32>(35885i, global1.x, global1.x, global4.a) | abs(vec4<i32>(8617i, global1.x, global1.x, global4.a)))));
    var var_4 = Struct_3(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, 30242u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13375u, 9u)], 9u)])), ~vec4<u32>(1u, u_input.a, global3[_wgslsmith_index_u32(10395u, 9u)], 4911u)) << (~vec4<u32>(func_5(var_3, 0u, Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(82161u, 9u)], 9u)], global3[_wgslsmith_index_u32(16876u, 9u)], 0u), Struct_2(var_3.a, var_3))).x, global3[_wgslsmith_index_u32(max(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 9u)], 9u)]), 9u)], 21009u, u_input.a & 0u) % vec4<u32>(32u)), Struct_2(20066i, var_3));
    return ~abs(~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(var_4.a.wz, vec2<u32>(var_4.a.x, global3[_wgslsmith_index_u32(51927u, 9u)]), var_4.a.xz), vec2<u32>(global3[_wgslsmith_index_u32(1u, 9u)], var_4.a.x)));
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(global1.x, 0i, 2147483647i >> (arg_2.x % 32u), -1i & global1.x), vec4<i32>(~global1.x, -6584i, ~(-4175i), global1.x), true), abs(vec4<i32>(reverseBits(arg_1.a), u_input.b, abs(u_input.b), 1i))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.b, 0i, -1i)), countOneBits(vec4<i32>(arg_1.b.a, u_input.b, global4.a, -19866i) & vec4<i32>(0i, 2147483647i, global4.a, -46864i))), max(-vec4<i32>(u_input.b, 16359i, global1.x, 15456i), vec4<i32>(arg_1.a, global1.x, min(global1.x, global4.a), ~64475i))));
    let var_0 = arg_3.xz;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 1101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)));
    var_1 = vec3<f32>(-862f, 815f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -562f));
    var var_2 = Struct_3(_wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_sub_u32(arg_2.x, 18179u), firstTrailingBit(1u), ~global3[_wgslsmith_index_u32(34320u, 9u)], u_input.a), firstLeadingBit(~vec4<u32>(30910u, 25355u, arg_2.x, global3[_wgslsmith_index_u32(39013u, 9u)])), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), any(vec4<bool>(true, global0.x, false, false)))), reverseBits(select(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u)), vec4<u32>(0u, arg_2.x, 77909u, arg_2.x), global0.x))), func_4(~global1.x <= 28890i, Struct_2(-global1.x, arg_1.b), ~firstLeadingBit(~25708u), select(select(!vec3<bool>(global0.x, true, false), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, arg_2.x), 23u)], select(vec3<bool>(global0.x, global0.x, global0.x), global2[_wgslsmith_index_u32(13284u, 23u)], vec3<bool>(global0.x, true, true))), vec3<bool>(false, !global0.x, true), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(54751u, global3[_wgslsmith_index_u32(473u, 9u)]), _wgslsmith_mod_u32(8342u, global3[_wgslsmith_index_u32(u_input.a, 9u)])), 23u)])));
    return var_2.b.b;
}

fn func_8(arg_0: Struct_1) -> vec4<u32> {
    return abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4696u, 0u, _wgslsmith_mod_u32(18780u, global3[_wgslsmith_index_u32(23116u, 9u)]), min(global3[_wgslsmith_index_u32(0u, 9u)], 4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 46401u), vec2<u32>(1u, u_input.a))), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(global3[_wgslsmith_index_u32(19404u, 9u)], 28869u, u_input.a, 0u)), abs(vec4<u32>(5916u, global3[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, 1u)) & ~vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(14498u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 23>();
    let var_0 = func_8(func_7(1389f, Struct_2(~global1.x << ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 9u)], 9u)], 9u)] | 1u) % 32u), Struct_1(-1i >> (u_input.a % 32u))), func_1(true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -746f), _wgslsmith_f_op_f32(max(-1581f, 1114f)), _wgslsmith_f_op_f32(ceil(-1873f)), -615f)))));
    let var_1 = Struct_2(func_6(vec3<u32>(~var_0.x, select(abs(global3[_wgslsmith_index_u32(4294967295u, 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 9u)], all(vec4<bool>(true, global0.x, false, global0.x))), u_input.a), -(~(~vec4<i32>(global1.x, u_input.b, u_input.b, global1.x)))).a, Struct_1(~27447i));
    let var_2 = var_1.b.a;
    let var_3 = vec2<u32>(firstLeadingBit(~(~_wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(0u, 9u)]))), ~abs(_wgslsmith_clamp_u32(~4294967295u, 25264u, select(27138u, 31139u, global0.x))));
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(9358i, global4.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-var_2, min(-42352i, -42386i)), global1.wz), u_input.b), ~(~vec4<i32>(global1.x, 1i, var_2 << (u_input.a % 32u), _wgslsmith_div_i32(30308i, var_2))));
    let var_4 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-308f, _wgslsmith_f_op_f32(-458f - -937f)) + 205f), Struct_3(min(abs(~vec4<u32>(851u, 4294967295u, var_3.x, 10748u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, var_0.x, 44684u, global3[_wgslsmith_index_u32(26532u, 9u)]), var_0)), Struct_2(_wgslsmith_mult_i32(17597i, -2147483647i >> (var_3.x % 32u)), func_6(~var_0.yzw, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 24902i, 2147483647i), vec4<i32>(global4.a, u_input.b, global1.x, 6771i))))));
    var var_5 = ~0u;
    let var_6 = var_3.x << (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global4.a ^ -2147483647i, 2147483647i, var_4.a) << (~(~reverseBits(var_0.ywz)) % vec3<u32>(32u)), ~(~(~(vec2<i32>(1i, var_2) | vec2<i32>(var_4.a, var_4.b.a)))), var_0);
}

