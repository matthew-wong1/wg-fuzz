struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(!(!any(vec4<bool>(true, true, true, true))), ~u_input.d.x, vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), true)), true, true & all(vec4<bool>(true, true, true, true)), true));
    var var_1 = u_input.a.xwx;
    global0 = array<vec4<f32>, 5>();
    global0 = array<vec4<f32>, 5>();
    var var_2 = Struct_3(any(!vec4<bool>(true, all(var_0.c.zzz), !var_0.a, false)), u_input.d.x, vec4<bool>(!var_0.a, select(true, any(vec2<bool>(true, var_0.a)), any(vec2<bool>(var_0.c.x, var_0.c.x))), false, ~(u_input.b.x << (var_1.x % 32u)) >= abs(1i)));
    return 1000f;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    global0 = array<vec4<f32>, 5>();
    global0 = array<vec4<f32>, 5>();
    let var_0 = 1u;
    var var_1 = !arg_2.x;
    var_1 = true;
    return !vec2<bool>(false, arg_0.c.x);
}

fn func_2() -> vec3<i32> {
    let var_0 = select(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), false), vec2<bool>(_wgslsmith_f_op_f32(sign(-565f)) >= _wgslsmith_f_op_f32(select(-1000f, 1529f, true)), any(vec4<bool>(true, true, true, true)) & true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(false, true))), func_3(Struct_3(false, select(6311i, u_input.d.x, true), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.c)), countOneBits(vec4<u32>(u_input.a.x, 23654u, 23597u, u_input.a.x))), vec2<bool>(true, true)), true), _wgslsmith_clamp_u32(0u, u_input.c, 45597u) > ~_wgslsmith_clamp_u32(7266u, u_input.c | u_input.a.x, firstTrailingBit(51583u)));
    let var_1 = Struct_2(~(~u_input.d.x), _wgslsmith_div_f32(1887f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1028f)))))));
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-522f - var_1.b)))));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, 15928i & u_input.d.x, -u_input.b.x), vec3<i32>(u_input.d.x, -var_1.a, -25725i)), ~(-u_input.b.wyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = Struct_1(vec2<i32>(-_wgslsmith_mult_i32(-2147483647i, u_input.d.x), _wgslsmith_div_i32(abs(-58141i), _wgslsmith_add_i32(var_0, u_input.b.x)) ^ var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(620f, 1075f), _wgslsmith_f_op_f32(f32(-1f) * -1384f)))), _wgslsmith_add_u32(0u, u_input.c));
    var var_2 = true;
    global0 = array<vec4<f32>, 5>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1480f)) - _wgslsmith_f_op_f32(round(var_1.c))) * _wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_f32(floor(1609f)));
    let x = u_input.a;
    s_output = StorageBuffer(-min(_wgslsmith_mod_vec3_i32(-u_input.b.zzw, -u_input.b.xxz), firstTrailingBit(func_2())), 49052i, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(70855i | u_input.d.x, var_1.a.x << (var_1.d % 32u)), abs(-47186i)), i32(-1i) * -var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(firstLeadingBit(var_1.d), 5u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-902f, -669f, -2025f, -267f) * global0[_wgslsmith_index_u32(0u, 5u)]))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), -1213f, _wgslsmith_f_op_f32(1340f + var_3.x), var_3.x)));
}

