struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, -823f)), _wgslsmith_div_vec2_f32(vec2<f32>(895f, 867f), arg_2.a))))), 400f, true, _wgslsmith_f_op_f32(step(arg_2.d, 450f)), u_input.b << (abs(vec4<u32>(0u, firstTrailingBit(3499u), u_input.b.x, abs(u_input.b.x))) % vec4<u32>(32u)));
    global1 = -2147483647i ^ max(46693i, global0[_wgslsmith_index_u32(40098u, 25u)]);
    let var_1 = ~u_input.a.x;
    let var_2 = arg_2;
    global1 = _wgslsmith_add_i32(reverseBits(arg_1), var_1);
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    global1 = ~_wgslsmith_clamp_i32(38023i, _wgslsmith_sub_i32(~countOneBits(global0[_wgslsmith_index_u32(arg_0.e.x, 25u)]), 3800i), u_input.a.x);
    global1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(u_input.c.xy, u_input.c.xy), u_input.c.yx & u_input.a), -2147483647i), ~_wgslsmith_div_i32(-global0[_wgslsmith_index_u32(u_input.b.x, 25u)], firstTrailingBit(41559i))) | _wgslsmith_dot_vec3_i32(~max(reverseBits(u_input.c), ~vec3<i32>(u_input.c.x, -968i, 2147483647i)), (vec3<i32>(-24366i, -53784i, -60982i) & -u_input.c) & select(u_input.c, vec3<i32>(u_input.c.x, 8243i, -25212i), u_input.a.x < -2147483647i));
    var var_0 = vec4<u32>(arg_0.e.x, ~(~arg_0.e.x), 0u, 1u);
    let var_1 = arg_0;
    let var_2 = func_2(!var_1.c, global0[_wgslsmith_index_u32(40899u, 25u)], Struct_1(_wgslsmith_f_op_vec2_f32(max(var_1.a, arg_0.a)), 213f, true, arg_0.a.x, vec4<u32>(56183u ^ var_0.x, abs(var_0.x), ~1u, arg_0.e.x) >> (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), !(!any(select(vec3<bool>(false, var_1.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, arg_1), vec3<bool>(true, false, arg_0.c)))));
    return _wgslsmith_f_op_f32(-var_1.d);
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.xz)), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -150f))), -782f)), 1358f, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x), ~select(vec4<u32>(0u, 1u, u_input.b.x | 0u, 1u), vec4<u32>(_wgslsmith_mod_u32(51867u, 46976u), _wgslsmith_add_u32(u_input.b.x, 57896u), firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(33525u, 0u, u_input.b.x), u_input.b.wzz)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), false)));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) + var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(752f + arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-797f, _wgslsmith_div_f32(-1138f, -191f)) + _wgslsmith_f_op_f32(sign(-917f))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(max(192f, var_0.a.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.a.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x * var_0.b))))), min(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, 0u), var_0.e), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0.e.x), u_input.b) ^ vec4<u32>(1u, var_0.e.x, var_0.e.x, u_input.b.x))));
    let var_2 = var_0;
    let var_3 = -867f;
    global0 = array<i32, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(func_2(var_1.c, -3168i, var_0, var_0.c), false))))) + _wgslsmith_f_op_f32(func_3(var_0, var_1.c & true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1241f)) * _wgslsmith_f_op_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_div_f32(arg_0.d, 466f), 1995f, -1000f)))));
    var var_1 = arg_1.xx >> (vec2<u32>(_wgslsmith_div_u32(arg_1.x, firstLeadingBit(1u)) | 0u, _wgslsmith_sub_u32(arg_0.e.x, _wgslsmith_sub_u32(0u, ~u_input.b.x))) % vec2<u32>(32u));
    let var_2 = func_2(arg_3, countOneBits(14462i), func_2(any(arg_2.zx), 15706i, arg_0, true), any(vec3<bool>(arg_0.c, false, true)));
    var var_3 = Struct_1(arg_0.a, var_2.a.x, true, arg_0.d, max(vec4<u32>(min(abs(u_input.b.x), _wgslsmith_sub_u32(var_2.e.x, 1u)), 7906u, ~u_input.b.x & 1u, abs(1u)), vec4<u32>(abs(select(77335u, u_input.b.x, true)), arg_0.e.x, var_2.e.x, ~40738u)));
    var var_4 = func_2(var_2.c, ~u_input.a.x | -(~global0[_wgslsmith_index_u32(0u, 25u)] ^ _wgslsmith_mult_i32(-2147483647i, 0i)), func_2((arg_0.c != true) != true, 8380i, var_2, true != (func_2(arg_2.x, 25078i, arg_0, var_2.c).d <= _wgslsmith_f_op_f32(-arg_0.d))), true);
    return StorageBuffer(abs(vec3<i32>(2147483647i, abs(global0[_wgslsmith_index_u32(var_2.e.x, 25u)] ^ global0[_wgslsmith_index_u32(8301u, 25u)]), u_input.c.x)), u_input.b.x, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(489f, -114f), vec2<f32>(-643f, 305f), true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-174f, -1019f) + vec2<f32>(-859f, 656f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-557f, -1000f))))), 1f, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-158f, _wgslsmith_f_op_f32(func_1(vec4<f32>(1267f, -1696f, 186f, -277f))))), 1f)), vec4<u32>(select(u_input.b.x << (u_input.b.x % 32u), u_input.b.x, true), 4294967295u, ~_wgslsmith_mod_u32(4294967295u, 70845u), u_input.b.x)), u_input.b.zxz, vec3<bool>(true, any(vec2<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(false, true)))), true), false);
}

