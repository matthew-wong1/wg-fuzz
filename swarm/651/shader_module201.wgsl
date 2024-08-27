struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 6>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    global1 = array<vec2<bool>, 16>();
    var var_0 = ~_wgslsmith_mod_vec2_u32(select(reverseBits(~vec2<u32>(114203u, 0u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(69065u, 38189u), vec2<u32>(32011u, 14006u)), !(!global2.b.a)), ~(~(~vec2<u32>(11048u, 469u))));
    var_0 = select(_wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(26402u, 1u), _wgslsmith_mod_u32(var_0.x, var_0.x)), abs(firstLeadingBit(vec2<u32>(54532u, var_0.x) & vec2<u32>(var_0.x, 4294967295u)))), firstTrailingBit(~(~vec2<u32>(var_0.x, var_0.x))), global1[_wgslsmith_index_u32(~var_0.x, 16u)]);
    var var_1 = Struct_2(Struct_1(all(!global1[_wgslsmith_index_u32(reverseBits(0u), 16u)]), arg_1, ~(~countOneBits(vec2<i32>(global2.b.c.x, 0i))), u_input.a), global2.c, Struct_1(-2147483647i < u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(global2.a.b.x, global2.b.b.x), _wgslsmith_f_op_f32(min(arg_1.x, -944f))) - vec3<f32>(_wgslsmith_f_op_f32(-global2.c.b.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_1.x, 1000f))), ~reverseBits(~u_input.c.yz), u_input.a));
    global0 = array<bool, 16>();
    return reverseBits(firstLeadingBit(_wgslsmith_mult_u32(~abs(var_0.x), 48667u)));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = Struct_1(!(!global0[_wgslsmith_index_u32(func_3(global2.a.b.xz, global2.c.b), 16u)]) == global0[_wgslsmith_index_u32(~(~(~986u)), 16u)], vec3<f32>(701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b.b.x))) + global2.b.b.x), -3131f), ~(_wgslsmith_sub_vec2_i32(global2.c.c, min(vec2<i32>(-41780i, global2.b.c.x), vec2<i32>(0i, -1i))) >> (~(~vec2<u32>(arg_0.x, 28737u)) % vec2<u32>(32u))), ~(~_wgslsmith_mult_i32(~48939i, -1i)));
    global1 = array<vec2<bool>, 16>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2.a.b.x)), _wgslsmith_div_f32(-573f, 382f)))))))));
    let var_2 = vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x & ~_wgslsmith_dot_vec3_u32(arg_0.wwy, vec3<u32>(32626u, arg_0.x, arg_0.x))), 16u)], !(6080u < ~arg_0.x) & true, all(select(!(!vec3<bool>(true, true, var_0.a)), select(vec3<bool>(var_0.a, true, true), select(vec3<bool>(false, false, global2.a.a), vec3<bool>(true, false, false), var_0.a), select(vec3<bool>(false, global2.b.a, var_0.a), vec3<bool>(true, global2.c.a, false), var_0.a)), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 16u)], true)))));
    var var_3 = arg_0.wzx;
    return firstTrailingBit(-(~0i));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(func_2(vec4<u32>(1u, 1u, 1u, 1u)), global2.b.d);
    return global2.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = !global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(~select(71745u, 24166u, global2.b.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(89952u, 36595u, 48168u, 105246u), vec4<u32>(0u, 4294967295u, 2774u, 0u)), countOneBits(1u), ~1u)), ~(~(~33717u))), 16u)];
    global2 = arg_1;
    global3 = array<Struct_2, 6>();
    let var_1 = vec4<u32>(countOneBits(0u), 87804u, 6073u, ~10435u);
    var var_2 = var_1.wwx;
    return ~(~vec4<u32>(min(1u, 22992u), 23504u, _wgslsmith_add_u32(21631u, var_2.x) & 117951u, var_2.x));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = arg_3.x;
    let var_2 = ~global2.c.c.x >> ((0u | abs(125201u ^ arg_2.x)) % 32u);
    let var_3 = arg_0.a;
    let var_4 = Struct_2(arg_0, arg_0, var_0);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.a.b.x, 1002f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c;
    global0 = array<bool, 16>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global2.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), true && (global2.b.b.x > -1276f))), 524f)) * var_0.b.x);
    global0 = array<bool, 16>();
    global3 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), -1000f), max(~(u_input.c & vec4<i32>(-73508i, var_0.d, 2147483647i, var_0.d)) ^ ~vec4<i32>(global2.a.d, u_input.b, 11698i, 1i), -(u_input.c ^ ~u_input.c)), _wgslsmith_f_op_f32(func_5(global2.c, _wgslsmith_f_op_f32(step(-136f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), global2.b.b.x, u_input.d > -23169i)))), func_4(global2.c, Struct_2(func_1(), global2.a, Struct_1(true, vec3<f32>(-764f, -687f, -363f), vec2<i32>(var_0.c.x, -36831i), -26105i)), Struct_1(select(global0[_wgslsmith_index_u32(0u, 16u)], global2.a.a, global0[_wgslsmith_index_u32(83978u, 16u)]), _wgslsmith_f_op_vec3_f32(-global2.c.b), vec2<i32>(var_0.c.x, u_input.a), ~u_input.b)), -max(vec3<i32>(2147483647i, 47431i, 0i), _wgslsmith_add_vec3_i32(u_input.c.wzy, u_input.c.yxz)))), select(reverseBits(~vec3<u32>(1u, 0u, 0u)), func_4(func_1(), global3[_wgslsmith_index_u32(3156u, 6u)], global2.b).wwz, !select(!vec3<bool>(false, var_0.a, global2.c.a), vec3<bool>(true, true, true), select(vec3<bool>(true, global2.a.a, true), vec3<bool>(true, var_0.a, var_0.a), global2.c.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a.b - global2.b.b)));
}

