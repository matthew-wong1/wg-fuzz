struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = -vec3<i32>(-1i, 1i, 1i);
    var var_1 = Struct_2(Struct_1(!vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, true)), all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2942f, _wgslsmith_f_op_f32(round(838f)), -537f, _wgslsmith_f_op_f32(select(-395f, -1467f, false))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~72706u, u_input.a, ~_wgslsmith_add_u32(0u, 0u), ~17067u), ~vec4<u32>(~3864u, 1u, 19053u, 0u)), 29u)]);
    let var_2 = Struct_2(var_1.b, Struct_1(vec3<bool>((var_1.a.a.x != true) | true, !(!var_1.a.a.x), true), vec4<f32>(var_1.b.b.x, 1f, var_1.a.b.x, var_1.a.b.x)));
    let var_3 = 0u;
    var_0 = vec3<i32>(-30025i, -_wgslsmith_sub_i32(-2147483647i, var_0.x), -(~var_0.x ^ var_0.x) ^ -1i);
    return vec2<bool>(var_1.a.a.x, (i32(-1i) * -countOneBits(var_0.x)) <= select(abs(var_0.x), -24111i, true));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = true;
    let var_1 = abs(15965u);
    let var_2 = global0[_wgslsmith_index_u32(~var_1, 29u)];
    var var_3 = vec3<u32>(~(~var_1), firstLeadingBit(13431u), 0u) & ~(~((u_input.b | vec3<u32>(24240u, u_input.b.x, 32432u)) >> (_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(1u, 4294967295u, var_1), vec3<u32>(1u, 4294967295u, var_1)) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    return !select(vec4<bool>(var_0, true, any(!arg_0.b.a), func_3().x), vec4<bool>(!any(arg_0.b.a), !(!var_2.a.x), arg_0.b.a.x, false), !var_0);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_3 {
    var var_0 = ~4294967295u;
    let var_1 = _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, arg_2, abs(arg_2)), _wgslsmith_add_vec3_i32(~vec3<i32>(12609i, -1i, 49408i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(arg_2, -29637i, arg_2)))), ((-vec3<i32>(36619i, arg_2, -35216i) & -vec3<i32>(arg_2, -2147483647i, -1i)) << (u_input.b % vec3<u32>(32u))) << (~u_input.b % vec3<u32>(32u)));
    var var_2 = vec2<bool>(all(select(vec4<bool>(false, true, true, arg_2 > 8167i), select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(false, arg_1, true, false), arg_1), any(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, false), arg_1)))), arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_3 = select(func_4(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1488f, -322f) - vec4<f32>(arg_0, arg_0, arg_0, arg_0)), vec4<f32>(arg_0, arg_0, 1243f, 1093f)), Struct_1(select(vec3<bool>(arg_1, false, var_2.x), vec3<bool>(true, false, var_2.x), true), vec4<f32>(380f, arg_0, arg_0, -600f))), -1000f, select(vec2<bool>(true, all(vec4<bool>(var_2.x, false, false, var_2.x))), func_3(), all(!vec3<bool>(false, arg_1, true)))), vec4<bool>(arg_1, true, any(select(!vec3<bool>(arg_1, true, true), select(vec3<bool>(var_2.x, var_2.x, arg_1), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, arg_1, var_2.x)), var_2.x)), select(true, var_2.x, !var_2.x)), false);
    global0 = array<Struct_1, 29>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(trunc(arg_0)), -132f, _wgslsmith_f_op_f32(arg_0 - arg_0)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, 896f, 1184f))))))), Struct_1(!select(vec3<bool>(var_3.x, false, false), func_4(Struct_3(vec4<f32>(1121f, -162f, arg_0, arg_0), Struct_1(var_3.xzy, vec4<f32>(-642f, arg_0, arg_0, 1475f))), arg_0, var_3.yy).zxw, !vec3<bool>(var_2.x, var_3.x, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2395f, _wgslsmith_f_op_f32(max(612f, -2489f)), 1593f, -1468f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(801f, arg_0, arg_0, -148f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1453f, arg_0, 323f, -801f))))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = func_2(arg_1, arg_3.a.x, ~(countOneBits(arg_0 << (44211u % 32u)) << ((arg_2 ^ arg_2) % 32u)));
    let var_1 = arg_3.b.x;
    var var_2 = true;
    return firstLeadingBit(arg_2) ^ select(u_input.a | u_input.b.x, 23647u, !var_0.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(abs(firstLeadingBit(~vec3<u32>(4294967295u, 21862u, u_input.b.x))), u_input.b);
    var var_1 = 4595u;
    var var_2 = vec3<u32>(~u_input.b.x, ~u_input.a, 1u);
    let var_3 = _wgslsmith_div_u32(34802u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 48812u, var_2.x, u_input.b.x) & vec4<u32>(var_0.x, var_0.x, 94460u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, var_2.x, u_input.b.x), vec4<u32>(u_input.b.x, var_2.x, var_2.x, 1u))), func_1(~(-24407i), _wgslsmith_f_op_f32(259f + 941f), var_0.x & var_2.x, global0[_wgslsmith_index_u32(var_0.x, 29u)])) % 32u), abs(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~select(2610u, 52198u, true), min(vec2<i32>(-22991i, reverseBits(-1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(32580i, _wgslsmith_sub_i32(-1i, -2147483647i)), -(~vec2<i32>(-2147483647i, 0i)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(9413i, -2147483647i, _wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, ~(-7198i))), select(reverseBits(select(vec3<i32>(1i, 21545i, 2147483647i), vec3<i32>(1i, -22607i, 1224i), vec3<bool>(false, false, true))), countOneBits(vec3<i32>(0i, 19334i, -1i)), true), vec3<i32>(23082i, -1i, i32(-1i) * -1i)));
}

