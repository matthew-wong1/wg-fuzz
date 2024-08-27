struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 4>;

var<private> global3: f32 = 325f;

var<private> global4: array<vec2<i32>, 11>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec3<i32> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1877f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -406f), -886f)), _wgslsmith_f_op_f32(f32(-1f) * -1298f))));
    var var_0 = Struct_2(Struct_1(!arg_0.a.a));
    var var_1 = max(vec3<u32>(countOneBits(countOneBits(40862u)), _wgslsmith_mult_u32(u_input.e.x, 12379u), 1u), _wgslsmith_add_vec3_u32(u_input.d, max(u_input.d << (max(vec3<u32>(75838u, u_input.e.x, u_input.e.x), u_input.e) % vec3<u32>(32u)), u_input.e)));
    let var_2 = -200f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    return arg_1.yxx;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(-693f));
    var var_1 = Struct_4(global1.x, global1.x, vec4<i32>(-_wgslsmith_sub_i32(global1.x, -32647i), -17166i, global1.x, global1.x), select(all(vec4<bool>(true, true, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], false)), !global2[_wgslsmith_index_u32(43062u, 4u)])), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(9858u, 4294967295u), 4u)], all(vec3<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 4u)])), any(vec3<bool>(global2[_wgslsmith_index_u32(67729u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)])), true))), true);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)), 452f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(2557f - -1011f), _wgslsmith_f_op_f32(floor(-681f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(235f, 1219f), vec2<f32>(-1076f, -744f))), !select(vec2<bool>(var_1.e, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], true), false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(493f, 1513f) + vec2<f32>(717f, 604f))))))));
    global4 = array<vec2<i32>, 11>();
    global1 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.c.xzx, var_1.c.wwy) << (u_input.d % vec3<u32>(32u)), func_3(Struct_2(Struct_1(!vec3<bool>(false, var_1.d, var_1.e))), min(var_1.c, ~vec4<i32>(25300i, 2147483647i, global1.x, -41027i)), _wgslsmith_div_vec2_i32(firstLeadingBit(-var_1.c.zz), vec2<i32>(_wgslsmith_mult_i32(1i, global1.x), reverseBits(var_1.c.x))), var_1.c));
    return Struct_1(select(vec3<bool>(all(!vec2<bool>(true, var_1.e)), all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], var_1.e), vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 4u)]))), !select(global2[_wgslsmith_index_u32(51490u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], var_1.d)), vec3<bool>(!any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], var_1.e)), 58828u < firstLeadingBit(u_input.b), any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], false))), true));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_4(max(2147483647i, global1.x), select(-global1.x, select(_wgslsmith_sub_i32(~1i, _wgslsmith_add_i32(1744i, 6634i)), ~global1.x, all(vec2<bool>(true, true))), true), -select(reverseBits(select(vec4<i32>(global1.x, global1.x, 0i, -67043i), vec4<i32>(55880i, global1.x, -2147483647i, -1i), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 4u)], var_0.a.x))), max(~vec4<i32>(1i, global1.x, global1.x, global1.x), vec4<i32>(-2147483647i, -1i, global1.x, global1.x)), all(select(var_0.a, vec3<bool>(global2[_wgslsmith_index_u32(55156u, 4u)], var_0.a.x, global2[_wgslsmith_index_u32(u_input.c, 4u)]), var_0.a))), true, true);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-127f)) - _wgslsmith_f_op_f32(f32(-1f) * -505f))))));
    return -12413i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec3<bool>(true, any(vec3<bool>(false, true, true)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e.x, 1u & u_input.a, u_input.b), 4u)]));
    var var_1 = Struct_4(max(_wgslsmith_sub_i32(reverseBits(-global1.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(73572i, global1.x, global1.x, 1694i), vec4<i32>(global1.x, 44391i, global1.x, global1.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -1i, 1i, 1i), vec4<i32>(global1.x, -35232i, 0i, global1.x), vec4<i32>(global1.x, global1.x, global1.x, 1i)), vec4<i32>(1i, 1i, global1.x, func_1()))), _wgslsmith_sub_i32(-2147483647i, -(-1i ^ (global1.x | global1.x))), _wgslsmith_mod_vec4_i32(-vec4<i32>(global1.x, _wgslsmith_mult_i32(19612i, global1.x), ~global1.x, _wgslsmith_div_i32(global1.x, 1i)), vec4<i32>(1i, reverseBits(-2147483647i), -2147483647i, (-1i | global1.x) << (~u_input.d.x % 32u))), ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(46446u, u_input.e.x, u_input.b, 0u), vec4<u32>(u_input.a, 1u, 0u, 1u)), abs(u_input.e.x)) != 4294967295u, true & all(vec2<bool>(true || var_0.a.x, true)));
    var var_2 = reverseBits(-firstTrailingBit(global1.x));
    var_0 = Struct_1(!vec3<bool>(var_1.d, false, func_2().a.x));
    var_2 = -1i;
    global4 = array<vec2<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(19538u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.e.x, 37724u), _wgslsmith_add_u32(~4294967295u, 1u)), 0u << (u_input.e.x % 32u), u_input.e.x), ~vec3<i32>(-func_3(Struct_2(Struct_1(vec3<bool>(true, var_1.d, false))), vec4<i32>(38453i, var_1.a, -1i, 0i), global1.xz, vec4<i32>(2898i, -2147483647i, -2147483647i, 9861i)).x, (var_1.a << (u_input.b % 32u)) << (u_input.b % 32u), ~_wgslsmith_mod_i32(global1.x, global1.x)));
}

