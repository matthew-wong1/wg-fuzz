struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-9019i, 38079i, 26629i);

var<private> global1: array<i32, 20> = array<i32, 20>(-17624i, 23860i, -41569i, 57493i, 0i, 1i, 58406i, 14626i, -72386i, 0i, 2147483647i, 37732i, 1i, -13927i, 2147483647i, 2147483647i, -45170i, i32(-2147483648), i32(-2147483648), 45131i);

var<private> global2: f32 = -1129f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = Struct_1(-global0.xx, u_input.c | 7136u, ~u_input.c, any(select(!(!vec4<bool>(arg_0.x, true, false, false)), vec4<bool>(true, true, arg_0.x, true), !(arg_0.x || arg_0.x))), ~(vec3<i32>(-24980i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 21904i, u_input.b, global1[_wgslsmith_index_u32(arg_2, 20u)]), vec4<i32>(global1[_wgslsmith_index_u32(1u, 20u)], u_input.b, -8714i, global0.x)), arg_1.x | -5667i) >> ((firstTrailingBit(vec3<u32>(74460u, 4416u, 39209u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, 30536u), vec3<u32>(u_input.a.x, arg_2, 40124u), vec3<u32>(u_input.c, arg_2, 78900u))) % vec3<u32>(32u))));
    global0 = vec3<i32>(1i, abs(countOneBits(-u_input.b)), global0.x);
    global1 = array<i32, 20>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -402f);
    let var_2 = global0.zy << (countOneBits(~vec2<u32>(arg_2 ^ 0u, 38610u)) % vec2<u32>(32u));
    return abs(vec4<i32>(1i, arg_1.x, _wgslsmith_add_i32(~(~0i), 4913i), arg_1.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> u32 {
    global0 = vec3<i32>(arg_0, global0.x, global1[_wgslsmith_index_u32(arg_1, 20u)]);
    global2 = -2411f;
    let var_0 = ~(-(~vec2<i32>(u_input.b, _wgslsmith_mod_i32(30354i, -61441i))));
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 20u)], -20436i, 18384i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global0.x, -19317i)), select(vec3<i32>(2147483647i, u_input.b, 1i), vec3<i32>(0i, var_0.x, u_input.b), false)) | (min(vec3<i32>(var_0.x, -33607i, arg_0), vec3<i32>(-2147483647i, 38331i, arg_0)) << (firstLeadingBit(vec3<u32>(u_input.a.x, 75834u, 1u)) % vec3<u32>(32u))), -(~(~vec3<i32>(-1i, -2147483647i, 33002i)))), vec3<i32>(32258i, u_input.b, var_0.x));
    var var_1 = ~(~vec4<i32>(24893i, u_input.b, u_input.b, u_input.b) ^ abs(vec4<i32>(u_input.b, global0.x, 0i, u_input.b))) & (vec4<i32>(-1i) * -min(abs(vec4<i32>(23859i, -2147483647i, -1i, arg_0)), func_3(vec4<bool>(true, false, true, false), vec4<i32>(-10947i, 29744i, 36771i, 48398i), 9858u, vec4<f32>(arg_2, arg_2, -307f, -777f))));
    return ~arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_add_u32(1u, u_input.a.x)), func_2(0i, 0u, _wgslsmith_f_op_f32(arg_1.x + 2763f))));
    var_0 = ~13824u;
    var var_1 = Struct_1(vec2<i32>(select(arg_3.x, 28519i, false) & ~firstTrailingBit(-1i), ~arg_3.x), ~arg_0, arg_0, all(select(!select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), false), select(select(vec3<bool>(false, true, false), vec3<bool>(arg_2.x, false, false), vec3<bool>(arg_2.x, false, arg_2.x)), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), true)), true)), -arg_3);
    var var_2 = select(arg_2, !arg_2, !arg_2);
    let var_3 = vec4<f32>(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-2338f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1261f * _wgslsmith_f_op_f32(1548f + -250f)), arg_1.x)), arg_1.x);
    return _wgslsmith_f_op_f32(-arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 20>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f + _wgslsmith_div_f32(1101f, 1419f)) + -534f) + 113f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(533f, _wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<f32>(-1000f, -1362f, 551f, -1763f), vec2<bool>(false, true), vec3<i32>(1i, 0i, 2147483647i))), true)))));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-347f))))))));
    var var_0 = u_input.b;
    let var_1 = Struct_1(firstTrailingBit(global0.xz), 37061u << ((abs(abs(u_input.c)) << (~(~u_input.c) % 32u)) % 32u), _wgslsmith_dot_vec2_u32(~u_input.a, countOneBits(vec2<u32>(func_2(15646i, 4294967295u, 1000f), u_input.c))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, false)), false, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false))), vec3<i32>(~firstTrailingBit(-46444i), _wgslsmith_sub_i32(global0.x & u_input.b, global0.x), countOneBits(1i)) ^ _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.c, 20u)], -2147483647i) & _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -3942i, global0.x), vec3<i32>(37559i, -10494i, -13546i)), vec3<i32>(-1i, ~global1[_wgslsmith_index_u32(u_input.c, 20u)], 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(98658u, var_1.b), var_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(106f, -151f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(702f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(316f, -299f), _wgslsmith_f_op_f32(-1499f * -330f))))) + -654f));
}

