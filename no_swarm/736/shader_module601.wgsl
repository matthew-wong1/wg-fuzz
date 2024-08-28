struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<i32>(3290i, 2147483647i, 36017i)), Struct_2(vec3<i32>(-10299i, 2147483647i, 41423i)), Struct_2(vec3<i32>(0i, 0i, -32350i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_1(u_input.c & ~(~(u_input.c << (0u % 32u))), vec2<i32>(abs(2147483647i), 2147483647i), select(vec3<bool>(false, !(-8000i == arg_2.x), true), vec3<bool>(arg_3, arg_3, true), select(vec3<bool>(arg_3, !arg_3, arg_3), !vec3<bool>(arg_3, true, arg_3), select(vec3<bool>(true, true, true), !vec3<bool>(arg_3, arg_3, true), true))), ~38817u & ~(~(~u_input.c)));
    let var_1 = firstLeadingBit(abs(firstTrailingBit(~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) >> (vec4<u32>(u_input.c, var_0.a, 16116u, var_0.d) % vec4<u32>(32u)))));
    return _wgslsmith_div_u32(~_wgslsmith_sub_u32(13778u, ~(~0u)), ~countOneBits(~reverseBits(u_input.c)));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(countOneBits(firstLeadingBit(u_input.c)), func_3(Struct_2(max(vec3<i32>(2147483647i, u_input.b, u_input.b), u_input.a)), -27771i, reverseBits(vec4<i32>(21559i, u_input.a.x, 1i, u_input.a.x)), select(false, arg_0.x && false, arg_0.x))), u_input.a.yx, arg_0.zyy, u_input.c);
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(14744u, var_0.a), 3u)];
    var_0 = Struct_1(_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(u_input.c, 1u)), ~abs(u_input.c ^ 1u)), vec2<i32>(-_wgslsmith_mult_i32(var_1.a.x, firstLeadingBit(-22691i)), -2147483647i), select(!select(select(vec3<bool>(var_0.c.x, var_0.c.x, true), var_0.c, true), vec3<bool>(false, false, arg_0.x), !var_0.c), var_0.c, true), 49560u);
    let var_2 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, 4294967295u, u_input.c), max(vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u), vec4<u32>(u_input.c, var_0.a, u_input.c, var_0.d))), ~(var_0.a | var_0.a), u_input.c), ~(~vec3<u32>(var_0.d, var_0.d, var_0.a)) ^ vec3<u32>(var_0.a, reverseBits(4294967295u), func_3(Struct_2(vec3<i32>(u_input.b, -2147483647i, 0i)), 1i, vec4<i32>(12226i, var_0.b.x, u_input.a.x, -31460i), false)), !(abs(var_0.a) == ~1u)) | _wgslsmith_clamp_vec3_u32(abs(reverseBits(vec3<u32>(21375u, var_0.a, u_input.c))) << (_wgslsmith_mult_vec3_u32(select(vec3<u32>(44474u, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, var_0.a), var_0.c), vec3<u32>(4294967295u, var_0.d, var_0.a)) % vec3<u32>(32u)), vec3<u32>(~1u, _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(u_input.c, var_0.a))), var_0.d), min(~vec3<u32>(var_0.a, 29985u, 107768u) ^ vec3<u32>(u_input.c, var_0.d, 21230u), _wgslsmith_div_vec3_u32(abs(vec3<u32>(var_0.d, var_0.d, 66938u)), vec3<u32>(u_input.c, 63529u, u_input.c))));
    var_0 = Struct_1(35470u, abs(-(~vec2<i32>(0i, var_1.a.x))), vec3<bool>(true, var_0.c.x, arg_0.x), u_input.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-405f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1184f))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec3<f32> {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    var var_0 = _wgslsmith_f_op_f32(622f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)), 1812f)));
    var var_1 = _wgslsmith_f_op_f32(ceil(-466f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1505f * 1000f), _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(-145f, -628f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    var var_0 = _wgslsmith_f_op_f32(-647f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -394f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1099f, -115f, true)) - -1968f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 19677u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(49696u, u_input.c)), countOneBits(reverseBits(vec2<u32>(29876u, u_input.c))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), max(vec4<u32>(3748u, u_input.c, u_input.c, u_input.c), vec4<u32>(4294967295u, 0u, u_input.c, 114151u))))), _wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c & 1u, u_input.c), vec4<u32>(u_input.c, 1964u, u_input.c, u_input.c)))), u_input.a);
}

