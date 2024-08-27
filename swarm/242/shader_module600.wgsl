struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 9>;

var<private> global2: array<vec4<bool>, 28>;

var<private> global3: array<Struct_2, 24>;

var<private> global4: array<i32, 14>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = global2[_wgslsmith_index_u32(u_input.e.x, 28u)];
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, -570f, -1130f, -2439f)))), firstLeadingBit(u_input.d.x ^ -1i), -_wgslsmith_mod_vec2_i32(~u_input.d, -u_input.d)));
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, 25387u, 4294967295u)) << (firstTrailingBit(~u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.e.x, u_input.a.x), vec3<u32>(u_input.e.x, 4294967295u, u_input.a.x)), ~vec3<u32>(4294967295u, 1u, 7370u)), ~u_input.a.x, u_input.a.x)), ~u_input.a);
    let var_2 = _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.a.x, 1651u, var_1.x, ~max(u_input.e.x, 0u)), var_1), vec4<u32>(~countOneBits(u_input.a.x), abs(var_1.x), ~(~27540u), ~countOneBits(var_1.x)) ^ u_input.a);
    let var_3 = Struct_3(!(!all(global2[_wgslsmith_index_u32(44920u, 28u)])), any(vec4<bool>(all(!global2[_wgslsmith_index_u32(u_input.e.x, 28u)]), var_2.x < reverseBits(var_1.x), true, true && any(global2[_wgslsmith_index_u32(var_2.x, 28u)]))));
    return -(~(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(0u, 14u)], var_0.a.b, u_input.b), vec3<i32>(-1i, global4[_wgslsmith_index_u32(18717u, 14u)], u_input.d.x)), _wgslsmith_mult_i32(u_input.c.x, -46909i))));
}

fn func_2() -> Struct_2 {
    let var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), ~countOneBits(vec2<u32>(1u, u_input.e.x))) & vec2<u32>(63476u, u_input.e.x);
    var var_1 = Struct_3(any(global0.zyz), true);
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-20129i, -10243i << (firstTrailingBit(var_0.x) % 32u)), -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(u_input.e.x, 14u)]), u_input.c.xww), vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(u_input.e.x, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)]))), vec2<i32>(-u_input.b, u_input.c.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1528f, 1302f, 575f, -242f) * vec4<f32>(-572f, 985f, 918f, -233f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1031f, -1000f, 206f, -1011f) * vec4<f32>(-247f, 1000f, 231f, -394f)))), select(select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 9u)]), select(vec4<bool>(var_1.a, true, var_1.a, var_1.b), vec4<bool>(var_1.a, global0.x, false, false), false), global0.x), select(global2[_wgslsmith_index_u32(4294967295u, 28u)], vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], var_1.b, global0.x), any(global2[_wgslsmith_index_u32(var_0.x, 28u)])), !global2[_wgslsmith_index_u32(33672u, 28u)]))), (func_3() | u_input.b) >> (abs(abs(~var_0.x)) % 32u), vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(67136i, var_2.x, -1i, u_input.c.x), u_input.c, select(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<bool>(false, true, true, false), global2[_wgslsmith_index_u32(var_0.x, 28u)])), -vec4<i32>(800i, u_input.d.x, -2147483647i, 18134i) >> (u_input.a % vec4<u32>(32u))), ~(u_input.b | (var_2.x | 2562i))));
    let var_4 = Struct_3(all(!global0.zy), global1[_wgslsmith_index_u32(var_0.x, 9u)]);
    return global3[_wgslsmith_index_u32(select(u_input.a.x << (0u % 32u), ~var_0.x, !((4294967295u < var_0.x) != true)) << (_wgslsmith_add_u32(7303u & abs(u_input.e.x), ~_wgslsmith_mod_u32(var_0.x, 1u)) % 32u), 24u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> StorageBuffer {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1077f, -1000f, -490f, -298f), vec4<f32>(arg_1, arg_1, var_0, -1076f)), vec4<f32>(var_0, var_0, 121f, arg_1), !global2[_wgslsmith_index_u32(4294967295u, 28u)]))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 618f)), -722f, arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0)))));
    var var_2 = func_2();
    global2 = array<vec4<bool>, 28>();
    var var_3 = 68859u;
    return StorageBuffer(_wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -7878i), countOneBits(u_input.c.x)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(1u ^ _wgslsmith_mult_u32(0u, u_input.a.x), 9u)], global0.x);
    let var_1 = var_0;
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.e.x | u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 23290u, u_input.e.x, 1u), min(vec4<u32>(u_input.a.x, u_input.e.x, 96656u, u_input.e.x), vec4<u32>(u_input.a.x, 0u, u_input.e.x, 4294967295u))), 25604u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

