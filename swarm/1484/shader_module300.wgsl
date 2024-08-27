struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1067f, 1000f, 526f, -726f) - vec4<f32>(1000f, -1074f, -1691f, 687f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(973f, -857f, -1075f, 230f) + vec4<f32>(520f, 1000f, -1030f, 993f))), vec4<f32>(_wgslsmith_f_op_f32(1720f - -652f), _wgslsmith_f_op_f32(-3054f - 208f), -1637f, 176f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-483f, -694f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -984f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -744f))) + vec4<f32>(-741f, 2047f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(296f, -1436f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1685f)), _wgslsmith_f_op_f32(select(-600f, -1898f, true & arg_1.c.x))))));
    let var_1 = arg_1;
    let var_2 = -min(~vec2<i32>(-1i, ~1i), arg_0.yz);
    var var_3 = firstTrailingBit(u_input.a);
    let var_4 = var_1;
    return all(vec2<bool>(any(vec4<bool>(arg_1.b.x, true, var_4.b.x, var_4.c.x)), false)) || true;
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    let var_0 = 1u & abs(~firstTrailingBit(21861u) >> (7975u % 32u));
    var var_1 = ~1i << (0u % 32u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1183f + 202f), -289f)))));
    let var_3 = u_input.b;
    let var_4 = Struct_1(~reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, var_0), ~vec2<u32>(0u, var_0))), select(arg_0.zwz, select(vec3<bool>(true, true, all(vec2<bool>(arg_0.x, false))), vec3<bool>(true, func_3(vec3<i32>(2147483647i, -2016i, var_3), Struct_1(vec2<u32>(var_0, 103363u), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x))), arg_0.x), select(!arg_0.yxy, arg_0.yww, true)), !(!arg_0.x) & true), arg_0.ww);
    return _wgslsmith_clamp_i32(var_3, ~u_input.b, _wgslsmith_mod_i32(~(-u_input.a), var_3) >> (~countOneBits(0u) % 32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<bool>) -> bool {
    var var_0 = -select(func_4(vec4<bool>(!arg_3.x, func_3(arg_0.wyw, Struct_1(vec2<u32>(arg_2, 25674u), arg_3, arg_3.yx)), true, !arg_1.x)), u_input.b, !(!func_3(arg_0.zxx, Struct_1(vec2<u32>(78132u, 1u), arg_3, vec2<bool>(true, arg_1.x)))));
    var_0 = abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.zy, vec2<i32>(arg_0.x, 18377i)), reverseBits(vec2<i32>(1i, 41166i))), _wgslsmith_div_vec2_i32(max(arg_0.ww, vec2<i32>(arg_0.x, arg_0.x)), arg_0.xw)), _wgslsmith_mult_i32(~(-1i), -(-1i | arg_0.x))));
    var_0 = abs(_wgslsmith_mod_i32(arg_0.x, _wgslsmith_div_i32(u_input.b, arg_0.x)));
    var_0 = ~(u_input.a & countOneBits(_wgslsmith_div_i32(arg_0.x, ~u_input.a)));
    var_0 = u_input.a;
    return !(!(arg_2 <= (arg_2 & arg_2)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(~firstTrailingBit(0u), 1u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16632u, 7056u), vec3<u32>(1u, 26019u, 9949u)), 1u)) % vec2<u32>(32u)), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, !(u_input.a < u_input.b), false), vec3<bool>(true, true, true)), vec2<bool>(func_2(firstTrailingBit(vec4<i32>(2147483647i, 2147483647i, 61090i, 2147483647i)) | ~vec4<i32>(u_input.b, u_input.a, u_input.a, -2147483647i), vec2<bool>(true, select(true, false, true)), ~1u, vec3<bool>(true, false, true)), false));
    let var_1 = -1340f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(890f)))))));
    let var_2 = var_0;
    var var_3 = Struct_1(var_0.a >> ((~(vec2<u32>(27854u, var_0.a.x) << (var_2.a % vec2<u32>(32u))) >> (~_wgslsmith_div_vec2_u32(var_2.a, var_2.a) % vec2<u32>(32u))) % vec2<u32>(32u)), !select(var_0.b, !(!var_0.b), !select(var_2.b, vec3<bool>(var_2.b.x, false, var_1), var_2.b.x)), vec2<bool>(any(select(!var_2.c, var_2.b.zz, false)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-787i, u_input.b)), abs(vec2<i32>(-29836i, -2147483647i))) > u_input.b));
    var var_4 = var_0;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = ~select(18027i, 0i, all(vec2<bool>(true, true)));
    let var_1 = func_1();
    let var_2 = func_1();
    let var_3 = vec2<i32>(-44860i, _wgslsmith_sub_i32(u_input.b, 37619i));
    var var_4 = vec4<i32>(max(var_3.x, ~u_input.a), ~max(2147483647i, 17239i), abs(-1i), 859i);
    var var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(min(~(var_3.x << (var_2.a.x % 32u)), -1i), firstTrailingBit(-2147483647i)), vec2<i32>(var_4.x, 42196i));
    let x = u_input.a;
    s_output = StorageBuffer(430f);
}

