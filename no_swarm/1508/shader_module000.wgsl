struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(35547u, 0u, 1u, 0u), vec4<u32>(1u, 0u, 4294967295u, 13895u), vec4<u32>(1u, 89935u, 5771u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 44071u, 0u), vec4<u32>(1u, 1u, 64523u, 6506u), vec4<u32>(4294967295u, 2643u, 1u, 79463u), vec4<u32>(0u, 4294967295u, 1u, 27641u), vec4<u32>(0u, 1u, 11316u, 16385u), vec4<u32>(21518u, 22384u, 0u, 64029u), vec4<u32>(12520u, 1u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 47457u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(0u, 22069u, 0u, 5510u), vec4<u32>(41741u, 0u, 41375u, 7389u));

var<private> global3: array<vec3<i32>, 16>;

var<private> global4: array<u32, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    let var_0 = select(vec4<bool>(any(vec4<bool>(arg_0, false, true, false && arg_0)), arg_0, true, !(!arg_0)), select(vec4<bool>(!all(vec4<bool>(arg_0, arg_0, arg_0, true)), countOneBits(arg_1.a) != firstTrailingBit(2147483647i), false, true), !(!(!vec4<bool>(arg_0, false, true, true))), vec4<bool>(all(vec4<bool>(true, arg_0, true, arg_0)) | true, true, !(109f == arg_2.x), true)), arg_0);
    global1 = ~(~(-(~vec4<i32>(1i, -42626i, arg_1.a, global1.x))));
    var var_1 = ~select(vec2<u32>(34650u, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4752u, 15u)], 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)]), 15u)], global2[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)])), vec2<u32>(global4[_wgslsmith_index_u32(countOneBits(~global4[_wgslsmith_index_u32(77318u, 15u)]), 15u)], ~4294967295u), !any(!vec4<bool>(var_0.x, true, false, var_0.x)));
    var var_2 = _wgslsmith_clamp_vec2_i32(global1.xz, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_1.a), global1.xw, global1.xz) << (vec2<u32>(0u, 37049u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-1i, arg_1.a))) & -(~(~vec2<i32>(-11772i, arg_1.a))), _wgslsmith_clamp_vec2_i32(global1.wy, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(2147483647i, -1i)), ~vec2<i32>(arg_1.a, 63769i)), -global1.zy));
    let var_3 = arg_1;
    return 48126u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(46602u, 15u)], 15u)];
    return vec4<i32>(-49226i, _wgslsmith_add_i32(-_wgslsmith_mult_i32(~arg_0.a.x, -67176i & arg_0.e), _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(66284u, 16u)] << (_wgslsmith_mult_vec3_u32(vec3<u32>(80759u, var_0, 305u), vec3<u32>(global4[_wgslsmith_index_u32(0u, 15u)], var_0, 1u)) % vec3<u32>(32u)), reverseBits(_wgslsmith_div_vec3_i32(arg_0.a, global1.zyy)))), ~_wgslsmith_mod_i32(~global1.x, firstLeadingBit(global1.x)) & -arg_0.a.x, 27332i);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    global1 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(arg_2.a, global1.x, -1i, 51610i)), vec4<i32>(select(-30957i, global1.x, false), 2147483647i, 0i, 17200i)), ~reverseBits(vec4<i32>(u_input.a, arg_2.a, u_input.a, global1.x)) >> (max(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(23982u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), global2[_wgslsmith_index_u32(28521u, 15u)]) % vec4<u32>(32u))));
    global1 = func_4(Struct_1(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_2.a, 0i), vec3<i32>(-17036i, global1.x, u_input.a))), global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_3(false, arg_2, vec4<f32>(1000f, -583f, arg_0.x, arg_0.x)), 15u)], 15u)], 15u)], vec4<bool>(false, !arg_1, true, arg_1), ~(arg_2.a ^ 0i)), vec4<bool>(any(select(vec4<bool>(arg_3, arg_3, false, arg_1), vec4<bool>(true, false, true, arg_3), true)), select(arg_0.x <= -436f, arg_3, true || arg_3), false, all(select(vec2<bool>(true, false), vec2<bool>(arg_3, arg_1), arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(step(-1127f, 1030f)), arg_0.x))) ^ select(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(u_input.a, global1.x), _wgslsmith_div_i32(arg_2.a, 34514i), select(arg_2.a, 1i, arg_1), -global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, global1.x, 18614i), vec4<i32>(_wgslsmith_div_i32(7100i, -1i), -2147483647i, ~(-16364i), _wgslsmith_sub_i32(global1.x, global1.x))), true);
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(2147483647i, -1i, arg_2.a) | vec3<i32>(-4396i, 21844i, 1i)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(2147483647i, 7697i, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(15302i, global1.x, -43739i), global3[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_mult_vec3_i32(-global1.ywy, global3[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 0u)), 16u)])), ~global4[_wgslsmith_index_u32(11177u, 15u)] ^ (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 40085u, 73676u), vec3<u32>(1103u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(84014u, 15u)], 15u)])), abs(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14463u, 15u)], 15u)]))), 15u)] >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(16929u, 15u)], global4[_wgslsmith_index_u32(0u, 15u)], 8355u), vec3<u32>(global4[_wgslsmith_index_u32(54982u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 52528u)) % 32u)), 47458u ^ global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(53129u, 53045u, 1u), vec3<u32>(29175u, 81097u, 75072u)), _wgslsmith_div_vec3_u32(max(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37705u, 15u)], 15u)], 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)]), vec3<u32>(global4[_wgslsmith_index_u32(10142u, 15u)], global4[_wgslsmith_index_u32(33878u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)])), ~vec3<u32>(29234u, global4[_wgslsmith_index_u32(96695u, 15u)], global4[_wgslsmith_index_u32(0u, 15u)]))), 15u)], vec4<bool>(!arg_3, true, all(vec3<bool>(arg_1 | arg_1, arg_3, all(vec2<bool>(false, arg_3)))), !(!arg_1)), reverseBits(-(~u_input.a)));
    var var_1 = var_0;
    let var_2 = Struct_2(abs(func_4(Struct_1(_wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(global1.x, global1.x, arg_2.a)), var_1.b, firstLeadingBit(global4[_wgslsmith_index_u32(var_1.b, 15u)]), !vec4<bool>(false, arg_1, arg_1, arg_3), ~(-1i)), var_0.d, vec4<f32>(_wgslsmith_f_op_f32(select(-425f, arg_0.x, false)), _wgslsmith_f_op_f32(trunc(arg_0.x)), -1000f, _wgslsmith_f_op_f32(502f * arg_0.x))).x));
    return !var_1.d;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = -971f;
    global4 = array<u32, 15>();
    global1 = vec4<i32>(-arg_1.x, global1.x, ~_wgslsmith_add_i32(u_input.a, i32(-1i) * -22570i), -8275i);
    global3 = array<vec3<i32>, 16>();
    global4 = array<u32, 15>();
    return -1i;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_1(vec3<i32>(select(_wgslsmith_div_i32(arg_1.a, u_input.a) | func_5(6940i, vec2<i32>(global1.x, global1.x), Struct_1(vec3<i32>(arg_1.a, arg_1.a, arg_1.a), arg_3, arg_3, vec4<bool>(arg_2, false, arg_2, arg_2), arg_0), Struct_1(global1.zxy, 20544u, 1u, vec4<bool>(arg_2, arg_2, false, true), arg_0)), -2147483647i, arg_2), _wgslsmith_div_i32(0i, ~arg_0), 1i), _wgslsmith_dot_vec2_u32(vec2<u32>((72067u | arg_3) & arg_3, 1u), (~vec2<u32>(arg_3, 18019u) >> (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_3, 15u)], 15u)], global4[_wgslsmith_index_u32(arg_3, 15u)]) % vec2<u32>(32u))) << (vec2<u32>(countOneBits(arg_3), 4294967295u) % vec2<u32>(32u))), arg_3 ^ ~arg_3, vec4<bool>(!(all(vec4<bool>(true, arg_2, arg_2, arg_2)) || true), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -39448i, 2147483647i, global1.x), firstTrailingBit(vec4<i32>(arg_1.a, arg_1.a, -34987i, global1.x))) >= -min(u_input.a, u_input.a), false, true), max(85259i, ~arg_0));
    global4 = array<u32, 15>();
    let var_1 = vec3<i32>(-(global1.x ^ firstTrailingBit(firstLeadingBit(50937i))), _wgslsmith_add_i32(~abs(-5852i), arg_1.a), _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(54985u, 16u)], abs(-(~var_0.a))));
    var var_2 = 486f;
    var var_3 = 1f;
    return Struct_2(-var_0.a.x);
}

fn func_1() -> u32 {
    let var_0 = Struct_2(global1.x);
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 28669u), 15u)];
    global0 = 1057f;
    global0 = -1099f;
    var var_2 = func_6(global1.x, Struct_2(func_5(firstTrailingBit(i32(-1i) * -19942i), -vec2<i32>(21294i, u_input.a) | min(global1.zy, global1.xy), Struct_1(vec3<i32>(global1.x, -1i, -1i), reverseBits(4294967295u), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 4294967295u), vec4<bool>(true, true, false, true), ~(-1i)), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, var_0.a), vec3<i32>(u_input.a, 12108i, 0i)), global4[_wgslsmith_index_u32(0u, 15u)], 38101u, func_2(vec2<f32>(-1159f, 1552f), true, Struct_2(-27889i), false), countOneBits(u_input.a)))), true, 49276u);
    return 52518u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 16>();
    let var_0 = vec4<bool>(true, true, any(vec4<bool>(true, !all(vec4<bool>(true, false, true, true)), true & any(vec4<bool>(false, true, true, false)), false)), true);
    var var_1 = vec3<u32>(~_wgslsmith_add_u32(~(~global4[_wgslsmith_index_u32(4294967295u, 15u)]), 1u), ~(abs(global4[_wgslsmith_index_u32(12768u, 15u)]) | 11416u), ~(~(1u << (global4[_wgslsmith_index_u32(func_1(), 15u)] % 32u))));
    var var_2 = _wgslsmith_div_i32(global1.x, _wgslsmith_mod_i32(u_input.a, -1i));
    global4 = array<u32, 15>();
    var var_3 = func_6(~max(0i, -43171i), Struct_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 6816i, -27474i, u_input.a) >> (vec4<u32>(1u, 1u, 88149u, 0u) % vec4<u32>(32u)), ~vec4<i32>(global1.x, 11646i, u_input.a, 0i))), true, min(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~75030u, 102536u), 15u)], max(1u, var_1.x) & 0u) | (~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(7220u, 46857u), 15u)] >> (var_1.x % 32u)));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2614f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -591f)))))), _wgslsmith_f_op_f32(f32(-1f) * -120f));
    global2 = array<vec4<u32>, 15>();
    let var_5 = -1268f;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(func_4(Struct_1(global3[_wgslsmith_index_u32(4688u, 16u)], var_1.x, 109359u, vec4<bool>(var_0.x, true, var_0.x, false), global1.x), !var_0, vec4<f32>(873f, var_5, var_5, 197f)).yyx, _wgslsmith_add_u32(~var_1.x, ~global4[_wgslsmith_index_u32(var_1.x, 15u)]), ~(~29310u), var_0, reverseBits(~32334i)), var_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) * _wgslsmith_f_op_f32(-var_5)), var_5, _wgslsmith_f_op_f32(floor(var_5)), -1000f)).ww, countOneBits(vec4<u32>(~var_1.x, 26090u, global4[_wgslsmith_index_u32(var_1.x, 15u)], global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_1.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)]), 15u)])));
}

