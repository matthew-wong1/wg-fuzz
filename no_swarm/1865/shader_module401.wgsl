struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = vec3<i32>(~(-(1797i ^ arg_1)), _wgslsmith_add_i32(3231i << (_wgslsmith_div_u32(86308u, arg_0.a) % 32u), 28116i), _wgslsmith_div_i32(i32(-1i) * -arg_1, arg_1)) >> ((u_input.a.wyy & ~min(vec3<u32>(arg_2.a, arg_0.a, 40402u), vec3<u32>(arg_0.a, 12736u, 10179u))) % vec3<u32>(32u));
    var var_1 = i32(-1i) * -2311i;
    var var_2 = Struct_2(arg_0.a);
    var_1 = ~abs(~(-2147483647i));
    var var_3 = -(i32(-1i) * -28730i);
    return -532f;
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_1(min(123706u, abs(max(_wgslsmith_add_u32(80674u, 1u), ~4294967295u))));
    var var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(reverseBits(~vec2<i32>(24719i, -1i)), ~vec2<i32>(0i, 2147483647i)), firstTrailingBit(-firstLeadingBit(vec2<i32>(1i, 1i))));
    var_1 = 2147483647i;
    var_1 = ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -27479i, 1i), vec3<i32>(2147483647i, 89791i, 2147483647i)), ~vec3<i32>(-1i, 0i, -9073i), vec3<bool>(true, true, true))));
    var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.a, 1u, 107099u), vec3<u32>(37753u, var_0.a, u_input.c.x)), ~vec3<u32>(u_input.b, 0u, var_0.a) & ~vec3<u32>(46117u, 4294967295u, var_0.a)), 12863u & ~var_0.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -681f) * -1496f), _wgslsmith_f_op_f32(floor(-760f)), -632f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(949f, 1035f, -600f, 629f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1250f, 1232f, -1459f, -757f), vec4<f32>(1711f, -234f, -142f, -1421f)))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_div_u32(4800u, u_input.d.x) >= _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 1u, arg_1.a, u_input.a.x)), ~vec4<u32>(arg_1.a, 115800u, u_input.c.x, 1u)));
    var_0 = Struct_3(!(any(!vec4<bool>(true, arg_0.x, true, false)) & true));
    let var_1 = arg_2.zyx;
    var_0 = Struct_3(true);
    var_0 = Struct_3(arg_0.x);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(~53111i, 1i, 2147483647i, _wgslsmith_add_i32(0i, -2147483647i)), _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(1i, -8221i, -2147483647i, -1i), vec4<i32>(-19085i, -22374i, -1i, 1i), vec4<bool>(false, false, true, false)), -vec4<i32>(1i, -28061i, -48480i, -16827i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_vec4_i32(~(~vec4<i32>(2147483647i, 1i, -360i, -1i)), vec4<i32>(1i, 1i, 1i, 1i))));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_1(4294967295u);
    let var_1 = vec2<f32>(-1175f, _wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-197f))))));
    var var_2 = select(func_4(select(vec3<bool>(arg_0.a, arg_0.a, true), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(true, false, arg_0.a), vec3<bool>(true, false, false)), arg_0.a & arg_0.a), Struct_2(~var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-833f, var_1.x, var_1.x, var_1.x), vec4<f32>(234f, var_1.x, -1000f, var_1.x)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(35457u))))) >> (0u % 32u), func_4(vec3<bool>(!any(vec4<bool>(false, false, arg_0.a, false)), select(true, arg_0.a, arg_0.a), any(vec3<bool>(arg_0.a, true, arg_0.a))), Struct_2(~(u_input.d.x & var_0.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1310f, 1815f, var_1.x)))))), !(all(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))) && all(vec4<bool>(arg_0.a, false, arg_0.a, false))));
    var var_3 = reverseBits(firstLeadingBit(~u_input.c.x));
    let var_4 = var_1.x;
    return ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a, firstLeadingBit(var_0.a)), abs(~(~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~(~2147483647i))), u_input.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(904f, -653f) + _wgslsmith_f_op_f32(func_1(Struct_2(1u), -27849i, Struct_1(u_input.c.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 595f)), ~(u_input.a.www & vec3<u32>(4294967295u, u_input.e, u_input.e)) | vec3<u32>(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), abs(func_2(Struct_3(false))), u_input.c.x));
}

