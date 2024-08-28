struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x | -42058i, u_input.a.x, u_input.a.x), ~u_input.a.yxz), vec3<i32>(firstTrailingBit(-2147483647i), select(u_input.a.x, -5147i, false), u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(abs(396f));
    var_1 = arg_1.c;
    var var_2 = Struct_3(44751u);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.c, arg_0.x))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1399f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1528f + arg_1.c) * _wgslsmith_f_op_f32(arg_0.x * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-875f, 1009f)))));
    return Struct_4(~(~(1u << (arg_1.a % 32u))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -319f)) - _wgslsmith_f_op_f32(351f * arg_1.c)), -1268f), vec4<f32>(arg_1.c, -784f, _wgslsmith_f_op_f32(arg_1.c * arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -515f)))), var_0);
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-861f, 449f) * vec2<f32>(-167f, 1243f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, 995f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1140f, 515f))))), Struct_2(~11091u, !select(u_input.a.x > u_input.a.x, true, select(false, false, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1279f - 483f), -108f))), true, Struct_1(1u, 4294967295u, 128604u)), ~select(select(0i, -27839i, true), u_input.a.x, false) < u_input.a.x);
    let var_1 = !(!(!vec4<bool>(true, all(vec3<bool>(false, false, false)), false, true)));
    var var_2 = u_input.a.x;
    var_2 = ~(-58697i);
    var var_3 = Struct_3(4294967295u);
    return 63901u;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_mod_i32(-abs(~u_input.a.x), _wgslsmith_clamp_i32(firstTrailingBit(2147483647i), countOneBits(u_input.a.x), u_input.a.x));
    var var_1 = func_2(arg_1, Struct_2(~arg_0, !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)) + 623f), true, Struct_1(4294967295u, reverseBits(firstTrailingBit(1u)), arg_0)), all(vec2<bool>(true, true)));
    var_0 = var_1.c.x;
    var var_2 = select(vec4<bool>(true, true, true, true), select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, false), false), vec4<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, ~arg_3.a < _wgslsmith_mod_u32(4294967295u, 9787u), true)), all(vec3<bool>(any(vec2<bool>(false, true)), true, any(vec4<bool>(true, true, false, true)))) & all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), true)));
    let var_3 = 2147483647i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.b.zzy)) - _wgslsmith_f_op_vec3_f32(select(var_1.b.wxx, var_1.b.xxw, var_2.yzz))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, -1681f, -1064f), _wgslsmith_f_op_vec3_f32(exp2(var_1.b.zxy)), select(vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.xzw, var_2.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -996f), -231f) + var_1.b.xxw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_add_u32(0u, ~_wgslsmith_add_u32(func_1(), abs(1173u))), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1746f + _wgslsmith_f_op_f32(-1660f * 383f)) - _wgslsmith_f_op_f32(f32(-1f) * -2390f)))), true, Struct_1(1u, 1u, ~firstLeadingBit(47097u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(var_0.a, func_2(vec2<f32>(-1153f, var_0.c), var_0, false).b.yz, Struct_3(var_0.a), Struct_3(var_0.a))))) * _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_u32(var_0.a ^ 1u, 0u), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)), Struct_2(53983u, var_0.b, var_0.c, false, Struct_1(1557u, 33437u, var_0.a)), true).b.wy, Struct_3(_wgslsmith_mult_u32(var_0.a, 1u)), Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.c, 4294967295u, 4294967295u), vec3<u32>(0u, 18181u, 4294967295u)))))), _wgslsmith_add_vec4_i32(~abs(reverseBits(u_input.a)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1i), -u_input.a, true), firstTrailingBit(u_input.a))), firstTrailingBit(select(vec2<u32>(var_0.a, countOneBits(56808u)), countOneBits(~vec2<u32>(var_0.a, var_0.a)), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(627f))), 1000f))));
}

