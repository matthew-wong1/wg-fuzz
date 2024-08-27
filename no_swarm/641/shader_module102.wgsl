struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_3(-920f, (_wgslsmith_div_f32(-846f, -761f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x)))) | true, vec2<i32>(u_input.a, u_input.a), true);
    var var_1 = u_input.b << (u_input.c % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f + -400f) - -607f) - 305f)));
    var_1 = u_input.d;
    var_1 = _wgslsmith_div_u32(max(~(~reverseBits(0u)), 4294967295u), max(u_input.b, u_input.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2105f, -1097f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1366f))))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    return vec3<u32>(~48770u, ~1u, _wgslsmith_clamp_u32(abs(abs(u_input.c)), 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, u_input.c)), vec2<u32>(4294967295u, 128010u)), 1124u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))));
    var var_1 = arg_0.zy;
    let var_2 = Struct_3(1466f, true, vec2<i32>(i32(-1i) * -u_input.a, arg_1), true);
    let var_3 = _wgslsmith_dot_vec4_i32(~min(-(~vec4<i32>(var_2.c.x, arg_1, arg_1, 11416i)), vec4<i32>(1i, arg_1, ~var_2.c.x, _wgslsmith_sub_i32(u_input.a, arg_1))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(-21682i, 6267i, u_input.a, var_2.c.x) << (~vec4<u32>(20799u, 73380u, u_input.d, 9319u) % vec4<u32>(32u))), abs(vec4<i32>(~u_input.a, -7637i, u_input.a << (1u % 32u), _wgslsmith_sub_i32(arg_1, var_2.c.x)))));
    return select(arg_0, ~(~(~func_3(Struct_1(vec4<bool>(false, true, false, var_2.b), 35509i)))), !(!(!select(vec3<bool>(var_2.d, false, var_2.d), vec3<bool>(var_2.d, var_2.d, var_2.d), var_2.b))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = Struct_2(vec3<f32>(1824f, arg_2.a, -1829f));
    var var_1 = !vec4<bool>(all(vec3<bool>(select(false, true, true), arg_2.d, arg_2.d)), true, _wgslsmith_f_op_f32(f32(-1f) * -1920f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(arg_2.a + arg_2.a)), !(!(arg_2.d & true)));
    var var_2 = Struct_1(select(select(vec4<bool>(select(false, arg_2.b, var_1.x), !arg_2.d, false, select(true, false, false)), vec4<bool>(any(vec4<bool>(true, true, arg_2.b, false)), var_1.x, var_1.x, !arg_2.d), arg_2.b), vec4<bool>(true, true, !arg_2.b, true), !select(!vec4<bool>(true, true, var_1.x, false), select(vec4<bool>(var_1.x, arg_2.d, arg_2.d, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x), arg_2.d), vec4<bool>(true, true, arg_2.d, false))), 2147483647i);
    let var_3 = arg_2;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(3151f, var_0.a.x) - _wgslsmith_f_op_f32(sign(1471f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - var_3.a)), !(var_0.a.x > var_0.a.x))) * 1f), var_3.d, abs(vec2<i32>(-2147483647i, u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 44823u), arg_0.zx) % 32u))), false);
    return StorageBuffer(max(~vec3<i32>(var_4.c.x, var_3.c.x, var_4.c.x) | vec3<i32>(arg_2.c.x, -33055i, var_2.b), -vec3<i32>(-57503i, var_3.c.x, -1i) | (vec3<i32>(u_input.a, 2147483647i, var_2.b) >> (vec3<u32>(arg_1.x, 42396u, 1u) % vec3<u32>(32u)))) << (func_2(~_wgslsmith_div_vec3_u32(arg_0, vec3<u32>(72757u, 29549u, 4294967295u)), countOneBits(-53607i)) % vec3<u32>(32u)), 1u, abs(vec2<i32>(u_input.a, 7535i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_4.a, arg_2.a)), var_3.a), _wgslsmith_div_f32(-779f, -1298f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), var_3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_2(vec3<f32>(236f, -278f, -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1000f)))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -622f), 1048f)));
    let var_1 = ~(vec3<i32>(-1i) * -(abs(vec3<i32>(24390i, u_input.a, u_input.a)) << (~vec3<u32>(4624u, 23521u, u_input.b) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = func_4(select(~func_2(select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(4294967295u, 7454u, 1u), vec3<bool>(false, true, false)), firstTrailingBit(16054i)), ~(vec3<u32>(4294967295u, 27445u, 153u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 49815u), vec3<u32>(535u, 0u, 4294967295u)) % vec3<u32>(32u))), vec3<bool>(true, true, true)), ~abs(~(~vec2<u32>(4294967295u, u_input.d))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-230f - -467f) + var_0.x), true, vec2<i32>(_wgslsmith_dot_vec3_i32(~var_1, _wgslsmith_mod_vec3_i32(vec3<i32>(-41400i, -3053i, 0i), vec3<i32>(u_input.a, u_input.a, var_1.x))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, 1i), 20796i)), true));
}

