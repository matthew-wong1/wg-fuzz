struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: u32;

var<private> global2: f32 = 275f;

var<private> global3: Struct_1 = Struct_1(false, vec3<i32>(6755i, 2808i, -2526i));

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    global3 = Struct_1((!(0i != global3.b.x) || any(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global3.a), global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))) || false, vec3<i32>(1i, _wgslsmith_sub_i32(-global3.b.x, i32(-1i) * -33957i), global3.b.x));
    global0 = array<bool, 28>();
    var var_0 = true;
    var var_1 = u_input.a;
    var var_2 = max(global3.b.x, -global3.b.x);
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = 15031u;
    var var_0 = any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], select(true, select(global4.x < global4.x, !arg_1.a, all(vec3<bool>(arg_0.a, true, false))), arg_0.a)));
    var var_1 = -370f;
    global2 = 984f;
    global3 = arg_0;
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b, u_input.b), ~vec2<u32>(_wgslsmith_add_u32(u_input.a << (u_input.a % 32u), u_input.a), _wgslsmith_clamp_u32(u_input.a, func_2(), u_input.b.x & u_input.a)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(func_2(), ~_wgslsmith_clamp_u32(u_input.a, u_input.b.x, 4668u), u_input.a, func_3(Struct_1(arg_2.x, global3.b), Struct_1(true, vec3<i32>(-1142i, 45845i, -1i)))) ^ ~(_wgslsmith_mult_vec4_u32(vec4<u32>(38566u, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 1u)) | vec4<u32>(u_input.b.x, 138784u, 0u, u_input.b.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, max(4294967295u, 4294967295u), u_input.a, u_input.a >> (u_input.a % 32u)), firstTrailingBit(~vec4<u32>(60913u, 0u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 0u, 37266u, u_input.a))), vec4<u32>(_wgslsmith_div_u32(10069u, _wgslsmith_mod_u32(~u_input.a, u_input.a)), u_input.b.x, ~1u, u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-arg_1)));
    let var_2 = Struct_1(global3.a, _wgslsmith_div_vec3_i32(global3.b, vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -13618i, -39197i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.x, global3.b.x), global3.b.xz), ~2147483647i, any(vec4<bool>(global3.a, false, global3.a, true))), arg_0)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -1304f))) + vec2<f32>(569f, _wgslsmith_f_op_f32(round(global4.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -161f)))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, var_1) + vec2<f32>(global4.x, 689f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 129f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(global4.x, -728f)), arg_2)));
    return firstLeadingBit(-(abs(~vec3<i32>(global3.b.x, global3.b.x, arg_0)) << ((var_0.wxx << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 17352u, 13207u), vec3<u32>(1u, 50983u, 738u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec3_i32(reverseBits(global3.b), vec3<i32>(_wgslsmith_mult_i32(0i, global3.b.x), _wgslsmith_sub_i32(36719i, global3.b.x) | (global3.b.x | 31015i), 69130i));
    var var_1 = Struct_1(!all(vec3<bool>(true, true, false)), global3.b);
    var_0 = -min(-func_1(select(2147483647i, var_1.b.x, global3.a), global4.x, vec2<bool>(var_1.a, var_1.a), global4.x), var_1.b);
    var_0 = var_1.b;
    var var_2 = Struct_1(~u_input.b.x != 53988u, var_1.b);
    let var_3 = ~(-firstLeadingBit(~vec4<i32>(-2147483647i, 40799i, global3.b.x, var_0.x)));
    var_0 = func_1(-var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1022f), 624f)))), select(!(!vec2<bool>(var_2.a, false)), select(select(vec2<bool>(var_2.a, global0[_wgslsmith_index_u32(69578u, 28u)]), vec2<bool>(false, true), vec2<bool>(var_2.a, var_2.a)), select(vec2<bool>(global0[_wgslsmith_index_u32(15666u, 28u)], var_2.a), vec2<bool>(true, global3.a), vec2<bool>(global0[_wgslsmith_index_u32(97457u, 28u)], global3.a)), !vec2<bool>(true, var_1.a)), select(!vec2<bool>(global3.a, global3.a), vec2<bool>(true, var_1.a), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, -141f))))) & vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_2.b, var_1.b), ~(-var_2.b)), var_2.b.x, -841i);
    var_0 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.x & ~_wgslsmith_div_u32(u_input.b.x, u_input.a)), vec3<u32>(4294967295u, u_input.a, ~(~u_input.a)), 1000f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1718f, global4.x, -1781f))), vec3<f32>(_wgslsmith_f_op_f32(global4.x - global4.x), global4.x, _wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.x * 1000f), global4.x, _wgslsmith_f_op_f32(100f * -1130f))))), var_2.b);
}

