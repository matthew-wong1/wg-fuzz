struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1709f)), 1504f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(-977f * 541f))))) & all(arg_0.a.wx);
    var var_0 = abs(firstTrailingBit(select(select(vec4<u32>(0u, u_input.a.x, arg_0.b, 37642u), vec4<u32>(u_input.a.x, 18320u, 1u, 6826u) & vec4<u32>(u_input.a.x, 59697u, 5661u, u_input.a.x), true), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 40213u, u_input.a.x, u_input.a.x), vec4<u32>(23645u, 1u, 0u, u_input.a.x)), vec4<u32>(49359u, 24649u, u_input.a.x, u_input.a.x) << (vec4<u32>(arg_0.b, u_input.a.x, u_input.a.x, arg_0.b) % vec4<u32>(32u))), !(!arg_0.a.x))));
    let var_1 = ~vec2<u32>(max(4294967295u, _wgslsmith_mod_u32(~arg_0.b, var_0.x)), 1u);
    global0 = true;
    let var_2 = vec4<u32>(arg_0.b, _wgslsmith_dot_vec3_u32(var_0.ywy, var_0.zxz), 17499u, u_input.a.x);
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = all(vec3<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), !(!func_3(Struct_1(vec4<bool>(true, true, false, true), 35445u, arg_0.x))), any(vec2<bool>(true, true))));
    global0 = (!select(true, true, select(false, false, true)) | !all(vec3<bool>(false, true, true))) != !all(vec3<bool>(true, true, true));
    var var_0 = ~(~(~(~(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1937u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))))));
    let var_1 = Struct_1(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, !func_3(Struct_1(vec4<bool>(true, true, true, false), 1u, 1i)), true), !vec4<bool>(any(vec4<bool>(false, true, true, true)), false, all(vec4<bool>(false, false, true, true)), true)), _wgslsmith_div_u32(42744u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.zxw, var_0.ywx), ~1u)), u_input.c);
    var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(~firstTrailingBit(u_input.a.x), ~var_1.b, u_input.a.x, 4294967295u), ~abs(~(vec4<u32>(var_0.x, var_0.x, var_1.b, u_input.a.x) ^ vec4<u32>(4294967295u, var_0.x, 13588u, var_1.b))));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(u_input.b);
    var var_1 = ~_wgslsmith_sub_i32(20526i, max(-44378i, _wgslsmith_mult_i32(arg_1.c, arg_1.c ^ 0i)));
    var_1 = _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.c, u_input.c, max(arg_1.c, -72278i), -2147483647i), vec4<i32>(func_2(vec3<i32>(-1633i, var_0.c, 5159i)).c, _wgslsmith_add_i32(15842i, u_input.c), -2285i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, -3424i, 1i), vec4<i32>(arg_3.c, 14766i, u_input.c, arg_3.c)))), vec4<i32>(arg_2.c, u_input.b.x, 6868i, 1475i));
    var_1 = arg_1.c;
    let var_2 = 0u;
    return func_2(vec3<i32>(abs(_wgslsmith_add_i32(func_2(u_input.b).c, var_0.c)), arg_2.c, max(_wgslsmith_mult_i32(25610i, 1i) | ~arg_3.c, reverseBits(~17283i))));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(1u, select(u_input.a.x, 0u, true))) < 73158u;
    let var_0 = func_4(_wgslsmith_f_op_f32(ceil(1409f)), func_2(vec3<i32>(2147483647i << (u_input.a.x % 32u), ~(-18483i) | u_input.b.x, ~firstTrailingBit(u_input.c))), func_2(vec3<i32>(4775i, u_input.b.x | u_input.c, -1i) & vec3<i32>(firstLeadingBit(0i), u_input.c, ~u_input.b.x)), Struct_1(select(func_2(vec3<i32>(-32481i, u_input.b.x, u_input.c)).a, !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), false), 17430u, func_2(vec3<i32>(_wgslsmith_sub_i32(-1i, 49283i), _wgslsmith_mult_i32(-19744i, 0i), ~u_input.c)).c));
    let var_1 = vec4<i32>(-2147483647i, func_4(-1000f, var_0, func_2(vec3<i32>(u_input.c, -18085i, -1i)), Struct_1(var_0.a, var_0.b, abs(9317i))).c << (_wgslsmith_dot_vec3_u32(~max(vec3<u32>(var_0.b, arg_0, var_0.b), vec3<u32>(26528u, arg_0, var_0.b)), firstTrailingBit(vec3<u32>(u_input.a.x, 20992u, 1u))) % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, reverseBits(2147483647i)), max(u_input.c, -3596i)), -65746i);
    global0 = var_0.a.x;
    global0 = true;
    return ~(~_wgslsmith_mod_u32(arg_0, 0u)) & ~_wgslsmith_dot_vec4_u32(~vec4<u32>(17093u, u_input.a.x, arg_0, 42427u) << (vec4<u32>(76859u, var_0.b, 38774u, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(7934u, 1u, 0u, u_input.a.x), vec4<u32>(arg_0, 40164u, arg_0, 98380u) ^ vec4<u32>(57250u, var_0.b, u_input.a.x, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = u_input.a.x < (u_input.a.x | ~func_1(102985u << (u_input.a.x % 32u)));
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-764f)) - _wgslsmith_f_op_f32(1000f * -1155f)), _wgslsmith_f_op_f32(min(-918f, _wgslsmith_div_f32(-631f, -435f)))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), -750f, true)), _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(min(141f, -1375f)))))));
    let var_1 = -(~select(~reverseBits(vec4<i32>(-45596i, u_input.b.x, 1i, -11701i)), firstLeadingBit(min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c), vec4<i32>(18296i, -13874i, u_input.b.x, 1i))), vec4<bool>(true, u_input.c > 2147483647i, true, func_4(var_0.x, Struct_1(vec4<bool>(false, false, false, false), 0u, u_input.b.x), Struct_1(vec4<bool>(false, false, true, false), u_input.a.x, 7914i), Struct_1(vec4<bool>(true, false, false, true), u_input.a.x, -2147483647i)).a.x)));
    global0 = any(!vec4<bool>(all(vec3<bool>(true, true, true)), false, true & func_3(Struct_1(vec4<bool>(false, true, false, false), u_input.a.x, -28510i)), false));
    let var_2 = Struct_1(vec4<bool>(true, true, true, true), 0u, reverseBits(1i));
    let var_3 = all(!var_2.a.zzw);
    let var_4 = Struct_1(var_2.a, u_input.a.x, select(func_2(vec3<i32>(var_1.x, var_1.x, 2147483647i)).c >> (~0u % 32u), ~var_1.x ^ firstLeadingBit(var_1.x), false) ^ ~var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~u_input.a.x, ~235u, 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.b, 35516u, 4294967295u, 28829u), ~vec4<u32>(var_4.b, 42113u, var_4.b, u_input.a.x))));
}

