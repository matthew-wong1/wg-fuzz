struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1275f;

var<private> global1: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = abs(-select(~vec4<i32>(61914i, 2147483647i, arg_1.b.x, -1i), ~vec4<i32>(16176i, arg_1.b.x, -1i, arg_1.b.x), vec4<bool>(arg_1.d.x, true, arg_1.d.x, arg_1.d.x)) << (vec4<u32>(~_wgslsmith_clamp_u32(1u, arg_1.e, arg_1.a.x), 33045u, u_input.a.x, 161404u) % vec4<u32>(32u)));
    var var_1 = var_0.x;
    global1 = all(!arg_1.d.zx) & all(vec4<bool>(true, true, all(arg_0.a.xx), arg_1.d.x || false));
    global1 = arg_1.d.x == false;
    var var_2 = ~var_0.yz;
    return select(!(!(!vec3<bool>(arg_1.d.x, arg_1.d.x, true))), vec3<bool>(true, false, arg_0.a.x), arg_0.a);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(!select(func_3(Struct_2(vec3<bool>(false, false, true)), Struct_1(u_input.a.wx, vec3<i32>(0i, 2147483647i, 0i), vec2<f32>(-1000f, 1400f), vec3<bool>(true, true, true), u_input.a.x)), func_3(Struct_2(vec3<bool>(false, true, false)), Struct_1(u_input.a.wz, vec3<i32>(1i, -1i, 0i), vec2<f32>(1071f, 1127f), vec3<bool>(true, true, false), 4294967295u)), vec3<bool>(true, true, true)));
    global1 = all(select(!var_0.a, vec3<bool>((77460u <= u_input.a.x) | !var_0.a.x, true && var_0.a.x, (var_0.a.x == var_0.a.x) && false), var_0.a.x));
    let var_1 = abs(4294967295u);
    let var_2 = !select(true, _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, var_1), u_input.a.x) >= firstTrailingBit(abs(u_input.a.x)), !var_0.a.x);
    var var_3 = Struct_1(u_input.a.yw, reverseBits(vec3<i32>(26100i, abs(~0i), ~(~2147483647i))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-112f, _wgslsmith_div_f32(-2466f, 591f)))))), vec3<bool>(!var_0.a.x, var_0.a.x, any(var_0.a) != var_0.a.x), ~abs(u_input.a.x));
    return Struct_1(select(abs(select(countOneBits(var_3.a), var_3.a, var_0.a.zx)), ~vec2<u32>(reverseBits(0u), abs(var_1)), true | (!var_2 & true)), firstTrailingBit(var_3.b), vec2<f32>(var_3.c.x, var_3.c.x), !(!vec3<bool>(false, var_2 & false, true)), ~41620u);
}

fn func_1() -> bool {
    var var_0 = func_2();
    let var_1 = var_0.a.x;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1791f))));
    var_0 = Struct_1(u_input.a.yw, min(-select(vec3<i32>(-2147483647i, -30007i, -22103i), vec3<i32>(0i, var_0.b.x, -4562i), false), min(abs(vec3<i32>(2147483647i, var_0.b.x, 1i)), vec3<i32>(-1i, 599i, -1i) | var_0.b)), var_0.c, select(vec3<bool>(any(vec2<bool>(false, true)), false, var_0.d.x), var_0.d, _wgslsmith_div_f32(-964f, var_0.c.x) < -1874f), 35684u);
    var var_2 = true;
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -155f;
    global1 = any(!vec4<bool>(select(false, false, true), any(vec3<bool>(false, false, true)), func_1(), true)) & (true | (~(~0u) < ~(~u_input.a.x)));
    let var_0 = u_input.a.x;
    let var_1 = 1812u;
    global1 = (reverseBits(1u) > func_2().a.x) & false;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f))))));
    var var_3 = countOneBits(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(-26701i, 0i)), select(vec2<i32>(_wgslsmith_mod_i32(-1i, 45097i), i32(-1i) * -1i), -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -2147483647i)), func_3(Struct_2(vec3<bool>(true, true, true)), func_2()).x)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec3<i32>(var_3.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.x, var_3.x, 0i), vec3<i32>(var_3.x, -7180i, var_3.x)), _wgslsmith_div_vec3_i32(min(vec3<i32>(var_3.x, -39759i, 32650i), vec3<i32>(var_3.x, 0i, var_3.x)), vec3<i32>(var_3.x, var_3.x, var_3.x))), var_3.x));
}

