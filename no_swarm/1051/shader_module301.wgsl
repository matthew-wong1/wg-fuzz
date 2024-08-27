struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: Struct_4;

var<private> global2: array<i32, 26>;

var<private> global3: Struct_5;

var<private> global4: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = array<i32, 26>();
    let var_0 = ~reverseBits(arg_0.a.a.x);
    let var_1 = 40194u;
    global1 = Struct_4(global4.b.x >> ((~(~global3.a.a.a.x) & global3.a.a.a.x) % 32u), _wgslsmith_div_vec3_u32(vec3<u32>(max(1u, _wgslsmith_mod_u32(u_input.c.x, global1.b.x)), var_0, _wgslsmith_mult_u32(global3.a.a.a.x, 4294967295u) & 4294967295u), global4.b), select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) == -158f, global4.c, false));
    global3 = Struct_5(global3.a);
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = select(func_3(Struct_2(Struct_1(~vec2<u32>(u_input.c.x, 137784u)), reverseBits(abs(global2[_wgslsmith_index_u32(arg_1.a.x, 26u)])))), ~global1.b.x, select((u_input.c.x << (arg_1.a.x % 32u)) >= _wgslsmith_dot_vec2_u32(global3.a.a.a, arg_1.a), any(!vec4<bool>(global4.c, global1.c, true, global1.c)), !arg_0 || true) & all(select(select(global3.a.b.zx, global3.a.b.zx, global3.a.b.xy), vec2<bool>(global1.c, false), select(global3.a.b.yx, global3.a.b.yz, true))));
    var var_1 = Struct_1(global3.a.a.a);
    let var_2 = 1u;
    global0 = array<vec3<bool>, 8>();
    var var_3 = Struct_3(global3.a.a, !global3.a.b);
    return arg_0;
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> Struct_2 {
    var var_0 = !select(!vec4<bool>(true, false, global3.a.b.x & false, true), !select(select(vec4<bool>(global1.c, true, global3.a.b.x, true), vec4<bool>(global1.c, false, false, global1.c), global4.c), select(vec4<bool>(global4.c, true, false, global1.c), vec4<bool>(false, global3.a.b.x, global4.c, true), vec4<bool>(false, global1.c, global1.c, global1.c)), global1.c || true), !vec4<bool>(any(global3.a.b), all(vec2<bool>(global1.c, true)), func_2(global4.c, global3.a.a, 492f), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(635f, 1486f, 1000f, 1806f), vec4<f32>(882f, 1404f, -571f, -824f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(450f, -1000f, -193f, 901f), vec4<f32>(-138f, -591f, 1471f, -633f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, -203f, 582f, -791f))), vec4<bool>(all(vec3<bool>(arg_0.c, false, true)), arg_0.c && false, var_0.x, var_0.x))))));
    var var_2 = Struct_4(~arg_0.b.x, global1.b, true);
    let var_3 = ~(-37711i);
    global1 = Struct_4(arg_0.b.x, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~0u, global3.a.a.a.x, _wgslsmith_div_u32(65851u, 43496u)), func_3(Struct_2(global3.a.a, global2[_wgslsmith_index_u32(34807u, 26u)]))), var_2.b.x, 36006u), var_2.c);
    return Struct_2(global3.a.a, -56479i);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = Struct_5(Struct_3(global3.a.a, vec3<bool>(any(vec4<bool>(global1.c, false, global4.c, true)), arg_2.b.x, _wgslsmith_f_op_f32(sign(-529f)) == -1195f)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-694f + 1689f), _wgslsmith_f_op_f32(f32(-1f) * -804f))), vec2<i32>(-1i) * -countOneBits(vec2<i32>(8330i, arg_0.b)), _wgslsmith_div_i32(i32(-1i) * -1i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(Struct_4(global3.a.a.a.x, vec3<u32>(~0u, global4.a | u_input.c.x, 0u), global4.c), _wgslsmith_add_i32(0i, select(global2[_wgslsmith_index_u32(0u, 26u)], -2147483647i, global1.c)) & (u_input.b & global2[_wgslsmith_index_u32(global1.a, 26u)])), ~select(global3.a.a.a.x, ~global3.a.a.a.x & _wgslsmith_sub_u32(0u, global1.a), true), global3.a);
}

