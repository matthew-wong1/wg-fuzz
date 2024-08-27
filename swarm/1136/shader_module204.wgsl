struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    global0 = 0u;
    return arg_1.a;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = vec4<i32>(3604i, ~arg_1.e, countOneBits(arg_2.b), ~(-u_input.a.x));
    var var_1 = var_0.wzw;
    var var_2 = ~select(vec2<u32>(max(72576u, arg_1.b.x) & 1u, abs(_wgslsmith_add_u32(arg_1.b.x, arg_1.b.x))), ~(~arg_1.b.yy | ~vec2<u32>(4294967295u, arg_1.b.x)), true);
    let var_3 = Struct_3(arg_1.d, vec3<u32>(~6854u | var_2.x, max(var_2.x, ~95031u), var_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), vec4<f32>(arg_1.a.a.x, arg_2.a.x, arg_1.c.a.x, arg_2.a.x))), var_1.x), arg_2, func_2(arg_1.b.x ^ ~(arg_1.b.x & arg_1.b.x), Struct_3(arg_1.d, ~vec3<u32>(4294967295u, arg_1.b.x, var_2.x), arg_2, arg_1.c, -1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1264f, 230f)), -1000f)), !vec3<bool>(true, true || arg_0, true)).b);
    var_1 = var_0.yww;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1.d.a)));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    let var_0 = all(vec2<bool>(true, true));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(var_0 == var_0, Struct_3(Struct_1(vec4<f32>(arg_1, arg_1, 1000f, arg_1), u_input.a.x), ~vec3<u32>(4294967295u, arg_0, arg_0), func_2(arg_0, Struct_3(Struct_1(vec4<f32>(1263f, arg_1, -180f, arg_1), -27973i), vec3<u32>(arg_0, 37152u, arg_0), Struct_1(vec4<f32>(arg_1, arg_1, -1503f, arg_1), -16424i), Struct_1(vec4<f32>(arg_1, arg_1, arg_1, arg_1), 3720i), u_input.a.x), arg_1, vec3<bool>(false, var_0, false)), Struct_1(vec4<f32>(arg_1, -206f, arg_1, -608f), u_input.a.x), -2147483647i), Struct_1(vec4<f32>(1895f, arg_1, arg_1, -229f), ~u_input.a.x))), u_input.a.x), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(arg_0), reverseBits(arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(43447u, 0u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0, 1u, 0u), ~vec3<u32>(87725u, arg_0, arg_0))), abs(vec3<u32>(_wgslsmith_mod_u32(arg_0, arg_0), arg_0, _wgslsmith_sub_u32(57498u, 9965u)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1000f, arg_1, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -479f, -824f, 1082f)))), ~(~u_input.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(371f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -1097f, arg_1, 724f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 284f, arg_1, 1676f) - vec4<f32>(-118f, arg_1, -936f, -1172f)))), abs(u_input.a.x) ^ (i32(-1i) * -u_input.a.x)), u_input.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> vec2<u32> {
    global0 = (43663u << (arg_0.b.x % 32u)) ^ 5750u;
    let var_0 = Struct_2(arg_1.x, -min(min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.d.b, 33299i, arg_0.c.b), vec3<i32>(arg_0.e, -1i, u_input.a.x)), select(vec3<i32>(u_input.a.x, -7769i, 2147483647i), vec3<i32>(1i, -2147483647i, -1i), vec3<bool>(false, false, true))), abs(abs(vec3<i32>(36927i, u_input.a.x, arg_0.d.b)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.b.x, 4294967295u), _wgslsmith_add_u32(~_wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x), arg_0.b.x)), arg_0.d);
    var var_1 = var_0;
    var var_2 = vec3<u32>(var_1.c, abs(var_1.c), 103700u);
    var_1 = Struct_2(countOneBits(_wgslsmith_sub_i32(countOneBits(76908i), firstTrailingBit(2147483647i))) < -u_input.a.x, _wgslsmith_mult_vec3_i32(var_1.b, (_wgslsmith_clamp_vec3_i32(var_1.b, var_1.b, var_1.b) | _wgslsmith_mult_vec3_i32(var_0.b, var_0.b)) | (abs(var_0.b) << (~vec3<u32>(1u, var_2.x, 32208u) % vec3<u32>(32u)))), var_2.x, var_1.d);
    return _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c, min(_wgslsmith_mod_u32(arg_0.b.x, 18405u), var_2.x) ^ ~(arg_0.b.x ^ arg_0.b.x)), var_2.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(select(-43868i, _wgslsmith_add_i32(~u_input.a.x, -71483i), true), abs(2147483647i), ~(firstLeadingBit(u_input.a.x) << (abs(4294967295u) % 32u))) & ~(~(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (abs(vec3<u32>(1u, 56187u, 1u)) % vec3<u32>(32u))));
    global0 = ~1754u;
    var var_1 = 1000f;
    var var_2 = max(min(abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(57970i, -11786i), -2147483647i)), u_input.a.x), 11318i);
    let var_3 = !(!vec2<bool>(_wgslsmith_clamp_i32(var_0.x, u_input.a.x, -30510i) > ~0i, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(u_input.a, abs(vec2<i32>(u_input.a.x, u_input.a.x)) >> (~vec2<u32>(62021u, 1u) % vec2<u32>(32u))), select(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 33422i, -2147483647i, 36087i), vec4<i32>(31954i, 0i, -2147483647i, var_0.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, 32585i, 1i) >> (vec4<u32>(27852u, 4294967295u, 4294967295u, 64620u) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.a.x, u_input.a.x, var_0.x) << (vec4<u32>(80202u, 17197u, 1u, 9324u) % vec4<u32>(32u))), !(!vec4<bool>(true, false, true, var_3.x))) >> (firstLeadingBit(vec4<u32>(0u, 1u, 0u, 12875u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a.x ^ 0i, ~vec2<u32>(1u, 1u) >> (func_4(func_1(~27949u, _wgslsmith_f_op_f32(f32(-1f) * -154f)), var_3) % vec2<u32>(32u)));
}

