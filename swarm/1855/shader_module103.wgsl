struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec2<u32>(select(~(arg_2.a.x ^ arg_2.a.x), arg_2.a.x, true), 4294967295u));
    var var_1 = !select(!vec4<bool>(any(vec3<bool>(true, true, true)), true, select(false, false, true), true), vec4<bool>(true, true, all(vec2<bool>(false, true)) | true, true), true);
    var var_2 = Struct_3(Struct_1(vec2<u32>(0u, arg_2.a.x)), vec4<i32>(~max(-u_input.a, 0i), -2147483647i, abs(_wgslsmith_mult_i32(u_input.b.x, u_input.a)) ^ u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, firstTrailingBit(-2147483647i)), vec4<i32>(~u_input.b.x, abs(2147483647i), u_input.a, -18852i))), _wgslsmith_sub_i32(u_input.b.x ^ _wgslsmith_div_i32(u_input.b.x, _wgslsmith_add_i32(6604i, 0i)), _wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(u_input.b.x, i32(-1i) * -2147483647i))), min(vec3<u32>(arg_2.a.x, reverseBits(1u), _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.x, 24533u), 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 66525u, var_0.a.x) << (~vec3<u32>(81291u, 44042u, arg_1.a.x) % vec3<u32>(32u)), select(vec3<u32>(31905u, 1u, arg_1.a.x), ~vec3<u32>(4294967295u, 0u, arg_1.a.x), var_1.zyx))));
    var var_3 = u_input.a;
    let var_4 = !select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(!select(true, var_1.x, var_1.x), false, true), !select(select(vec3<bool>(true, false, var_1.x), var_1.yxw, var_1.x), !var_1.xyz, !var_1.x));
    return ~(~var_2.d);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = firstLeadingBit(~reverseBits(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x) | vec3<u32>(arg_1.a.x, 4294967295u, 46680u))) << (vec3<u32>(39383u, arg_1.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 4294967295u), arg_1.a.x)) % vec3<u32>(32u));
    var var_1 = Struct_3(Struct_1(~vec2<u32>(var_0.x, var_0.x << (var_0.x % 32u))), abs(vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b) << (40210u % 32u), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.x, -48984i), vec3<i32>(arg_0.x, arg_0.x, u_input.a)) | firstTrailingBit(-1i))), -1i, max(~vec3<u32>(37106u, ~arg_1.a.x, countOneBits(0u)), _wgslsmith_mult_vec3_u32(func_3(~4294967295u, arg_1, Struct_1(vec2<u32>(12124u, 0u))), vec3<u32>(4294967295u, _wgslsmith_add_u32(17654u, 1u), arg_1.a.x))));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(684f * -2409f), _wgslsmith_f_op_f32(trunc(-846f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-254f, 576f), vec2<f32>(985f, 352f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, 768f)))))));
    let var_4 = max(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.a.x, var_2.a.x), vec3<u32>(var_0.x, 31333u, var_2.a.x)) ^ 40387u), _wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.x, 1u, var_1.a.a.x, 0u) >> (vec4<u32>(1u, 4294967295u, arg_1.a.x, 4294967295u) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_1.a.x, var_0.x, var_0.x), vec4<u32>(803u, arg_1.a.x, var_2.a.x, 1u), vec4<u32>(arg_1.a.x, 15788u, 14072u, 37532u)))));
    return 7887i;
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_1(reverseBits(~vec2<u32>(arg_0.a.a.x, 9304u) >> ((select(arg_0.a.a, arg_0.a.a, true) >> (arg_0.a.a % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = Struct_2(arg_0.a);
    let var_2 = !(!(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, -81793i, u_input.b.x), vec4<i32>(-1i, 0i, 25339i, 4656i)), func_2(u_input.b.zz, arg_0.a, vec2<bool>(true, false), vec4<bool>(true, false, false, false))) <= 9441i));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-392f, -350f)), -893f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(935f + 910f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(402f * -695f), -684f))));
    let var_4 = var_1.a;
    return vec4<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, var_3.x))), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1811f, -726f, 546f, 1214f), vec4<f32>(2060f, 842f, -1571f, 929f)) * vec4<f32>(1f, 1f, 1f, 1f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -110f, 1053f) * _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(vec2<u32>(40328u, 6236u))))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(var_0.x, var_0.x)), 719f, var_0.x, -609f)), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), -579f >= var_0.x))));
    var var_1 = all(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))) | any(vec3<bool>(true && select(false, false, true), true, any(vec3<bool>(false, false, false))));
    var var_2 = true;
    var var_3 = Struct_1(firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(~4294967295u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(18412u, 36261u, 0u), vec3<u32>(32601u, 60590u, 67009u)) & countOneBits(77162u))));
    var_3 = Struct_1(~reverseBits(~vec2<u32>(var_3.a.x, var_3.a.x) | var_3.a));
    let var_4 = vec4<bool>(!select(any(vec4<bool>(true, true, true, true)), true, true), !(true || !any(vec2<bool>(true, false))), var_3.a.x < var_3.a.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, u_input.a, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a, 0i) >> (vec3<u32>(var_3.a.x, 4294967295u, 0u) % vec3<u32>(32u))), u_input.b), -378f, _wgslsmith_sub_u32(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(20011u, var_3.a.x, var_3.a.x), vec3<u32>(0u, 38515u, var_3.a.x))), ~1u), vec2<u32>(27982u, _wgslsmith_clamp_u32(firstLeadingBit(min(var_3.a.x, 0u)), 3339u, _wgslsmith_mod_u32(1u, ~17654u))), 56713u);
}

