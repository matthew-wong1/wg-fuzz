struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
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

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 1i, -72518i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_3(arg_1.b, Struct_1(_wgslsmith_add_i32(arg_0, arg_0) << (15662u % 32u), firstTrailingBit(vec4<u32>(~u_input.d, min(24446u, u_input.a.x), _wgslsmith_dot_vec4_u32(arg_1.b.b, arg_1.b.b), ~arg_1.b.b.x)), select(!select(arg_1.b.c, vec2<bool>(true, false), arg_1.a.c.x), arg_1.b.c, -1132f > _wgslsmith_f_op_f32(min(arg_3, 1277f)))), ~1i);
    var var_1 = arg_1;
    var var_2 = Struct_3(var_1.a, var_0.b, arg_1.c);
    var_0 = Struct_3(var_1.a, var_2.b, min(25383i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.b.a, global0.x, global0.x), u_input.c)) >> (_wgslsmith_dot_vec2_u32(u_input.a.yw, ~vec2<u32>(var_0.b.b.x, arg_1.a.b.x)) % 32u)));
    let var_3 = Struct_1(-1i, select(vec4<u32>(abs(1u), _wgslsmith_dot_vec2_u32(arg_1.b.b.yy, ~vec2<u32>(u_input.d, 22165u)), 23112u, firstTrailingBit(countOneBits(4294967295u))), arg_1.b.b, select(select(select(vec4<bool>(var_0.a.c.x, false, false, arg_1.b.c.x), vec4<bool>(true, false, true, false), arg_1.b.c.x), select(vec4<bool>(arg_1.b.c.x, true, false, var_0.a.c.x), vec4<bool>(false, arg_1.b.c.x, var_2.b.c.x, arg_1.a.c.x), vec4<bool>(true, var_1.b.c.x, var_2.a.c.x, false)), !vec4<bool>(true, false, var_1.b.c.x, var_0.b.c.x)), vec4<bool>(any(vec3<bool>(var_1.b.c.x, false, false)), any(vec3<bool>(var_0.a.c.x, var_1.a.c.x, var_2.a.c.x)), false, all(vec4<bool>(var_2.b.c.x, var_1.a.c.x, true, var_0.a.c.x))), !select(vec4<bool>(var_1.b.c.x, true, var_1.a.c.x, arg_1.a.c.x), vec4<bool>(true, var_1.b.c.x, true, arg_1.a.c.x), vec4<bool>(var_1.a.c.x, true, false, var_0.b.c.x)))), !arg_1.a.c);
    return vec3<bool>(var_3.b.x < arg_1.a.b.x, any(select(var_1.b.c, vec2<bool>(false, false), ~70812u < ~var_0.b.b.x)), any(select(vec4<bool>(!var_2.a.c.x, any(vec4<bool>(var_1.a.c.x, false, arg_1.b.c.x, var_3.c.x)), any(vec4<bool>(false, arg_1.a.c.x, var_2.a.c.x, var_3.c.x)), !var_2.a.c.x), vec4<bool>(true, all(vec3<bool>(false, var_3.c.x, var_0.a.c.x)), select(var_3.c.x, var_0.a.c.x, var_3.c.x), true), true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_3 {
    let var_0 = !select(vec3<bool>(true, true & (0i == u_input.b.x), true && select(true, false, true)), !func_3(_wgslsmith_mod_i32(global0.x, u_input.b.x), Struct_3(Struct_1(global0.x, vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec2<bool>(false, true)), Struct_1(arg_1, vec4<u32>(1600u, 1u, u_input.d, 41939u), vec2<bool>(true, true)), u_input.b.x), -593f, 344f), true);
    let var_1 = vec3<u32>(arg_0.x, ~21265u, 10123u);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + -196f), _wgslsmith_f_op_f32(select(435f, 1000f, false)), _wgslsmith_f_op_f32(select(743f, -230f, var_0.x)), -804f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1162f, -1104f, 930f, -993f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1008f, 714f, -611f, -203f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, 654f, 210f, 1156f) - vec4<f32>(747f, 212f, -2061f, 205f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1380f, -289f, -758f, -358f)))))))), vec4<bool>(true, func_3(~(~arg_1), Struct_3(Struct_1(arg_1, vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x), vec2<bool>(true, false)), Struct_1(global0.x, vec4<u32>(u_input.d, u_input.d, u_input.a.x, 34036u), var_0.xy), arg_1), _wgslsmith_f_op_f32(sign(867f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2556f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))).x, ~1u > arg_0.x, false)));
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, firstLeadingBit(countOneBits(-u_input.c))), ~vec4<i32>(arg_1, ~2147483647i, reverseBits(_wgslsmith_add_i32(global0.x, global0.x)), i32(-1i) * -1i));
    return Struct_3(Struct_1(abs(2147483647i), arg_0, var_0.xy), Struct_1(global0.x, ~(~select(vec4<u32>(73517u, u_input.a.x, 4294967295u, 1u), vec4<u32>(1u, u_input.d, 1u, 69348u), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), var_0.yx), 35998i);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = ~global0.x;
    global0 = vec3<i32>(0i, var_0, firstLeadingBit(~0i));
    var var_1 = func_2(u_input.a, ~firstLeadingBit(-2147483647i));
    var var_2 = Struct_1(abs(firstLeadingBit(abs(var_1.a.a))), ~var_1.a.b, func_2(var_1.b.b, -1i).b.c);
    var var_3 = -global0.x;
    return -673f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~(~u_input.a.x) & 0u;
    var_0 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-426f, 219f)), _wgslsmith_f_op_f32(func_1(u_input.c.zwy, vec4<u32>(u_input.a.x, 4294967295u, 37654u, u_input.d))), _wgslsmith_f_op_f32(-1414f * -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-946f * -144f) + 1f)), _wgslsmith_f_op_f32(max(218f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1005f)) - -1183f))), true));
    var var_3 = Struct_2(~firstLeadingBit(27095u));
    let var_4 = _wgslsmith_f_op_f32(ceil(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(-351f);
}

