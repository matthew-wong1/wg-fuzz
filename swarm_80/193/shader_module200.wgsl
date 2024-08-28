struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 62862u, vec2<i32>(1i, 2147483647i), -1i);

var<private> global1: bool;

var<private> global2: u32;

var<private> global3: array<bool, 17>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = global0.c.x;
    let var_2 = Struct_1(4294967295u, abs(~(~select(4294967295u, global0.a, true))), ~global0.c, global0.d);
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(~(~arg_1.c.x), _wgslsmith_add_i32(~28214i, var_2.c.x)), 0i, arg_1.d), -abs(~vec4<i32>(0i, arg_1.d, 8813i, global0.d) & (vec4<i32>(-2147483647i, 12118i, 2147483647i, var_2.c.x) | vec4<i32>(2147483647i, arg_1.d, arg_1.c.x, -1i))));
    let var_4 = 1f;
    return arg_1;
}

fn func_3() -> Struct_1 {
    var var_0 = firstLeadingBit(reverseBits(~(~_wgslsmith_div_vec2_i32(global0.c, vec2<i32>(global0.c.x, 50590i)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1525f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(617f + 338f) + 902f), _wgslsmith_f_op_f32(ceil(230f))))), 833f);
    var_1 = 1f;
    var var_2 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(~u_input.b.x, 31730u)), ~vec2<u32>(1u, 60067u));
    var_1 = -1651f;
    return Struct_1(var_2.x, _wgslsmith_mod_u32(min(~15693u << (~4294967295u % 32u), global0.b), ~(~(~global0.b))), global0.c, -11215i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(323f, arg_0.x), arg_0.x)), func_1(163f, func_1(-220f, func_1(-649f, func_1(arg_0.x, Struct_1(1u, 42817u, vec2<i32>(global0.d, 2147483647i), -2147483647i))))));
    let var_1 = _wgslsmith_mult_i32(-35304i, (i32(-1i) * -var_0.c.x) | var_0.d) >= ~19770i;
    let var_2 = _wgslsmith_mult_vec2_u32(~u_input.a, firstTrailingBit(_wgslsmith_add_vec2_u32(~arg_1, firstLeadingBit(vec2<u32>(0u, u_input.c)))));
    var var_3 = reverseBits(global0.c);
    var var_4 = func_1(1f, func_3());
    return vec3<bool>((!(global0.c.x > var_4.c.x) || ((-3877i | global0.d) == (var_3.x << (var_0.a % 32u)))) != ((1i >> (1u % 32u)) < var_4.d), var_1, true & all(select(select(vec3<bool>(arg_2.x, arg_3.x, true), vec3<bool>(var_1, true, arg_2.x), arg_3.x), select(vec3<bool>(arg_2.x, var_1, true), vec3<bool>(true, global3[_wgslsmith_index_u32(global0.a, 17u)], var_1), false), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<i32> {
    global0 = arg_0.b;
    global1 = !arg_1.x;
    var var_0 = 1i;
    return vec3<i32>(abs(~global0.d), global0.c.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 17>();
    global2 = global0.a;
    var var_0 = -func_4(Struct_2(!global3[_wgslsmith_index_u32(4294967295u, 17u)] | global3[_wgslsmith_index_u32(u_input.c ^ 18702u, 17u)], func_1(_wgslsmith_f_op_f32(f32(-1f) * -1785f), Struct_1(1u, 16632u, vec2<i32>(global0.d, -13332i), global0.d)), ~global0.b), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-979f, -363f, 1103f) * vec3<f32>(-981f, 2957f, -353f))), vec2<u32>(13234u, u_input.b.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(47228u, 17u)])), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], true)));
    let var_1 = Struct_1(select(u_input.c, 1u << (~u_input.a.x % 32u), true) & func_3().b, _wgslsmith_add_u32(59838u, global0.b), global0.c, countOneBits(~(-func_3().c.x)));
    var var_2 = Struct_2(true, var_1, max(3914u, u_input.c));
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(var_1.b, 17u)] && any(select(select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(global0.b, 17u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 17u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], var_2.a, var_2.a, var_2.a)), vec4<bool>(false, global3[_wgslsmith_index_u32(18866u, 17u)], true, false), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(87265u, 56555u), 17u)])), Struct_1(27321u, ~(~33752u) >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.b, 14080u), _wgslsmith_sub_u32(u_input.c, 25082u), ~var_2.c) % 32u), var_1.c, func_3().d), var_1.a);
    let var_4 = ~34450i;
    var var_5 = Struct_2(var_3.a, func_3(), ~(~max(var_1.b, var_3.c)));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 29861u >> (~u_input.b.x % 32u), var_0.x);
}

