struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
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

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, false), vec4<i32>(31974i, -1i, 0i, 0i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<i32> {
    let var_0 = ~vec3<i32>(2147483647i, select(_wgslsmith_sub_i32(-2603i, abs(-12175i)), ~(~arg_0.x), any(vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x))), u_input.b.x);
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, u_input.a)))), ~(~firstLeadingBit(vec3<u32>(44124u, 63971u, u_input.a)))), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, _wgslsmith_clamp_u32(1u, 4294967295u, 0u), 14035u), global0[_wgslsmith_index_u32(~0u, 13u)]) >> (96774u % 32u));
    var var_2 = Struct_2(global1.a, global1.b);
    let var_3 = Struct_2(select(global1.a, select(select(select(var_2.a, vec2<bool>(false, true), global1.a.x), select(vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(false, var_2.a.x), var_2.a), false), select(select(var_2.a, global1.a, global1.a.x), select(global1.a, vec2<bool>(global1.a.x, true), global1.a.x), !global1.a.x), !(!vec2<bool>(var_2.a.x, true))), !var_2.a), ~vec4<i32>(1i, var_0.x, abs(1i), reverseBits(select(-2147483647i, arg_0.x, var_2.a.x))));
    var_1 = abs(vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(select(var_1.xz, var_1.zx, var_2.a.x), ~vec2<u32>(u_input.a, var_1.x))), firstLeadingBit(~(var_1.x ^ 1868u)), u_input.a | 16519u));
    return vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(~9718i | var_2.b.x), -1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, ~_wgslsmith_add_i32(var_3.b.x, var_0.x)), u_input.b.x), countOneBits(_wgslsmith_dot_vec2_i32(-arg_0.zx ^ _wgslsmith_div_vec2_i32(var_2.b.xw, arg_0.yz), vec2<i32>(var_0.x, _wgslsmith_mult_i32(var_0.x, arg_0.x)))), firstLeadingBit(i32(-1i) * -1i));
}

fn func_2(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = !global1.a;
    global1 = Struct_2(global1.a, ~func_3(global1.b.wxx));
    var var_1 = vec4<bool>(global1.a.x, any(vec4<bool>(global1.a.x, true, global1.a.x, var_0.x)), !global1.a.x, false);
    return select(countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(55260u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), ~reverseBits(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.a, 1u)), ~vec3<u32>(47087u, 4294967295u, u_input.a))), -2147483647i != select(~(-20743i), -(u_input.b.x << (u_input.a % 32u)), var_1.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(-394f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) - _wgslsmith_div_f32(182f, 332f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f))));
    let var_1 = arg_1;
    let var_2 = vec3<f32>(var_0.x, var_0.x, var_0.x);
    var var_3 = var_1;
    let var_4 = !any(select(!var_3.a, vec4<bool>(any(var_3.d.xz), any(vec2<bool>(true, true)), false, !var_3.d.x), true));
    return ~(~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -607f, var_2.x) + var_2)).x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    global0 = array<vec4<u32>, 13>();
    var var_0 = ~func_4(~arg_0.b.zz, Struct_1(vec4<bool>(true, true, !arg_0.a.x, !arg_0.a.x), vec4<bool>(!arg_0.a.x, arg_0.a.x, true, !arg_0.a.x), _wgslsmith_mod_vec3_u32(func_2(arg_1.zzy), min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(33473u, u_input.a, u_input.a))), !select(vec3<bool>(false, false, false), vec3<bool>(global1.a.x, global1.a.x, false), vec3<bool>(global1.a.x, global1.a.x, true))));
    global1 = Struct_2(select(vec2<bool>(any(select(vec4<bool>(global1.a.x, true, true, true), vec4<bool>(true, arg_0.a.x, false, global1.a.x), true)), !global1.a.x), arg_0.a, global1.a), -reverseBits(~(-vec4<i32>(u_input.b.x, arg_0.b.x, u_input.b.x, -36238i))));
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    return ~(~(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a)) ^ ~25520u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(vec2<bool>(true, select(global1.a.x, !global1.a.x, any(vec3<bool>(global1.a.x, global1.a.x, true)))), (_wgslsmith_mult_vec4_i32(global1.b, vec4<i32>(1i, 16651i, global1.b.x, 2147483647i)) >> (~vec4<u32>(47794u, 102657u, u_input.a, u_input.a) % vec4<u32>(32u))) >> (~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_f32(max(-567f, -1000f)), _wgslsmith_f_op_f32(trunc(1f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(957f, -693f, 1007f, -118f) - vec4<f32>(231f, -1773f, -1499f, 974f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-644f, 541f, 1285f, 170f), vec4<f32>(-887f, -1000f, 1000f, 251f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1888f, 1072f, -508f), vec4<f32>(-751f, -411f, 281f, 1301f))), _wgslsmith_div_vec4_f32(vec4<f32>(1401f, -1000f, 1213f, 249f), vec4<f32>(-550f, -166f, 2050f, -240f))))));
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    let var_1 = Struct_2(!select(global1.a, global1.a, !global1.a), _wgslsmith_div_vec4_i32(-func_3(u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global1.b.x, global1.b.x, -1462i), vec4<i32>(2147483647i, 2147483647i, -33622i, -1i) >> (global0[_wgslsmith_index_u32(u_input.a, 13u)] % vec4<u32>(32u)), -vec4<i32>(global1.b.x, u_input.b.x, 2147483647i, u_input.b.x)) | (max(global1.b, global1.b) | global1.b)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-254f, -103f))))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1876f), -1737f))))));
    var var_3 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f))))), var_1.b.x);
}

