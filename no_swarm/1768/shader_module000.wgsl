struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(23563u, 0u, 16353u, 1u);

var<private> global1: array<f32, 18>;

var<private> global2: array<f32, 24> = array<f32, 24>(-327f, -1489f, 951f, -520f, 504f, 655f, -110f, -429f, -152f, -646f, -1958f, 515f, -986f, 1263f, -593f, 487f, 984f, 1000f, 1000f, 338f, -222f, 505f, -1000f, -586f);

var<private> global3: f32;

var<private> global4: array<i32, 1>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = u_input.a.x;
    var var_1 = all(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))));
    let var_2 = vec4<u32>(62055u, _wgslsmith_div_u32(~firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 24032u)), u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~global0.x << (countOneBits(20602u) % 32u), 195356u), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(0u << (global0.x % 32u), global0.x)), ~9164u), ((~global0.x & (50387u << (1u % 32u))) & ~(~4294967295u)) | (min(global0.x ^ u_input.a.x, 4294967295u) >> (~_wgslsmith_mod_u32(36124u, global0.x) % 32u)));
    let var_3 = select(_wgslsmith_add_vec3_i32(vec3<i32>(7480i, global4[_wgslsmith_index_u32(~var_2.x, 1u)], _wgslsmith_mod_i32(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(3996u, 1u)], global4[_wgslsmith_index_u32(var_2.x, 1u)]), global4[_wgslsmith_index_u32(var_2.x | 0u, 1u)])), countOneBits(countOneBits(vec3<i32>(0i, -11584i, global4[_wgslsmith_index_u32(34026u, 1u)]) & vec3<i32>(global4[_wgslsmith_index_u32(var_2.x, 1u)], -1i, global4[_wgslsmith_index_u32(var_2.x, 1u)])))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 8216i), vec2<i32>(-5582i, global4[_wgslsmith_index_u32(global0.x, 1u)]) ^ vec2<i32>(global4[_wgslsmith_index_u32(var_2.x, 1u)], -2147483647i)), -max(global4[_wgslsmith_index_u32(global0.x, 1u)], -1i), 1i), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global4[_wgslsmith_index_u32(42155u, 1u)], -1i, global4[_wgslsmith_index_u32(37117u, 1u)]), vec3<i32>(global4[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(global0.x, 1u)]), vec3<bool>(true, true, true)), vec3<i32>(66461i, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], -40377i) << (var_2.zyy % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], -2147483647i), vec3<i32>(2147483647i, 1i, global4[_wgslsmith_index_u32(4294967295u, 1u)])), firstLeadingBit(vec3<i32>(-12333i, -2147483647i, -34475i)))), true);
    let var_4 = Struct_1(true | !(var_2.x < var_2.x), _wgslsmith_clamp_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(var_3.x, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], -11648i, global4[_wgslsmith_index_u32(u_input.a.x, 1u)]) & vec4<i32>(0i, -2147483647i, 1i, -2147483647i))), firstTrailingBit(_wgslsmith_mod_vec4_i32(select(vec4<i32>(global4[_wgslsmith_index_u32(1u, 1u)], 17200i, var_3.x, global4[_wgslsmith_index_u32(1u, 1u)]), vec4<i32>(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)], var_3.x, global4[_wgslsmith_index_u32(20372u, 1u)]), false), vec4<i32>(71931i, -2147483647i, -2147483647i, var_3.x) ^ vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], global4[_wgslsmith_index_u32(0u, 1u)], 16721i, 6667i))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global4[_wgslsmith_index_u32(1u, 1u)], 31884i, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 1i)), min(vec4<i32>(var_3.x, global4[_wgslsmith_index_u32(4294967295u, 1u)], 0i, 21021i), vec4<i32>(var_3.x, var_3.x, global4[_wgslsmith_index_u32(var_2.x, 1u)], 2147483647i))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], var_3.x, -9714i, 1i), vec4<i32>(-1i, global4[_wgslsmith_index_u32(69637u, 1u)], -54437i, -25903i)), -vec4<i32>(var_3.x, var_3.x, 50619i, global4[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_2.x, 2407u), var_2.x, _wgslsmith_sub_u32(global0.x, u_input.a.x)), var_2.yyw) ^ ~(~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 39248u, var_2.x), vec3<u32>(global0.x, global0.x, 35556u))));
    return var_2.wyw;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = Struct_5(vec2<u32>(u_input.a.x, abs(u_input.a.x)), !(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 18u)] * 1511f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(697f + -657f))), _wgslsmith_add_vec3_u32(~max(global0.zww, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), abs(func_3())));
    global1 = array<f32, 18>();
    var_0 = abs(~u_input.a.x);
    var var_2 = !(!(!(!select(vec4<bool>(true, false, true, arg_2), vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(var_1.b, var_1.b, arg_2, true)))));
    return Struct_1(!any(var_2.yz), -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, 58519i, 34479i, global4[_wgslsmith_index_u32(arg_0, 1u)]) ^ vec4<i32>(26844i, global4[_wgslsmith_index_u32(0u, 1u)], -1i, 2147483647i)), firstTrailingBit(min(vec4<i32>(2147483647i, 0i, 0i, 2147483647i), vec4<i32>(global4[_wgslsmith_index_u32(global0.x, 1u)], -15328i, global4[_wgslsmith_index_u32(global0.x, 1u)], 0i)))), abs(~var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_1 {
    global2 = array<f32, 24>();
    var var_0 = _wgslsmith_mod_vec3_i32(arg_0.b.zzw, ~vec3<i32>(arg_2.b.b.b.x, arg_2.b.b.b.x & (i32(-1i) * -12270i), arg_2.b.b.b.x));
    global4 = array<i32, 1>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(8545u, 31613u), func_2(4294967295u, -595f, arg_2.c.a).c.x) | ~max(arg_2.b.b.c.x, u_input.a.x), u_input.a.x) | _wgslsmith_mult_u32(arg_0.c.x, max(_wgslsmith_mult_u32(4294967295u & u_input.a.x, ~1u), ~203u)), 24u)];
    var var_2 = Struct_2(~(~abs(arg_2.a.b.wxz)), Struct_1(!any(vec4<bool>(false, arg_1, false, true)) & arg_0.a, _wgslsmith_add_vec4_i32(~vec4<i32>(var_0.x, arg_0.b.x, 0i, -50538i), abs(vec4<i32>(-1i, var_0.x, arg_0.b.x, var_0.x))), ~(vec3<u32>(54341u, arg_0.c.x, arg_2.b.b.c.x) << (firstTrailingBit(arg_2.a.c) % vec3<u32>(32u)))));
    return arg_2.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4) -> bool {
    global2 = array<f32, 24>();
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(firstLeadingBit(0i), -1i ^ global4[_wgslsmith_index_u32(4294967295u, 1u)]), i32(-1i) * -1i), _wgslsmith_mod_i32(-2147483647i, global4[_wgslsmith_index_u32(abs(65169u), 1u)]), -countOneBits(arg_1.c.b.x), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_1.b.b.b.x, func_2(arg_1.c.c.x, global2[_wgslsmith_index_u32(~52876u, 24u)], true).b.x), ~_wgslsmith_add_i32(52387i, 1i), arg_1.c.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-335f, 1232f), vec2<f32>(global1[_wgslsmith_index_u32(arg_1.b.b.c.x, 18u)], -1000f), arg_1.a.a)), vec2<f32>(364f, -1218f), true)) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(-1143f, global2[_wgslsmith_index_u32(u_input.a.x, 24u)]))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(1u, 24u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(23963u, 24u)]))) + vec2<f32>(-746f, global2[_wgslsmith_index_u32(32050u, 24u)]))) - vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(0u, 31123u), 18u)]), 794f)));
    global0 = min(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 1u, 1u, 73150u) ^ min(vec4<u32>(arg_1.a.c.x, arg_1.b.b.c.x, 0u, 1u), vec4<u32>(u_input.a.x, 113313u, global0.x, 1u))), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, arg_1.a.c.x, 0u, arg_1.a.c.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, arg_1.b.b.c.x), ~vec4<u32>(36352u, 0u, 5775u, 1u)), vec4<u32>(1u, global0.x, 0u, arg_1.b.b.c.x) << (max(vec4<u32>(arg_1.b.b.c.x, 1u, 4294967295u, 4294967295u), vec4<u32>(arg_1.c.c.x, global0.x, 28057u, 4294967295u)) % vec4<u32>(32u)))), select(min(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(108653u, u_input.a.x, 1u, 4294967295u)), firstLeadingBit(vec4<u32>(global0.x, u_input.a.x, u_input.a.x, 81233u))), ~vec4<u32>(arg_1.a.c.x, 1u, 36934u, u_input.a.x)), reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global0.x, 0u, u_input.a.x), vec4<u32>(arg_1.c.c.x, arg_1.a.c.x, 43473u, 64899u))), vec4<bool>(arg_1.c.a, arg_1.b.b.a, global1[_wgslsmith_index_u32(select(1u, arg_1.a.c.x, arg_1.a.a), 18u)] >= 414f, func_2(func_2(38418u, -1142f, false).c.x, _wgslsmith_f_op_f32(var_1.x + var_1.x), any(vec4<bool>(arg_1.c.a, arg_1.c.a, arg_1.c.a, false))).a)));
    let var_2 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-var_0.zz, _wgslsmith_div_vec2_i32(var_0.xw, arg_0.wx), var_0.zx >> (arg_1.b.b.c.zz % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(arg_1.b.b.c.x, 1u)], -2147483647i), vec2<i32>(20665i, -2147483647i)) >> ((u_input.a ^ vec2<u32>(4294967295u, 65111u)) % vec2<u32>(32u))), 0i, global4[_wgslsmith_index_u32(u_input.a.x << (6620u % 32u), 1u)]), Struct_1(arg_1.c.a, ~var_0, arg_1.b.b.c));
    return true;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = ~vec3<u32>(~(~u_input.a.x), _wgslsmith_dot_vec2_u32(min(u_input.a, vec2<u32>(4294967295u, 1u)), ~(~global0.xx)), 8224u);
    var var_1 = Struct_3(func_5(firstTrailingBit(-vec4<i32>(-26037i, 0i, arg_0, -5991i)) >> (vec4<u32>(u_input.a.x, 4294967295u, global0.x, max(u_input.a.x, var_0.x)) % vec4<u32>(32u)), Struct_4(func_4(func_2(1u, 356f, false), true, Struct_4(Struct_1(false, vec4<i32>(-39219i, -51368i, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], arg_0), vec3<u32>(u_input.a.x, 14938u, 4294967295u)), Struct_2(vec3<i32>(25212i, arg_0, arg_0), Struct_1(true, vec4<i32>(global4[_wgslsmith_index_u32(51933u, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)], -237i, global4[_wgslsmith_index_u32(1u, 1u)]), var_0)), Struct_1(false, vec4<i32>(global4[_wgslsmith_index_u32(31507u, 1u)], 15770i, 1i, 2147483647i), vec3<u32>(u_input.a.x, 37742u, u_input.a.x))), vec4<bool>(true, true, true, true)), Struct_2(vec3<i32>(-20229i, -49112i, -38851i), Struct_1(true, vec4<i32>(global4[_wgslsmith_index_u32(global0.x, 1u)], 37624i, global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(global0.x, 1u)]), vec3<u32>(1u, 18575u, var_0.x))), func_2(~4294967295u, global1[_wgslsmith_index_u32(var_0.x, 18u)], true))), global1[_wgslsmith_index_u32(1u, 18u)], func_4(func_4(Struct_1(select(false, false, false), reverseBits(vec4<i32>(-11743i, arg_0, 19700i, -2147483647i)), var_0), true, Struct_4(Struct_1(true, vec4<i32>(arg_0, -2147483647i, arg_0, 8967i), global0.zyw), Struct_2(vec3<i32>(arg_0, 18605i, 2147483647i), Struct_1(true, vec4<i32>(2147483647i, arg_0, global4[_wgslsmith_index_u32(0u, 1u)], 16390i), vec3<u32>(global0.x, 1u, u_input.a.x))), func_4(Struct_1(false, vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], 69421i, global4[_wgslsmith_index_u32(0u, 1u)], -43708i), vec3<u32>(global0.x, u_input.a.x, 0u)), false, Struct_4(Struct_1(false, vec4<i32>(arg_0, 38240i, 23190i, global4[_wgslsmith_index_u32(69489u, 1u)]), vec3<u32>(var_0.x, u_input.a.x, u_input.a.x)), Struct_2(vec3<i32>(1i, global4[_wgslsmith_index_u32(41651u, 1u)], 8991i), Struct_1(false, vec4<i32>(1i, arg_0, 0i, arg_0), vec3<u32>(49601u, 28646u, 25694u))), Struct_1(true, vec4<i32>(arg_0, 2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 31054i), var_0)), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true)), select(var_0.x, ~23303u, true) > 1u, Struct_4(Struct_1(true, firstLeadingBit(vec4<i32>(26285i, arg_0, arg_0, 35952i)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, var_0.x) % vec3<u32>(32u))), Struct_2(vec3<i32>(10952i, global4[_wgslsmith_index_u32(var_0.x, 1u)], arg_0), Struct_1(false, vec4<i32>(arg_0, global4[_wgslsmith_index_u32(var_0.x, 1u)], arg_0, 2147483647i), var_0)), Struct_1(all(vec2<bool>(true, true)), abs(vec4<i32>(44256i, arg_0, arg_0, -18240i)), ~vec3<u32>(24052u, var_0.x, u_input.a.x))), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 18u)] <= global1[_wgslsmith_index_u32(1u, 18u)], any(vec3<bool>(true, false, true)), true, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, global1[_wgslsmith_index_u32(global0.x, 18u)]))) - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 58203u, global0.x), ~vec3<u32>(var_0.x, var_0.x, 18012u)), 18u)]))), !select(vec2<bool>(true, false), vec2<bool>(true, global4[_wgslsmith_index_u32(26197u, 1u)] <= arg_0), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))));
    let var_2 = vec3<bool>(true, func_2(4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 24u)] - 1798f), -104f)), false).a, any(vec4<bool>(var_1.a, false, all(select(var_1.e, vec2<bool>(var_1.c.a, true), false)), true)));
    var var_3 = ~(-12539i);
    global4 = array<i32, 1>();
    return vec2<bool>(true, !func_4(Struct_1(!var_2.x, vec4<i32>(-1i, -1i, 1i, 26433i), vec3<u32>(4294967295u, global0.x, u_input.a.x)), all(select(vec4<bool>(var_1.a, false, var_1.c.a, true), vec4<bool>(false, var_1.e.x, var_2.x, var_1.c.a), vec4<bool>(true, true, var_1.c.a, var_2.x))), Struct_4(Struct_1(false, vec4<i32>(arg_0, 1i, arg_0, -1i), vec3<u32>(22132u, 0u, global0.x)), Struct_2(var_1.c.b.yxz, var_1.c), func_2(u_input.a.x, var_1.b, var_2.x)), vec4<bool>(true, var_1.a, true, var_1.e.x)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(!select(false, true, 357f != global2[_wgslsmith_index_u32(0u, 24u)]), true), vec2<bool>(true, true), all(func_1(-global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 1u)])));
    let var_1 = Struct_3(!(!(19503i <= global4[_wgslsmith_index_u32(~1u, 1u)])), global2[_wgslsmith_index_u32(global0.x, 24u)], Struct_1(all(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, var_0.x), var_0.x)), vec4<i32>(-global4[_wgslsmith_index_u32(global0.x, 1u)] | (global4[_wgslsmith_index_u32(73489u, 1u)] << (37865u % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(11503i, 0i, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 29147i), vec4<i32>(2147483647i, -12189i, global4[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(global0.x, 1u)])), global4[_wgslsmith_index_u32(~(~0u), 1u)], global4[_wgslsmith_index_u32(countOneBits(~0u), 1u)]), ~vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 82880u, 40628u), vec4<u32>(101666u, 115u, global0.x, u_input.a.x)), global0.x)), -634f, var_0);
    var var_2 = var_1.e.x;
    let var_3 = Struct_4(var_1.c, Struct_2(var_1.c.b.wwx, func_4(Struct_1(true, -vec4<i32>(2147483647i, 44513i, var_1.c.b.x, 1i), var_1.c.c << (global0.wyy % vec3<u32>(32u))), !(!var_0.x), Struct_4(func_2(var_1.c.c.x, 763f, true), Struct_2(vec3<i32>(20302i, var_1.c.b.x, global4[_wgslsmith_index_u32(1u, 1u)]), Struct_1(var_1.c.a, vec4<i32>(-1i, 2147483647i, 34768i, global4[_wgslsmith_index_u32(4294967295u, 1u)]), var_1.c.c)), func_4(Struct_1(false, vec4<i32>(-2221i, -18072i, global4[_wgslsmith_index_u32(34463u, 1u)], -49559i), var_1.c.c), var_0.x, Struct_4(var_1.c, Struct_2(vec3<i32>(1i, var_1.c.b.x, global4[_wgslsmith_index_u32(0u, 1u)]), Struct_1(var_1.c.a, var_1.c.b, var_1.c.c)), Struct_1(false, vec4<i32>(global4[_wgslsmith_index_u32(51137u, 1u)], -1i, global4[_wgslsmith_index_u32(61876u, 1u)], 16919i), global0.wwz)), vec4<bool>(var_0.x, true, var_0.x, var_1.c.a))), select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(false, true, var_1.a, false), vec4<bool>(true, var_1.c.a, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, true, false), true))), Struct_1(var_0.x || !(!var_0.x), vec4<i32>(global4[_wgslsmith_index_u32(~var_1.c.c.x, 1u)] >> (u_input.a.x % 32u), func_2(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(41408u, var_1.c.c.x)), var_1.b, var_0.x).b.x, global4[_wgslsmith_index_u32(global0.x, 1u)], var_1.c.b.x), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(20373u, var_1.c.c.x), ~0u), select(4294967295u, ~u_input.a.x, var_0.x), 1u)));
    var var_4 = var_3.c;
    var_4 = Struct_1(!(global0.x <= _wgslsmith_mult_u32(var_1.c.c.x, global0.x)), var_1.c.b, vec3<u32>(48679u, var_3.a.c.x, _wgslsmith_mult_u32(global0.x, 18486u)));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-698f - global1[_wgslsmith_index_u32(var_1.c.c.x, 18u)]), var_5.b, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, global2[_wgslsmith_index_u32(8187u, 24u)]) - _wgslsmith_f_op_f32(select(var_1.d, 191f, var_3.b.b.a))), select(var_1.c.a | false, !var_1.c.a, false)))));
}

