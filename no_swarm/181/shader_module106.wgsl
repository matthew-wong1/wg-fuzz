struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<u32> {
    var var_0 = -505f;
    let var_1 = -(_wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(0i, u_input.a.x, -18333i, u_input.b)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-16898i, -16677i, u_input.a.x, 2147483647i)), -vec4<i32>(u_input.b, 4962i, u_input.a.x, 0i))) << (countOneBits(select(~vec4<u32>(20295u, 0u, 1u, 4294967295u), abs(vec4<u32>(0u, 11103u, 1u, 68741u)), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
    let var_2 = Struct_1(vec2<u32>(~7010u, select(1u, ~_wgslsmith_mult_u32(3303u, 527u), true && any(vec4<bool>(true, false, true, true)))));
    var var_3 = var_2;
    var var_4 = Struct_1(min(firstTrailingBit(reverseBits(countOneBits(var_3.a))), select(~(~vec2<u32>(var_3.a.x, var_3.a.x)), countOneBits(vec2<u32>(0u, var_2.a.x)), true)));
    return ~(~countOneBits(~select(vec2<u32>(1u, var_4.a.x), vec2<u32>(var_4.a.x, 68436u), true)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(func_3()), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-130f + -2196f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-542f - -2046f), _wgslsmith_f_op_f32(f32(-1f) * -398f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 646f), vec2<f32>(2282f, 900f), false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-999f, -780f))), vec2<bool>(true, false))))), !(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u)) <= _wgslsmith_add_u32(_wgslsmith_mult_u32(26041u, 0u), 5047u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1288f, 370f) + 915f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(807f - -946f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-146f + -1000f) + 1130f))), Struct_1(select(vec2<u32>(select(1u, 49362u, true), ~41333u), ~(~vec2<u32>(0u, 23150u)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_1 = var_0;
    return Struct_1(var_0.e.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3.a.x;
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1129f, 2021f, -1089f, arg_1) - vec4<f32>(arg_1, arg_1, 857f, arg_1)) * vec4<f32>(arg_1, -1187f, arg_1, arg_1)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(arg_1 * -669f), _wgslsmith_f_op_f32(exp2(arg_1))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-693f + 2308f))), _wgslsmith_f_op_f32(select(-1000f, arg_1, arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-611f, 140f, true)), arg_1, false)), arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -113f)), 149f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1319f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1275f)) * 138f)))));
    let var_3 = Struct_2(Struct_1(arg_3.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, arg_1)))))), var_2.ww, select(arg_0.zy, !select(arg_0.xz, vec2<bool>(true, arg_2), arg_0.zy), var_0 == func_3().x))), any(vec4<bool>(arg_2 || true, any(arg_0.zy), true, select(false, false, arg_0.x))) | ((var_1.a.x < 4294967295u) || true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -358f, -345f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1192f)), arg_1, -322f))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(0u, var_1.a.x), ~var_0 & var_1.a.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(var_2.zyx + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_1), -721f), _wgslsmith_f_op_f32(ceil(-597f)), _wgslsmith_f_op_f32(-477f - -237f))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(!vec3<bool>(true, all(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(u_input.b >= u_input.a.x, all(vec2<bool>(true, false)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), any(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(select(-642f, 973f, true)), true, Struct_1(~select(abs(vec2<u32>(21034u, 29720u)), vec2<u32>(1u, 1u), all(vec2<bool>(true, true)))));
    var_0 = func_1(select(select(!vec3<bool>(true, true, var_0.c), vec3<bool>(!var_0.c, true, false), all(select(vec4<bool>(var_0.c, false, true, var_0.c), vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(var_0.c, false, var_0.c, var_0.c)))), select(!select(vec3<bool>(true, false, var_0.c), vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, false, true)), select(select(vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, false, var_0.c), false), select(vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, true, true), vec3<bool>(true, var_0.c, true)), all(vec2<bool>(var_0.c, false))), select(select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(var_0.c, true, true)), vec3<bool>(var_0.c, true, false), var_0.c)), select(select(select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(true, false, true), vec3<bool>(false, false, var_0.c)), vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(false, true, true)), vec3<bool>(var_0.c, true, true), true)), func_1(vec3<bool>(any(vec3<bool>(false, true, var_0.c)) == any(vec2<bool>(var_0.c, true)), true, true), _wgslsmith_f_op_f32(-565f * _wgslsmith_f_op_f32(-var_0.d.x)), false & ((var_0.d.x <= var_0.b.x) || true), Struct_1(~(vec2<u32>(1u, var_0.a.a.x) ^ var_0.a.a))).d.x, !(!select(true, all(vec2<bool>(true, var_0.c)), -233f != var_0.b.x)), func_1(vec3<bool>(true, var_0.c, var_0.c), func_1(!select(vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(var_0.c, false, false), var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -764f), false, func_2()).d.x, true, func_1(select(!vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, false, var_0.c), vec3<bool>(false, var_0.c, true)), _wgslsmith_f_op_f32(-var_0.b.x), var_0.d.x != _wgslsmith_f_op_f32(sign(314f)), func_2()).e).e);
    var_0 = func_1(select(vec3<bool>(func_1(vec3<bool>(var_0.c, var_0.c, true), _wgslsmith_f_op_f32(-var_0.d.x), var_0.c, func_1(vec3<bool>(false, false, true), 304f, var_0.c, var_0.a).a).c, var_0.c, false), vec3<bool>(all(select(vec4<bool>(var_0.c, false, false, false), vec4<bool>(var_0.c, true, var_0.c, false), true)), false, all(vec3<bool>(false, true, true))), var_0.c), _wgslsmith_f_op_f32(-514f - var_0.d.x), all(select(!(!vec2<bool>(var_0.c, false)), select(select(vec2<bool>(var_0.c, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, false), false), all(vec3<bool>(true, true, var_0.c))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(var_0.c, var_0.c), false), var_0.c || var_0.c))), var_0.a);
    var var_1 = Struct_2(var_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + vec2<f32>(346f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.d.x, -1000f))))))), any(vec4<bool>(all(vec2<bool>(var_0.c, false)), !var_0.c, any(vec2<bool>(var_0.c, var_0.c)), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -140f)), -296f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.d)))), var_0.e);
    var var_2 = vec2<bool>(true, !var_0.c);
    var var_3 = var_1.e.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_div_i32(-1i, u_input.a.x), countOneBits(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.b, 10783i)) ^ vec3<i32>(u_input.a.x, -2147483647i, u_input.b), vec3<i32>(-u_input.b, 19852i, 12817i))));
}

