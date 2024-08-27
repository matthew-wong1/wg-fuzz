struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, false), -245f, Struct_1(true, 39059i), Struct_1(false, -5393i), vec2<bool>(false, true));

var<private> global2: bool;

var<private> global3: array<Struct_2, 11>;

var<private> global4: array<bool, 6> = array<bool, 6>(false, false, false, true, true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    let var_0 = select(global1.c.b << (~(~84476u) % 32u), -24345i, any(select(!(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(u_input.b.x, 6u)])), !(!global1.a), vec2<bool>(any(global1.e), !global1.e.x))));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = _wgslsmith_f_op_f32(global1.b + global0[_wgslsmith_index_u32(u_input.b.x, 31u)]);
    var var_2 = ~vec3<u32>(~48019u, u_input.b.x, 2213u);
    return 1072f;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = 0u;
    var var_1 = global1.c;
    global4 = array<bool, 6>();
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~reverseBits(u_input.b), u_input.b, u_input.b), max(~vec3<u32>(2283u, u_input.b.x, u_input.b.x), u_input.b)), 11u)];
    global4 = array<bool, 6>();
    return _wgslsmith_clamp_vec4_i32(select(_wgslsmith_add_vec4_i32(~vec4<i32>(global1.c.b, arg_1.b, 0i, var_1.b), vec4<i32>(global1.d.b, arg_1.b, -2147483647i, 22225i) ^ vec4<i32>(var_1.b, -1i, var_1.b, 1i)), ~min(vec4<i32>(global1.d.b, -2147483647i, arg_1.b, -31968i), vec4<i32>(17598i, -2147483647i, arg_1.b, arg_1.b)), vec4<bool>(true, 675f < global0[_wgslsmith_index_u32(var_0, 31u)], !var_1.a, !arg_1.a)) & -countOneBits(vec4<i32>(12741i, -2147483647i, global1.c.b, 2295i)), max(~(vec4<i32>(55169i, global1.c.b, 1i, -62492i) & vec4<i32>(17862i, var_1.b, global1.d.b, 1i)), abs(max(vec4<i32>(17594i, global1.d.b, 22870i, arg_1.b), vec4<i32>(30931i, 0i, -54901i, -10740i)))) & vec4<i32>(-21513i, 16601i, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.b, -15848i, var_2.d.b, global1.c.b), max(vec4<i32>(arg_1.b, 41078i, 18967i, global1.d.b), vec4<i32>(global1.c.b, var_1.b, arg_1.b, var_1.b))), abs(-51089i)), vec4<i32>(25080i, ~(countOneBits(var_2.d.b) ^ _wgslsmith_sub_i32(2147483647i, var_2.d.b)), _wgslsmith_div_i32(var_2.c.b, 2147483647i), firstLeadingBit(reverseBits(2147483647i)) | (-19623i | _wgslsmith_mult_i32(-2147483647i, var_1.b))));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = any(!(!arg_0.a)) != global4[_wgslsmith_index_u32(~reverseBits(1997u ^ u_input.a), 6u)];
    var var_1 = vec2<i32>(arg_0.d.b, -1i);
    var var_2 = Struct_1(any(vec3<bool>(!global4[_wgslsmith_index_u32(1u, 6u)] | global1.d.a, true, !(!global4[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(8110i, global1.d.b, -1i, arg_0.d.b), -vec4<i32>(arg_0.c.b, global1.d.b, var_1.x, 7999i), ~vec4<i32>(28347i, global1.c.b, 24298i, -42818i)) & countOneBits(min(vec4<i32>(global1.d.b, arg_0.c.b, 1i, arg_0.d.b), vec4<i32>(0i, -37875i, global1.c.b, var_1.x))), ~max(firstLeadingBit(vec4<i32>(0i, global1.c.b, arg_0.c.b, arg_0.c.b)), reverseBits(vec4<i32>(arg_0.d.b, -10066i, -38808i, global1.d.b)))));
    global0 = array<f32, 31>();
    let var_3 = global1.b;
    return ~_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-2147483647i, 0i, -40234i, 2147483647i) ^ (vec4<i32>(-17851i, -18538i, 1i, -1i) << (vec4<u32>(u_input.a, 49544u, u_input.a, u_input.b.x) % vec4<u32>(32u)))), func_3(!global1.e, global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(func_1())) <= global1.b;
    let var_1 = true;
    var var_2 = 819f;
    let var_3 = ~func_2(global3[_wgslsmith_index_u32(abs(0u), 11u)]);
    var var_4 = global1.c;
    var var_5 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, 2147483647i, var_4.b, 1i), vec4<i32>(-9484i, 2147483647i, var_3.x, var_5.b))), firstLeadingBit(37028u), abs(1u));
}

