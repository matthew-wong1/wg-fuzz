struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(arg_1.b.a);
    global0 = vec4<bool>(!(!global0.x), all(global0.wz), false, any(select(!(!global0.zzw), vec3<bool>(any(vec4<bool>(arg_0.c, false, false, arg_1.c)), !arg_1.c, any(global0.zx)), !global0.yww)));
    global0 = select(vec4<bool>(!(!arg_0.c), true, true, false), select(select(select(vec4<bool>(true, arg_1.c, false, arg_1.c), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, arg_1.c, true, false), global0.x), global0.x), select(vec4<bool>(true, global0.x, false, global0.x), select(vec4<bool>(true, false, false, arg_1.c), vec4<bool>(true, false, false, false), vec4<bool>(false, true, arg_1.c, true)), false), false), vec4<bool>(true, !(global0.x & global0.x), false || arg_1.c, !(arg_1.c & false)), arg_0.c), arg_0.c);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f - -950f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-166f))))), 635f);
    let var_2 = vec4<i32>(firstTrailingBit(~(~(1i | arg_1.d.x))), -27343i, abs(max(-32210i, u_input.b.x)), arg_0.d.x << (arg_1.b.a % 32u));
    return 66641u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> vec2<i32> {
    global0 = vec4<bool>(arg_2.x, (select(27732i, -2147483647i, global0.x) >> (~(~0u) % 32u)) > ~u_input.c, !any(!arg_2.wzy), arg_2.x);
    var var_0 = select(~_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(u_input.a, 0u, arg_1.a)), ~(~vec3<u32>(1u, 25006u, 0u))), select(vec3<u32>(arg_1.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 8847u, 0u, 30673u)), vec4<u32>(37727u, arg_1.a, 0u, arg_1.a)), min(~2213u, abs(4294967295u))), vec3<u32>(1u, u_input.a, 1u), vec3<bool>(false, true, true)), false);
    var_0 = firstLeadingBit(vec3<u32>(1u, 5337u, ~_wgslsmith_add_u32(arg_1.a >> (61489u % 32u), arg_1.a)));
    global0 = arg_2;
    var_0 = vec3<u32>(0u, abs(var_0.x) & _wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(67553u, 92208u, var_0.x, 1u))), vec4<u32>(max(1u, arg_1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1.a), var_0.xz), func_3(Struct_2(arg_1.a, arg_1, global0.x, vec2<i32>(u_input.c, 2147483647i)), Struct_2(4294967295u, Struct_1(arg_1.a), global0.x, vec2<i32>(2147483647i, u_input.c))), ~0u)), arg_1.a);
    return countOneBits(-u_input.b.zx) & u_input.b.xy;
}

fn func_1() -> f32 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(~u_input.a << (((~u_input.a & 1u) >> (~(~9105u) % 32u)) % 32u), Struct_1(~45783u), true, -(func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -169f), vec2<f32>(-2934f, 920f))), Struct_1(1u), vec4<bool>(false, true, global0.x, global0.x), _wgslsmith_f_op_f32(-1327f + 484f)) ^ u_input.b.zx));
    var var_2 = vec3<i32>(-27113i, -43550i, 2147483647i);
    let var_3 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(var_1.a, var_1.b.a))), ~firstTrailingBit(u_input.a), countOneBits(19006u) >> (u_input.a % 32u)), min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_1.b.a, var_1.b.a), vec3<u32>(u_input.a, 1u, var_1.a), vec3<u32>(0u, 47658u, u_input.a)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(18020u, 34773u, var_1.a), vec3<u32>(var_1.a, 4294967295u, var_1.b.a)))), Struct_1(countOneBits(1u)), global0.x, vec2<i32>(u_input.b.x, var_1.d.x));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(437f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-835f + _wgslsmith_f_op_f32(sign(583f)))), 1732f)));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(30805u, 82420u, u_input.a)), ~(vec3<u32>(u_input.a, 1931u, u_input.a) >> (vec3<u32>(4294967295u, u_input.a, 72011u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_div_u32(abs(u_input.a), ~u_input.a), reverseBits(firstTrailingBit(4106u)), u_input.a)));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-818f, -359f)) * _wgslsmith_f_op_f32(step(-412f, _wgslsmith_f_op_f32(f32(-1f) * -936f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 576f);
    global0 = !(!(!(!(!vec4<bool>(true, global0.x, global0.x, true)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(561f, var_1.x, -504f))))))));
    let var_2 = vec2<bool>(any(select(vec2<bool>(select(global0.x, true, true), select(global0.x, false, true)), select(vec2<bool>(false, true), global0.yx, !vec2<bool>(global0.x, global0.x)), vec2<bool>(true, global0.x))), all(vec4<bool>(select(false, global0.x || global0.x, all(vec3<bool>(true, true, false))), false, !any(global0.wwx), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

