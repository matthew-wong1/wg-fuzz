struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<bool> {
    global1 = countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(19342u, arg_3.x), vec2<u32>(u_input.c, 1u)) ^ arg_3, ~vec2<u32>(arg_3.x, arg_3.x)) | vec2<u32>(global1.x, firstTrailingBit(~25475u)));
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -(~60321i) | (_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -47603i, -1i), vec3<i32>(-1i, arg_2.a, u_input.a)) & 2147483647i), abs(arg_2.a | _wgslsmith_sub_i32(arg_2.a, 23377i)), firstTrailingBit(arg_2.a)), min(u_input.b, firstLeadingBit(abs(min(u_input.b, u_input.b)))), vec4<i32>((_wgslsmith_mod_i32(arg_2.a, u_input.a) >> (1u % 32u)) & 1i, ~57518i, firstLeadingBit(_wgslsmith_sub_i32(74383i, arg_2.a)), _wgslsmith_dot_vec4_i32(countOneBits(min(vec4<i32>(u_input.a, u_input.d.x, arg_2.a, u_input.b.x), u_input.b)), u_input.b)));
    let var_1 = true;
    let var_2 = Struct_1(abs(~global0.x));
    let var_3 = Struct_3(Struct_2(arg_0.a), any(vec4<bool>(arg_0.a.x, var_1 && false, all(vec3<bool>(true, true, var_1)), arg_0.a.x | true)) & !(false | all(vec2<bool>(true, false))));
    return select(select(select(select(select(vec2<bool>(arg_0.a.x, true), vec2<bool>(false, false), false), vec2<bool>(false, true), !arg_0.a.zz), !var_3.a.a.yx, true), arg_0.a.xz, select(!vec2<bool>(true, var_3.a.a.x), arg_0.a.xy, !vec2<bool>(var_1, false))), select(!select(var_3.a.a.zz, arg_0.a.zy, vec2<bool>(var_3.a.a.x, true)), arg_0.a.yx, false), true);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, all(vec4<bool>(true, false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !func_3(Struct_2(vec3<bool>(true, false, true)), arg_0, Struct_1(global0.x), arg_1.yx)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), func_3(Struct_2(vec3<bool>(false, true, false)), -1000f, arg_2, arg_1.wy).x), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false)), (310f < arg_0) || all(vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_mult_vec2_u32(~abs(arg_1.yy), _wgslsmith_div_vec2_u32(arg_1.wz, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 13376u), arg_1.zy) ^ arg_1.x, ~0u)));
    global1 = vec2<u32>(global1.x, ~0u);
    return ~abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, arg_1.x, 3832u, 0u) ^ arg_1, arg_1));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<u32>) -> vec2<i32> {
    global1 = vec2<u32>((firstTrailingBit(71871u) ^ _wgslsmith_mult_u32(~arg_2.x, _wgslsmith_mult_u32(u_input.c, 28546u))) & ~_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(arg_1, 15376u, arg_1, 4294967295u) >> (arg_2 % vec4<u32>(32u))), 4294967295u);
    let var_0 = u_input.c;
    var var_1 = Struct_1(-15782i);
    var_1 = Struct_1(-15448i);
    let var_2 = select(vec3<bool>(true, !(35631u < global1.x), func_3(Struct_2(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-667f, 454f)) * _wgslsmith_f_op_f32(-871f + -1211f)), Struct_1(var_1.a), vec2<u32>(var_0, global1.x) >> (abs(arg_2.zx) % vec2<u32>(32u))).x), select(vec3<bool>(select(any(vec4<bool>(false, true, false, false)), any(vec3<bool>(false, false, false)), true), true, _wgslsmith_f_op_f32(513f - arg_0.x) < _wgslsmith_f_op_f32(-arg_0.x)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), any(vec2<bool>(true, false))), !vec3<bool>(func_3(Struct_2(vec3<bool>(false, true, false)), 883f, Struct_1(-1i), arg_2.yw).x, true, true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(true, func_3(Struct_2(vec3<bool>(true, true, false)), arg_0.x, Struct_1(2147483647i), arg_2.yz).x, any(vec4<bool>(false, true, true, true))))));
    return u_input.b.yy;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global1 = vec2<u32>(~4294967295u, 1u);
    let var_0 = firstLeadingBit(-vec2<i32>(arg_0.x, arg_0.x)) & _wgslsmith_div_vec2_i32(vec2<i32>(~(-4322i), 0i), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1680f, -1430f, 967f)), 4294967295u, vec4<u32>(func_2(-856f, vec4<u32>(global1.x, u_input.c, 0u, global1.x), Struct_1(1i)), 103312u, global1.x, ~1u)));
    global0 = vec2<i32>(max(~(~(i32(-1i) * -3751i)), -_wgslsmith_sub_i32(-global0.x, -u_input.a)), 1i);
    global0 = arg_0.yw;
    global0 = vec2<i32>(-2147483647i, u_input.d.x & 1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1163f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(593f, 1290f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -856f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b)))));
    var var_1 = -1945i;
    let var_2 = select(!vec3<bool>(false, true, var_0.x), select(!(!vec3<bool>(var_0.x, false, var_0.x)), select(select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, true, true), !var_0.x), !select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, true)), select(all(var_0), var_0.x, all(vec4<bool>(true, var_0.x, var_0.x, true)))), true), var_0.x);
    let var_3 = global0.x;
    let var_4 = vec4<i32>(i32(-1i) * -2147483647i, ~2147483647i, u_input.a, global0.x);
    let var_5 = ~reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(976u, global1.x, u_input.c), vec3<u32>(global1.x, global1.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~max(vec2<u32>(41528u, var_5), vec2<u32>(u_input.c, 23411u)), vec2<u32>(1u, ~var_5) ^ min(_wgslsmith_clamp_vec2_u32(vec2<u32>(22626u, var_5), vec2<u32>(4294967295u, global1.x), vec2<u32>(4294967295u, global1.x)), vec2<u32>(33733u, var_5))), u_input.b.yyz, _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(-32908i), u_input.a), firstLeadingBit(~u_input.d.yx)), _wgslsmith_f_op_f32(step(-1193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

