struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_2;
    global1 = Struct_1(!arg_3.zx);
    let var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(abs(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), vec3<i32>(u_input.a.x, firstLeadingBit(10791i), u_input.a.x >> (18997u % 32u))), ~(~firstLeadingBit(vec3<i32>(8777i, 2147483647i, 2345i))));
    return arg_2;
}

fn func_2() -> vec2<u32> {
    var var_0 = select(!global0[_wgslsmith_index_u32(func_3(_wgslsmith_clamp_u32(4294967295u, 1u, 130912u) | 1u, Struct_1(global1.a), 1u, !(!vec3<bool>(false, global1.a.x, false))), 25u)], vec4<bool>(true, global1.a.x, u_input.a.x == u_input.a.x, all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), global1.a.x);
    let var_1 = Struct_1(vec2<bool>(var_0.x, false));
    var var_2 = var_1;
    var var_3 = _wgslsmith_mod_vec4_i32(max(_wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 4151i, -82i, u_input.a.x)), vec4<i32>(u_input.a.x, -u_input.a.x, -39857i, _wgslsmith_div_i32(4043i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(29718i, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), var_1.a.x), vec4<i32>(2147483647i, 21374i, 8335i, -2147483647i) & vec4<i32>(u_input.a.x, 29014i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 30511i, u_input.a.x, u_input.a.x)) | (vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, 0i, -33900i, 1i) >> (select(vec4<u32>(14309u, 4294967295u, 36497u, 49792u), vec4<u32>(22875u, 4294967295u, 1u, 0u), vec4<bool>(var_2.a.x, var_1.a.x, var_1.a.x, var_1.a.x)) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 1i), -43517i, u_input.a.x)), -vec4<i32>(~(-15205i), 2147483647i, 1i, abs(2147483647i))));
    var var_4 = vec2<u32>(4294967295u, 58316u << (1u % 32u));
    return _wgslsmith_add_vec2_u32(firstLeadingBit(reverseBits(~vec2<u32>(49531u, var_4.x)) >> ((~vec2<u32>(var_4.x, 33091u) & ~vec2<u32>(3183u, var_4.x)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 31129u)), vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(var_4.x, 14143u)), 9930u)));
}

fn func_1(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = 177f;
    var var_1 = func_2();
    var var_2 = Struct_1(!select(global1.a, vec2<bool>(true, global1.a.x != global1.a.x), !(!vec2<bool>(false, global1.a.x))));
    global0 = array<vec4<bool>, 25>();
    var var_3 = Struct_1(global1.a);
    return any(!vec3<bool>(!var_3.a.x, !global1.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a);
    var var_1 = true;
    var_1 = any(vec2<bool>(!func_1(0u, 3659u) || true, !var_0.a.x));
    let var_2 = _wgslsmith_clamp_i32(1i << (~(_wgslsmith_clamp_u32(4294967295u, 19022u, 106931u) ^ max(4294967295u, 4294967295u)) % 32u), ~(-firstTrailingBit(~1i)), abs(21612i));
    var_1 = !(!all(select(global0[_wgslsmith_index_u32(66539u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], var_0.a.x))) & all(vec3<bool>(!func_1(34662u, 82028u), true, !(!global1.a.x)));
    var_1 = !(4294967295u == _wgslsmith_clamp_u32(0u, 1u, 4294967295u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1717f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(357f + -1322f), -1249f, true)))));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(290f, -333f, false)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1794f, var_3)), _wgslsmith_f_op_f32(trunc(var_3))))), _wgslsmith_f_op_f32(ceil(var_3)));
}

