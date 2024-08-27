struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = 0i | ~global1.c.x;
    global0 = array<i32, 32>();
    global1 = Struct_2(global1.a, select(!global1.b, vec2<bool>(false, true), select(!select(global1.b, vec2<bool>(false, true), global1.b), global1.b, all(global1.b))), _wgslsmith_div_vec3_i32(global1.c, global1.c), _wgslsmith_div_vec2_u32(abs(abs(global1.a)), ~_wgslsmith_clamp_vec2_u32(global1.d, vec2<u32>(global1.d.x, global1.a.x), u_input.a.yy) | ~vec2<u32>(1u, 1u)), global1.b.x);
    global0 = array<i32, 32>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return Struct_2(~global1.d, !(!(!(!global1.b))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0 ^ global1.c.x, var_0, 1i), abs(global1.c) & global1.c, ~vec3<i32>(0i, -46808i, -6547i) >> (~u_input.a.zxw % vec3<u32>(32u))) >> (u_input.a.yzx % vec3<u32>(32u)), max(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.ww, vec2<u32>(4294967295u, global1.a.x)) & vec2<u32>(u_input.a.x, global1.a.x), u_input.a.wy), global1.d), false);
}

fn func_3() -> vec2<u32> {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1166f + -356f))) * 165f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1873f))) + _wgslsmith_f_op_f32(trunc(-873f))));
    global1 = Struct_2(global1.d, global1.b, _wgslsmith_mult_vec3_i32(global1.c, global1.c), vec2<u32>(global1.a.x, 13934u), all(select(select(!vec3<bool>(false, global1.e, true), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, global1.b.x, global1.e), vec3<bool>(true, true, false)), global1.e), !vec3<bool>(false, var_0, global1.e), vec3<bool>(0i <= global1.c.x, select(true, true, global1.b.x), all(vec2<bool>(true, var_0))))));
    return global1.a;
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = Struct_2(arg_0.a >> (_wgslsmith_add_vec2_u32(global1.d, select(vec2<u32>(9899u, 5919u), arg_0.a, !global1.b)) % vec2<u32>(32u)), vec2<bool>(global1.b.x, true | (_wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.c.x)) <= arg_0.c.x)), vec3<i32>(0i, 26838i, _wgslsmith_mod_i32(-firstLeadingBit(2147483647i), global1.c.x << (~global1.d.x % 32u))), global1.a, true || select(false, true, global1.b.x));
    var var_0 = global1.c.x;
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(global1.a.x, ~global1.d.x) & _wgslsmith_div_u32(~_wgslsmith_sub_u32(arg_0.a.x, 19515u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, global1.a.x), u_input.a.xy), firstLeadingBit(vec2<u32>(arg_0.b, global1.a.x)))), firstLeadingBit(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, 1u), global1.a))));
    var var_2 = min(0i, 30532i);
    var var_3 = !vec4<bool>(global1.b.x, true, 50242i == (-global1.c.x << (func_1(arg_0.c.x).d.x % 32u)), any(!global1.b));
    return arg_0.c.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1;
    global1 = var_0;
    var var_1 = vec3<bool>(false, arg_1.e, true);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(Struct_1(func_3(), abs(u_input.b), _wgslsmith_div_vec3_f32(vec3<f32>(-2065f, 508f, 666f), vec3<f32>(1345f, -389f, 861f)), true, vec3<i32>(_wgslsmith_sub_i32(98852i, 1i), _wgslsmith_add_i32(-6207i, global1.c.x), 56809i >> (arg_1.d.x % 32u)))))));
    let var_3 = arg_1.c.yx;
    return Struct_1(firstTrailingBit(abs(vec2<u32>(arg_1.a.x, ~4294967295u))), global1.d.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 912f, -308f) + vec3<f32>(564f, 322f, -184f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(624f, 557f, 1015f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -132f), 938f))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-450f + 1126f)))).b.x, ~_wgslsmith_mod_vec3_i32(arg_1.c, vec3<i32>(global1.c.x, -41752i, global0[_wgslsmith_index_u32(arg_0, 32u)])));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<i32>) -> StorageBuffer {
    var var_0 = Struct_1(arg_0.a, global1.a.x >> (0u % 32u), vec3<f32>(_wgslsmith_f_op_f32(-1033f - arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, -3047f))) + -597f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(126f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_0.c.x))))), !all(!select(vec4<bool>(global1.b.x, true, global1.e, global1.b.x), vec4<bool>(arg_0.d, arg_1, global1.e, global1.b.x), vec4<bool>(true, global1.e, global1.b.x, arg_1))), vec3<i32>(9577i, _wgslsmith_sub_i32(~_wgslsmith_add_i32(-35161i, -19939i), abs(1i)), -_wgslsmith_mod_i32(-5720i, -1i)));
    var_0 = func_2(9614u, Struct_2(vec2<u32>(8589u, ~arg_0.a.x), global1.b, vec3<i32>(min(~(-1i), ~(-10569i)), i32(-1i) * -global1.c.x, ~reverseBits(var_0.e.x)), _wgslsmith_mult_vec2_u32(global1.d, arg_0.a), any(vec4<bool>(false, true, arg_1, any(global1.b)))), !global1.b);
    let var_1 = var_0.e.x < (i32(-1i) * -2147483647i);
    var var_2 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) != 1027f, false), vec3<bool>(func_2(~(~arg_0.b), Struct_2(func_2(arg_0.a.x, Struct_2(var_0.a, global1.b, vec3<i32>(98694i, arg_0.e.x, -16886i), global1.a, global1.e), global1.b).a, vec2<bool>(global1.e, true), select(vec3<i32>(global1.c.x, global0[_wgslsmith_index_u32(arg_0.b, 32u)], arg_0.e.x), arg_3.yxy, true), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, var_0.a.x), vec2<u32>(4294967295u, arg_0.a.x)), false), vec2<bool>(!arg_0.d, arg_0.d)).d, !(global1.e & func_2(arg_0.a.x, Struct_2(vec2<u32>(17439u, global1.d.x), vec2<bool>(arg_1, true), vec3<i32>(arg_3.x, 1i, -39932i), vec2<u32>(1u, 0u), true), global1.b).d), false), var_1);
    global0 = array<i32, 32>();
    return StorageBuffer(var_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c.zz;
    let var_1 = true;
    let x = u_input.a;
    s_output = func_5(func_2(21133u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-593f, -576f)))), vec2<bool>(global1.e, var_1)), !(!(!global1.b.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(func_2(u_input.a.x, func_1(-943f), global1.b).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(146f, -1703f)) - _wgslsmith_f_op_f32(step(210f, 389f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1043f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(838f, -1000f) - vec2<f32>(-693f, 599f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(196f, -804f), vec2<f32>(-337f, 999f))))))), ~(vec4<i32>(-1i) * -(vec4<i32>(global0[_wgslsmith_index_u32(17068u, 32u)], var_0.x, 20871i, global0[_wgslsmith_index_u32(global1.d.x, 32u)]) ^ vec4<i32>(var_0.x, global1.c.x, -1i, 2147483647i))));
}

