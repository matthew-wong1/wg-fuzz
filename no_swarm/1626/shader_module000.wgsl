struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<u32> = vec3<u32>(12705u, 52970u, 0u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    global0 = ~_wgslsmith_mult_vec4_i32(min(-(vec4<i32>(-44084i, global0.x, -10624i, -63857i) & vec4<i32>(-61949i, global0.x, 2147483647i, 2147483647i)), -vec4<i32>(15995i, 1i, u_input.c.x, -1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(77816u, 1u, global1.x, u_input.a.x), vec4<u32>(global1.x, global1.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), countOneBits(vec4<i32>(min(global0.x, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 4106i, 0i), vec4<i32>(17463i, 8073i, 4044i, 1i)), u_input.b.x | -11785i, ~(-5480i))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1796f, 2198f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(543f))))) + -407f);
    let var_1 = !all(vec2<bool>(false, true));
    return countOneBits(max(_wgslsmith_add_vec4_u32(abs(vec4<u32>(global1.x, global1.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(4294967295u, 18971u, global1.x, 2169u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(12408u, global1.x, 14140u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 0u, 0u)) ^ select(vec4<u32>(22511u, 10489u, global1.x, 9803u), vec4<u32>(global1.x, 1u, global1.x, 4294967295u), select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, false, true, false), vec4<bool>(var_1, var_1, var_1, true)))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = ~((39807u >> (reverseBits(u_input.a.x) % 32u)) & (1u ^ abs(global1.x)));
    var var_1 = ~(~vec4<u32>(max(u_input.a.x, abs(global1.x)), 1u, var_0, firstTrailingBit(0u)));
    var_1 = ~(~func_3() << (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(12046u, 1u, var_0, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0))) % vec4<u32>(32u)));
    let var_2 = ~(-1i);
    global0 = min(vec4<i32>(u_input.b.x, ~_wgslsmith_mult_i32(var_2, _wgslsmith_div_i32(-1i, -2147483647i)), global0.x, global0.x), -firstLeadingBit(max(vec4<i32>(u_input.b.x, -32596i, 37078i, -78394i), vec4<i32>(var_2, global0.x, -8004i, var_2))) >> (~vec4<u32>(51290u, 4956u, var_1.x, 16294u) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(2120f))))), -477f)), !(!select(vec3<bool>(true, arg_0, false), vec3<bool>(true, false, arg_0), select(vec3<bool>(true, arg_0, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), 1000f, _wgslsmith_sub_vec3_u32(var_1.yxy, u_input.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    var var_0 = -(~(_wgslsmith_add_vec4_i32(min(vec4<i32>(68348i, 2147483647i, arg_3.x, arg_3.x), vec4<i32>(global0.x, -31110i, arg_3.x, u_input.e)), reverseBits(vec4<i32>(2147483647i, -24307i, 2147483647i, -38194i))) >> ((firstLeadingBit(vec4<u32>(u_input.a.x, global1.x, 31292u, 53925u)) >> (vec4<u32>(67262u, 4294967295u, arg_0.x, arg_1.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return -1799f;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1790f, _wgslsmith_f_op_f32(sign(arg_0.c)), _wgslsmith_f_op_f32(arg_0.c * 1705f), arg_3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 383f, 721f, arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, 109f, arg_3.c, arg_2))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(163f, -716f, arg_3.c, -341f) + vec4<f32>(arg_3.a, -773f, arg_2, arg_0.c)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(767f, arg_3.a, 1084f, 2081f), vec4<f32>(-522f, -472f, arg_2, 1858f))))), all(!arg_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1197f, arg_3.c, -1622f, 667f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c, arg_3.c, arg_0.a, arg_3.c), vec4<f32>(arg_3.a, arg_3.c, 922f, 1462f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -1649f, 899f, arg_0.a), vec4<f32>(616f, -604f, arg_0.a, arg_0.a), arg_3.b.x)))))), !(!select(!vec4<bool>(true, true, arg_3.b.x, arg_3.b.x), select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_3.b.x), true))));
    global1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(arg_0.d), ~arg_0.d), arg_3.d);
    var var_1 = 2147483647i;
    global1 = func_3().wwx;
    var_1 = global0.x;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(func_2(true).c, 847f)), _wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, arg_3.a)))), arg_0.b, var_0.x, _wgslsmith_add_vec3_u32(vec3<u32>(abs(arg_0.d.x | arg_0.d.x), arg_0.d.x, abs(~0u)), _wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(global1.x, 1u, arg_3.d.x)), u_input.a)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_5(Struct_1(-1000f, select(vec3<bool>(select(true, true, false), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), -215f, ~max(vec3<u32>(27429u, 0u, u_input.a.x), vec3<u32>(4294967295u, global1.x, u_input.a.x)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 1u, 99540u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a) % vec3<u32>(32u))), ~global0.x | global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), Struct_1(_wgslsmith_div_f32(-913f, -979f), vec3<bool>(false, false, false), _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(139157u, 60209u, 4294967295u), vec3<u32>(21211u, 41336u, 4294967295u), u_input.a), vec3<u32>(21146u, u_input.a.x, global1.x) >> (u_input.a % vec3<u32>(32u)), u_input.a << (vec3<u32>(1u, u_input.a.x, global1.x) % vec3<u32>(32u))), func_2(true), any(vec4<bool>(true, true, true, true)), vec3<i32>(1i, u_input.b.x | 4937i, ~global0.x))), abs(~vec3<u32>(u_input.a.x, 25269u, u_input.a.x))));
    global0 = vec4<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), 9956i, 21124i, u_input.b.x);
    var var_1 = vec4<bool>(select(false, var_0.b.x, ~25519u < u_input.a.x), !(var_0.b.x | var_0.b.x), !var_0.b.x, var_0.b.x);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1129f, 515f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-252f, 189f))), false))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(347f, var_0.c), vec2<f32>(var_0.a, -1290f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, var_0.c), vec2<f32>(var_0.a, var_0.c))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(370f, var_0.c)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, 643f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-194f, var_0.c), vec2<f32>(var_0.a, 1609f), var_0.b.xy))))))));
    return func_2(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c.xy);
    global0 = ~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(7438i, 2147483647i, -1i, 103756i), vec4<i32>(u_input.b.x, -37503i, 42832i, -1i), select(var_0.b.x, false, var_0.b.x)), vec4<i32>(~u_input.c.x, ~global0.x, 26022i, u_input.e), abs(-vec4<i32>(-2147483647i, u_input.c.x, u_input.e, -2147483647i))) ^ ~(-vec4<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_div_i32(global0.x, global0.x), -2147483647i, u_input.c.x));
    let var_1 = var_0;
    global1 = ~vec3<u32>(_wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(6726u, 0u)), var_0.d.x), 18275u, ~_wgslsmith_add_u32(0u, var_0.d.x));
    global0 = countOneBits(_wgslsmith_sub_vec4_i32(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 18218i, global0.x, 13180i), vec4<i32>(u_input.b.x, global0.x, u_input.e, 0i))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, -13777i, -21075i, global0.x), vec4<i32>(-48754i, 2147483647i, -2147483647i, -18337i)), ~(-vec4<i32>(global0.x, global0.x, global0.x, -19431i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.x, global0.xw);
}

