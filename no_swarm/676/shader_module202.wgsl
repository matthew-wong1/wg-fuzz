struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1002f, -1329f), _wgslsmith_f_op_f32(f32(-1f) * -770f)))))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_f_op_f32(exp2(var_0.a)))))));
    global0 = !vec4<bool>(false, !global0.x, false, false);
    var var_2 = ~vec4<u32>(~(~(72126u & u_input.b)), abs(1u), min(~(0u | arg_0.x), arg_0.x), _wgslsmith_mult_u32(19241u, 38245u));
    var var_3 = var_0;
    return all(vec4<bool>(false, var_0.b, true, any(!(!global0.zxz))));
}

fn func_2() -> f32 {
    global0 = !select(select(vec4<bool>(global0.x, true, !global0.x, global0.x), vec4<bool>(all(global0.wwx), true, any(global0.zxx), all(vec3<bool>(false, true, true))), !vec4<bool>(global0.x, false, global0.x, global0.x)), !vec4<bool>(any(vec4<bool>(false, global0.x, false, true)), global0.x, true, global0.x), all(global0.wyz));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1122f + -168f))), global0.x);
    global0 = vec4<bool>(select(select(select(!global0.x, true, true), true, false), true, select(false, func_3(vec4<u32>(1u, u_input.a, 42744u, 4294967295u)) != false, true)), global0.x, !all(select(!global0.xwz, select(vec3<bool>(global0.x, false, false), vec3<bool>(var_0.b, global0.x, var_0.b), global0.x), true)), select(!any(global0.wx), all(!vec4<bool>(true, global0.x, var_0.b, false)), !any(vec3<bool>(global0.x, false, false))) | true);
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a, var_0.a, 754f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(569f - 944f), -881f, _wgslsmith_f_op_f32(100f * var_1.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, -1056f)) + vec3<f32>(-100f, var_0.a, var_1.a)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, -309f)) + var_2.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = !vec4<bool>(global0.x, true, arg_1.b, any(vec3<bool>(false, global0.x, false)) && any(!vec4<bool>(arg_2.b, true, true, false)));
    global0 = !select(select(vec4<bool>(arg_2.b, arg_1.b, true, u_input.b < u_input.a), !vec4<bool>(false, arg_2.b, global0.x, arg_2.b), select(!vec4<bool>(arg_1.b, true, true, false), !vec4<bool>(false, arg_1.b, arg_2.b, true), true)), select(select(select(vec4<bool>(true, arg_1.b, false, arg_2.b), vec4<bool>(global0.x, true, arg_2.b, arg_2.b), arg_1.b), select(vec4<bool>(false, arg_2.b, true, arg_1.b), vec4<bool>(false, arg_1.b, global0.x, true), arg_1.b), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, global0.x), true)), select(vec4<bool>(true, true, false, arg_2.b), select(vec4<bool>(arg_2.b, global0.x, true, false), vec4<bool>(false, arg_2.b, false, true), global0.x), !vec4<bool>(true, false, global0.x, true)), !vec4<bool>(global0.x, true, true, false)), !vec4<bool>(any(global0.xyz), all(vec2<bool>(true, true)), true || arg_2.b, true));
    global0 = !(!select(!(!vec4<bool>(arg_1.b, global0.x, true, false)), !select(vec4<bool>(true, false, global0.x, false), vec4<bool>(true, false, false, arg_1.b), true), !select(vec4<bool>(arg_1.b, global0.x, true, false), vec4<bool>(arg_1.b, global0.x, arg_1.b, arg_2.b), global0.x)));
    var var_0 = arg_2;
    let var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(firstTrailingBit(1u), select(u_input.a, 13670u, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, u_input.a)), abs(u_input.a)) ^ vec4<u32>(1u ^ min(u_input.a, 58195u), u_input.a, countOneBits(countOneBits(u_input.b)), u_input.b), ~_wgslsmith_mult_vec4_u32((vec4<u32>(4294967295u, 25446u, u_input.b, u_input.b) ^ vec4<u32>(4294967295u, 49625u, u_input.a, 4294967295u)) << (firstTrailingBit(vec4<u32>(0u, u_input.b, 3576u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(abs(4294967295u), 4294967295u, reverseBits(4294967295u), ~u_input.b)), select(vec4<u32>(u_input.a, 0u, 28857u, 4294967295u) | ~vec4<u32>(1u, u_input.a, 26568u, u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a), vec4<u32>(u_input.b, u_input.a, u_input.b, 51578u)), u_input.b, u_input.b, u_input.b << (u_input.b % 32u)), select(!vec4<bool>(arg_1.b, var_0.b, true, arg_2.b), !vec4<bool>(var_0.b, false, true, false), select(vec4<bool>(arg_1.b, arg_2.b, var_0.b, arg_1.b), vec4<bool>(global0.x, global0.x, true, global0.x), arg_2.b))) >> (~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.a), vec4<u32>(1u, 1u, u_input.b, u_input.a)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4821u, 33049u, 0u), vec4<u32>(9433u, u_input.a, u_input.b, u_input.a))) % vec4<u32>(32u)));
    return Struct_1(-1407f, true);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-964f, 713f, 1158f, 667f), vec4<f32>(-276f, 664f, 763f, -908f)))) * vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(636f, -1130f), -1440f, _wgslsmith_f_op_f32(-354f * 1044f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, -291f, 1209f, -1000f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2437f, 790f, 770f, 123f)))))), Struct_1(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 4294967295u), abs(vec3<u32>(u_input.a, 84139u, u_input.a))) <= 59723u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-215f))), true), -1344f);
    let var_1 = _wgslsmith_f_op_f32(func_2());
    global0 = select(!select(!vec4<bool>(true, false, var_0.b, true), !vec4<bool>(var_0.b, false, var_0.b, global0.x), true), select(select(!(!vec4<bool>(true, false, var_0.b, global0.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, var_0.b, true), !global0.x), var_0.b), select(select(!vec4<bool>(true, true, global0.x, true), vec4<bool>(var_0.b, global0.x, var_0.b, global0.x), false), !select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(var_0.b, false, var_0.b, global0.x), vec4<bool>(false, global0.x, var_0.b, var_0.b)), select(select(vec4<bool>(var_0.b, false, true, var_0.b), vec4<bool>(false, true, true, var_0.b), false), select(vec4<bool>(true, false, global0.x, var_0.b), vec4<bool>(var_0.b, var_0.b, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true)), !global0.x)), !any(!global0.wzz)), select(vec4<bool>(!(!var_0.b), all(global0.zzz), !var_0.b, true || !var_0.b), !vec4<bool>(false, all(vec4<bool>(true, false, global0.x, var_0.b)), select(false, var_0.b, false), all(vec4<bool>(var_0.b, global0.x, var_0.b, true))), !select(!vec4<bool>(var_0.b, var_0.b, global0.x, var_0.b), select(vec4<bool>(false, var_0.b, global0.x, true), vec4<bool>(var_0.b, global0.x, var_0.b, global0.x), var_0.b), vec4<bool>(global0.x, false, false, global0.x))));
    let var_2 = global0.x;
    let var_3 = select(global0.yyy, select(select(!(!global0.yxx), select(!vec3<bool>(var_0.b, true, false), !vec3<bool>(var_0.b, true, false), func_4(vec4<f32>(-538f, -485f, 732f, 1074f), Struct_1(var_0.a, true), var_0, 590f).b), vec3<bool>(func_3(vec4<u32>(36962u, 1u, u_input.b, 18795u)), false, true)), select(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(var_0.b, var_0.b, true), true), select(select(global0.yzz, vec3<bool>(global0.x, true, true), global0.yxx), !global0.yxz, any(global0.xwx)), any(global0.xyx)), select(global0.wzx, global0.zzy, vec3<bool>(true, true, true))), global0.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec4<bool>(true, true, !var_0.b, var_0.b);
    global0 = !select(!select(vec4<bool>(false, var_0.b, var_0.b, false), vec4<bool>(var_0.b, global0.x, false, global0.x), true && global0.x), !vec4<bool>(u_input.a == 1u, func_1().b, true, any(vec3<bool>(false, false, global0.x))), var_0.b);
    var var_1 = var_0.b;
    let var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(3135u));
}

