struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(1u, 1u, 8511u), vec3<u32>(33801u, 8286u, 21946u), vec3<u32>(4294967295u, 17947u, 1u), vec3<u32>(1u, 1u, 1096u), vec3<u32>(35903u, 61887u, 38107u), vec3<u32>(109272u, 0u, 7652u), vec3<u32>(21877u, 66873u, 57483u), vec3<u32>(88188u, 0u, 0u), vec3<u32>(41203u, 4294967295u, 36788u), vec3<u32>(0u, 1u, 79533u), vec3<u32>(2072u, 21971u, 30443u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 1u, 45809u), vec3<u32>(31556u, 0u, 1u), vec3<u32>(1u, 0u, 15747u), vec3<u32>(1482u, 1u, 4294967295u), vec3<u32>(4294967295u, 14880u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(14319u, 4294967295u, 23686u), vec3<u32>(0u, 98192u, 0u), vec3<u32>(64808u, 44483u, 1u), vec3<u32>(35995u, 46109u, 4294967295u), vec3<u32>(14515u, 13086u, 4294967295u), vec3<u32>(0u, 46203u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(642f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1348f + 918f) + _wgslsmith_f_op_f32(ceil(-415f)))))), -(u_input.a.yy << (~(~vec2<u32>(24792u, 0u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(f32(-1f) * -524f)))));
    var var_1 = false | all(vec2<bool>(true, true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-556f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(374f)))))), var_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(var_0.a)), var_0.a)))), ~var_0.b, _wgslsmith_f_op_f32(-var_0.a.x)));
    var var_3 = select(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, 1i, 1i, u_input.a.x) << (~vec4<u32>(1u, 4294967295u, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(var_0.b.x, 4411i, firstLeadingBit(1i), var_2.c.b.x)), abs(vec4<i32>(var_0.b.x, _wgslsmith_dot_vec2_i32(-u_input.a.xz, -var_2.c.b), 12418i, _wgslsmith_sub_i32(i32(-1i) * -1i, 1i))), !vec4<bool>(any(vec2<bool>(true, true)) == any(vec4<bool>(false, false, false, false)), false, (var_2.b > 145f) & any(vec4<bool>(true, true, false, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    let var_4 = vec3<bool>(true, true, true);
    return ~(-var_2.c.b.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1.c, 1587f, arg_1);
    global0 = array<vec3<u32>, 24>();
    let var_1 = abs(-35965i);
    var var_2 = _wgslsmith_clamp_i32(-2147483647i, arg_1.b.x, ~(-_wgslsmith_mult_i32(var_0.c.b.x, -30394i))) & func_3();
    var var_3 = arg_1;
    return var_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<u32> {
    global0 = array<vec3<u32>, 24>();
    global0 = array<vec3<u32>, 24>();
    let var_0 = u_input.a.zy;
    global0 = array<vec3<u32>, 24>();
    var var_1 = func_2(any(vec3<bool>(true, true, true)), arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f)), -1564f, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b)))), arg_0.c.a.x));
    return select(arg_1, ~min(vec4<u32>(12906u, arg_1.x, 9101u, 34015u), ~arg_1), select(any(vec3<bool>(true, true, true)), !all(vec2<bool>(false, true)), true)) >> (arg_1 % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_dot_vec4_u32(vec4<u32>(~52926u, ~1u, ~0u, ~35982u), countOneBits(func_1(Struct_2(967f, -1761f, Struct_1(vec3<f32>(-166f, -549f, -806f), u_input.a.yz, -441f)), vec4<u32>(2574u, 46727u, 12540u, 57223u)))) ^ 0u);
    var var_1 = -13540i;
    let var_2 = func_1(func_2(-1251f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1268f))), Struct_1(vec3<f32>(-427f, _wgslsmith_div_f32(-1283f, 125f), -585f), _wgslsmith_add_vec2_i32(min(u_input.a.yx, vec2<i32>(u_input.a.x, -2147483647i)), vec2<i32>(-18116i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1132f, 1000f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1393f, -669f, 1426f, -1448f), vec4<f32>(1174f, 1000f, -323f, -764f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, 1122f, 969f, 512f)))))), ~(~vec4<u32>(_wgslsmith_div_u32(42495u, 101072u), firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 50196u, 0u, 1u), vec4<u32>(0u, 4294967295u, 3508u, 6005u)), select(1u, 0u, true)))).zw;
    global0 = array<vec3<u32>, 24>();
    var var_3 = select(vec4<i32>(firstTrailingBit(~7066i) & (i32(-1i) * -2147483647i), ~max(i32(-1i) * -2147483647i, -u_input.a.x), _wgslsmith_div_i32(~u_input.a.x | -2147483647i, _wgslsmith_sub_i32(9156i, _wgslsmith_mod_i32(-24409i, 16656i))), ~(-1i)), abs(vec4<i32>(-1i) * -vec4<i32>(0i, 2147483647i, u_input.a.x, -8548i)), vec4<bool>(false, true, true, false));
    let var_4 = abs(~17368u);
    global0 = array<vec3<u32>, 24>();
    let var_5 = ~1u <= _wgslsmith_mod_u32(_wgslsmith_add_u32(var_4, _wgslsmith_div_u32(1u, var_2.x)) & firstLeadingBit(abs(var_4)), (firstTrailingBit(1u) << (0u % 32u)) >> (0u % 32u));
    let var_6 = vec4<i32>(_wgslsmith_add_i32(var_3.x, _wgslsmith_mod_i32(select(64175i, ~2147483647i, any(vec2<bool>(true, var_5))), ~1153i)), 2147483647i, _wgslsmith_mult_i32(-24431i, 0i), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~4294967295u, (15906u >> (var_4 % 32u)) | var_4, 65893u), _wgslsmith_mult_i32(253i, ~(-var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(289f, -270f, 896f, -1000f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1080f, -385f, -1128f, -1616f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(594f, 688f, -334f, 671f))) * vec4<f32>(-244f, -1583f, -580f, 160f)))), 78757u);
}

