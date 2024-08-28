struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: vec2<f32>;

var<private> global2: i32 = -16710i;

var<private> global3: Struct_2 = Struct_2(vec4<u32>(0u, 15361u, 4294967295u, 46170u), Struct_1(576f, vec4<bool>(true, false, true, false), vec3<bool>(false, false, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec2<bool> {
    var var_0 = vec2<i32>(22376i, select(-max(_wgslsmith_clamp_i32(37371i, -11695i, -2147483647i), abs(2147483647i)), -12641i, true));
    let var_1 = global3.a.wx;
    var var_2 = global3.b;
    global3 = Struct_2(vec4<u32>(var_1.x >> (18887u % 32u), arg_1.x, 24027u << ((firstTrailingBit(u_input.b) ^ max(1u, 1u)) % 32u), arg_1.x), Struct_1(global1.x, var_2.b, !select(select(var_2.c, var_2.c, global3.b.b.x), vec3<bool>(var_2.b.x, global3.b.b.x, true), var_2.b.wxy)));
    global3 = Struct_2(countOneBits(~arg_1), global3.b);
    return !vec2<bool>(var_2.b.x, !var_2.c.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = !vec4<bool>(global3.b.c.x && !(false && arg_2.x), arg_2.x, false, arg_2.x);
    var var_1 = arg_1;
    var var_2 = -187f;
    var var_3 = Struct_2(firstLeadingBit(~global3.a), global3.b);
    var var_4 = Struct_1(-1560f, vec4<bool>(var_3.b.a != global1.x, any(func_3(605f, var_3.a ^ global3.a)), _wgslsmith_clamp_u32(global3.a.x << (51318u % 32u), 85194u, select(0u, 39146u, false)) < arg_0.x, true), vec3<bool>(false, all(vec3<bool>(var_3.b.a <= global1.x, arg_2.x, arg_1 <= u_input.a)), var_3.b.b.x));
    return Struct_2(global3.a, Struct_1(_wgslsmith_f_op_f32(select(601f, var_3.b.a, _wgslsmith_dot_vec4_u32(var_3.a, var_3.a) != 4294967295u)), !var_3.b.b, vec3<bool>(!(!arg_2.x), var_4.c.x, all(select(arg_2, var_3.b.c, false)))));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2(~(global3.a.xxy & max(~vec3<u32>(global3.a.x, 0u, global3.a.x), global3.a.zwx)), ~_wgslsmith_div_i32(-1i, -(414i | u_input.a)), global3.b.b.yyx);
    var var_1 = var_0.b;
    global0 = array<vec4<i32>, 26>();
    let var_2 = !func_2(~global3.a.yxw, abs(~(-18335i >> (global3.a.x % 32u))), vec3<bool>(!global3.b.b.x, !(u_input.b >= global3.a.x), !var_1.c.x & true)).b.b.yw;
    let var_3 = u_input.a;
    return ~(~vec4<u32>(reverseBits(var_0.a.x), ~4294967295u, u_input.b ^ abs(4294967295u), 61311u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2(var_0.xzx, (~(~u_input.a) << (1u % 32u)) & _wgslsmith_add_i32(1i, ~11833i), func_2(vec3<u32>(var_0.x, 0u, _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_sub_u32(u_input.b, 4294967295u))), abs(_wgslsmith_dot_vec4_i32(countOneBits(global0[_wgslsmith_index_u32(global3.a.x, 26u)]), ~vec4<i32>(u_input.a, 10095i, u_input.a, 13979i))), !select(global3.b.c, vec3<bool>(true, global3.b.c.x, true), true)).b.b.wyz);
    var var_2 = u_input.b;
    global3 = func_2(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(var_0.zzz, global3.a.xyx), ~var_1.a.ywy << (global3.a.xyy % vec3<u32>(32u))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 11025i), vec3<i32>(u_input.a, 28272i, -82216i)), -u_input.a) >> (~0u % 32u), 1i), func_2(~(var_1.a.wzx & vec3<u32>(12002u, var_0.x, global3.a.x)), u_input.a, vec3<bool>(false, false, !any(vec3<bool>(global3.b.c.x, var_1.b.b.x, global3.b.b.x)))).b.c);
    global2 = 20526i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(628f, -596f, var_1.b.a, 829f))))), vec4<f32>(-1402f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - _wgslsmith_f_op_f32(global1.x - 1194f)), _wgslsmith_f_op_f32(-1398f + _wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_f_op_f32(-global3.b.a))), select(~global0[_wgslsmith_index_u32(global3.a.x, 26u)], firstLeadingBit(vec4<i32>(-1i, 36861i, 57442i, u_input.a) | vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i)) & _wgslsmith_add_vec4_i32(vec4<i32>(42971i, u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(39510u, 26u)]), var_1.b.b), ~var_0.wx);
}

