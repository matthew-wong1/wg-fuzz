struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(220i, vec4<bool>(true, false, true, false), vec3<f32>(-801f, -1651f, -1000f));

var<private> global1: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_1(i32(-1i) * -1i, select(!global0.b, vec4<bool>(false, -global0.a > global0.a, any(vec4<bool>(arg_1.x, global0.b.x, false, arg_1.x)), global0.b.x), arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-316f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-132f, global0.c.x)) * _wgslsmith_f_op_f32(max(1372f, -818f)))) + global0.c));
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1752f, _wgslsmith_f_op_f32(-var_0.c.x), global0.c.x)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(315f, global0.c.x, -2594f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1362f)), _wgslsmith_f_op_f32(var_1.c.x - 1057f), true)) * _wgslsmith_f_op_f32(min(1408f, _wgslsmith_f_op_f32(select(-1000f, -580f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) + _wgslsmith_f_op_f32(floor(-994f))))));
    var_1 = Struct_1(abs(var_0.a >> (arg_0 % 32u)), select(var_1.b, var_0.b, false), _wgslsmith_div_vec3_f32(vec3<f32>(-1212f, _wgslsmith_f_op_f32(-1056f + -1261f), var_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -1621f, var_1.c.x))))));
    let var_3 = var_0;
    return select(!select(var_3.b, vec4<bool>(true, false, any(var_0.b), true || var_1.b.x), !var_0.b.x), select(select(var_3.b, var_3.b, vec4<bool>(var_3.b.x, true | var_0.b.x, false, false)), vec4<bool>(any(vec3<bool>(false, arg_1.x, false)), true, any(!var_1.b.yzz), false), var_1.b.x), var_1.b);
}

fn func_2() -> vec4<bool> {
    var var_0 = global1.x;
    let var_1 = Struct_1(28992i, select(select(func_3(select(101789u, 4294967295u, true), !vec3<bool>(false, global0.b.x, true), vec2<u32>(42293u, 56739u)), global0.b, true | (true || global0.b.x)), global0.b, vec4<bool>(global0.b.x, select(true, true, true), any(vec3<bool>(false, global0.b.x, global0.b.x)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global0.c.x, -956f)) + global0.c)));
    let var_2 = global1.zxy ^ ~abs(global1.wxw);
    let var_3 = var_1;
    let var_4 = firstTrailingBit(~min(~abs(vec4<u32>(30158u, 51592u, 4294967295u, 4294967295u)), vec4<u32>(18415u, countOneBits(1u), reverseBits(31996u), abs(76502u))));
    return vec4<bool>(var_1.b.x, false, var_1.b.x, select(true, true, global0.b.x));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(global0.a, select(vec4<bool>(false, global0.b.x, select(global0.b.x && global0.b.x, global0.b.x, true), global0.b.x), select(!global0.b, func_2(), global0.b.x), func_2()), global0.c);
    var var_1 = Struct_1(3904i, global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))))));
    let var_2 = Struct_1(global1.x, vec4<bool>(func_2().x, all(func_3(1u, vec3<bool>(true, global0.b.x, true), vec2<u32>(0u, 1u)).xx), true, (_wgslsmith_f_op_f32(max(global0.c.x, var_0.c.x)) >= var_1.c.x) & true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(-808f - var_1.c.x), _wgslsmith_f_op_f32(-global0.c.x))));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(global1.xw)), global1.wx), select(!(!select(var_2.b, global0.b, var_2.b)), global0.b, !vec4<bool>(var_0.b.x, false, var_2.b.x, !global0.b.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(210f, 317f, var_0.c.x) - _wgslsmith_f_op_vec3_f32(var_0.c + var_1.c)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_2.c.x, 163f)), global0.c))), vec3<f32>(global0.c.x, var_1.c.x, 864f))));
    var var_4 = Struct_1(var_3.a, func_3(_wgslsmith_mod_u32(~countOneBits(1u), ~1u), !var_2.b.yyx, _wgslsmith_mod_vec2_u32(~vec2<u32>(10415u, 33475u) >> (firstTrailingBit(vec2<u32>(0u, 15213u)) % vec2<u32>(32u)), vec2<u32>(6586u << (1u % 32u), 0u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(var_2.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.c))), true)))));
    return ~(-global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(0i, ~func_1());
    global1 = vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, ~global0.a), var_0.x ^ (min(u_input.a, select(u_input.a, 2147483647i, global0.b.x)) | -53969i), abs(~global1.x), ~(~abs(_wgslsmith_sub_i32(var_0.x, global1.x))));
    let var_1 = Struct_1(0i, vec4<bool>(!(!(global0.c.x <= -691f)), !global0.b.x, true, false), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + 137f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x * global0.c.x), _wgslsmith_f_op_f32(global0.c.x - global0.c.x)), _wgslsmith_f_op_f32(abs(-887f))), global0.c));
    var var_2 = Struct_1(~_wgslsmith_sub_i32(var_1.a, firstTrailingBit(_wgslsmith_sub_i32(var_0.x, 1i))), global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-305f, var_1.c.x, 619f)))));
    global1 = -(vec4<i32>(1i, -(~global0.a), ~(-34759i), max(~46920i, _wgslsmith_dot_vec2_i32(global1.yy, vec2<i32>(-1i, 63815i)))) & ~abs(vec4<i32>(-2147483647i, var_1.a, 20705i, -27828i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 1u), ~(~vec2<u32>(39348u, 69789u)), any(vec2<bool>(false, global0.b.x)) != true), countOneBits(vec2<u32>(select(98393u, 4294967295u, global0.b.x), _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u)))));
}

