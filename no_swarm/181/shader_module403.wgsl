struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-863f + -1577f) * 1041f)))) * -1000f);
    let var_1 = Struct_4((vec4<i32>(1i, u_input.e, 2854i, -u_input.e) << (~vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u) % vec4<u32>(32u))) | reverseBits(min(vec4<i32>(u_input.b, u_input.b, u_input.e, u_input.b) & vec4<i32>(2147483647i, -2147483647i, 2147483647i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, 1i, 2147483647i, 10771i), vec4<i32>(u_input.b, -61298i, 34246i, 1i)))), -(vec2<i32>(-u_input.b, _wgslsmith_mult_i32(u_input.e, u_input.b)) << (vec2<u32>(u_input.d, _wgslsmith_mult_u32(u_input.d, u_input.c)) % vec2<u32>(32u))));
    var var_2 = vec4<bool>(any(vec3<bool>(arg_0, all(vec4<bool>(true, arg_0, arg_0, true)), arg_0)), all(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(arg_0, true), true)), !all(vec3<bool>(false, true, arg_0)))), arg_0, true);
    var_0 = _wgslsmith_f_op_f32(-1016f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-786f + -1000f))));
    let var_3 = Struct_1(u_input.c | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.d), abs(~vec2<u32>(u_input.a, 38469u))));
    return vec4<bool>(any(var_2.yx), var_2.x, arg_0, arg_0);
}

fn func_2() -> vec3<bool> {
    let var_0 = !func_3(true);
    let var_1 = Struct_3(_wgslsmith_add_u32(countOneBits(~u_input.a), abs(119156u << (countOneBits(u_input.d) % 32u))));
    global0 = array<Struct_4, 17>();
    let var_2 = Struct_2(Struct_1(8639u), Struct_1(4294967295u), max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 5645i), vec2<i32>(2681i, u_input.e)), 2147483647i, -29763i, _wgslsmith_add_i32(u_input.e, 9114i)) & _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -55078i, -2147483647i, 46661i), vec4<i32>(u_input.b, u_input.e, -2147483647i, 2147483647i)), vec4<i32>(u_input.e, u_input.e, 0i, 2147483647i)), ~(-(~vec4<i32>(-13877i, -19362i, 0i, u_input.b)))), Struct_1(_wgslsmith_mult_u32(1u, var_1.a)), Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(87019u, 36557u), _wgslsmith_clamp_u32(65108u, 79259u, 1u)) >> (abs(var_1.a) % 32u)));
    let var_3 = select(countOneBits(var_2.c.zxx), vec3<i32>(2147483647i, -49036i, -10500i), !vec3<bool>(var_0.x, true || all(vec4<bool>(var_0.x, true, var_0.x, true)), true));
    return vec3<bool>(func_3(true).x, u_input.c >= var_2.d.a, all(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    var var_0 = !(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), true)));
    var var_1 = _wgslsmith_sub_vec2_i32(~(vec2<i32>(u_input.b, _wgslsmith_sub_i32(35880i, 0i)) << (~select(vec2<u32>(u_input.a, 0u), vec2<u32>(48183u, 4294967295u), var_0.yy) % vec2<u32>(32u))), -select(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.zz, arg_0.zx, arg_0.yz), vec2<i32>(-2147483647i, 22626i)), arg_0.zz, true));
    var_0 = func_2();
    var_0 = !select(!func_3(var_0.x).yww, select(func_3(true).wzy, select(vec3<bool>(true, true, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), true), var_0.x && var_0.x), vec3<bool>(true, u_input.c > 1u, func_2().x)), var_0.x | var_0.x);
    global0 = array<Struct_4, 17>();
    return 20788i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1493f, 1008f, 529f, -386f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1917f, -122f, 956f, -189f)) * vec4<f32>(-818f, -357f, -122f, -1446f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(806f, -705f, 1000f, -1000f))))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2113f, -2843f, -1401f, 1000f), vec4<f32>(356f, 444f, -173f, 804f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1255f, -708f, -1429f, -210f) + vec4<f32>(-1520f, 843f, 1157f, -653f)))))));
    var var_1 = _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(func_1(vec3<i32>(u_input.b, u_input.e, 1i), vec3<i32>(2147483647i, 1i, -2147483647i), var_0.x), _wgslsmith_mult_i32(u_input.b, u_input.b), -u_input.b), u_input.e, -u_input.e), -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, u_input.e, 54324i), vec4<i32>(u_input.b, u_input.e, u_input.e, u_input.b)), u_input.b), u_input.e, u_input.e << (30904u % 32u)));
    global0 = array<Struct_4, 17>();
    var var_2 = true;
    global0 = array<Struct_4, 17>();
    var var_3 = func_3(!(!all(vec4<bool>(true, true, true, true)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, countOneBits(var_1.x), abs(u_input.b)), (vec3<i32>(u_input.b, var_1.x, u_input.b) ^ vec3<i32>(u_input.e, 1i, -10168i)) | ~vec3<i32>(-41847i, -2147483647i, 35675i))), countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(u_input.a, ~u_input.a))), _wgslsmith_f_op_f32(-var_0.x));
}

