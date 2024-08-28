struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(any(!vec4<bool>(true, false, any(vec2<bool>(true, true)), false)));
    let var_1 = ~vec3<u32>(1u, 0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, ~1u, ~77021u), ~1u));
    var var_2 = Struct_1(true);
    let var_3 = -185f;
    let var_4 = var_0;
    return !(!(0u >= abs(var_1.x)));
}

fn func_1() -> vec3<bool> {
    global0 = _wgslsmith_mult_i32(~18986i ^ ~(-(~u_input.a.x)), 2147483647i);
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -425f) - vec2<f32>(1656f, -1000f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(199f, 615f), vec2<f32>(1452f, -261f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2385f, 463f))))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -362f);
    let var_2 = any(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(true, any(vec2<bool>(true, false)), any(vec3<bool>(true, false, true))), vec3<bool>(true, all(vec4<bool>(false, true, false, false)), true)));
    let var_3 = true;
    return vec3<bool>(!var_2, !(func_2() & true), true);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_sub_vec2_i32(abs(u_input.a.xz), u_input.a.zx);
    var_0 = _wgslsmith_sub_i32(var_1.x, -2147483647i);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~40426u) & _wgslsmith_mod_vec2_u32(~(~vec2<u32>(35242u, 0u)), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 711u), vec2<u32>(17193u, 1u), vec2<u32>(23103u, 4294967295u)), vec2<u32>(25426u, 4294967295u))), vec2<u32>(27593u, 0u));
    var_1 = vec2<i32>(var_1.x, u_input.a.x);
    return arg_0.zwy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec3<bool>(true, !all(vec3<bool>(true, true, false)), any(vec2<bool>(false, true)) && true)), true && !(any(vec3<bool>(false, true, true)) != true), !(true && all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true))));
    var_0 = select(!func_1(), vec3<bool>(var_0.x, var_0.x, true), select(!vec3<bool>(any(var_0.xx), true, !var_0.x), func_3(select(!vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), !var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-505f, 798f)))), !vec3<bool>(var_0.x, var_0.x, !var_0.x)));
    let var_1 = (2147483647i & ~_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.yxw, vec3<i32>(u_input.a.x, 33528i, u_input.a.x)))) >> (47943u % 32u);
    var_0 = vec3<bool>(false, !all(!(!vec4<bool>(true, var_0.x, var_0.x, false))), false);
    let var_2 = u_input.a.x;
    var var_3 = reverseBits(max(~1u, ~(~30887u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(-2147483647i), ~var_2, 62815i), _wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(4294967295u, 40352u, 4294967295u)), ~(23613u >> (1u % 32u))) & 40895u, countOneBits(u_input.a.x), select(u_input.a, _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, 2496i, u_input.a.x, 43412i), vec4<i32>(_wgslsmith_sub_i32(var_1, 2289i), 1i, ~18711i, _wgslsmith_sub_i32(-8935i, 47324i)), u_input.a), select(!vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(var_0.x, false, false, false), !vec4<bool>(true, var_0.x, var_0.x, true), var_0.x), select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false)), !vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(false, false, var_0.x, false)))), -5062i);
}

