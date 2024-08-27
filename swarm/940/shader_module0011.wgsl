struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: vec4<i32> = vec4<i32>(1i, -21681i, 1i, 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_4(vec2<i32>(u_input.b, u_input.d | -u_input.b), global1.x, vec4<i32>(global1.x, select(global1.x, (-46347i << (arg_0.a % 32u)) ^ ~44028i, true), max(min(45812i, 1i), global1.x), -2147483647i), Struct_1(global1.x, select(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0.a, true), vec3<bool>(false, true, arg_1.a)), vec3<bool>(arg_1.a, var_0.a, true), select(vec3<bool>(arg_1.a, false, var_0.a), select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(var_0.a, true, true), false), arg_1.a)), -vec4<i32>(1i, global1.x, -35789i, -9476i)));
    let var_2 = abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(arg_0.a, arg_0.a, u_input.c, 4294967295u)), ~vec4<u32>(arg_0.a, 53427u, u_input.c, 4294967295u), ~vec4<u32>(1u, arg_0.a, u_input.c, 0u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 14464u, arg_0.a, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)))), ~arg_0.a));
    let var_3 = var_2;
    global0 = array<Struct_4, 29>();
    return !var_1.d.b;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1518f, -821f, 301f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(209f, 1048f, 1181f) - vec3<f32>(-1104f, -1170f, -390f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(964f, 808f, 229f))))));
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    var var_1 = ~select(vec3<u32>(_wgslsmith_div_u32(u_input.c & 1u, abs(1u)), u_input.c, u_input.c), ~abs(vec3<u32>(4294967295u, 4381u, 25179u)), select(func_3(Struct_5(u_input.c), Struct_3(true)), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), false, true)));
    var var_2 = vec3<u32>(21491u, abs(~(~_wgslsmith_sub_u32(0u, u_input.c))), u_input.c ^ _wgslsmith_mod_u32(0u, 39730u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f * _wgslsmith_f_op_f32(-129f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f), -1017f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(global1.x, global1.x, 36325i, global1.x))) - -616f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) - _wgslsmith_f_op_f32(min(486f, 1417f))), _wgslsmith_f_op_f32(min(701f, _wgslsmith_f_op_f32(max(-565f, 269f)))))), _wgslsmith_f_op_f32(sign(533f))));
    let var_1 = global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(reverseBits(vec2<u32>(4294967295u, u_input.c)), countOneBits(vec2<u32>(u_input.c, u_input.c))), vec2<u32>(firstLeadingBit(60382u), max(1u, u_input.c))), _wgslsmith_clamp_u32(u_input.c, ~(~1u), u_input.c)), 1u), 29u)];
    global1 = firstTrailingBit(vec4<i32>(~min(-2147483647i, u_input.a.x ^ u_input.d), ~138i, firstTrailingBit(-15631i), global1.x));
    var var_2 = !(!var_1.d.b.xz);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 879f, 661f) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * -1000f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(326f + -1000f))) * vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(1400f)), var_0.a.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-var_0.a.x), -271f, _wgslsmith_f_op_f32(exp2(var_3.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(420f, -620f, var_0.a.x, -1186f), vec4<f32>(877f, var_3.a.x, var_0.a.x, var_0.a.x), var_1.d.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(138f, -802f, 1296f, var_3.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(var_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.a.x, var_0.a.x)) * _wgslsmith_f_op_f32(min(1365f, var_3.a.x))), _wgslsmith_f_op_f32(var_3.a.x - var_3.a.x), 672f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1102f, 214f, var_3.a.x, 1000f), vec4<f32>(var_0.a.x, var_0.a.x, var_3.a.x, var_0.a.x), vec4<bool>(var_1.d.b.x, var_1.d.b.x, var_1.d.b.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_0.a.x, 199f, -1011f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -vec4<i32>(0i, global1.x, ~u_input.a.x, -2791i) & -vec4<i32>(i32(-1i) * -2147483647i, select(u_input.e.x, i32(-1i) * -10295i, true), 5441i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 46387i, 41287i, global1.x), vec4<i32>(2147483647i, -2147483647i, global1.x, -59059i)));
    global1 = vec4<i32>(-1i) * -(~(-vec4<i32>(-6249i, -69892i, -110805i, 24537i)) & vec4<i32>(-15191i, -global1.x, -2147483647i, -u_input.a.x));
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_5(0u);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2972f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1438f, 1085f)), -1434f))), -1829f, !(!(!var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(vec2<u32>(abs(84453u), 96073u), ~(vec2<u32>(4294967295u, 1u) ^ vec2<u32>(0u, u_input.c))), _wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-293f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(539f)))), -852f))), _wgslsmith_mod_vec2_u32(~(~(vec2<u32>(15780u, 1u) & vec2<u32>(15619u, u_input.c))), ~vec2<u32>(0u, u_input.c)), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.x, global1.x, 1i), vec4<i32>(global1.x, 1i, u_input.b, global1.x)), global1.x, ~(-5301i))) | (vec3<i32>(max(u_input.a.x, 386i), u_input.b, ~global1.x) | min(~global1.xzw, select(vec3<i32>(1i, u_input.e.x, 2147483647i), global1.ywy, var_0.x))));
}

