struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(4294967295u, 4294967295u, 26643u, 7581u, 19954u, 52892u, 1u, 15648u, 42792u, 6657u, 44165u, 1u, 1u, 4294967295u, 1u, 13585u, 1u, 27923u, 17072u, 38688u);

var<private> global1: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -435f);
    var var_1 = Struct_5(-2213f, any(vec2<bool>(!all(vec3<bool>(global1.a.x, false, false)), arg_0)), select(select(vec2<bool>(!global1.a.x, !arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, true)), select(vec2<bool>(arg_0, global1.a.x), !select(vec2<bool>(global1.a.x, false), global1.a.yx, vec2<bool>(false, false)), !(!global1.a.xy)), select(vec2<bool>(all(global1.a), arg_0), vec2<bool>(arg_0, global1.a.x), true)), 2147483647i);
    let var_2 = select(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_1.d, 5017i, 27643i, 1423i), vec4<i32>(var_1.d, var_1.d, 2147483647i, var_1.d), vec4<bool>(false, false, var_1.c.x, arg_0)), -vec4<i32>(-61329i, var_1.d, var_1.d, var_1.d)), ~max(vec4<i32>(-2147483647i, var_1.d, var_1.d, var_1.d), vec4<i32>(var_1.d, 0i, 6530i, var_1.d)), ~_wgslsmith_div_vec4_i32(vec4<i32>(10157i, var_1.d, -1i, -2147483647i), vec4<i32>(-1i, 0i, var_1.d, var_1.d))), firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(~var_1.d, 0i), -(~(-1i)), i32(-1i) * -var_1.d, ~var_1.d & -9326i)), select(global1.a, select(global1.a, select(!vec4<bool>(true, true, true, arg_0), !global1.a, arg_0 || false), global1.a), false));
    global1 = Struct_4(vec4<bool>(var_1.c.x, false, var_1.b, global1.a.x), global1.b, _wgslsmith_f_op_f32(-var_1.a));
    var var_3 = Struct_2(any(global1.a), Struct_1(~(~24319u) ^ abs(abs(global1.b.x)), -1i, var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-521f, var_1.a))))), ~(~max(vec4<i32>(37383i, var_1.d, 2147483647i, 4197i), vec4<i32>(var_1.d, -1074i, 9761i, 0i)))), true, !vec4<bool>(!any(global1.a.yx), all(var_1.c), true == (-18941i >= var_2.x), arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-565f)))));
    return reverseBits(var_3.b.e.x & var_1.d);
}

fn func_2(arg_0: f32) -> vec3<i32> {
    let var_0 = global1.a;
    return vec3<i32>(_wgslsmith_mod_i32(-func_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] < 52194u), 34426i >> (global1.b.x % 32u)), countOneBits(41054i), -(reverseBits(-2147483647i) << (u_input.b.x % 32u)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(-1i, -43820i, -36192i)), func_2(_wgslsmith_div_f32(global1.c, -517f))) >> (_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.x, u_input.a, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37230u, 20u)], 20u)]), u_input.b)) << (~(vec4<u32>(4294967295u, global1.b.x, 4294967295u, u_input.a) & u_input.b) % vec4<u32>(32u)), ((vec4<u32>(4294967295u, u_input.b.x, global1.b.x, 11590u) >> (vec4<u32>(global1.b.x, global1.b.x, 26889u, 46421u) % vec4<u32>(32u))) & ~u_input.b) >> (u_input.b % vec4<u32>(32u))) % 32u);
    let var_1 = !global1.a.x;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.c))))));
    var_0 = min(~(~_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -18576i), vec2<i32>(-26291i, -7541i)))), ~(-2147483647i) & abs(func_3(true && global1.a.x)));
    var_0 = -(_wgslsmith_add_i32(~(~5057i), func_2(var_2).x) << (select(u_input.b.x, u_input.a, true) % 32u));
    return _wgslsmith_f_op_f32(-global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(vec4<bool>(true, true, true, global1.a.x), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(1341f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c)) - global1.c))));
    global0 = array<u32, 20>();
    var var_0 = Struct_4(!global1.a, u_input.b.yy & (_wgslsmith_add_vec2_u32(global1.b, countOneBits(vec2<u32>(u_input.b.x, 0u))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.xw, global1.b, vec2<u32>(u_input.b.x, 1u)), global1.b) % vec2<u32>(32u))), global1.c);
    let var_1 = ~vec3<i32>(-1i, max(1i, func_2(1f).x), min(~1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-27601i, 32763i), vec2<i32>(-16979i, 16150i)), select(1i, -1i >> (u_input.b.x % 32u), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(37855i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c * global1.c))), var_1);
}

