struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-842f, 471f, -1380f), 0i, vec3<i32>(23320i, 19215i, 35364i), 0i);

var<private> global2: array<vec3<i32>, 31>;

var<private> global3: f32 = 1713f;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global1 = arg_2;
    let var_0 = Struct_2(arg_3.a, vec2<bool>(arg_1.b.x, true), u_input.a.x);
    let var_1 = global1.d & _wgslsmith_mult_i32(min(-174i, arg_1.a), _wgslsmith_dot_vec2_i32(arg_2.c.yy, global1.c.zy));
    let var_2 = _wgslsmith_add_i32(global1.b, global1.d);
    let var_3 = 1u;
    return _wgslsmith_sub_u32(~(~(~(u_input.a.x ^ 42462u))), ~reverseBits(88090u));
}

fn func_2() -> vec4<bool> {
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(-12027i >= u_input.c, select(true, true, false), true, global1.d <= global1.d), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), !vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, true), ~max(_wgslsmith_sub_u32(u_input.a.x, 21862u), func_3(global1.a.yx, Struct_2(-4618i, vec2<bool>(true, false), 4294967295u), Struct_1(global1.a, global1.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], u_input.b), Struct_2(global1.b, vec2<bool>(true, true), global4.x))) <= u_input.a.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> u32 {
    global3 = _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-arg_0.a.a.x));
    var var_0 = func_2();
    global4 = _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, max(u_input.a.x, global4.x), ~global4.x), u_input.a) ^ ~u_input.a;
    global4 = countOneBits(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(49356u, arg_2.c), countOneBits(1314u)), ~global4.x & 19272u, countOneBits(~0u)));
    let var_1 = vec3<i32>((max(2532i, -1i) ^ ((arg_2.a << (arg_0.b % 32u)) | (-2147483647i << (0u % 32u)))) << (~11065u % 32u), 33848i, 0i);
    return min(arg_2.c, ~arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(56674u, _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_1(Struct_3(Struct_1(global1.a, -51470i, vec3<i32>(global1.d, global1.b, global1.b), -1i), u_input.a.x, vec3<bool>(false, false, false)), Struct_1(global1.a, 8819i, vec3<i32>(u_input.b, u_input.b, 39690i), -2147483647i), Struct_2(u_input.c, vec2<bool>(false, false), u_input.a.x), true), 1u ^ u_input.a.x), countOneBits(1u)), u_input.a.x));
    global4 = ~firstLeadingBit(max(~vec3<u32>(55563u, u_input.a.x, global4.x), vec3<u32>(22339u, 1u, max(9740u, global4.x))));
    let var_1 = vec4<bool>(true, !any(vec4<bool>(false, true, false, false)) == true, all(!vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, false)), any(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-256f, global1.a.x))) >= _wgslsmith_f_op_f32(sign(global1.a.x)));
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global1.b << (147459u % 32u), global1.b, u_input.b), abs(0i ^ global1.d), global1.c.x), countOneBits(global1.c)), var_1.yw, u_input.a.x);
    var var_3 = Struct_2(-44294i, !var_1.yz, _wgslsmith_clamp_u32(select(~func_3(global1.a.xz, Struct_2(u_input.b, var_1.zx, u_input.a.x), Struct_1(vec3<f32>(global1.a.x, global1.a.x, 871f), u_input.b, global1.c, -1i), Struct_2(-1i, vec2<bool>(true, true), var_2.c)), 14541u, true), max((global4.x >> (global4.x % 32u)) & ~0u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 23431u, global4.x, 38112u)), vec4<u32>(u_input.a.x, 4294967295u, global4.x, global4.x))), func_3(global1.a.yz, Struct_2(_wgslsmith_mod_i32(global1.d, global1.c.x), !vec2<bool>(true, var_1.x), _wgslsmith_clamp_u32(89976u, var_2.c, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 589f, 1063f)), ~var_2.a, vec3<i32>(2147483647i, u_input.b, 25459i), global1.c.x << (u_input.a.x % 32u)), Struct_2(-1i | var_2.a, !vec2<bool>(true, var_1.x), _wgslsmith_mult_u32(global4.x, 39879u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(1141i, u_input.b, abs(34564i), ~var_3.a), _wgslsmith_clamp_vec4_i32(firstLeadingBit(select(vec4<i32>(var_3.a, -1i, 17619i, 1i), vec4<i32>(2147483647i, global1.d, global1.c.x, var_3.a), var_1)), reverseBits(firstTrailingBit(vec4<i32>(global1.c.x, 2147483647i, global1.b, 48154i))), ~(vec4<i32>(var_3.a, -16545i, var_2.a, 1i) << (vec4<u32>(0u, var_2.c, 122325u, global4.x) % vec4<u32>(32u))))));
}

