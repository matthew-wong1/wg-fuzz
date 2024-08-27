struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(-11837i, i32(-2147483648), -22077i));

var<private> global1: u32;

var<private> global2: f32 = 371f;

var<private> global3: vec3<u32>;

var<private> global4: array<u32, 2> = array<u32, 2>(8792u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = reverseBits(vec2<i32>(firstLeadingBit(-16302i | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, 15216i, -39356i), vec3<i32>(-2147483647i, arg_2.a.x, arg_2.a.x))), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2.a.x, 1i), global0.a.x), _wgslsmith_sub_i32(abs(global0.a.x), 1i))));
    let var_1 = vec2<u32>(_wgslsmith_add_u32((u_input.a.x & global4[_wgslsmith_index_u32(62945u, 2u)]) >> (17565u % 32u), 24719u), ~_wgslsmith_add_u32(23568u, ~4294967295u)) >> (~(~vec2<u32>(~global3.x, _wgslsmith_mult_u32(global3.x, 4294967295u))) % vec2<u32>(32u));
    let var_2 = !arg_0.yz;
    global4 = array<u32, 2>();
    global3 = countOneBits(~u_input.a.zzy | u_input.a.wzy);
    return 1849f;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<i32>(-global0.a.x, -_wgslsmith_mod_i32(global0.a.x, global0.a.x), ~reverseBits(-42116i)), ~47368u));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(244f, -330f) - vec2<f32>(-268f, 226f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)), vec2<bool>(true, true))), Struct_3(countOneBits(var_0.a.a))))) + _wgslsmith_f_op_f32(ceil(-563f)));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_i32(var_0.a.a, (~vec3<i32>(1i, var_0.a.a.x, -2147483647i) >> (~vec3<u32>(global4[_wgslsmith_index_u32(33496u, 2u)], u_input.b, global3.x) % vec3<u32>(32u))) << (u_input.c % vec3<u32>(32u))), ~max(_wgslsmith_mult_u32(1u, var_0.a.b), global3.x));
    global4 = array<u32, 2>();
    let var_2 = var_0;
    return abs(9828u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = 1u;
    var var_1 = 2147483647i;
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.x, 9082i), ~vec2<i32>(global0.a.x, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(global0.a.x, 26842i), arg_1.a.yz)), arg_1.a.yz)), vec2<i32>(arg_0.a.x, -arg_0.a.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(597f))) - _wgslsmith_f_op_f32(ceil(1f)));
    return 50520u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~u_input.c >> (select(u_input.a.zyx, vec3<u32>(abs(global4[_wgslsmith_index_u32(global3.x, 2u)]), global4[_wgslsmith_index_u32(func_1(), 2u)], 75863u), all(vec4<bool>(true, true, false, false)) || true) % vec3<u32>(32u)));
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(countOneBits(global0.a) >> (~(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 2u)], 4294967295u, global3.x) | vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19921u, 2u)], 2u)], 24219u, 1u)) % vec3<u32>(32u)), vec3<i32>(global0.a.x, reverseBits(-14336i), -global0.a.x), (vec3<i32>(global0.a.x, global0.a.x, global0.a.x) | _wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(0i, -1i, global0.a.x))) >> (u_input.c % vec3<u32>(32u))), _wgslsmith_mod_u32(~u_input.a.x >> (_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(global3.yx, global3.zy)) % 32u), 24836u ^ ~global4[_wgslsmith_index_u32(~global3.x, 2u)]));
    global1 = _wgslsmith_div_u32(min((_wgslsmith_div_u32(var_0.b, 1u) & abs(4294967295u)) >> (_wgslsmith_sub_u32(~u_input.b, reverseBits(4294967295u)) % 32u), global4[_wgslsmith_index_u32(global3.x, 2u)]), func_3(Struct_1(_wgslsmith_mod_vec3_i32(var_0.a, global0.a & var_0.a), 0u), Struct_1(var_0.a, u_input.a.x), min(vec2<i32>(10793i, _wgslsmith_mod_i32(0i, global0.a.x)), -(~vec2<i32>(var_0.a.x, global0.a.x)))));
    let var_1 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), false), vec3<bool>(true, true, true), all(vec2<bool>(true, true)));
    var_0 = Struct_1(~_wgslsmith_sub_vec3_i32(-vec3<i32>(5013i, -35283i, global0.a.x), firstLeadingBit(var_0.a)) << (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(1u, u_input.b)), ~91420u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 7373u, 4294967295u, u_input.b)), ~u_input.a), var_0.b) % vec3<u32>(32u)), firstLeadingBit(~_wgslsmith_sub_u32(global3.x, ~u_input.b)));
    global4 = array<u32, 2>();
    let var_2 = vec3<u32>(26191u, ~0u, _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a));
    let var_3 = Struct_2(Struct_1(vec3<i32>(-global0.a.x, _wgslsmith_add_i32(-global0.a.x, var_0.a.x), reverseBits(var_0.a.x)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 1i), ~var_0.a.yz)) & abs(global0.a.x), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1049f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2184f)) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f + -609f) - _wgslsmith_f_op_f32(-1679f - 175f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f + -1310f)), 1000f, -669f)), var_3.a.a.zz, _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, 1i, max(var_0.a.x, var_3.a.a.x)) ^ -countOneBits(vec3<i32>(-77811i, 7455i, 19559i)), reverseBits(var_3.a.a)));
}

