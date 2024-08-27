struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<vec4<bool>, 26>;

var<private> global2: u32;

var<private> global3: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true));

var<private> global4: array<u32, 19>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(abs(u_input.b.x)), -1i, _wgslsmith_mod_i32(u_input.b.x, -27580i | u_input.b.x), 6425i), ~firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 2147483647i) ^ vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))));
    global3 = array<vec4<bool>, 8>();
    var var_1 = ~(~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.c.x, 1u), vec3<u32>(u_input.a.x, global4[_wgslsmith_index_u32(13574u, 19u)], 12051u)))));
    let var_2 = Struct_3(Struct_2(Struct_1(u_input.a.x >= var_1.x, !(!vec3<bool>(arg_0.a, arg_0.a, false)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(1u, 49086u))), -var_0.zw, var_1.x, _wgslsmith_mult_i32(-u_input.b.x ^ ~53779i, _wgslsmith_add_i32(~u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 0i)))), Struct_2(arg_0, u_input.b.zy, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, global4[_wgslsmith_index_u32(32837u, 19u)], arg_0.c.x, 4294967295u), ~vec4<u32>(21089u, global4[_wgslsmith_index_u32(35584u, 19u)], 35595u, 101135u)), select(_wgslsmith_mult_i32(~2147483647i, ~(-1i)), u_input.b.x, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(64548u, 19u)], 6u)])), true, global4[_wgslsmith_index_u32(19752u, 19u)], arg_0);
    global1 = array<vec4<bool>, 26>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1219f, 1f)), _wgslsmith_f_op_f32(-1000f + 1365f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1544f, -455f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 220f))))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_2(Struct_1(!(!global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 6u)]), arg_0.b.a.b, _wgslsmith_sub_vec2_u32(u_input.a << ((vec2<u32>(u_input.a.x, 1u) >> (vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 19u)], arg_0.d) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_0.b.a.c)), arg_0.b.b | u_input.b.zz, countOneBits(~0u), arg_0.a.b.x);
    global3 = array<vec4<bool>, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_1(countOneBits(arg_0.b.b.x | arg_0.b.b.x) == -_wgslsmith_clamp_i32(4692i, -1i, arg_0.b.d), arg_0.b.a.b, vec2<u32>(~1u, ~global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a.a.c.x, arg_0.e.c.x), 19u)]))));
    global4 = array<u32, 19>();
    let var_2 = 8793i;
    return arg_0.b.d;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(func_2(Struct_3(Struct_2(arg_3.a, vec2<i32>(arg_3.b.x, u_input.b.x), 4294967295u, u_input.b.x), Struct_2(arg_3.a, vec2<i32>(-2147483647i, arg_0.b.x), arg_3.a.c.x, u_input.b.x), true, abs(8661u), arg_0.a)), ~firstLeadingBit(u_input.b.x & arg_0.b.x)), 1i, -28497i << (u_input.a.x % 32u));
    let var_1 = _wgslsmith_sub_vec4_u32(~countOneBits(~firstTrailingBit(vec4<u32>(u_input.a.x, 0u, arg_0.a.c.x, u_input.a.x))), _wgslsmith_add_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.c.x, 50835u, arg_0.a.c.x, 1u), vec4<u32>(arg_0.c, 1u, 19194u, arg_3.a.c.x)), ~vec4<u32>(arg_3.a.c.x, 11733u, 1963u, arg_0.a.c.x)) ^ vec4<u32>(_wgslsmith_sub_u32(arg_0.a.c.x, u_input.a.x), arg_0.c, arg_3.c, select(global4[_wgslsmith_index_u32(0u, 19u)], global4[_wgslsmith_index_u32(61891u, 19u)], false)), vec4<u32>(_wgslsmith_mult_u32(abs(4294967295u), global4[_wgslsmith_index_u32(arg_0.c, 19u)] << (56621u % 32u)), arg_3.c, u_input.a.x << (_wgslsmith_dot_vec2_u32(arg_3.a.c, arg_0.a.c) % 32u), 1u)));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_3.b ^ arg_0.b, arg_3.b), 1i), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3.b.x, 16501i), _wgslsmith_add_vec2_i32(vec2<i32>(16496i, var_0.x), vec2<i32>(0i, arg_0.b.x)))), 5145i, -arg_3.d));
    let var_3 = Struct_2(arg_3.a, vec2<i32>(-1i) * -firstLeadingBit(~arg_0.b), 1u, ~(-1i));
    var var_4 = _wgslsmith_div_i32(arg_0.b.x, -(reverseBits(~arg_3.d) >> (abs(~70418u) % 32u)));
    return !var_3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(select(all(vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(44500u, 19u)], 19u)], 6u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8700u, 19u)], 6u)])), !global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 19u)], 19u)], 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), any(func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(37167u, 6u)], vec3<bool>(true, false, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3847u, 19u)], 6u)]), vec2<u32>(40062u, global4[_wgslsmith_index_u32(84692u, 19u)])), u_input.b.xz, 127621u, u_input.b.x), 349f, -1000f, Struct_2(Struct_1(global0[_wgslsmith_index_u32(1154u, 6u)], vec3<bool>(true, false, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 6u)]), u_input.a), u_input.b.xz, 1u, -1i))), true));
    let var_1 = firstTrailingBit(~(~1u));
    global3 = array<vec4<bool>, 8>();
    let var_2 = ~vec4<u32>(~_wgslsmith_sub_u32(1u, var_1), 1u, ~19867u, reverseBits(firstLeadingBit(0u) ^ ~var_1));
    let var_3 = !vec2<bool>(true, var_0.x);
    let var_4 = var_2.wy;
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1983f, 556f)))))))), 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(firstTrailingBit(select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, -3706i), vec4<i32>(u_input.b.x, -5139i, 2147483647i, -14433i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, 54689i, u_input.b.x), select(vec4<bool>(var_0.x, false, false, var_3.x), vec4<bool>(var_3.x, false, true, false), var_3.x))), ~(vec4<i32>(-36942i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(-10956i, u_input.b.x, 17965i, u_input.b.x)) >> (~(var_2 | var_2) % vec4<u32>(32u))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-786f))))));
}

