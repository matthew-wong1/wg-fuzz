struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(0i, -49473i), vec2<i32>(1i, 57938i), vec2<i32>(11865i, 1838i));

var<private> global1: i32;

var<private> global2: array<Struct_4, 26>;

var<private> global3: array<f32, 2> = array<f32, 2>(-621f, 1272f);

var<private> global4: array<vec3<bool>, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(arg_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_3.b.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_0.x, 2u)], arg_2.c.x) * vec2<f32>(1440f, 591f)), vec2<f32>(arg_2.c.x, -1000f))))), _wgslsmith_clamp_u32(arg_0.x, u_input.c, arg_3.d.b.x) ^ reverseBits(abs(~39874u)));
    var var_1 = true;
    global0 = array<vec2<i32>, 3>();
    let var_2 = u_input.a;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(51734u, firstLeadingBit(~arg_0.x)), 26u)];
    return 5159u;
}

fn func_3() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~13445u, 26u)];
    global3 = array<f32, 2>();
    let var_1 = ~0i;
    var var_2 = ~1u;
    var var_3 = var_0.d;
    return _wgslsmith_div_i32(abs(-40502i), var_1);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec2<bool> {
    global3 = array<f32, 2>();
    global3 = array<f32, 2>();
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(17010u, 2u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(797f - global3[_wgslsmith_index_u32(u_input.d.x, 2u)])))))), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d.x, 1u), ~u_input.d.x), _wgslsmith_div_u32(~48808u & (u_input.d.x << (32805u % 32u)), func_2(u_input.d, Struct_3(false, vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 2u)], 1576f, global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec2<f32>(672f, -135f), Struct_2(vec2<f32>(479f, 912f), u_input.c), vec4<f32>(1829f, global3[_wgslsmith_index_u32(5440u, 2u)], global3[_wgslsmith_index_u32(59170u, 2u)], 486f)), Struct_1(false, u_input.d.xy, vec4<f32>(-1000f, global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], 943f), u_input.d.x), Struct_4(Struct_1(arg_0.x, u_input.d.wx, vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 2u)], -496f, global3[_wgslsmith_index_u32(23969u, 2u)], global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), 1u), vec2<f32>(global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)]), Struct_3(arg_0.x, vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 2u)], global3[_wgslsmith_index_u32(14473u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<f32>(global3[_wgslsmith_index_u32(35613u, 2u)], 467f), Struct_2(vec2<f32>(1251f, 1000f), 0u), vec4<f32>(global3[_wgslsmith_index_u32(46887u, 2u)], global3[_wgslsmith_index_u32(u_input.d.x, 2u)], 822f, global3[_wgslsmith_index_u32(56872u, 2u)])), Struct_1(arg_0.x, u_input.d.ww, vec4<f32>(-1000f, global3[_wgslsmith_index_u32(4294967295u, 2u)], -820f, 374f), u_input.d.x), arg_0.www))), select(~48331u, 0u, true)));
    var var_1 = _wgslsmith_mult_vec3_i32(~firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(-1i, 0i), arg_1, ~1i)), vec3<i32>(i32(-1i) * -1i, u_input.a, 59699i));
    global1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, func_3()), 0i);
    return !arg_0.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.b), global0[_wgslsmith_index_u32(u_input.d.x, 3u)]))), u_input.e ^ _wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -2147483647i), global0[_wgslsmith_index_u32(2536u, 3u)])), global0[_wgslsmith_index_u32(98403u, 3u)]), select(vec2<bool>(u_input.b != 2147483647i, all(func_1(vec4<bool>(true, true, true, false), 1i))), func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), u_input.b), vec2<bool>(true, true)));
    global4 = array<vec3<bool>, 17>();
    var_0 = countOneBits(abs(-(~global0[_wgslsmith_index_u32(u_input.d.x, 3u)]))) >> (_wgslsmith_mod_vec2_u32(~u_input.d.zz, abs(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 64848u), u_input.d.yx, u_input.d.xy), ~u_input.d.wy))) % vec2<u32>(32u));
    global0 = array<vec2<i32>, 3>();
    var var_1 = global0[_wgslsmith_index_u32(15334u, 3u)];
    let var_2 = var_1.x;
    let var_3 = true;
    let var_4 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), firstLeadingBit(26477u)) | 4791u), 2u)], ~(~u_input.d.x), u_input.d.ww << (min(reverseBits(~vec2<u32>(u_input.c, u_input.c)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 1u), u_input.d.wz)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.c, 2u)])), -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-75735i, -24722i, var_1.x, var_1.x), vec4<i32>(0i, var_1.x, 1i, 0i) ^ vec4<i32>(18155i, var_4, 6809i, 18005i))));
}

