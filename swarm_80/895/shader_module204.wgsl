struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(971f, -880f, 594f, -2546f, -2159f, 1605f, -694f, 695f, 1451f, 362f, -125f, -1000f, 2177f, 373f, 589f, -1000f, 367f, 1352f, 173f);

var<private> global1: array<u32, 16> = array<u32, 16>(0u, 0u, 4966u, 56123u, 24442u, 7005u, 208u, 24019u, 18841u, 669u, 4294967295u, 24140u, 4294967295u, 41087u, 1u, 76533u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(abs(vec3<i32>(u_input.a.x, max(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -u_input.a.x), ~(i32(-1i) * -2147483647i))), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32162u, 16u)], 16u)], 16u)], 16u)]), 1u), 16u)], 19u)])), abs(-reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, -23840i))));
    let var_1 = !any(vec3<bool>(!all(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(1048f, 706f, false)) >= -471f));
    let var_2 = vec2<bool>(false, all(!select(!vec2<bool>(var_1, true), select(vec2<bool>(false, true), vec2<bool>(var_1, var_1), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)))));
    var var_3 = Struct_1(countOneBits(var_0.c.zxz), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-747f + global0[_wgslsmith_index_u32(5986u, 19u)]))), global0[_wgslsmith_index_u32(0u, 19u)])), -vec4<i32>(var_0.a.x, _wgslsmith_add_i32(~u_input.a.x, -40731i), i32(-1i) * -var_0.a.x, abs(-1i)));
    var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1523f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -549f)))), ~(vec4<i32>(-1i) * -var_0.c));
    return ~(max(vec4<i32>(_wgslsmith_clamp_i32(var_3.a.x, 1i, 6349i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.c.x, u_input.a.x, var_0.a.x), var_3.c), min(u_input.a.x, 9398i), 16599i), firstTrailingBit(-vec4<i32>(-2147483647i, -26514i, var_3.c.x, 55751i))) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 1u, global1[_wgslsmith_index_u32(73504u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13035u, 16u)], 16u)], 16u)])), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(60138u, 1u, 13939u, 4294967295u), vec4<u32>(23638u, 0u, 0u, global1[_wgslsmith_index_u32(22206u, 16u)]), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30802u, 16u)], 16u)], 0u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_4) -> u32 {
    global1 = array<u32, 16>();
    global0 = array<f32, 19>();
    var var_0 = arg_3;
    var var_1 = arg_3.b.e;
    let var_2 = -1847f;
    return firstTrailingBit(global1[_wgslsmith_index_u32(arg_3.a, 16u)]);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(abs(17559u), _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 16u)] >> (0u % 32u))), reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 24145u)) ^ ~(~vec2<u32>(101393u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)]))), vec2<u32>(min(firstTrailingBit(0u), global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]), 16u)]), _wgslsmith_sub_u32(61750u, _wgslsmith_add_u32(0u, 0u) | _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32248u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(66759u, 16u)]))));
    global1 = array<u32, 16>();
    let var_1 = Struct_4(func_4(Struct_3(Struct_1(vec3<i32>(arg_0.x, 16112i, -1i), 669f, func_3()), Struct_2(~u_input.a, vec2<i32>(u_input.a.x, 73574i), Struct_1(vec3<i32>(-10057i, arg_2, 0i), -877f, vec4<i32>(4548i, arg_2, -1i, 9567i))), ~arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 134f, global0[_wgslsmith_index_u32(var_0.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]) * vec4<f32>(583f, global0[_wgslsmith_index_u32(16496u, 19u)], 805f, 1299f))), Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), arg_0.yy), u_input.a, Struct_1(vec3<i32>(11033i, -1315i, arg_0.x), 983f, vec4<i32>(arg_0.x, u_input.a.x, 2147483647i, arg_2)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(877f, arg_1.x, global0[_wgslsmith_index_u32(var_0.x, 19u)]), vec3<f32>(389f, -1758f, -1110f))) + vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21397u, 16u)], 16u)], 19u)], -867f, arg_1.x)))), vec4<bool>(true, any(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), true), Struct_4(_wgslsmith_mod_u32(reverseBits(27541u), 92273u), Struct_3(Struct_1(arg_0, arg_1.x, vec4<i32>(u_input.a.x, 26613i, -1i, 0i)), Struct_2(vec2<i32>(arg_0.x, u_input.a.x), vec2<i32>(22352i, -1i), Struct_1(vec3<i32>(7178i, 2147483647i, arg_2), arg_1.x, vec4<i32>(arg_2, u_input.a.x, 1i, 0i))), arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(37529u, 19u)], -1957f, 259f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39605u, 16u)], 19u)])), Struct_2(arg_0.xz, u_input.a, Struct_1(vec3<i32>(0i, -4976i, arg_2), 2113f, vec4<i32>(0i, u_input.a.x, arg_0.x, 19988i)))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 28049i, u_input.a.x, 8257i)), vec4<i32>(38185i, 75638i, arg_0.x, u_input.a.x)), false, -354f)), Struct_3(Struct_1(func_3().wwx, _wgslsmith_f_op_f32(-arg_1.x), vec4<i32>(-1i) * -vec4<i32>(22237i, arg_0.x, 1423i, arg_2)), Struct_2(vec2<i32>(-46838i, 2147483647i), -vec2<i32>(-46421i, -27055i), Struct_1(vec3<i32>(7314i, 0i, -1i), 2123f, ~vec4<i32>(arg_2, arg_0.x, arg_2, u_input.a.x))), u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, 878f, 584f, 187f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47168u, 16u)], 19u)], -628f, arg_1.x, arg_1.x)))), Struct_2(arg_0.yz, _wgslsmith_div_vec2_i32(firstTrailingBit(arg_0.xy), -u_input.a), Struct_1(func_3().yzz, _wgslsmith_f_op_f32(1157f + 2036f), firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, 1i, 0i))))), vec4<i32>(-countOneBits(arg_2), arg_2, reverseBits(firstLeadingBit(7516i)) ^ select(-60905i, _wgslsmith_clamp_i32(39111i, -10775i, -26492i), all(vec3<bool>(false, true, true))), -52758i), true, _wgslsmith_f_op_f32(min(arg_1.x, -340f)));
    var var_2 = -12801i;
    var var_3 = firstLeadingBit(vec3<u32>(109881u, reverseBits(_wgslsmith_mult_u32(1u, var_1.a)), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 16u)], 1u)) & (~vec3<u32>(var_1.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], var_1.a) << (countOneBits(~vec3<u32>(var_0.x, var_1.a, 0u)) % vec3<u32>(32u))));
    return var_0.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = min(max(~_wgslsmith_div_vec4_u32(vec4<u32>(93875u, arg_0.x, arg_0.x, arg_2.x), vec4<u32>(1u, arg_2.x, arg_0.x, 34482u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(7632u, 16u)], 81726u, arg_2.x, 102516u)), ~vec4<u32>(arg_0.x, global1[_wgslsmith_index_u32(2854u, 16u)], global1[_wgslsmith_index_u32(arg_0.x, 16u)], global1[_wgslsmith_index_u32(0u, 16u)])) << (arg_2 % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 28851u, 11354u, ~reverseBits(55799u)), vec4<u32>(_wgslsmith_sub_u32(81588u >> (0u % 32u), 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.x, 1u), vec2<u32>(0u, 36590u) & arg_2.zx), arg_0.x, arg_2.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.xw - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -792f)), _wgslsmith_f_op_vec2_f32(-arg_1.xx)));
    var var_2 = Struct_2(-u_input.a, _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(~_wgslsmith_sub_i32(u_input.a.x, -46604i), u_input.a.x)), Struct_1(vec3<i32>((i32(-1i) * -8015i) & ~u_input.a.x, ~(i32(-1i) * -2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(12400i, 1i))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~4294967295u, 19u)], _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, 792f), arg_1.x), any(vec4<bool>(false, arg_3, arg_3, false)))), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, 53153i, -1i, 86160i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, 27246i, u_input.a.x, -1i)), -vec4<i32>(33378i, 1i, u_input.a.x, u_input.a.x))));
    var var_3 = Struct_4(firstTrailingBit(func_4(Struct_3(var_2.c, Struct_2(vec2<i32>(var_2.a.x, u_input.a.x), vec2<i32>(57673i, var_2.b.x), Struct_1(vec3<i32>(var_2.b.x, -49000i, u_input.a.x), global0[_wgslsmith_index_u32(arg_0.x, 19u)], vec4<i32>(var_2.a.x, -61244i, var_2.c.c.x, var_2.a.x))), ~var_2.a.x, arg_1, Struct_2(var_2.c.a.xx, vec2<i32>(u_input.a.x, u_input.a.x), var_2.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 19u)], var_2.c.b, arg_1.x))), vec4<bool>(true, any(vec4<bool>(true, arg_3, arg_3, arg_3)), !arg_3, true), Struct_4(~4294967295u, Struct_3(Struct_1(var_2.c.c.xyx, 850f, vec4<i32>(8601i, u_input.a.x, u_input.a.x, -1i)), Struct_2(vec2<i32>(u_input.a.x, var_2.a.x), var_2.b, var_2.c), 2147483647i, arg_1, Struct_2(var_2.b, vec2<i32>(var_2.a.x, u_input.a.x), var_2.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(-95989i, -1i, u_input.a.x, -28719i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -29735i)), arg_3, -1053f))), Struct_3(var_2.c, Struct_2(countOneBits(var_2.a), ~var_2.b >> (_wgslsmith_sub_vec2_u32(arg_2.zw, arg_0.yx) % vec2<u32>(32u)), var_2.c), _wgslsmith_div_i32(var_2.b.x, -37644i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-912f, -1407f, 1000f, var_2.c.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(198f, var_2.c.b, var_2.c.b, -790f))) - _wgslsmith_f_op_vec4_f32(abs(arg_1))), Struct_2(-_wgslsmith_clamp_vec2_i32(var_2.a, vec2<i32>(u_input.a.x, var_2.b.x), vec2<i32>(-1i, 0i)), min(vec2<i32>(-733i, u_input.a.x), vec2<i32>(36998i, 18447i)) | var_2.a, var_2.c)), countOneBits(var_2.c.c), any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(arg_3, arg_3, true), false), select(vec3<bool>(arg_3, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), arg_3), !select(vec3<bool>(true, arg_3, false), vec3<bool>(true, true, arg_3), vec3<bool>(false, arg_3, arg_3)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(arg_3, true, false)), !vec3<bool>(true, true, arg_3), vec3<bool>(true, arg_3, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c.b * 570f))) + _wgslsmith_f_op_f32(f32(-1f) * -1616f))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(floor(-495f)), var_3.b.e.c.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_3.b.b.c.b, _wgslsmith_f_op_f32(exp2(arg_1.x)))))))));
    return var_2.c;
}

fn func_1() -> u32 {
    let var_0 = func_5(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(16793u, 16u)], 16u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(65670u, 16u)], 0u), 30803u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), select(vec4<u32>(27411u, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], 38120u), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(2010u, 16u)], global1[_wgslsmith_index_u32(13543u, 16u)], 108279u), vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7701u, 16u)], 16u)], 19u)] * -849f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(75192u, 19u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2093f * -1607f))))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46548u, 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 44916u, global1[_wgslsmith_index_u32(26663u, 16u)]), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 33229u, global1[_wgslsmith_index_u32(54463u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 0u, 3401u, 23146u))), 58521u), global1[_wgslsmith_index_u32(func_2(vec3<i32>(-1i, -18462i, -2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-823f, -2459f) * vec2<f32>(global0[_wgslsmith_index_u32(89831u, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1702u, 16u)], 16u)], 16u)], 19u)])), 18189i), 16u)] >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27716u, 16u)], 16u)], 16u)], 16u)], 16u)], 20769u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18672u, 16u)], 16u)], 16u)], 16u)], 4294967295u)), vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u)), 16u)] % 32u), ~_wgslsmith_mult_u32(~97150u, select(global1[_wgslsmith_index_u32(51873u, 16u)], 24510u, true)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(15711u, global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33553u, 16u)], 16u)]), 16u)]), ~global1[_wgslsmith_index_u32(~4294967295u, 16u)]), 16u)], 16u)]), all(vec2<bool>(true, true)));
    var var_1 = Struct_3(Struct_1(max(_wgslsmith_clamp_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, var_0.a.x, 39199i), vec3<i32>(4109i, u_input.a.x, u_input.a.x)), -(~var_0.c.xyz)), _wgslsmith_f_op_f32(2340f * _wgslsmith_div_f32(-1359f, var_0.b)), var_0.c), Struct_2(firstLeadingBit(vec2<i32>(~16361i, -36526i)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(54911i, -383i), vec2<i32>(var_0.a.x, var_0.c.x)), vec2<i32>(u_input.a.x, -u_input.a.x)), Struct_1(-var_0.c.wwy, -1000f, vec4<i32>(u_input.a.x, u_input.a.x, -u_input.a.x, countOneBits(u_input.a.x)))), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(_wgslsmith_add_i32(-699i, var_0.c.x), firstLeadingBit(var_0.c.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.a, -var_0.a.yx), _wgslsmith_div_vec2_i32(min(vec2<i32>(var_0.a.x, -13080i), var_0.a.xy), vec2<i32>(-16605i, 53676i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-227f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 19u)], var_0.b, -1665f), vec4<f32>(-679f, 373f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8711u, 16u)], 19u)], 228f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], 250f, 3018f, 1004f) * vec4<f32>(-1160f, var_0.b, var_0.b, var_0.b))) - vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 19u)])), -278f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 19u)], 1982f), _wgslsmith_f_op_f32(var_0.b * -892f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-913f, -1422f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33397u, 16u)], 16u)], 19u)], -339f), vec4<f32>(-1000f, 769f, var_0.b, -467f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5059u, 16u)], 19u)], 338f, -1000f, 1037f) + vec4<f32>(856f, var_0.b, global0[_wgslsmith_index_u32(0u, 19u)], -225f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, var_0.b, 1000f, -1441f))))), Struct_2(vec2<i32>(-2147483647i, -1i), vec2<i32>(-1i, firstLeadingBit(-1i)), func_5(vec4<u32>(0u, 81513u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 98295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54984u, 16u)], 16u)], 16u)], 9913u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(26831u, 16u)], 24029u, 1u)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15398u, 16u)], 16u)], 16u)], 16u)], 16u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48461u, 16u)], 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 19u)], 594f, -414f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, 516f, var_0.b, 810f))), false)), ~vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12342u, 16u)], 16u)], 16u)], 16u)], 16u)], 34230u, 0u), true)));
    var_1 = Struct_3(var_0, var_1.b, 1i, _wgslsmith_f_op_vec4_f32(var_1.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.d)))), var_1.b);
    var var_2 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(33876u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84011u, 16u)], 16u)], 16u)], 16u)], 16u)]), vec2<u32>(49134u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])) & ~vec2<u32>(82579u, 1u), ~(~select(vec2<u32>(14088u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)]), vec2<u32>(66360u, 147477u), vec2<bool>(false, true)))), 16u)], Struct_3(var_0, var_1.b, -4984i, var_1.d, Struct_2(var_1.a.a.xy, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.c.zw, vec2<i32>(47170i, 1i)), vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(~vec3<i32>(u_input.a.x, u_input.a.x, 1i), _wgslsmith_f_op_f32(exp2(var_1.d.x)), vec4<i32>(-43223i, var_0.a.x, u_input.a.x, u_input.a.x)))), select(var_0.c, ~vec4<i32>(firstLeadingBit(-720i), var_0.a.x | var_1.c, -1568i, _wgslsmith_div_i32(47354i, var_0.c.x)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))) != (1i < _wgslsmith_add_i32(var_1.b.a.x, var_0.c.x))), !(!(!all(vec4<bool>(false, true, false, true)))), 244f);
    let var_3 = Struct_1(~(-vec3<i32>(_wgslsmith_div_i32(37122i, 23182i), var_2.b.e.b.x, var_1.e.c.c.x)), -717f, _wgslsmith_clamp_vec4_i32(max(~(-var_1.b.c.c), _wgslsmith_add_vec4_i32(firstTrailingBit(var_2.c), vec4<i32>(u_input.a.x, -61i, 1i, 20625i) << (vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 16u)], 1u, global1[_wgslsmith_index_u32(25490u, 16u)]) % vec4<u32>(32u)))), vec4<i32>(i32(-1i) * -var_2.c.x, -(var_1.a.a.x << (3122u % 32u)), ~1i | _wgslsmith_div_i32(var_2.c.x, var_1.b.c.c.x), func_3().x), ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c, var_2.b.e.c.c), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, 0i, var_1.e.c.a.x, 1i), var_2.c))));
    return _wgslsmith_sub_u32(~abs(global1[_wgslsmith_index_u32(~1u, 16u)]), abs(global1[_wgslsmith_index_u32(0u, 16u)] >> (max(abs(0u), 16509u >> (var_2.a % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 16u)], 16u)]), ~vec3<u32>(1u, 1u, 1u)), 16u)], 16u)], func_1(), ~(countOneBits(99284u) << (global1[_wgslsmith_index_u32(func_4(Struct_3(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 19u)], vec4<i32>(60391i, u_input.a.x, 1i, u_input.a.x)), Struct_2(u_input.a, vec2<i32>(-14978i, 1i), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 19u)], vec4<i32>(u_input.a.x, -20916i, 1i, u_input.a.x))), u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59269u, 16u)], 19u)], -208f, -1239f, 150f), Struct_2(u_input.a, vec2<i32>(0i, u_input.a.x), Struct_1(vec3<i32>(-1i, u_input.a.x, u_input.a.x), 1247f, vec4<i32>(u_input.a.x, u_input.a.x, 6513i, 62530i)))), vec3<f32>(-426f, global0[_wgslsmith_index_u32(4294967295u, 19u)], -1000f), vec4<bool>(false, false, true, true), Struct_4(global1[_wgslsmith_index_u32(0u, 16u)], Struct_3(Struct_1(vec3<i32>(-1i, 0i, u_input.a.x), global0[_wgslsmith_index_u32(1u, 19u)], vec4<i32>(43325i, 6430i, 3592i, -40946i)), Struct_2(vec2<i32>(u_input.a.x, 1i), u_input.a, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16007u, 16u)], 19u)], vec4<i32>(20064i, u_input.a.x, -53296i, -54679i))), -2147483647i, vec4<f32>(-490f, 479f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 19u)]), Struct_2(u_input.a, vec2<i32>(51210i, 2147483647i), Struct_1(vec3<i32>(-2147483647i, -45388i, u_input.a.x), global0[_wgslsmith_index_u32(1u, 19u)], vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)))), vec4<i32>(-68937i, 1i, 38051i, -2147483647i), true, -1025f)), 16u)] % 32u))), 19u)];
    var var_1 = reverseBits(~(~reverseBits(abs(vec2<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 4294967295u)))));
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    var var_2 = Struct_4(24412u, Struct_3(func_5(vec4<u32>(global1[_wgslsmith_index_u32(12165u, 16u)], global1[_wgslsmith_index_u32(0u ^ var_1.x, 16u)], _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(81187u, 16u)]), func_4(Struct_3(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -1i), global0[_wgslsmith_index_u32(1u, 19u)], vec4<i32>(-19204i, u_input.a.x, 1i, u_input.a.x)), Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, Struct_1(vec3<i32>(0i, 0i, 1i), 241f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i))), u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 19u)], 1409f, -1056f, global0[_wgslsmith_index_u32(var_1.x, 19u)]), Struct_2(vec2<i32>(u_input.a.x, -28376i), u_input.a, Struct_1(vec3<i32>(-56513i, u_input.a.x, -1i), -271f, vec4<i32>(1i, 0i, 0i, u_input.a.x)))), vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], -757f), vec4<bool>(true, false, false, true), Struct_4(12050u, Struct_3(Struct_1(vec3<i32>(u_input.a.x, 5622i, u_input.a.x), -509f, vec4<i32>(-2147483647i, u_input.a.x, 51957i, -20784i)), Struct_2(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(2147483647i, -2147483647i), Struct_1(vec3<i32>(u_input.a.x, -14589i, -32587i), -2764f, vec4<i32>(-1i, u_input.a.x, 7606i, -54743i))), 35946i, vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21333u, 16u)], 16u)], 19u)], global0[_wgslsmith_index_u32(61739u, 19u)], global0[_wgslsmith_index_u32(91202u, 19u)]), Struct_2(vec2<i32>(-4772i, u_input.a.x), u_input.a, Struct_1(vec3<i32>(2147483647i, u_input.a.x, 16529i), -1898f, vec4<i32>(-24622i, 0i, -39868i, u_input.a.x)))), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), true, global0[_wgslsmith_index_u32(33811u, 19u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 19u)], global0[_wgslsmith_index_u32(var_1.x, 19u)], -1004f, 410f) * vec4<f32>(172f, -428f, -1042f, 421f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(16914u, 19u)], -1201f, -839f, 1000f))), firstLeadingBit(max(vec4<u32>(var_1.x, 7664u, 4294967295u, var_1.x), vec4<u32>(global1[_wgslsmith_index_u32(42214u, 16u)], global1[_wgslsmith_index_u32(24571u, 16u)], var_1.x, var_1.x))), false || all(vec2<bool>(true, true))), Struct_2(vec2<i32>(-u_input.a.x, u_input.a.x), func_5(~vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18385u, 16u)], 16u)], var_1.x, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 16u)], 16u)], 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 16u)], 16u)], 19u)], -654f)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], var_1.x), vec4<u32>(1u, 36804u, var_1.x, 1u)), any(vec2<bool>(true, true))).c.xx, func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(var_1.x, 16u)], 0u, 15522u), vec4<u32>(var_1.x, 1u, global1[_wgslsmith_index_u32(1u, 16u)], 1u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(977f, global0[_wgslsmith_index_u32(var_1.x, 19u)], -385f, -2635f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], 1000f, global0[_wgslsmith_index_u32(var_1.x, 19u)], 136f), vec4<bool>(true, false, true, false))), vec4<u32>(0u, global1[_wgslsmith_index_u32(var_1.x, 16u)], 77989u, 42143u), true)), -min(-35111i, -1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], 1112f, 519f, global0[_wgslsmith_index_u32(19511u, 19u)])), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_1.x, 19u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(49313u, var_1.x), 19u)], _wgslsmith_div_f32(1000f, global0[_wgslsmith_index_u32(11289u, 19u)]), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 19u)]), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), Struct_2(u_input.a | vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, func_5(~vec4<u32>(16514u, 1548u, global1[_wgslsmith_index_u32(16783u, 16u)], global1[_wgslsmith_index_u32(91401u, 16u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], -170f, 123f, -534f))), select(vec4<u32>(var_1.x, 0u, var_1.x, 0u), vec4<u32>(global1[_wgslsmith_index_u32(26438u, 16u)], var_1.x, global1[_wgslsmith_index_u32(4592u, 16u)], var_1.x), vec4<bool>(false, false, true, true)), true))), ~(-abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6341i))), false, _wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(-310f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 19u)]))))));
    let var_3 = Struct_2(-select(~vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 2147483647i)), !select(vec2<bool>(true, var_2.d), vec2<bool>(var_2.d, false), false)), -select(vec2<i32>(u_input.a.x, ~(-14838i)), (var_2.c.wy & vec2<i32>(var_2.c.x, -1i)) | select(vec2<i32>(2147483647i, var_2.c.x), u_input.a, vec2<bool>(var_2.d, var_2.d)), any(select(vec2<bool>(var_2.d, var_2.d), vec2<bool>(true, true), vec2<bool>(var_2.d, var_2.d)))), func_5(vec4<u32>(~var_1.x, ~var_1.x << (~42155u % 32u), global1[_wgslsmith_index_u32(func_4(var_2.b, var_2.b.d.yxx, vec4<bool>(var_2.d, true, var_2.d, var_2.d), Struct_4(4294967295u, Struct_3(var_2.b.a, Struct_2(vec2<i32>(0i, u_input.a.x), u_input.a, Struct_1(var_2.b.e.c.a, -917f, var_2.c)), -34760i, var_2.b.d, Struct_2(var_2.b.b.b, var_2.c.yy, Struct_1(vec3<i32>(var_2.b.e.a.x, 63717i, u_input.a.x), global0[_wgslsmith_index_u32(var_2.a, 19u)], vec4<i32>(u_input.a.x, var_2.c.x, var_2.c.x, u_input.a.x)))), var_2.c, var_2.d, global0[_wgslsmith_index_u32(var_2.a, 19u)])), 16u)], var_2.a), vec4<f32>(-1147f, _wgslsmith_f_op_f32(429f - _wgslsmith_div_f32(-347f, 444f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 19u)]) + 405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1752f + global0[_wgslsmith_index_u32(36504u, 19u)]) + global0[_wgslsmith_index_u32(1u, 19u)])), abs(~countOneBits(vec4<u32>(var_1.x, 36458u, 6141u, 4294967295u))), var_2.d));
    global1 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.d.yw, ~(abs(vec3<u32>(0u, 69145u, var_2.a)) & (vec3<u32>(22971u, 26546u, var_1.x) ^ vec3<u32>(var_2.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 16u)], 16u)], 35243u))) >> (~vec3<u32>(0u, var_2.a, firstLeadingBit(global1[_wgslsmith_index_u32(var_2.a, 16u)])) % vec3<u32>(32u)), var_2.a);
}

