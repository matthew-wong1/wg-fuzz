struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-950f, 912f, -525f, -1437f, -1870f, -1912f, 941f, -1024f, -848f);

var<private> global1: array<f32, 1>;

var<private> global2: array<f32, 32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global1 = array<f32, 1>();
    var var_0 = select(vec2<u32>(firstTrailingBit(~(~0u)), 68195u), countOneBits(vec2<u32>(u_input.d, u_input.e)), true);
    global0 = array<f32, 9>();
    let var_1 = !vec2<bool>(all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), true)), !(!(u_input.a.x != 2147483647i)));
    var var_2 = min(_wgslsmith_div_vec3_i32(-select(vec3<i32>(u_input.b.x, u_input.a.x, -6555i), vec3<i32>(-9138i, u_input.a.x, 0i), true), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.b.x, -44411i)), vec3<i32>(-(u_input.a.x & u_input.a.x), select(u_input.a.x, -u_input.a.x, true), _wgslsmith_clamp_i32(~256i, u_input.a.x, -47580i | u_input.a.x))) << (vec3<u32>(var_0.x, var_0.x, 32872u) % vec3<u32>(32u));
    return _wgslsmith_add_i32(-64127i, abs(960i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(111321u, 0u, u_input.d, 4294967295u)), vec4<u32>(31567u, 43956u, var_0.x, u_input.c)), min(vec4<u32>(58016u, var_0.x, u_input.d, u_input.e) & vec4<u32>(u_input.c, 1u, var_0.x, u_input.c), vec4<u32>(41695u, 4294967295u, var_0.x, 45580u))) % 32u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<f32>) -> u32 {
    let var_0 = Struct_1(true | (_wgslsmith_sub_u32(firstLeadingBit(u_input.e), _wgslsmith_add_u32(u_input.d, u_input.e)) != u_input.c), func_3());
    global0 = array<f32, 9>();
    var var_1 = Struct_1(!(-235f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] * 1000f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c, 9u)]))))), -2147483647i | _wgslsmith_dot_vec2_i32(~select(u_input.b, vec2<i32>(arg_1.b, var_0.b), arg_2), u_input.b));
    global1 = array<f32, 1>();
    let var_2 = var_0;
    return _wgslsmith_mult_u32(u_input.d, 410u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_1 {
    global0 = array<f32, 9>();
    let var_0 = true;
    var var_1 = Struct_1(!any(select(vec3<bool>(true, true, true), select(arg_1, vec3<bool>(arg_1.x, false, false), arg_1), !var_0)), _wgslsmith_mod_i32(~(~u_input.b.x << (arg_0.x % 32u)), (u_input.b.x >> (firstTrailingBit(u_input.d) % 32u)) << (~(~22389u) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 32u)]));
    var var_3 = !(~reverseBits(0u) < countOneBits(_wgslsmith_mod_u32(u_input.e, arg_0.x))) || !all(select(!vec2<bool>(false, var_1.a), !arg_1.zy, any(vec4<bool>(false, var_1.a, var_0, var_0))));
    return Struct_1(all(arg_1), 2147483647i);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = 8698u;
    var var_1 = func_4(vec3<u32>(~_wgslsmith_add_u32(var_0, func_2(true, Struct_1(true, u_input.b.x), vec2<bool>(true, arg_1), vec2<f32>(586f, -1867f))), 0u, 15881u), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1, arg_1), !arg_1)), !(!any(vec2<bool>(arg_0, arg_1))), false));
    return func_4(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d, u_input.c, u_input.d), vec3<u32>(4294967295u, ~var_0, func_2(var_1.a, Struct_1(true, var_1.b), vec2<bool>(arg_0, true), vec2<f32>(717f, global2[_wgslsmith_index_u32(1u, 32u)]))), abs(~vec3<u32>(89299u, 1u, var_0))), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, ~var_0, var_0), vec3<u32>(43525u, ~var_0, _wgslsmith_mult_u32(4294967295u, var_0)))), select(vec3<bool>(arg_0, all(select(vec3<bool>(false, true, false), vec3<bool>(arg_0, true, false), arg_0)), true && (global0[_wgslsmith_index_u32(u_input.d, 9u)] <= -116f)), select(vec3<bool>(true, true, true), !vec3<bool>(arg_1, arg_1, false), arg_0), !vec3<bool>(arg_0, var_1.b > u_input.b.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 1>();
    var var_0 = func_1(true, -339f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 1u)] * global2[_wgslsmith_index_u32(reverseBits(42151u), 32u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~91379u);
}

