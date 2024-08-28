struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2;

var<private> global3: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = (all(vec4<bool>(true, all(vec3<bool>(true, true, false)), false, false)) & false) & any(vec4<bool>(false, all(vec2<bool>(true, true)), true, true));
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(33044u, 1u, global2.a, global2.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 27276u, 37449u, global1.x), vec4<u32>(4294967295u, 4294967295u, global1.x, 14941u))), ~994u, 4294967295u);
    global0 = array<i32, 14>();
    global1 = select(_wgslsmith_add_vec2_u32(var_1.yx, select(~vec2<u32>(var_1.x, 1u), ~vec2<u32>(6398u, 17849u), 18394i >= global0[_wgslsmith_index_u32(38022u, 14u)]) >> (vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, 37365u, 0u), vec3<u32>(59657u, var_1.x, var_1.x))) % vec2<u32>(32u))), ~var_1.yy, true);
    var_0 = true;
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec3<bool>(any(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false)), vec2<bool>(true, func_3()), !(arg_0.x == arg_0.x))), func_3(), false);
    var var_1 = !(!select(vec3<bool>(var_0.x, true, !var_0.x), select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, true, true), select(var_0.x, false, var_0.x)), select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, true)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, true)), !vec3<bool>(var_0.x, true, var_0.x))));
    let var_2 = 1000f;
    global1 = vec2<u32>(~26204u, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(111047u, arg_1.a, global2.a), firstLeadingBit(1745u), max(arg_1.a, global2.a)), (~global2.a ^ arg_1.a) << (global1.x % 32u)));
    var var_3 = ~_wgslsmith_add_vec2_i32(~(-u_input.a.ww | ~u_input.a.yx), u_input.a.zz);
    return Struct_1(~(~(~(~vec4<u32>(arg_1.a, 1u, 1266u, 42916u)))), arg_0.x, !(-2147483647i < _wgslsmith_add_i32(global0[_wgslsmith_index_u32(36081u >> (1u % 32u), 14u)], -var_3.x)));
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    var var_0 = arg_1 <= ~(1u ^ _wgslsmith_div_u32(1u, global1.x));
    var_0 = arg_0;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-628f - -193f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(406f, 187f)), -1000f, all(vec4<bool>(true, true, arg_0, false)))))), Struct_2(global2.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, _wgslsmith_f_op_f32(step(var_1.b, var_1.b)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(272f, -848f) + vec2<f32>(var_1.b, -1214f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(994f, -777f) + vec2<f32>(-1184f, 2764f)) * vec2<f32>(var_1.b, -408f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_1.b), vec2<f32>(-1282f, -1152f)))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-946f, _wgslsmith_f_op_f32(2472f * 907f))))));
    let var_3 = Struct_3(Struct_2(var_1.a.x), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.a.x, _wgslsmith_div_u32(1u, ~1u), 57465u), 14u)], ~u_input.b, -abs(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global1.x, 14u)], global0[_wgslsmith_index_u32(var_1.a.x, 14u)])), -1i), arg_0, Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(37593u, global1.x, var_1.a.x, 22504u), vec4<u32>(var_1.a.x, 39018u, 60486u, 4294967295u)) ^ var_1.a, ~_wgslsmith_sub_vec4_u32(var_1.a, var_1.a))));
    return select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, firstLeadingBit(0u), var_1.a.x, ~93366u), ~(vec4<u32>(0u, 9987u, global2.a, 49510u) << (vec4<u32>(0u, 7402u, arg_1, 4294967295u) % vec4<u32>(32u)))), 3769u, ~(-global0[_wgslsmith_index_u32(global2.a, 14u)]) <= (global0[_wgslsmith_index_u32(35433u, 14u)] >> (~global1.x % 32u))) & _wgslsmith_div_u32(var_1.a.x >> (4294967295u % 32u), firstTrailingBit(30310u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.a, global1.x << (global1.x % 32u)), 17290u), global1.x);
    let var_0 = 1651f;
    let var_1 = u_input.a.yw;
    let var_2 = _wgslsmith_sub_u32(global1.x, _wgslsmith_sub_u32(~func_1(true, 3296u), 1u));
    let var_3 = _wgslsmith_add_u32(0u, ~global1.x);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -171f)), var_0) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0 + -742f), -563f, _wgslsmith_f_op_f32(402f * var_0))))), 1037f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(func_2(vec2<f32>(var_0, var_0), Struct_2(var_3)).b, _wgslsmith_f_op_f32(-var_0)), var_0) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1165f, var_0))))))));
}

