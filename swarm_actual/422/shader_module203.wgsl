struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(-886f, 1000f, 318f, -709f, -1279f, 1479f, 1607f, 1387f, -195f, -417f, 106f, -178f, -315f, -2723f);

var<private> global1: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = ~(u_input.a.x ^ _wgslsmith_sub_u32(15955u, countOneBits(u_input.c.x)));
    var var_1 = vec2<bool>(!(!all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(66094u, 14u)] * global0[_wgslsmith_index_u32(4294967295u, 14u)])))) <= global0[_wgslsmith_index_u32(~max(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 26970u), 14u)]);
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, -37606i) | ~(-47947i), 6242i), 0i, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(-5820i, i32(-1i) * -14404i, ~u_input.b), select(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), firstTrailingBit(vec3<i32>(u_input.b, -2147483647i, u_input.d.x)), true)));
    let var_3 = _wgslsmith_mult_u32(~4294967295u, u_input.a.x);
    var var_4 = Struct_3(var_2.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1172f, -1000f, -1000f) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 1137f, global0[_wgslsmith_index_u32(1u, 14u)])))))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(~(-_wgslsmith_add_i32(reverseBits(0i), u_input.b)), u_input.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1691f, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 570f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(37730u, 14u)])))), _wgslsmith_f_op_vec3_f32(func_3()))), !vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), any(vec4<bool>(true, false, false, false)), true));
    let var_1 = vec2<bool>(_wgslsmith_mod_i32(countOneBits(-u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, 2147483647i)) > (1i >> (1u % 32u)), !(!any(var_0.d)));
    let var_2 = Struct_2(var_0);
    var var_3 = var_0.d.yy;
    let var_4 = vec3<bool>(!all(var_0.d), !(!((var_0.d.x && true) | true)), true);
    return select(var_0.d.xy, var_4.zy, true);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = array<f32, 14>();
    let var_0 = Struct_2(arg_1);
    var var_1 = false;
    var var_2 = func_2();
    let var_3 = Struct_3(_wgslsmith_div_i32(2147483647i >> (max(arg_1.b.x, 4294967295u) % 32u), ~(~_wgslsmith_mod_i32(arg_1.a, 2147483647i))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, 13587i, -13788i, u_input.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(u_input.b), _wgslsmith_div_i32(u_input.d.x, i32(-1i) * -9728i), firstLeadingBit(20810i), -u_input.b | func_1(u_input.c.x, Struct_1(u_input.d.x, vec3<u32>(u_input.a.x, 108079u, 81786u), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], 1000f, global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(false, true, false, true)))), _wgslsmith_sub_vec4_i32(u_input.d, -(~vec4<i32>(20963i, -917i, u_input.b, 1i))), -u_input.d));
    var var_1 = select(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(u_input.a.x, 35227u)), ~abs(1u)), firstLeadingBit(abs(vec2<u32>(u_input.a.x, 79533u) >> (~u_input.a.xy % vec2<u32>(32u)))), true);
    var var_2 = true & (any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)) == false);
    global0 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-770f - _wgslsmith_f_op_f32(f32(-1f) * -654f)));
}

