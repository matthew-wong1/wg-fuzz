struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(!(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), false)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-(vec4<i32>(16568i, -2147483647i, 2147483647i, 0i) >> (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, 0i, 22811i, -57830i), ~vec4<i32>(21072i, 0i, -23970i, 9635i))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(15964i, -2147483647i, -1i, -1i), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 9470i, 1i, -22374i), vec4<i32>(-14931i, 8997i, 4976i, 26795i))))), min(countOneBits(vec3<i32>(_wgslsmith_add_i32(-2147483647i, -1i), 37006i << (u_input.a.x % 32u), -1i)), countOneBits(~max(vec3<i32>(1i, -66588i, 24267i), vec3<i32>(2147483647i, -1i, 44451i)))));
    global0 = array<vec2<f32>, 27>();
    var var_1 = var_0;
    return ~((_wgslsmith_clamp_vec4_i32(-var_0.b, abs(vec4<i32>(var_0.b.x, 858i, -4401i, 1i)), var_1.b) & (select(vec4<i32>(2147483647i, var_0.b.x, -25061i, -62459i), var_0.b, true) >> (vec4<u32>(1u, 0u, 22087u, u_input.a.x) % vec4<u32>(32u)))) ^ _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-2147483647i, var_0.c.x, var_1.b.x, var_0.c.x)) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_1.b.x, 2147483647i, var_0.c.x), var_0.b), _wgslsmith_mod_vec4_i32(var_1.b, var_0.b))));
}

fn func_2() -> bool {
    var var_0 = vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, 0u) << (1u % 32u)) >> (abs(u_input.a.x) % 32u), ~4294967295u, ~(~(~u_input.a.x)) >> (~42404u % 32u));
    var_0 = _wgslsmith_div_vec3_u32(u_input.a, u_input.a);
    let var_1 = Struct_1(vec3<bool>(true, any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false), func_3() & vec4<i32>(1i, 1i, 1i, 1i), ~vec3<i32>(-13476i & _wgslsmith_dot_vec4_i32(vec4<i32>(-25492i, -2147483647i, 0i, 3789i), vec4<i32>(2147483647i, -1i, 0i, 0i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, -2147483647i, 0i, -6837i)), vec4<i32>(2147483647i, 1i, -35888i, 0i)), -2147483647i));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(var_0.x), ~countOneBits(var_0.x ^ u_input.a.x)), 27u)];
    let var_3 = Struct_1(!(!vec3<bool>(true, var_1.a.x, true)), vec4<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_1.c.x, var_1.c.x), vec3<i32>(461i, 26817i, -20929i)), var_1.b.zxz), _wgslsmith_clamp_i32(var_1.b.x, _wgslsmith_mod_i32(0i, var_1.b.x & -1i), min(1i, _wgslsmith_mod_i32(var_1.c.x, -2147483647i))), var_1.b.x | var_1.b.x, -23950i), ~(func_3().wwy | ~(vec3<i32>(var_1.b.x, 0i, -1i) & var_1.c)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(207f, arg_2))));
    let var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = Struct_1(vec3<bool>(!any(select(vec3<bool>(var_1.a.x, var_1.a.x, true), arg_1.a, vec3<bool>(arg_1.a.x, true, var_2.a.x))), all(!(!var_1.a)), all(select(var_2.a.zz, var_1.a.zy, vec2<bool>(false, false)))), var_1.b, select(vec3<i32>(-20449i, -(var_1.c.x & 54049i), arg_1.c.x), -countOneBits(var_1.c), arg_1.a));
    var var_4 = vec2<bool>(min(max(var_1.c.x, _wgslsmith_add_i32(-2147483647i, arg_1.c.x)), 16018i) > -var_2.c.x, all(!select(!vec4<bool>(true, var_3.a.x, false, true), select(vec4<bool>(arg_0, true, arg_1.a.x, false), vec4<bool>(var_2.a.x, var_2.a.x, arg_0, true), false), true & var_1.a.x)));
    return arg_1;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = arg_2;
    let var_1 = arg_3;
    let var_2 = -2147483647i;
    let var_3 = var_1.b.zzy;
    let var_4 = var_0;
    return vec4<i32>(-_wgslsmith_sub_i32(countOneBits(-2147483647i) >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), -select(arg_2.b.x, var_2, false)), var_3.x, -var_2 >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(-13808i << (abs(u_input.a.x) % 32u), -1i, 5212i));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = Struct_1(!select(select(vec3<bool>(true, arg_0, false), !vec3<bool>(arg_0, arg_0, arg_0), true), vec3<bool>(arg_0, true, true), vec3<bool>(all(vec3<bool>(arg_0, arg_0, arg_0)), false, u_input.a.x >= 47588u)), func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -299f), 211f), countOneBits(-(~47463i)), Struct_1(select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, true, arg_0), true), ~_wgslsmith_sub_vec4_i32(vec4<i32>(25833i, -31234i, 38900i, 0i), vec4<i32>(-26525i, -1i, 20910i, 2147483647i)), -firstLeadingBit(vec3<i32>(-2147483647i, 0i, -1i))), func_4(func_2(), Struct_1(vec3<bool>(false, arg_0, arg_0), vec4<i32>(-3204i, -38885i, -1i, 1i) >> (vec4<u32>(u_input.a.x, 10693u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec3<i32>(1i, 1i, 1i)), -1244f)), func_3().wzz);
    global0 = array<vec2<f32>, 27>();
    let var_1 = var_0.a;
    global0 = array<vec2<f32>, 27>();
    var var_2 = func_4(true, Struct_1(vec3<bool>(true, true, true), reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(37781i, var_0.b.x, 2147483647i, var_0.c.x), vec4<i32>(2147483647i, var_0.c.x, var_0.b.x, var_0.b.x))), vec3<i32>(-min(var_0.c.x, -2147483647i), -4227i, var_0.c.x >> (u_input.a.x % 32u))), -924f);
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    var var_0 = ~(~(~max(countOneBits(22709u), firstLeadingBit(u_input.a.x))));
    let var_1 = abs(-1i);
    var var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_mod_i32(-func_1(any(vec2<bool>(var_2.x, var_2.x))) >> (_wgslsmith_add_u32(~u_input.a.x, 1u) % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_1, 2147483647i | var_1), _wgslsmith_div_i32(_wgslsmith_sub_i32(12894i ^ var_1, _wgslsmith_div_i32(-1i, 18278i)), ~select(var_1, -27955i, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-987f, -1435f)), _wgslsmith_f_op_f32(max(-2261f, -402f))), _wgslsmith_f_op_f32(step(868f, -1000f)))), min(-1693i, 33231i), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -2147483647i, func_4(var_2.x, Struct_1(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, var_2.x)), vec4<i32>(var_1, var_1, 1i, 46941i) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), countOneBits(vec3<i32>(var_1, var_1, var_1))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -977f))), func_4(true, func_4(true, Struct_1(vec3<bool>(var_2.x, var_2.x, var_2.x), vec4<i32>(31627i, var_1, -24196i, -2147483647i), vec3<i32>(var_1, var_1, 0i)), -1000f), 886f)).x);
}

