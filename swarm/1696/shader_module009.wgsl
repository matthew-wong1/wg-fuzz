struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = any(select(!vec4<bool>(global1.a.a.x, true, arg_1.b.x, true), !global1.b, vec4<bool>(global1.b.x, global1.b.x, global0.b.x, global1.a.a.x)));
    var var_1 = 17062u;
    var_1 = u_input.a.x | ~_wgslsmith_clamp_u32(0u, min(u_input.a.x, firstTrailingBit(59316u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), u_input.a.x));
    var var_2 = arg_2.a.b;
    var var_3 = -_wgslsmith_clamp_i32(2147483647i, arg_2.a.d.x >> (~(~109709u) % 32u), ~global1.a.d.x);
    return arg_2.a.d.yx;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(!(!vec4<bool>(arg_1.x, false, true, true)), _wgslsmith_f_op_f32(round(global0.a.b)), func_3(Struct_1(!vec4<bool>(true, global1.a.a.x, global0.b.x, global1.a.a.x), -332f, _wgslsmith_mult_vec2_i32(arg_0.xz, arg_0.yz), global1.a.d << (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u))), Struct_2(Struct_1(vec4<bool>(true, true, true, global1.a.a.x), -3437f, vec2<i32>(global0.a.d.x, global0.a.c.x), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(global0.b.x, global0.a.a.x, true, global0.a.a.x)), Struct_2(global0.a, select(global1.a.a, global0.a.a, global1.a.a))), arg_0), !global1.b);
    global0 = var_0;
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(-2147483647i, arg_0.x, -2140i, _wgslsmith_mult_i32(1i, firstLeadingBit(0i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.b, 366f), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -171f), var_0.a.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-633f)) + _wgslsmith_f_op_f32(-889f - _wgslsmith_f_op_f32(-global0.a.b))), -617f)));
    return Struct_2(Struct_1(!select(!var_0.a.a, select(vec4<bool>(true, true, false, var_0.a.a.x), vec4<bool>(true, true, global1.a.a.x, arg_1.x), vec4<bool>(false, true, global0.a.a.x, false)), var_0.a.a), _wgslsmith_div_f32(var_0.a.b, global1.a.b), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.a.d.yz, max(vec2<i32>(global1.a.c.x, 6640i), vec2<i32>(global0.a.c.x, global1.a.c.x))), _wgslsmith_clamp_i32(7002i, 54607i, var_1.x)), (_wgslsmith_sub_vec3_i32(global0.a.d, vec3<i32>(var_0.a.d.x, global0.a.d.x, 0i)) & vec3<i32>(var_0.a.c.x, global1.a.d.x, 1i)) & -_wgslsmith_sub_vec3_i32(global0.a.d, vec3<i32>(0i, var_1.x, -52298i))), !select(select(!vec4<bool>(global0.a.a.x, var_0.b.x, global0.b.x, var_0.b.x), select(var_0.a.a, vec4<bool>(var_0.b.x, arg_1.x, true, var_0.b.x), global1.a.a.x), global1.b.x && false), select(!vec4<bool>(var_0.b.x, false, var_0.a.a.x, false), vec4<bool>(false, global1.b.x, false, true), !global1.a.a.x), vec4<bool>(global0.a.a.x, any(vec4<bool>(global1.b.x, false, var_0.b.x, var_0.b.x)), arg_1.x, false)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    return func_2(-firstLeadingBit(abs(-vec3<i32>(0i, -27444i, 0i))), global0.b.yzw);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = ~vec4<u32>(20205u, _wgslsmith_clamp_u32(0u, u_input.a.x, max(58553u, 47963u)), 4294967295u, 1u);
    let var_1 = u_input.a.x;
    let var_2 = vec4<bool>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(-global1.a.b)) - 935f) >= global0.a.b, any(!(!(!global1.a.a.yy))), func_1(vec4<u32>(1u << (var_0.x % 32u), 4294967295u, 79395u, abs(0u))).a.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) - -895f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(558f, -1294f)) - arg_3.a.b)));
    let var_3 = ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(firstLeadingBit(var_0.wxy), vec3<u32>(27067u, select(1u, 35872u, arg_3.a.a.x), ~1u), vec3<u32>(reverseBits(u_input.a.x), 1u, var_0.x)));
    var_0 = abs(vec4<u32>(~1u, 47588u, 19080u, 1u));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global1.a.b);
    var var_1 = !global0.b.zwz;
    var var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 33301u, u_input.a.x, ~(~u_input.a.x)), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(7797u, u_input.a.x, u_input.a.x) | vec3<u32>(55355u, 0u, 34563u), vec3<u32>(u_input.a.x, 4294967295u, 92390u)), ~4294967295u, _wgslsmith_sub_u32(func_4(Struct_2(Struct_1(global0.b, var_0, vec2<i32>(-33922i, -16342i), vec3<i32>(global0.a.d.x, global1.a.d.x, -2147483647i)), vec4<bool>(global0.b.x, true, var_1.x, global1.b.x)), Struct_2(global1.a, vec4<bool>(global1.b.x, false, global1.a.a.x, false)), global0.a, func_1(vec4<u32>(19733u, 1u, 16244u, u_input.a.x))), u_input.a.x), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(21077u, u_input.a.x)), vec2<u32>(func_4(Struct_2(global1.a, global1.a.a), Struct_2(Struct_1(vec4<bool>(false, true, true, false), global0.a.b, vec2<i32>(16966i, global0.a.d.x), vec3<i32>(global1.a.c.x, -189i, -2147483647i)), vec4<bool>(true, false, false, global1.a.a.x)), global0.a, Struct_2(global1.a, global1.a.a)), ~4294967295u))));
    global0 = Struct_2(global0.a, select(global0.b, !select(func_1(vec4<u32>(1u, var_2.x, 0u, 4294967295u)).a.a, func_1(vec4<u32>(54550u, 25005u, var_2.x, u_input.a.x)).a.a, vec4<bool>(var_1.x, global0.b.x, true, global1.a.a.x)), !(!global0.b)));
    var var_3 = u_input.a;
    global1 = Struct_2(func_2(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(global0.a.d, vec3<i32>(1i, global0.a.d.x, global1.a.d.x)), firstTrailingBit(global1.a.d) | vec3<i32>(global1.a.d.x, 2147483647i, -8504i)), !vec3<bool>(global1.b.x && true, !global0.a.a.x, global0.b.x)).a, !select(func_2(_wgslsmith_clamp_vec3_i32(global0.a.d, global1.a.d, global1.a.d), vec3<bool>(global1.a.a.x, global1.b.x, var_1.x)).b, global1.b, global1.b.x & var_1.x));
    var var_4 = _wgslsmith_f_op_f32(abs(675f));
    var_2 = select(vec4<u32>(~1u, firstLeadingBit(66106u), ~var_2.x, ~_wgslsmith_mult_u32(50598u, ~var_2.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(51600u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(var_2.x, 1u, var_3.x, u_input.a.x), vec4<u32>(var_3.x, 4294967295u, var_3.x, 43294u)), abs(vec4<u32>(var_3.x, 4294967295u, var_2.x, 4294967295u))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(46327u, u_input.a.x, var_3.x, 1218u), vec4<u32>(u_input.a.x, var_2.x, var_2.x, u_input.a.x)), ~vec4<u32>(var_2.x, 1u, 50639u, 14146u))), max(vec4<u32>(~var_3.x, var_3.x, firstTrailingBit(100520u), _wgslsmith_div_u32(var_2.x, 4294967295u)), firstTrailingBit(firstTrailingBit(vec4<u32>(var_3.x, var_3.x, 4294967295u, 1837u))))), global1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-global1.a.b)), reverseBits(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -27924i, global0.a.c.x, global0.a.c.x), vec4<i32>(global0.a.c.x, -2147483647i, 1i, 0i)), global1.a.d.x)));
}

