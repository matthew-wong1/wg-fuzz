struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = ~abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(3904u, u_input.b.x, u_input.a, u_input.a), u_input.b));
    let var_1 = 0u <= u_input.a;
    var_0 = ~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b);
    var_0 = u_input.b;
    var var_2 = ~(~((max(vec3<u32>(77195u, u_input.a, 18290u), vec3<u32>(var_0.x, u_input.b.x, 95496u)) ^ reverseBits(vec3<u32>(51986u, var_0.x, 22416u))) | u_input.b.wyw));
    return arg_0.x;
}

fn func_2() -> bool {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1025f, 906f, 242f) * vec3<f32>(947f, 1191f, -645f)))), -437f, 1463f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-401f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1427f)))), _wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1976f, -956f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-450f)));
    var var_3 = vec4<bool>(true, any(vec4<bool>((-2147483647i << (var_0 % 32u)) == 17910i, true, true, true)), true, true == all(vec2<bool>(true, true)));
    var_3 = select(!select(select(vec4<bool>(true, true, true, var_3.x), vec4<bool>(false, true, false, var_3.x), !vec4<bool>(false, false, var_3.x, true)), !(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), true), select(select(select(vec4<bool>(true, var_3.x, true, var_3.x), !vec4<bool>(true, var_3.x, var_3.x, false), select(vec4<bool>(var_3.x, true, true, false), vec4<bool>(var_3.x, true, var_3.x, true), var_3.x)), vec4<bool>(true, !var_3.x, var_3.x, var_3.x | false), !(!vec4<bool>(var_3.x, var_3.x, true, false))), !vec4<bool>(var_3.x, !var_3.x, var_3.x | var_3.x, false), true), select(vec4<bool>(!var_3.x, !var_3.x, !var_3.x, any(select(vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, false, var_3.x), var_3.x))), !(!vec4<bool>(var_3.x, true, false, false)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(var_3.x, var_3.x, var_3.x, true), vec4<bool>(var_3.x, var_3.x, true, true)))));
    return any(var_3.wx);
}

fn func_1() -> Struct_4 {
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * -380f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-327f)))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true))), false, true), vec4<bool>(true, !func_2(), firstLeadingBit(4294967295u) == u_input.a, !all(vec2<bool>(false, true)) == false), true);
    let var_1 = 1119f;
    var_0 = vec4<bool>(any(select(vec4<bool>(false & var_0.x, var_0.x, var_0.x, any(var_0.ywz)), vec4<bool>(var_0.x, !var_0.x, true, true), !(var_0.x || true))), !var_0.x, var_0.x, var_0.x);
    var var_2 = u_input.b.yx;
    let var_3 = 3785i;
    return Struct_4(_wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_3), vec2<i32>(-2147483647i, 1i)), vec2<i32>(1i, 5404i) << (u_input.b.xw % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, var_3)), -abs(select(vec2<i32>(-1i, -1i), vec2<i32>(var_3, 0i), var_0.yx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1475f, var_1, -916f) - vec3<f32>(514f, var_1, -400f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(240f, 1002f, var_1) + vec3<f32>(895f, var_1, -226f)))))), max(abs(-(vec2<i32>(2147483647i, -24151i) & vec2<i32>(var_3, 236i))), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(-21762i, -16128i), select(vec2<i32>(var_3, 5570i), vec2<i32>(-64276i, 2147483647i), var_0.x))), false, var_0.wz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(vec2<i32>(-1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(var_0.b * var_0.b))) * var_0.b), ~vec2<i32>(var_0.c.x, -(-2147483647i ^ var_0.a.x)), true, func_1().e);
    let var_1 = _wgslsmith_f_op_f32(var_0.b + var_0.b);
    var_0 = func_1();
    let var_2 = u_input.b.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, var_0.b, var_0.b, var_1))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_1, -239f, 429f) * vec4<f32>(256f, var_1, var_0.b, -1000f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.b, -1081f, 888f) * vec4<f32>(var_1, 952f, 1070f, var_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(703f, 309f, var_1, 733f) * vec4<f32>(489f, var_0.b, 2163f, var_0.b)), vec4<bool>(var_0.d, true, false, true))))))), -195f, _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(exp2(var_0.b)), ((u_input.b.x >= var_2) & false) == (~(-1i) > (var_0.c.x | -15456i)))));
    var var_4 = Struct_3(select(select(!select(vec4<bool>(true, var_0.d, var_0.d, true), vec4<bool>(true, var_0.e.x, var_0.d, var_0.d), vec4<bool>(true, var_0.d, var_0.d, var_0.e.x)), vec4<bool>(true, var_0.b == var_1, all(vec4<bool>(var_0.d, false, var_0.e.x, true)), func_2()), false), select(select(!vec4<bool>(var_0.d, false, var_0.e.x, true), select(vec4<bool>(var_0.d, true, var_0.d, true), vec4<bool>(var_0.e.x, var_0.d, var_0.e.x, false), vec4<bool>(var_0.d, var_0.e.x, var_0.e.x, var_0.d)), any(vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x))), select(vec4<bool>(var_0.d, var_0.d, true, var_0.e.x), select(vec4<bool>(false, false, var_0.d, var_0.d), vec4<bool>(false, true, true, false), var_0.d), vec4<bool>(true, var_0.d, true, true)), func_1().d), var_0.d), vec2<i32>(_wgslsmith_mult_i32(~var_0.c.x, abs(var_0.a.x)) ^ (i32(-1i) * -var_0.a.x), 2147483647i), 15679u, vec2<u32>(~countOneBits(~u_input.a), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), -1047f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1736f, 1221f)) * var_0.b)));
    let var_5 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~(var_4.d.x >> (var_2 % 32u)), ~u_input.b.x ^ var_4.c), 4294967295u);
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(9764i), _wgslsmith_mod_i32(2147483647i, firstLeadingBit(15936i))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, var_4.b.x), _wgslsmith_add_i32(var_4.b.x, var_0.c.x))));
}

