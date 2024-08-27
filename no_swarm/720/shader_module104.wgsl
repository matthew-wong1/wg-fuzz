struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32 = -55993i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(vec4<i32>(2147483647i, 1i | _wgslsmith_dot_vec3_i32(arg_0.a.zyz >> (vec3<u32>(1u, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<i32>(12489i, global0.x, arg_0.a.x) ^ vec3<i32>(global0.x, -66807i, -28175i)), global0.x, -arg_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - arg_0.b.x) * _wgslsmith_f_op_f32(-arg_0.c)), arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(308f, arg_0.d.x))) * -3046f)), arg_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-761f, -1665f, _wgslsmith_f_op_f32(max(163f, arg_0.c))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, arg_0.c, 1000f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(func_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c, -1272f, arg_0.b.x)))))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(i32(-1i) * -1394i, global0.x, var_0.a.x), ((arg_0.a.x | global0.x) | _wgslsmith_clamp_i32(1175i, 4417i, 1i)) >> (_wgslsmith_clamp_u32(~1u, 4294967295u, ~u_input.a) % 32u), _wgslsmith_sub_i32(countOneBits(var_0.a.x), var_0.a.x << (39887u % 32u)) >> (u_input.a % 32u)) << (1u % 32u);
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(var_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(-arg_1.d), -129f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(579f, func_2(Struct_1(arg_0.a, var_0.d, arg_1.c, vec3<f32>(arg_0.d.x, 281f, var_0.b.x))).d.x, var_0.d.x)));
    let var_3 = _wgslsmith_dot_vec2_i32(global0.wy, -arg_0.a.xz & vec2<i32>(var_2.a.x, var_0.a.x));
    global0 = arg_0.a;
    return func_2(func_2(Struct_1(~firstTrailingBit(vec4<i32>(19261i, var_0.a.x, 2147483647i, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-var_0.b), 184f, _wgslsmith_f_op_vec3_f32(-arg_0.d))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    global1 = arg_0;
    global1 = ~global0.x;
    global0 = _wgslsmith_div_vec4_i32(arg_1.a, vec4<i32>(2147483647i, -(~(~arg_0)), arg_1.a.x, abs(global0.x << (u_input.a % 32u)) >> (34458u % 32u)));
    let var_0 = func_3(arg_1, func_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, arg_1.b.x, -1484f)) + _wgslsmith_f_op_vec3_f32(-arg_1.d)), _wgslsmith_f_op_f32(sign(-1035f)), _wgslsmith_f_op_vec3_f32(round(arg_1.d)))));
    global1 = 2147483647i;
    return vec4<u32>(100036u, 0u, 11722u, u_input.a) ^ ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 64488u), vec4<u32>(u_input.a, u_input.a, 84418u, u_input.a), vec4<u32>(41786u, u_input.a, u_input.a, u_input.a)) | select(vec4<u32>(4294967295u, u_input.a, 65226u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.x;
    let var_0 = u_input.a;
    var var_1 = vec3<bool>(true, false, true);
    let var_2 = vec3<i32>(global0.x, countOneBits(-1i), -67269i);
    global1 = global0.x;
    let var_3 = Struct_1(-(select(reverseBits(vec4<i32>(9608i, global0.x, -2147483647i, global0.x)), abs(vec4<i32>(var_2.x, -1473i, global0.x, var_2.x)), select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, false, true, false))) >> (select(func_1(var_2.x, Struct_1(vec4<i32>(1i, -23234i, var_2.x, 1i), vec3<f32>(-273f, -276f, 712f), 461f, vec3<f32>(-1148f, 216f, 439f))), func_1(44956i, Struct_1(vec4<i32>(-32283i, -1i, var_2.x, -2147483647i), vec3<f32>(2315f, 578f, 1755f), -1469f, vec3<f32>(-864f, 105f, -2254f))), vec4<bool>(true, false, false, false)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-func_3(func_2(Struct_1(vec4<i32>(global0.x, var_2.x, global0.x, global0.x), vec3<f32>(601f, -909f, 841f), 760f, vec3<f32>(1046f, 757f, 951f))), Struct_1(-vec4<i32>(var_2.x, var_2.x, 44294i, -41172i), vec3<f32>(1795f, 1000f, 1584f), 735f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-261f, 630f, -457f) * vec3<f32>(206f, -1043f, -1121f)))).b), _wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(650f, -106f, -396f) * vec3<f32>(-2737f, -1153f, -689f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2164f, -1552f, 886f) - vec3<f32>(2151f, -691f, -170f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1122f, -1395f, -2159f) * vec3<f32>(477f, 738f, 1342f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-343f, 632f, -1131f))))))));
    global0 = ~_wgslsmith_div_vec4_i32(var_3.a, ~select(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 19973i, -2147483647i, -17194i), vec4<i32>(-2147483647i, -47459i, var_2.x, var_2.x)), select(var_3.a, vec4<i32>(-2147483647i, -2147483647i, var_3.a.x, -55451i), false), var_1.x));
    let var_4 = Struct_1(var_3.a, vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(689f, 1000f) - 1289f) * _wgslsmith_f_op_f32(f32(-1f) * -1115f)), var_3.b.x), var_3.b.x, vec3<f32>(_wgslsmith_f_op_f32(-1806f - 403f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)))), _wgslsmith_f_op_f32(-var_3.b.x)));
    let var_5 = Struct_1(func_3(var_4, Struct_1(var_3.a, func_2(Struct_1(var_4.a, var_3.d, var_3.b.x, var_4.b)).b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-105f)))), func_2(func_2(Struct_1(vec4<i32>(var_3.a.x, 1i, 39812i, var_4.a.x), var_3.d, 1523f, var_3.d))).d)).a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), var_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(428f, var_4.b.x) * 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1690f, var_3.b.x, -293f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.d) - _wgslsmith_f_op_vec3_f32(-var_3.b))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c * var_4.c), var_3.d.x)), var_3.b.x)), vec3<f32>(var_4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f + _wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1954f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(78860u, 1u, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1298f)) + _wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1251f))), _wgslsmith_add_u32(19814u, u_input.a));
}

