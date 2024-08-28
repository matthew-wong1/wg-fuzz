struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_4;

var<private> global2: array<i32, 18>;

var<private> global3: array<u32, 32>;

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec2<bool> {
    global3 = array<u32, 32>();
    let var_0 = global1.a;
    var var_1 = Struct_4(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global1.b.x)), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f + global1.b.x) * -1300f), 587f)));
    global2 = array<i32, 18>();
    global3 = array<u32, 32>();
    return vec2<bool>(false, true);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    var var_0 = ~vec3<u32>(firstTrailingBit(abs(9958u)), 48910u << (u_input.a % 32u), ~u_input.a) << (~vec3<u32>(global4.x, arg_1.c.x << (arg_1.b % 32u), arg_1.a) % vec3<u32>(32u));
    var var_1 = select(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(global4.x, 53950u >> (var_0.x % 32u)), 4294967295u), ~_wgslsmith_add_u32(32961u, u_input.b), any(global1.a.xzx) & false);
    let var_2 = Struct_2(global1.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-835f, -1300f, arg_0.x) - global1.b.xzz)))));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-min(~global0.x, _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), firstTrailingBit(3594i)), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(58807u, 1u, 4294967295u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 32u)], var_0.x, 0u))), 18u)], global2[_wgslsmith_index_u32(reverseBits(global4.x), 18u)]) & 0i);
    let var_4 = Struct_5(Struct_3(15345i, arg_1, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(round(arg_0.x)))), reverseBits(vec4<i32>(u_input.c.x, 1i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-65297i, -2147483647i, var_3, 38633i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 18u)], 28066i, u_input.c.x, -29879i))))), !vec3<bool>(true, var_2.a, true));
    return all(!global1.a.yw);
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global4 = ~(~firstLeadingBit(~vec2<u32>(global3[_wgslsmith_index_u32(64172u, 32u)], u_input.b) >> (vec2<u32>(global4.x, 5885u) % vec2<u32>(32u))));
    global3 = array<u32, 32>();
    var var_0 = select(func_2(), arg_0.a.zz, arg_0.a.x | func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.b))), Struct_1(_wgslsmith_div_u32(1u, 1u), abs(global3[_wgslsmith_index_u32(78u, 32u)]), vec2<u32>(global3[_wgslsmith_index_u32(global4.x, 32u)], global3[_wgslsmith_index_u32(1316u, 32u)]) ^ vec2<u32>(4294967295u, 1u))));
    global3 = array<u32, 32>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(1844f - _wgslsmith_f_op_f32(1090f * -1209f)), 1511f, global1.b.x, _wgslsmith_div_f32(-674f, arg_0.b.x));
    return Struct_3(firstLeadingBit(~global0.x), Struct_1(~0u, global4.x, _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(2265u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 32u)], 32u)]), vec2<u32>(18846u, global3[_wgslsmith_index_u32(17214u, 32u)]), vec2<u32>(u_input.b, 0u)), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 0u), countOneBits(vec2<u32>(0u, u_input.b))))), _wgslsmith_f_op_f32(max(var_1.x, global1.b.x)), ~((vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(global4.x, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)], 1i, -1i)) | abs(-vec4<i32>(u_input.c.x, -1i, 17823i, global2[_wgslsmith_index_u32(20924u, 18u)]))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec4<bool>) -> StorageBuffer {
    global3 = array<u32, 32>();
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(~arg_1.d.xzy, _wgslsmith_add_vec3_i32(arg_1.d.wyy, vec3<i32>(81432i, arg_0.a.d.x, 0i))), arg_0.a.d.xxx), abs(~vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x))), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i ^ arg_1.a, ~global0.x), 15178i, i32(-1i) * -39070i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, reverseBits(global2[_wgslsmith_index_u32(u_input.a, 18u)]), -8424i), arg_1.d.xxw), ~(~1i)));
    var var_0 = abs(reverseBits(vec2<u32>(0u, global3[_wgslsmith_index_u32(~4294967295u, 32u)])));
    var var_1 = -925f;
    let var_2 = 7564i;
    return StorageBuffer(arg_0.a.d.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_5(func_1(Struct_4(global1.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1188f, -1215f, 1645f, 1515f))))), vec3<bool>(global1.a.x, any(vec3<bool>(true, global1.a.x, global1.a.x)) & false, any(vec3<bool>(global1.a.x, global1.a.x, false)))), Struct_3(_wgslsmith_add_i32(-1i, ~global2[_wgslsmith_index_u32(31498u, 18u)]) | 1i, func_1(Struct_4(global1.a, vec4<f32>(-1146f, global1.b.x, global1.b.x, global1.b.x))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), countOneBits(_wgslsmith_sub_vec4_i32(func_1(Struct_4(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), vec4<f32>(global1.b.x, global1.b.x, 770f, global1.b.x))).d, -vec4<i32>(-1i, -38704i, -7602i, 2147483647i)))), vec4<bool>(_wgslsmith_mult_u32(max(42659u, global3[_wgslsmith_index_u32(1u, 32u)]), abs(global3[_wgslsmith_index_u32(u_input.b, 32u)])) >= global3[_wgslsmith_index_u32(global4.x, 32u)], func_2().x, true, false));
}

