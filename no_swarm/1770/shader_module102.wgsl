struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32) -> vec2<bool> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1257f * -1383f)), _wgslsmith_f_op_f32(select(-1245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f)), true))), Struct_1(arg_1), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), !(!all(vec4<bool>(false, false, true, false)))));
    let var_1 = Struct_1(var_0.a.x);
    let var_2 = ~2147483647i;
    global1 = array<Struct_2, 7>();
    var var_3 = var_0;
    return select(var_0.c, !(!select(!vec2<bool>(false, var_0.c.x), var_3.c, vec2<bool>(var_3.c.x, false))), !(select(all(vec4<bool>(true, true, false, var_0.c.x)), any(vec4<bool>(false, var_0.c.x, var_0.c.x, var_3.c.x)), true & var_0.c.x) & (u_input.a.x == u_input.a.x)));
}

fn func_2() -> vec2<f32> {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(all(select(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], vec3<bool>(true, false, true))), any(vec4<bool>(false, true, false, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(632f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f + -398f)))));
    let var_2 = var_0.x;
    var var_3 = !select(!(!vec2<bool>(var_0.x, var_0.x)), !func_3(_wgslsmith_div_f32(2082f, var_1.a), -199f, -1i), func_3(_wgslsmith_f_op_f32(f32(-1f) * -220f), -482f, firstTrailingBit(u_input.b.x & -2147483647i)));
    let var_4 = ~vec3<u32>(1u, u_input.a.x, 1u);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) - _wgslsmith_f_op_f32(-424f + _wgslsmith_f_op_f32(round(2736f)))), var_1.a);
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = arg_0.b;
    let var_1 = ~_wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 7636u) | ~u_input.a), vec3<u32>(abs(u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(17200u, 0u), u_input.a.x | u_input.a.x), 4294967295u));
    let var_2 = var_0;
    var var_3 = var_0.a;
    var_3 = 1122f;
    return reverseBits(1i);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1046f)))))));
    let var_1 = 1378f;
    return var_0;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = ~(~u_input.a.x);
    var var_1 = countOneBits(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(~u_input.a.xz, vec2<u32>(8463u, arg_0))), vec2<u32>(_wgslsmith_mod_u32(arg_0 << (arg_0 % 32u), reverseBits(1u)), reverseBits(min(u_input.a.x, 0u)))));
    var var_2 = func_5(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), vec2<i32>(~(-1i), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_2()), Struct_1(1363f), vec2<bool>(true, false)))), select(_wgslsmith_sub_vec2_i32(u_input.b.xz, u_input.b.wx), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b.xx), true), vec4<i32>(((u_input.b.x | u_input.b.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, 1i), vec3<i32>(-1i, u_input.b.x, 7166i))) | u_input.b.x, u_input.b.x, 1i, -42216i));
    global1 = array<Struct_2, 7>();
    var var_3 = func_5(!select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), true), u_input.b.ww & (_wgslsmith_sub_vec2_i32(~vec2<i32>(-4098i, -2147483647i), vec2<i32>(-49422i, 14198i)) | _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -1i), vec2<bool>(true, false)), vec2<i32>(u_input.b.x, u_input.b.x))), u_input.b.zy, _wgslsmith_clamp_vec4_i32(~u_input.b, u_input.b, _wgslsmith_mult_vec4_i32(firstTrailingBit(u_input.b) & u_input.b, (vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(0u, 0u, 1u, arg_0) % vec4<u32>(32u))) << (max(vec4<u32>(arg_0, 4294967295u, u_input.a.x, 21532u), vec4<u32>(0u, u_input.a.x, 1u, arg_0)) % vec4<u32>(32u)))));
    return func_5(vec4<bool>(all(vec4<bool>(false, false, false, true)) | true, false, any(vec4<bool>(false, false, true, true)), _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(var_3.a + var_3.a)) == var_3.a), u_input.b.zw, _wgslsmith_add_vec2_i32(u_input.b.yy, u_input.b.yw), u_input.b);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<f32>(-1125f, 683f, _wgslsmith_f_op_f32(-arg_0.a.x));
    let var_1 = !(~u_input.b.x == _wgslsmith_mod_i32(~u_input.b.x, -u_input.b.x));
    let var_2 = 14447i;
    global0 = array<vec3<bool>, 32>();
    global1 = array<Struct_2, 7>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)));
}

fn func_7(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    global1 = array<Struct_2, 7>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, abs(select(~(~u_input.a), vec3<u32>(0u, 10930u, arg_3 >> (4294967295u % 32u)), global0[_wgslsmith_index_u32(arg_3 << (arg_3 % 32u), 32u)]))), 7u)];
    global0 = array<vec3<bool>, 32>();
    var var_1 = arg_3;
    var_1 = countOneBits(u_input.a.x) & arg_3;
    return -957f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(20670u, 21383u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_7(abs(reverseBits(~u_input.b.x)), u_input.b.xyy, func_6(Struct_2(vec2<f32>(1000f, 1000f), func_1(u_input.a.x), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), func_1(u_input.a.x), vec3<bool>(true, false, u_input.a.x > u_input.a.x), select(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 11060u, 1u)), true)), ~firstLeadingBit(345u))), _wgslsmith_mult_u32(102301u, _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)) << (firstLeadingBit(~26642u) % 32u), abs(u_input.a.x));
}

