struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = ~(~u_input.a.xy);
    var var_1 = _wgslsmith_div_f32(1163f, _wgslsmith_f_op_f32(trunc(-399f)));
    let var_2 = Struct_5(Struct_4(u_input.a.x, true), Struct_4(~var_0.x, true), Struct_4(~55643u, true));
    var var_3 = !any(global0[_wgslsmith_index_u32(4294967295u, 15u)]);
    global0 = array<vec2<bool>, 15>();
    return ~19319u;
}

fn func_3() -> vec3<bool> {
    let var_0 = -(~(-13882i));
    let var_1 = var_0;
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    return select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, false, true)), true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(125f)))) < 1288f);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = ~max(0u, func_2(-1i) | ~15592u);
    let var_1 = Struct_1(1005f, func_3(), select(vec4<bool>(true, select(22495u < var_0, true, true), 0u == _wgslsmith_mult_u32(var_0, u_input.a.x), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), true), _wgslsmith_add_vec4_i32(firstLeadingBit(~select(vec4<i32>(arg_0, 1i, arg_0, arg_0), vec4<i32>(arg_0, -2147483647i, 0i, 2147483647i), true)), vec4<i32>(-1i) * -vec4<i32>(-19689i, arg_0, arg_0, arg_0)));
    var var_2 = false;
    var var_3 = vec4<i32>(var_1.d.x, -2147483647i << (_wgslsmith_mod_u32(1u, select(~6720u, var_0, true)) % 32u), var_1.d.x, firstTrailingBit(~(~var_1.d.x) | ~_wgslsmith_mod_i32(-2147483647i, var_1.d.x)));
    var var_4 = Struct_4(~u_input.b.x, !all(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_0, u_input.a.x)), 15u)]));
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(0i, -1i ^ (~(-21332i) << (firstTrailingBit(53491u) % 32u)), -14360i, _wgslsmith_mult_i32(firstTrailingBit(~(-2147483647i) << ((u_input.b.x ^ 4294967295u) % 32u)), _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(func_1(1i), -2147483647i))));
    var var_1 = countOneBits(~(~_wgslsmith_sub_u32(u_input.a.x | 1u, _wgslsmith_mult_u32(u_input.b.x, 1u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1f, -601f), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, -1133f))))), !(!(!global0[_wgslsmith_index_u32(select(0u, u_input.a.x, false), 15u)]))));
    let var_3 = (_wgslsmith_mult_u32(77038u, 55335u) & ~u_input.a.x) >> (func_2(-1i) % 32u);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), 1f, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-14644i, 0i), vec2<i32>(1i, var_0.x))), var_0.wz), -51099i);
}

