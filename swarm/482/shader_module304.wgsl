struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.b.yx;
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.b.zz);
    var var_1 = 1i;
    global0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(45775u, max(25259u, ~4294967295u), global0.x, 0u), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.yz, global0.xw ^ vec2<u32>(4294967295u, 0u)), firstTrailingBit(43481u) & arg_0.a, 0u, min(~0u, ~0u)));
    global0 = vec4<u32>(~_wgslsmith_clamp_u32(37745u, _wgslsmith_mod_u32(~arg_0.a, select(global0.x, global0.x, false)), _wgslsmith_div_u32(global0.x, global0.x >> (arg_0.a % 32u))), _wgslsmith_dot_vec2_u32(global0.zy, ~_wgslsmith_div_vec2_u32(global0.wz | global0.yw, global0.wx)), _wgslsmith_mult_u32(min(min(~1u, ~5711u), abs(arg_0.a)), arg_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(_wgslsmith_add_u32(~global0.x, max(arg_0.a, 0u)), max(global0.x, abs(global0.x)))));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> f32 {
    let var_0 = !select(arg_2, arg_3, arg_3.x);
    global0 = ~vec4<u32>(0u ^ func_3(Struct_1(4294967295u, vec4<f32>(1000f, 446f, 495f, 331f), vec2<bool>(var_0.x, false))), 43312u, global0.x, 1u);
    var var_1 = vec2<bool>(true, true);
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(func_3(Struct_1(~global0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1823f, -1178f, 1419f, -590f) + vec4<f32>(-2308f, -879f, -1131f, 2103f)), vec2<bool>(false, false))), reverseBits(~(~global0.x))), ~(~global0.x));
    let var_3 = firstLeadingBit(-(~0i));
    return -1753f;
}

fn func_1() -> u32 {
    var var_0 = !vec3<bool>(_wgslsmith_mod_i32(u_input.b, max(u_input.a.x, u_input.a.x)) >= u_input.a.x, false, global0.x >= 1u);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-759f, _wgslsmith_f_op_f32(ceil(494f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b, vec4<i32>(22513i, -1i, -2147483647i, u_input.b), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, true))) + _wgslsmith_f_op_f32(f32(-1f) * -1354f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2261f * 1799f), 168f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, -753f, _wgslsmith_f_op_f32(round(-839f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(110f, 827f) + 386f))));
    var var_2 = 1558f;
    let var_3 = func_3(Struct_1(_wgslsmith_dot_vec2_u32(~global0.yx, vec2<u32>(min(16872u, 1u), ~24901u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1121f, var_1.x), var_1)) + _wgslsmith_f_op_vec4_f32(-var_1)), vec2<bool>(true, select(var_0.x, var_0.x, var_0.x) & all(vec4<bool>(false, true, var_0.x, var_0.x)))));
    global0 = ~(~_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(38916u, 2851u, 4294967295u, global0.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<u32>(38008u, var_3, global0.x, 9614u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, var_3, global0.x), vec4<u32>(global0.x, 4294967295u, var_3, 48494u)))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (min(vec4<u32>(global0.x, global0.x, ~global0.x, _wgslsmith_add_u32(global0.x, global0.x)), firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, 4715u) | vec4<u32>(global0.x, global0.x, global0.x, 98439u))) << (countOneBits(~select(vec4<u32>(global0.x, global0.x, 1u, 44951u), vec4<u32>(4294967295u, global0.x, global0.x, 1u), vec4<bool>(false, true, true, false))) % vec4<u32>(32u))) >> (vec4<u32>(global0.x, ~0u, abs(~global0.x), func_1()) % vec4<u32>(32u));
    global0 = vec4<u32>(1u, ~global0.x, global0.x, ~global0.x);
    let var_0 = Struct_1(firstTrailingBit(global0.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1216f, _wgslsmith_f_op_f32(1202f * 973f), _wgslsmith_f_op_f32(func_2(u_input.b, vec4<i32>(u_input.a.x, u_input.b, u_input.b, -1i), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), -415f)), vec4<f32>(_wgslsmith_f_op_f32(round(977f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1396f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2427f, -1737f))))), vec2<bool>(all(vec2<bool>(true, all(vec3<bool>(true, false, true)))), select(true, _wgslsmith_mod_u32(global0.x, global0.x) >= 1u, true)));
    let var_1 = select(vec4<u32>(0u, _wgslsmith_clamp_u32(~_wgslsmith_add_u32(var_0.a, var_0.a), select(global0.x, var_0.a ^ var_0.a, select(true, true, var_0.c.x)), 48776u), 4685u, _wgslsmith_mult_u32(reverseBits(0u ^ var_0.a), ~select(var_0.a, global0.x, false))), vec4<u32>(_wgslsmith_div_u32(global0.x, ~1u), ~var_0.a, _wgslsmith_mod_u32(global0.x, func_3(var_0) ^ (global0.x | global0.x)), ~(~(~global0.x))), vec4<bool>(var_0.c.x, var_0.c.x, (0u & ~var_0.a) <= global0.x, !all(!vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x))));
    global0 = ~vec4<u32>(var_0.a, global0.x, _wgslsmith_dot_vec3_u32(global0.wyx, global0.wxx >> ((global0.wyz | vec3<u32>(var_0.a, 1u, 23496u)) % vec3<u32>(32u))), var_0.a);
    let var_2 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_mod_u32(~69045u, 71222u), 14145u << (global0.x % 32u)), _wgslsmith_f_op_f32(func_2(u_input.a.x, vec4<i32>(0i, u_input.b, u_input.a.x, _wgslsmith_sub_i32(u_input.b, 0i)), !(!vec3<bool>(false, var_0.c.x, var_0.c.x)), select(select(!vec3<bool>(var_0.c.x, false, false), !vec3<bool>(var_0.c.x, var_0.c.x, false), true), vec3<bool>(select(var_0.c.x, var_0.c.x, true), true, var_0.c.x), select(vec3<bool>(var_0.c.x, var_0.c.x, true), select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(false, var_0.c.x, var_0.c.x)), var_0.c.x)))), abs(~abs(firstLeadingBit(vec3<u32>(var_0.a, 14149u, 1540u)))), u_input.b);
}

