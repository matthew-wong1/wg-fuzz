struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.c + 1106f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c)))) - -433f));
    var_0 = -2326f;
    var_0 = _wgslsmith_f_op_f32(exp2(arg_2.a.c));
    var var_1 = Struct_2(arg_2.a);
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(var_1.a.a, arg_1.a) << (abs(vec2<u32>(countOneBits(var_1.a.b), var_1.a.b ^ 1u)) % vec2<u32>(32u)), arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1758f))))))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2.a.a.x, 4294967295u, firstLeadingBit(143u << (_wgslsmith_add_u32(var_1.a.b, 1u) % 32u))), ~vec4<u32>(arg_2.a.b, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 11322u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 74400u, 4294967295u), vec3<u32>(arg_2.a.b, arg_2.a.a.x, 38705u))), var_2.b, 1u));
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    let var_0 = 0i;
    let var_1 = Struct_2(Struct_1(vec2<u32>(~1u, 0u), _wgslsmith_dot_vec4_u32(select(func_3(-35426i, Struct_1(vec2<u32>(arg_0.x, 4294967295u), 89853u, -973f), Struct_2(Struct_1(vec2<u32>(4294967295u, arg_0.x), arg_0.x, 676f))), vec4<u32>(87911u, arg_0.x, 9481u, arg_0.x), vec4<bool>(true, true, true, false)), vec4<u32>(31382u, ~1u, arg_0.x ^ arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -1890f)));
    let var_2 = !any(vec2<bool>(select(all(vec2<bool>(false, true)), true, false), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_3 = vec4<i32>(abs(u_input.c.x), _wgslsmith_dot_vec3_i32(abs(~(~vec3<i32>(u_input.c.x, 0i, -1i))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, 0i, u_input.b), vec3<i32>(u_input.b, var_0, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0, 29150i, -1i), vec3<i32>(var_0, 2147483647i, u_input.b))), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, var_0, u_input.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0, u_input.d), vec3<i32>(u_input.c.x, var_0, var_0))))), firstLeadingBit(_wgslsmith_mult_i32(u_input.c.x, var_0)), _wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i) * -u_input.c), vec2<i32>(u_input.d, _wgslsmith_mult_i32(-1i, ~u_input.c.x))));
    var var_4 = var_1;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-837f, -100f, var_4.a.c, var_4.a.c) - vec4<f32>(372f, 390f, var_1.a.c, 746f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.a.c))), _wgslsmith_f_op_f32(max(-1306f, var_1.a.c)), _wgslsmith_f_op_f32(var_1.a.c - _wgslsmith_div_f32(1562f, 177f)), -1000f)))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, -183f, _wgslsmith_div_f32(872f, -1846f), -1499f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1042f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3194f * -1199f) + _wgslsmith_div_f32(1154f, 824f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f) * _wgslsmith_f_op_f32(step(-1888f, 109f)))) * _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(13294u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(24908u, 1u)), 20244u << (1u % 32u), 23690u)))));
    var var_1 = Struct_2(Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(0u, 4294967295u)), min(1u, max(23693u, 4294967295u))), 4294967295u, var_0.x));
    var_1 = Struct_2(Struct_1(var_1.a.a, 0u, -704f));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-445f, var_0.x, var_1.a.c, var_0.x), vec4<f32>(1514f, -1153f, var_0.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, -1631f, var_1.a.c, var_1.a.c)), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1183f, var_1.a.c, var_0.x, -820f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1788f, -259f, -169f, var_1.a.c)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.a.c, _wgslsmith_f_op_f32(var_1.a.c * var_0.x), var_0.x))), vec4<bool>(var_1.a.c > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1394f)), -1009f), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a.x, 104971u, var_1.a.a.x), vec3<u32>(1u, 0u, var_1.a.a.x) ^ vec3<u32>(34046u, var_1.a.b, 72553u)) == ((var_1.a.b ^ 60621u) | 4294967295u), true, _wgslsmith_f_op_f32(f32(-1f) * -1688f) <= _wgslsmith_f_op_f32(sign(var_1.a.c)))));
    let var_2 = u_input.b << (_wgslsmith_dot_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(var_1.a.b, var_1.a.b, 12874u)) >> (vec3<u32>(0u, 8878u, 104899u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.a.b, 85652u, 6793u), vec3<u32>(var_1.a.a.x, 1u, var_1.a.b))) % 32u);
    return (-601f > _wgslsmith_f_op_f32(max(var_0.x, -1971f))) || (u_input.a >= _wgslsmith_add_i32(var_2, countOneBits(var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(func_1(), false, !(firstTrailingBit(u_input.b) != 1i));
    let var_1 = Struct_2(Struct_1(max(abs(vec2<u32>(1u, 1u)), countOneBits(vec2<u32>(1u, 1u))), 16599u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) + 1039f)));
    let var_2 = !vec4<bool>(var_0.x == any(var_0.zx), var_0.x | all(vec3<bool>(true, var_0.x, var_0.x)), all(vec2<bool>(var_0.x, true)), (i32(-1i) * -2147483647i) == _wgslsmith_mod_i32(2147483647i, u_input.a));
    var var_3 = var_1.a.c;
    var_3 = 426f;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 20149i, 1i), vec3<i32>(min(~u_input.d, 1i), u_input.d, _wgslsmith_mult_i32(reverseBits(u_input.c.x), u_input.b))), vec3<f32>(var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c))), var_1.a.c));
}

