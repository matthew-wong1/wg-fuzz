struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: bool = false;

var<private> global3: array<vec2<u32>, 21>;

var<private> global4: Struct_2 = Struct_2(2147483647i, vec2<bool>(true, false), vec2<i32>(28435i, 1i), -2511f, Struct_1(vec3<u32>(0u, 10735u, 105834u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    return global4.e;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = vec4<i32>(-((min(arg_1.a, 2147483647i) | ~(-9741i)) << ((0u << (arg_2 % 32u)) % 32u)), firstLeadingBit(i32(-1i) * -arg_1.a), abs(global4.a), (_wgslsmith_sub_i32(48829i, firstTrailingBit(-499i)) >> (~_wgslsmith_mod_u32(0u, u_input.a) % 32u)) >> (~global0.a.x % 32u));
    let var_1 = arg_0;
    var var_2 = global4.d;
    var var_3 = Struct_2(8664i, global4.b, countOneBits(var_0.wx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, 981f))))) + -501f), func_2(vec4<bool>(select(!global4.b.x, global4.e.a.x < 4294967295u, global4.b.x), global4.b.x, !arg_1.b.x, false), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.a, global4.a), -(arg_1.c.x << (0u % 32u))), vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_1.d + 231f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_1.d * var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -360f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.d)), _wgslsmith_f_op_f32(-arg_0)))), ~max(2147483647i, 0i) > reverseBits(-var_0.x)));
    var var_4 = arg_1.b.x;
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = func_3(global4.d, Struct_2(min(global4.c.x, 0i), global4.b, global4.c, _wgslsmith_f_op_f32(abs(arg_0.d)), func_2(vec4<bool>(true | global4.b.x, global4.b.x, -13077i < arg_0.c.x, arg_0.b.x), max(global4.c.x, -1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1429f, -849f, global4.d) + vec4<f32>(global4.d, -437f, 789f, -273f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-641f, arg_0.d, global4.d, arg_0.d) - vec4<f32>(420f, global4.d, arg_0.d, global4.d))), global4.b.x)), 1u, ~_wgslsmith_mult_vec2_u32(global0.a.yy, _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 0u), global3[_wgslsmith_index_u32(~21577u, 21u)])));
    var var_1 = !global4.b.x;
    let var_2 = -vec2<i32>(~(-2147483647i), _wgslsmith_mod_i32(0i, global4.c.x));
    var var_3 = vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -364f), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.d))))), Struct_2(select(var_0.c.x, -5810i, true) & -5914i, global4.b, var_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-743f, 817f)), Struct_1(~vec3<u32>(106273u, 55532u, 5712u))), u_input.a, max(~vec2<u32>(1u, 0u), global0.a.xx)).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1399f * -2412f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d, global4.d)) + global4.d) * arg_0.d)));
    let var_4 = any(arg_0.b);
    return vec3<bool>(var_4, true & !any(vec4<bool>(true, true, true, false)), !(!var_4 | any(select(vec4<bool>(true, global4.b.x, false, false), vec4<bool>(var_0.b.x, var_0.b.x, true, false), vec4<bool>(true, true, var_4, var_4)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!select(select(vec3<bool>(false, global4.b.x, false), vec3<bool>(global4.b.x, global4.b.x, false), false), !vec3<bool>(global4.b.x, global4.b.x, false), true), select(vec3<bool>(!global4.b.x, !global4.b.x, global4.b.x), select(select(vec3<bool>(true, global4.b.x, global4.b.x), vec3<bool>(true, true, global4.b.x), true), select(vec3<bool>(false, false, false), vec3<bool>(false, global4.b.x, global4.b.x), global4.b.x), func_1(Struct_2(global4.a, vec2<bool>(global4.b.x, true), global4.c, global4.d, global4.e))), any(select(vec4<bool>(false, global4.b.x, true, true), vec4<bool>(false, false, false, global4.b.x), vec4<bool>(global4.b.x, global4.b.x, true, false)))), global4.b.x));
    var var_1 = 4294967295u & max(_wgslsmith_sub_u32(u_input.a, global0.a.x), global0.a.x >> (((22818u >> (u_input.a % 32u)) << (global4.e.a.x % 32u)) % 32u));
    let var_2 = _wgslsmith_mod_vec2_i32(global4.c, reverseBits(~select(vec2<i32>(global4.c.x, -18793i), firstTrailingBit(vec2<i32>(global4.a, 43494i)), func_1(Struct_2(global4.c.x, vec2<bool>(global4.b.x, true), vec2<i32>(1i, 25045i), 120f, global4.e)).zz)));
    var var_3 = global4.d;
    let var_4 = !func_1(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.d)) * _wgslsmith_f_op_f32(f32(-1f) * -1228f)), func_3(_wgslsmith_div_f32(-146f, global4.d), func_3(global4.d, Struct_2(-7097i, vec2<bool>(false, global4.b.x), vec2<i32>(-5364i, 0i), 330f, global4.e), global0.a.x, global0.a.zx), min(u_input.a, u_input.a), func_3(global4.d, Struct_2(15869i, vec2<bool>(false, global4.b.x), global4.c, 1000f, Struct_1(vec3<u32>(u_input.a, global4.e.a.x, global4.e.a.x))), u_input.a, global4.e.a.zz).e.a.xz), abs(_wgslsmith_clamp_u32(global4.e.a.x, 1u, global4.e.a.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global4.e.a.x, 11600u), global3[_wgslsmith_index_u32(global0.a.x, 21u)]))).yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 1u, 0u, _wgslsmith_mod_u32(15402u, global4.e.a.x)), global4.c.x, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~global0.a.x, global4.e.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.a.xx, global4.e.a.xx), 18331u), ~1u, ~max(u_input.a, global4.e.a.x)), ~vec4<u32>(~52796u, 1u, ~global0.a.x, global0.a.x)));
}

