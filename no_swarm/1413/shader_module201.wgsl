struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(u_input.e, abs(vec2<i32>(u_input.b.x ^ -65719i, -2147483647i << (u_input.d.x % 32u))) & _wgslsmith_mult_vec2_i32(reverseBits(u_input.b.yx), -(~vec2<i32>(u_input.e.x, u_input.e.x))), vec2<u32>(19063u, _wgslsmith_dot_vec2_u32(~select(arg_0.xx, vec2<u32>(0u, 0u), vec2<bool>(false, true)), select(u_input.d & u_input.d, ~vec2<u32>(u_input.d.x, u_input.c), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-3551f)) + 539f));
    return _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + 1000f));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-336f * 1337f), _wgslsmith_f_op_f32(min(256f, -1612f))))))));
    var var_1 = global1[_wgslsmith_index_u32(32124u, 25u)];
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -1913f), 274f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.c.zx, vec2<f32>(var_0.x, 855f))))) * _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(1f, _wgslsmith_f_op_f32(-524f + var_0.x)))), var_1.c);
    var var_3 = vec3<u32>(4294967295u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u) | 42566u, 4294967295u);
    let var_4 = vec4<bool>(!any(vec4<bool>(false, true, true, true)), select(true || arg_1.x, false, any(vec3<bool>(4294967295u > arg_0, any(vec3<bool>(false, arg_1.x, arg_1.x)), true))), 903f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_u32(u_input.a.yzw, vec3<u32>(arg_0, u_input.d.x, 2707u)))), var_1.c.x), !((any(vec2<bool>(arg_1.x, arg_1.x)) & true) & !select(false, arg_1.x, arg_1.x)));
    return select(-(~(~var_1.a)), -8408i, true);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = 31621u;
    var var_1 = Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~(vec2<i32>(u_input.b.x, 45953i) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xy), _wgslsmith_sub_vec2_i32(u_input.b.xx, u_input.b.zz), vec2<i32>(u_input.b.x, u_input.e.x) ^ vec2<i32>(0i, 1i))), vec2<i32>(~0i, _wgslsmith_clamp_i32(-u_input.e.x, u_input.e.x, 11653i))), u_input.b.xx, u_input.d | vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_add_u32(79139u, 63887u)), _wgslsmith_mod_u32(~u_input.d.x, u_input.c)), -456f);
    let var_2 = var_1.d;
    global0 = u_input.e.x;
    var var_3 = vec3<f32>(-952f, var_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec3<u32>(68546u, 116728u, var_1.c.x))), _wgslsmith_f_op_f32(-1081f + 221f))))), _wgslsmith_f_op_f32(-739f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))))));
    return Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zy, var_1.b | u_input.e), ~(-u_input.b.yz)) ^ vec2<i32>(max(func_3(var_1.c.x, vec2<bool>(arg_0, arg_0)), var_1.b.x), abs(34660i)), select(vec2<i32>(1i, -2147483647i & _wgslsmith_clamp_i32(-1i, u_input.e.x, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -u_input.e.x), _wgslsmith_mod_vec2_i32(var_1.a, vec2<i32>(u_input.b.x, -1i)) | ~vec2<i32>(-62639i, 5871i), ~(~u_input.b.yy)), arg_0), countOneBits(~(~firstLeadingBit(vec2<u32>(0u, 62282u)))), _wgslsmith_div_f32(-892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, var_0.b.x), firstTrailingBit(vec2<i32>(-54293i, u_input.e.x) & u_input.b.xz)), vec2<i32>(var_0.a.x, ~21087i)));
}

