struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_4) -> bool {
    var var_0 = !arg_1.yzw;
    let var_1 = arg_0.a;
    var_0 = select(vec3<bool>(!(!(!global0.x)), select(var_1.d.x != u_input.c.x, false, any(arg_3.a)), _wgslsmith_mod_u32(var_1.d.x >> (8912u % 32u), arg_3.b.a.d.x) >= _wgslsmith_dot_vec2_u32(arg_3.d, ~arg_3.b.a.b)), vec3<bool>(!global0.x & (_wgslsmith_f_op_f32(abs(arg_3.b.a.a.x)) == var_1.c), true, true), !(!select(vec3<bool>(arg_0.b, true, true), vec3<bool>(false, global0.x, true), arg_3.a.zww)));
    var var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_1.a.xwz);
    return (!(countOneBits(u_input.c.x) <= arg_0.c) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) * _wgslsmith_f_op_f32(step(-331f, var_3.x))) >= 371f)) && arg_0.b;
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = select(!(!select(!vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(true, false, true, global0.x), true)), select(vec4<bool>(true, global0.x & true, !all(vec2<bool>(true, global0.x)), global0.x), vec4<bool>(!global0.x, func_3(Struct_3(arg_0, global0.x, 14317u, arg_0.d), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, false, false, false), false), 1i, Struct_4(vec4<bool>(global0.x, global0.x, global0.x, global0.x), Struct_3(Struct_2(arg_0.a, arg_0.b, 485f, arg_0.d), global0.x, 1u, arg_0.d), Struct_3(arg_0, false, arg_0.b.x, vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), vec2<u32>(44806u, u_input.a.x))), (u_input.a.x >= 21514u) & global0.x, true), true), global0.x || !select(any(global0.yyz), all(vec4<bool>(false, false, false, true)), true));
    var var_0 = u_input.a.x;
    global0 = !vec4<bool>(!global0.x, func_3(Struct_3(Struct_2(vec4<f32>(arg_0.c, arg_0.a.x, -2559f, arg_0.a.x), vec2<u32>(67666u, arg_0.d.x), arg_0.a.x, vec4<u32>(arg_0.d.x, arg_0.b.x, 0u, 47387u)), !global0.x, 1u, _wgslsmith_mult_vec4_u32(arg_0.d, arg_0.d)), vec4<bool>(global0.x, global0.x, true, all(vec3<bool>(false, global0.x, global0.x))), u_input.b, Struct_4(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x), Struct_3(Struct_2(arg_0.a, arg_0.d.xy, arg_0.c, arg_0.d), false, u_input.c.x, vec4<u32>(4294967295u, arg_0.b.x, u_input.c.x, 39399u)), Struct_3(arg_0, global0.x, u_input.c.x, arg_0.d), reverseBits(u_input.a.xz))), true, true);
    global0 = vec4<bool>(true, global0.x, _wgslsmith_dot_vec3_u32(~u_input.c >> ((vec3<u32>(u_input.a.x, arg_0.d.x, 4294967295u) ^ vec3<u32>(0u, 14451u, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(62040u, arg_0.b.x), arg_0.b.x, u_input.a.x & 0u)) > arg_0.d.x, global0.x);
    let var_1 = Struct_2(arg_0.a, arg_0.d.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c)) * _wgslsmith_f_op_f32(round(arg_0.a.x)))))), ~select(_wgslsmith_mod_vec4_u32(arg_0.d >> (arg_0.d % vec4<u32>(32u)), vec4<u32>(arg_0.d.x, arg_0.b.x, u_input.a.x, arg_0.d.x)), ~vec4<u32>(u_input.c.x, u_input.a.x, 0u, arg_0.d.x), global0.x));
    return (any(select(vec2<bool>(global0.x, false), global0.wx, global0.wy)) | all(!(!vec3<bool>(true, false, global0.x)))) & (_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 0i, -1i), vec3<i32>(2147483647i, -1i, 2147483647i))), -(vec3<i32>(u_input.b, -2147483647i, -4353i) >> (vec3<u32>(53824u, var_1.b.x, 55062u) % vec3<u32>(32u)))) >= u_input.b);
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> Struct_3 {
    let var_0 = vec4<bool>(select(true, global0.x, global0.x), true, true & func_2(arg_0.c.a), true);
    var var_1 = _wgslsmith_div_u32(min(arg_0.c.c | ~(~u_input.c.x), firstLeadingBit(~_wgslsmith_div_u32(arg_0.c.a.d.x, u_input.a.x))), ~63009u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(840f, arg_0.c.a.c)), -715f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.a.a.x))), _wgslsmith_f_op_f32(arg_0.c.a.a.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c.a.c + 659f))))));
    global0 = arg_0.a;
    global0 = vec4<bool>(~max(u_input.c.x, max(arg_0.c.d.x, u_input.a.x)) != ~_wgslsmith_dot_vec4_u32(arg_0.b.a.d, vec4<u32>(0u, 14507u, 1u, 4294967295u)), !arg_0.b.b, true, true);
    return Struct_3(arg_0.c.a, arg_0.a.x != select(true, !arg_0.c.b && arg_0.b.b, var_0.x), arg_0.b.c, arg_0.b.d);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    global0 = select(arg_2.a, !vec4<bool>(global0.x, arg_3.b, (arg_1.x >> (1u % 32u)) != 0u, arg_2.c.b), false);
    var var_0 = func_1(arg_2, -442i);
    var_0 = func_1(Struct_4(!select(select(vec4<bool>(false, false, false, arg_3.b), vec4<bool>(arg_3.b, arg_2.c.b, arg_3.b, false), true), vec4<bool>(global0.x, false, global0.x, true), var_0.a.a.x >= arg_2.c.a.c), arg_2.b, Struct_3(func_1(arg_2, _wgslsmith_dot_vec3_i32(arg_3.c, arg_3.c)).a, arg_2.b.b, func_1(arg_2, 2147483647i).c, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, 3162u, 4294967295u), var_0.d), 1u, _wgslsmith_sub_u32(arg_2.c.a.b.x, arg_2.d.x), _wgslsmith_clamp_u32(u_input.c.x, arg_2.b.a.d.x, u_input.a.x))), ~(~u_input.c.xy)), arg_3.c.x << (arg_1.x % 32u));
    let var_1 = arg_3.c;
    let var_2 = arg_2;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1095f * arg_2.b.a.a.x) - var_0.a.c), 645f, !var_0.b)), arg_3.a, arg_2.c.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1423f - arg_2.c.a.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!global0.x, u_input.b <= (i32(-1i) * -firstTrailingBit(-1i)), !global0.x, global0.x);
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(func_4(1i, vec3<u32>(68860u ^ u_input.a.x, u_input.c.x, 0u), Struct_4(vec4<bool>(false, false, global0.x, global0.x), func_1(Struct_4(vec4<bool>(global0.x, global0.x, true, global0.x), Struct_3(Struct_2(vec4<f32>(-818f, -489f, -736f, 1543f), u_input.c.zz, -444f, vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.c.x)), false, u_input.c.x, vec4<u32>(8650u, 82742u, 23393u, 25045u)), Struct_3(Struct_2(vec4<f32>(-348f, -315f, 582f, 1622f), u_input.c.xz, -1904f, vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x)), global0.x, u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, 24682u, u_input.a.x)), vec2<u32>(87739u, 0u)), u_input.d), func_1(Struct_4(vec4<bool>(true, global0.x, false, true), Struct_3(Struct_2(vec4<f32>(1335f, 1346f, -698f, -1017f), vec2<u32>(2777u, u_input.a.x), -808f, vec4<u32>(4294967295u, 13889u, 4294967295u, 4294967295u)), true, 20814u, vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, u_input.a.x)), Struct_3(Struct_2(vec4<f32>(1096f, 1284f, 620f, 1706f), u_input.c.zz, -524f, vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x)), false, u_input.c.x, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)), vec2<u32>(u_input.a.x, 1119u)), 0i), select(u_input.a.yz, vec2<u32>(9047u, 4294967295u), global0.zy)), Struct_1(-191f, global0.x, -vec3<i32>(1i, u_input.b, u_input.d)))), abs(select(~vec2<u32>(u_input.c.x, 0u), ~vec2<u32>(16159u, u_input.c.x), global0.wz)), -1453f, ~(~abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, 28619u)))), all(!global0.zz), ~_wgslsmith_dot_vec2_u32(u_input.c.xy >> (_wgslsmith_mod_vec2_u32(u_input.c.zy, u_input.c.yz) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, u_input.c.x << (u_input.c.x % 32u))), ~min(vec4<u32>(61752u >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), u_input.a.xy), 127u, ~u_input.a.x), ~(~vec4<u32>(4294967295u, u_input.c.x, u_input.a.x, u_input.c.x))));
    var_0 = func_1(Struct_4(vec4<bool>(func_3(Struct_3(Struct_2(var_0.a.a, vec2<u32>(50543u, 0u), 1221f, var_0.a.d), false, 7899u, vec4<u32>(0u, 4294967295u, u_input.a.x, 0u)), !vec4<bool>(var_0.b, true, false, true), -2147483647i, Struct_4(vec4<bool>(global0.x, true, var_0.b, true), Struct_3(Struct_2(var_0.a.a, vec2<u32>(4294967295u, u_input.c.x), -114f, vec4<u32>(22094u, var_0.d.x, 482u, var_0.c)), false, 46541u, vec4<u32>(2655u, var_0.d.x, var_0.c, 1u)), Struct_3(Struct_2(var_0.a.a, var_0.d.yy, -449f, var_0.d), false, 1u, vec4<u32>(var_0.c, var_0.a.b.x, 3535u, u_input.c.x)), vec2<u32>(53919u, var_0.d.x))), any(!global0.ywx), false, func_3(func_1(Struct_4(vec4<bool>(false, global0.x, false, var_0.b), Struct_3(Struct_2(var_0.a.a, vec2<u32>(17444u, 18026u), var_0.a.c, var_0.d), true, var_0.a.b.x, var_0.a.d), Struct_3(var_0.a, true, var_0.c, var_0.d), var_0.d.ww), u_input.d), vec4<bool>(true, true, false, false), u_input.b, Struct_4(vec4<bool>(global0.x, true, false, global0.x), Struct_3(Struct_2(var_0.a.a, vec2<u32>(0u, var_0.a.d.x), var_0.a.a.x, vec4<u32>(4294967295u, 66456u, 128134u, var_0.d.x)), false, 85368u, vec4<u32>(0u, 17354u, 0u, u_input.c.x)), Struct_3(Struct_2(var_0.a.a, vec2<u32>(88882u, var_0.a.d.x), -705f, vec4<u32>(var_0.c, var_0.d.x, u_input.c.x, var_0.a.d.x)), false, 20800u, var_0.d), vec2<u32>(38051u, 99215u)))), Struct_3(var_0.a, !(var_0.c >= 0u), u_input.c.x, vec4<u32>(var_0.c, var_0.c, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(var_0.d.x, u_input.a.x)), var_0.a.b.x)), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.c, var_0.a.c), vec4<f32>(1142f, var_0.a.c, var_0.a.a.x, var_0.a.a.x), vec4<bool>(var_0.b, var_0.b, var_0.b, global0.x))), ~var_0.d.wy, _wgslsmith_f_op_f32(-1293f * var_0.a.c), var_0.a.d), false, u_input.c.x, reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, 98072u, 0u, 0u), vec4<u32>(74252u, 59044u, 15421u, 1u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(u_input.c.x, var_0.a.b.x)), vec2<u32>(u_input.a.x, var_0.c), abs(vec2<u32>(10960u, var_0.a.d.x))) ^ _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_0.d.wx, u_input.a.yx), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.b.x, 4294967295u), vec2<u32>(52239u, u_input.a.x)))), _wgslsmith_mult_i32(1i & ~u_input.b, u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a.a.wy);
    global0 = vec4<bool>(all(vec2<bool>(true, true)) == true, firstLeadingBit(i32(-1i) * -u_input.b) > u_input.b, true, global0.x);
    var_0 = func_1(Struct_4(vec4<bool>(true, any(select(vec3<bool>(true, global0.x, var_0.b), global0.wxw, vec3<bool>(global0.x, var_0.b, global0.x))), reverseBits(u_input.b) != ~28944i, true), Struct_3(var_0.a, var_0.b, min(~u_input.a.x, abs(u_input.a.x)), ~var_0.a.d), func_1(Struct_4(select(vec4<bool>(true, global0.x, true, false), vec4<bool>(var_0.b, global0.x, false, true), vec4<bool>(global0.x, true, var_0.b, true)), Struct_3(Struct_2(var_0.a.a, vec2<u32>(54339u, 10862u), 159f, var_0.d), false, u_input.a.x, vec4<u32>(1u, u_input.c.x, u_input.a.x, var_0.a.d.x)), Struct_3(var_0.a, true, u_input.a.x, vec4<u32>(81153u, u_input.c.x, u_input.a.x, 49975u)), max(var_0.a.d.yz, var_0.a.d.ww)), u_input.b), ~u_input.c.xx << (abs(abs(var_0.a.d.wy)) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_mult_i32(u_input.b, _wgslsmith_add_i32(~u_input.b, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(min(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(42539i, u_input.d, -2012i, u_input.d), vec4<i32>(-2147483647i, -40561i, u_input.b, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.d, 6378i, u_input.b), vec4<i32>(u_input.d, u_input.b, -80054i, 27684i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, -2147483647i, 1i), vec4<i32>(-31365i, u_input.b, u_input.d, u_input.d))), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, 15682i), vec4<i32>(u_input.d, 10281i, u_input.b, 2147483647i))), ~vec4<i32>(-386i, -17205i, ~35308i, 2147483647i), true && all(global0.yw)));
}

