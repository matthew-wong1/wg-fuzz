struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(-2181i, vec2<f32>(459f, -1402f), 80191i), false, vec4<bool>(false, true, false, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    var var_0 = reverseBits(37544i);
    let var_1 = vec4<bool>(select(!arg_1.x, all(vec4<bool>(global1.d.x, global1.d.x, all(vec3<bool>(global1.d.x, true, false)), true)), global1.b | arg_0.c.x), false, false, arg_0.b);
    let var_2 = vec3<i32>(-1i, arg_0.a.c, _wgslsmith_dot_vec3_i32((abs(vec3<i32>(1i, 1i, arg_0.a.c)) << (firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))) & -_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.a, -19153i, -2147483647i), vec3<i32>(global1.a.c, 0i, -56708i)), vec3<i32>(34105i, -23816i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c, 1i, -18531i, arg_0.a.a), vec4<i32>(1i, global1.a.a, -1i, 1i)), arg_0.a.a)));
    var var_3 = vec4<f32>(1585f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.b.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -609f))) + arg_0.a.b.x), arg_0.a.b.x, -898f);
    var var_4 = vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(-min(-2147483647i, global1.a.c)), _wgslsmith_mod_i32(arg_0.a.c, -2147483647i) << (~(24588u << (0u % 32u)) % 32u)), -9685i, -34752i, arg_0.a.c);
    return 0u;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    global0 = array<vec4<bool>, 12>();
    var var_0 = vec2<bool>(true, false);
    return Struct_2(global1.a, !any(vec2<bool>(all(global1.c), global1.a.b.x != arg_1)), select(!(!select(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)])), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, func_3(Struct_2(global1.a, true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec2<bool>(false, false)), global1.d)), 12u)], !any(!vec4<bool>(var_0.x, true, false, false))), global1.d);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_i32(global1.a.a, select(-arg_1, arg_1, global1.c.x));
    global1 = func_2(-(vec3<i32>(-1i) * -reverseBits(vec3<i32>(9406i, 43531i, 0i))), _wgslsmith_f_op_f32(-global1.a.b.x));
    let var_1 = ~u_input.a.wxz;
    var var_2 = 195f;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.b.x, func_2(vec3<i32>(var_0, arg_1, -2147483647i), arg_2).a.b.x), vec2<f32>(_wgslsmith_f_op_f32(-arg_2), global1.a.b.x))) + _wgslsmith_f_op_vec2_f32(select(global1.a.b, vec2<f32>(_wgslsmith_div_f32(267f, global1.a.b.x), _wgslsmith_f_op_f32(ceil(global1.a.b.x))), global1.c.zx))), _wgslsmith_f_op_vec2_f32(-global1.a.b)));
    return vec4<bool>(~_wgslsmith_mod_u32(5348u, var_1.x) < ~abs(_wgslsmith_dot_vec2_u32(var_1.xy, u_input.a.xw)), global1.a.c <= -2147483647i, global1.b, any(global1.c.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, global1.a.a), vec3<i32>(global1.a.c, 18707i, global1.a.c)), reverseBits(vec3<i32>(1i, 2147483647i, 0i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 494f) - vec2<f32>(732f, global1.a.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(875f, 1997f))) - global1.a.b), global1.a.a), all(func_1(u_input.a.x, _wgslsmith_sub_i32(-34091i, -5172i), _wgslsmith_f_op_f32(global1.a.b.x - 363f))) == false, select(global1.c, func_1(u_input.b.x, (56910i << (u_input.b.x % 32u)) ^ (global1.a.a & global1.a.c), global1.a.b.x), select(global0[_wgslsmith_index_u32(select(67086u, 942u, global1.c.x), 12u)], vec4<bool>(global1.b, !global1.b, false, all(vec3<bool>(global1.d.x, false, global1.b))), true)), !(!select(vec2<bool>(true, global1.b), select(global1.c.zx, global1.d, vec2<bool>(global1.b, global1.c.x)), vec2<bool>(global1.b, global1.c.x))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(57283i, countOneBits(var_0.a.a), ~57855i, -global1.a.c), ~_wgslsmith_div_vec4_i32(vec4<i32>(23722i, global1.a.a, 0i, -2147483647i), vec4<i32>(85971i, 1i, 1i, var_0.a.c))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1670f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(109f, var_0.a.b.x)))), countOneBits(-2341i)), (global1.a.a << (u_input.b.x % 32u)) == var_0.a.c, select(select(func_2(vec3<i32>(global1.a.a, 16386i, global1.a.a), var_0.a.b.x).c, vec4<bool>(!var_0.d.x, true, false != var_0.d.x, true), !(global1.a.c > 2147483647i)), vec4<bool>(all(!global1.c.xzx), var_0.d.x, var_0.b, !var_0.b == any(var_0.c.zy)), vec4<bool>(any(vec4<bool>(global1.d.x, false, false, global1.c.x)) || any(vec3<bool>(false, false, true)), false, true, false)), vec2<bool>(!var_0.b, var_0.c.x));
    var_0 = Struct_2(Struct_1(-var_1.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(global1.a.b.x * global1.a.b.x)) - _wgslsmith_f_op_vec2_f32(-var_0.a.b)), var_1.a.a), var_0.b, global1.c, var_0.c.yz);
    let var_2 = max(vec4<u32>(~36794u & ~u_input.a.x, u_input.a.x & u_input.a.x, ~14878u, 65618u), vec4<u32>(u_input.b.x, 43082u, u_input.a.x, ~_wgslsmith_div_u32(0u, 26839u))) >> (vec4<u32>(~(~67119u), 32750u, u_input.b.x, max(4294967295u, u_input.a.x)) % vec4<u32>(32u));
    var var_3 = _wgslsmith_dot_vec3_u32(u_input.a.ywz, vec3<u32>(var_2.x | ~var_2.x, (1u & _wgslsmith_dot_vec3_u32(var_2.ywy, u_input.a.wzw)) ^ (firstLeadingBit(0u) ^ _wgslsmith_clamp_u32(0u, 3874u, 35839u)), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(19735u, _wgslsmith_div_f32(1010f, global1.a.b.x), vec4<f32>(var_1.a.b.x, -1212f, var_0.a.b.x, -574f), countOneBits(max(_wgslsmith_mult_vec4_u32(min(var_2, vec4<u32>(0u, 61088u, 128064u, 4294967295u)), ~u_input.a), var_2 | ~vec4<u32>(u_input.a.x, u_input.b.x, var_2.x, var_2.x))), -13887i);
}

