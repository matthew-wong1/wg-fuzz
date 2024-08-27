struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global0 = array<Struct_4, 22>();
    global0 = array<Struct_4, 22>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-238f))), -633f)))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-726f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(round(399f)))), any(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), false))));
    global0 = array<Struct_4, 22>();
    global0 = array<Struct_4, 22>();
    return var_0;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    global0 = array<Struct_4, 22>();
    let var_0 = Struct_4(countOneBits(select(u_input.b, ~reverseBits(u_input.c.x), !func_3())), -(~reverseBits(max(0i, 2147483647i))), ~firstTrailingBit(u_input.d.xx));
    let var_1 = ~countOneBits(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 0i, u_input.a, 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(step(-246f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<Struct_4, 22>();
    return _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(abs(firstLeadingBit(vec4<i32>(1i, 2147483647i, var_0.b, var_0.b))), min(firstLeadingBit(var_1), var_1)), abs(-4226i));
}

fn func_4(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1994f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1124f, -1445f) * _wgslsmith_f_op_f32(f32(-1f) * -473f)), 909f, _wgslsmith_f_op_f32(-246f + -2591f))), vec2<bool>(any(vec3<bool>(true, true, true)), func_3()), -(((vec4<i32>(0i, -2147483647i, arg_0.b, u_input.e) | vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i)) ^ vec4<i32>(-71498i, -2147483647i, u_input.e, 2147483647i)) >> (countOneBits(vec4<u32>(arg_0.c.x, 749u, 9363u, 1u)) % vec4<u32>(32u))), -(firstTrailingBit(-vec3<i32>(1i, 0i, -1i)) >> (vec3<u32>(firstLeadingBit(1u), arg_0.c.x | u_input.b, 0u) % vec3<u32>(32u))), select(true, false || !all(vec2<bool>(true, true)), !func_3()));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), var_0.b, ~(~var_0.c), var_0.c.wxz, var_0.e)), _wgslsmith_mod_vec3_i32(var_0.d, _wgslsmith_clamp_vec3_i32(var_0.c.yww, _wgslsmith_mod_vec3_i32(var_0.c.yyz, vec3<i32>(1i, 1i, 1i)), vec3<i32>(arg_0.b, arg_0.b | 0i, ~0i))), !select(var_0.b, vec2<bool>(u_input.b > 4294967295u, true), var_0.e));
    global0 = array<Struct_4, 22>();
    let var_2 = firstTrailingBit(arg_0.b);
    var var_3 = var_1.a.a;
    return StorageBuffer(var_3.a.zz, u_input.d.www, ~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.a), firstLeadingBit(var_0.d.zz))));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_4(102164u, 0i, ~(~_wgslsmith_sub_vec2_u32(u_input.c, u_input.d.ww) ^ ~(~vec2<u32>(1u, u_input.d.x))));
    return func_4(Struct_4(_wgslsmith_dot_vec2_u32(u_input.d.ww, ~(vec2<u32>(1u, 0u) >> (vec2<u32>(1u, var_0.a) % vec2<u32>(32u)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1293f, 167f, 483f, -989f) * vec4<f32>(-845f, -157f, 505f, 1467f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1134f, -180f, -855f, 2004f))))), var_0.c & _wgslsmith_add_vec2_u32(var_0.c << (vec2<u32>(10868u, u_input.d.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.b, var_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

