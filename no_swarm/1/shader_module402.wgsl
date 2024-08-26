struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_mult_i32(countOneBits(_wgslsmith_mod_i32(-28970i, 2147483647i)), _wgslsmith_add_i32(select(-2147483647i, 1i, true), 1i))), Struct_2(~(~(~38778i)), Struct_1(~reverseBits(vec4<i32>(-2147483647i, -19150i, 69995i, -2346i)), (39393u & u_input.a.x) | u_input.c, select(vec2<i32>(1i, 1i), countOneBits(vec2<i32>(-2147483647i, 1i)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), ~(-1i)), u_input.a.yy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(475f, 1000f))) - -1242f), _wgslsmith_f_op_f32(-2233f - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-184f))))), vec4<u32>(u_input.c, ~86323u, 10007u, 1u));
    return var_0.b.b;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = abs(-_wgslsmith_sub_vec3_i32(~(vec3<i32>(2147483647i, arg_1.b.b.a.x, 0i) >> (vec3<u32>(arg_0.b.b, 0u, u_input.a.x) % vec3<u32>(32u))), firstLeadingBit(arg_3.yxx)));
    var_1 = _wgslsmith_add_vec3_i32(reverseBits(arg_0.b.a.yyx), ~(vec3<i32>(-1i) * -countOneBits(arg_3.ywz)));
    let var_2 = vec2<i32>(-1i) * -arg_3.yx;
    var var_3 = var_0.b.b;
    return _wgslsmith_sub_vec4_i32(arg_2.a, _wgslsmith_add_vec4_i32(vec4<i32>(select(arg_3.x, arg_2.a.x, true) | (2147483647i << (arg_1.e.x % 32u)), -arg_3.x, countOneBits(_wgslsmith_sub_i32(arg_0.b.c.x, var_1.x)), -82736i), vec4<i32>(-10324i, firstLeadingBit(i32(-1i) * -1i), arg_0.c, var_0.b.a.x)));
}

fn func_1() -> vec2<bool> {
    let var_0 = ~(~func_3(Struct_2(-23700i, Struct_1(vec4<i32>(-12807i, 1i, 1i, 0i), 20811u, vec2<i32>(0i, -14057i)), -2147483647i), Struct_3(1i, Struct_2(-16153i, Struct_1(vec4<i32>(56556i, 8036i, 27839i, -34075i), 47092u, vec2<i32>(-2147483647i, 1i)), 2147483647i), u_input.a.xw, 243f, vec4<u32>(4294967295u, 6488u, 50874u, u_input.a.x)), func_2(), ~vec4<i32>(-1i, 2147483647i, 0i, 5756i))) << (u_input.a % vec4<u32>(32u));
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = vec2<bool>(true, all(vec3<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true)), false, true)));
    var_2 = vec2<bool>(u_input.c > u_input.c, any(vec2<bool>(true, true)));
    return !select(vec2<bool>(_wgslsmith_div_i32(47086i, var_0.x) >= _wgslsmith_add_i32(-20047i, -88085i), any(vec4<bool>(var_2.x, false, var_2.x, var_2.x))), !(!(!vec2<bool>(var_2.x, var_2.x))), !vec2<bool>(true, var_2.x & true));
}

fn func_4(arg_0: vec2<bool>) -> Struct_5 {
    let var_0 = !arg_0.x;
    var var_1 = Struct_4(1u, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(11241i, 1i), 1i, ~2147483647i), firstTrailingBit(vec3<i32>(1i, 1i, 1i))), func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~0i), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(25877i, -513i), vec2<i32>(-27231i, -20198i))))), _wgslsmith_clamp_i32(2147483647i, func_3(Struct_2(~57730i, func_2(), i32(-1i) * -1i), Struct_3(1i, Struct_2(-38600i, Struct_1(vec4<i32>(-11878i, -73803i, -13771i, -36193i), u_input.a.x, vec2<i32>(-8800i, -30352i)), -11410i), u_input.a.zx, _wgslsmith_f_op_f32(floor(-1935f)), ~u_input.a), Struct_1(vec4<i32>(-2165i, -1i, -2147483647i, -41127i), u_input.c ^ 24889u, vec2<i32>(1i, 1i)), abs(func_2().a)).x, 2147483647i), Struct_1(vec4<i32>(0i, 2147483647i, ~_wgslsmith_sub_i32(-1i, 6202i), 15089i), 22516u, func_2().a.wz));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-432f, -1340f, -2278f, 511f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1616f, 224f, -2406f, -278f) * vec4<f32>(416f, 513f, 857f, 273f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2333f + -868f), 109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-207f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2199f, -142f), 1f)), 1255f)));
    var_1 = Struct_4(firstLeadingBit(~var_1.a), Struct_2(-var_1.c, var_1.d, select(var_1.b.b.a.x, _wgslsmith_dot_vec3_i32(func_2().a.yxx, var_1.d.a.wyw), true)), -(~_wgslsmith_sub_i32(var_1.c, var_1.b.c >> (37772u % 32u))), func_2());
    var var_3 = select(vec2<i32>(_wgslsmith_mod_i32(var_1.d.a.x, var_1.b.b.a.x), 0i), var_1.d.c, select(select(!(!vec2<bool>(false, arg_0.x)), arg_0, any(vec2<bool>(true, true))), !vec2<bool>(true, !arg_0.x), !arg_0));
    return Struct_5(var_3.x, arg_0.x, reverseBits(var_1.a << (~u_input.c % 32u)) == ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1455f, 1f));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f) - _wgslsmith_div_f32(-576f, 1013f))))));
    var_0 = -1051f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f)))));
    let var_1 = func_4(select(func_1(), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

