struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
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

var<private> global0: vec2<f32>;

var<private> global1: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = -2147483647i;
    var var_1 = vec2<bool>(all(!vec2<bool>(true, arg_0.b || false)), !arg_0.b);
    var_0 = reverseBits(u_input.b.x);
    var_1 = !select(vec2<bool>(var_1.x, any(!vec2<bool>(true, var_1.x))), vec2<bool>(var_1.x, any(select(vec4<bool>(true, true, true, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, var_1.x, arg_0.b, arg_0.b)))), select(vec2<bool>(select(arg_0.b, false, true), true), vec2<bool>(!arg_0.b, all(vec3<bool>(var_1.x, arg_0.b, var_1.x))), vec2<bool>(true, true)));
    let var_2 = var_1.x;
    return _wgslsmith_div_f32(-1493f, global0.x);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(abs(-1i), u_input.a) | (20412i << (1u % 32u)), -17957i, ~u_input.a, -28052i), !(!(u_input.a > ~(-8049i))), ~vec2<i32>(-2147483647i | u_input.b.x, firstLeadingBit(u_input.b.x)) >> (vec2<u32>(abs(1u), ~4294967295u) % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(max(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(~44680u, 1u, firstTrailingBit(61347u))), _wgslsmith_mod_vec3_u32(vec3<u32>(~12337u, 0u, 1u), vec3<u32>(1u, 1u, 1u))), vec3<i32>(~_wgslsmith_div_i32(firstTrailingBit(u_input.a), -u_input.a), countOneBits(_wgslsmith_mult_i32(u_input.b.x, ~0i)), -u_input.b.x));
    let var_1 = !any(vec3<bool>(all(!vec2<bool>(arg_0.b, arg_0.b)), (i32(-1i) * -40925i) >= _wgslsmith_clamp_i32(21443i, 1i, -39239i), false));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-384f, arg_0.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-348f, global0.x))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * global0.x), global0.x, _wgslsmith_f_op_f32(sign(847f)), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)), var_0.b && (global0.x > -223f)), -u_input.b.xw | ~(vec2<i32>(-27371i, 36796i) << (vec2<u32>(1u, var_0.d.x) % vec2<u32>(32u))), var_0.a.x), _wgslsmith_dot_vec2_u32(var_0.d.xz, ~vec2<u32>(~var_0.d.x, ~var_0.d.x)), Struct_1(vec4<i32>(~(var_0.c.x | var_0.e.x), 22646i, var_0.e.x, var_0.c.x), false, vec2<i32>(~_wgslsmith_mult_i32(-38354i, 9302i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, -2147483647i), var_0.e), 3250i, -2147483647i)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d.x, 1u, var_0.d.x), vec3<u32>(var_0.d.x, 10325u, 37201u), var_0.d) & reverseBits(vec3<u32>(var_0.d.x, var_0.d.x, 23942u))), reverseBits(max(firstLeadingBit(u_input.b.ywx), ~vec3<i32>(var_0.e.x, u_input.b.x, 4073i)))), -vec2<i32>(select(-63783i, -u_input.a, !var_1), _wgslsmith_div_i32(u_input.b.x, ~u_input.a)), Struct_1(firstLeadingBit(countOneBits(select(vec4<i32>(1934i, u_input.a, u_input.a, u_input.a), u_input.b, vec4<bool>(true, var_1, true, arg_0.b)))), any(select(!vec2<bool>(true, arg_0.b), vec2<bool>(false, var_0.b), !vec2<bool>(arg_0.b, var_1))), vec2<i32>(~_wgslsmith_mult_i32(u_input.a, -3130i), -1753i), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d.x, var_0.d.x, 12858u), var_0.d), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 42422u, 30927u), vec3<u32>(1u, 1u, var_0.d.x)), _wgslsmith_div_vec3_u32(var_0.d, var_0.d)) >> (var_0.d % vec3<u32>(32u)), vec3<i32>(~var_0.a.x, ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(var_0.e.x, var_0.c.x)))));
    var_0 = var_2.e;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - -720f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1190f - _wgslsmith_f_op_f32(-global0.x)))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec2<f32> {
    var var_0 = ~abs(abs(9694u));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(func_3(arg_0)))), arg_0, vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, arg_1, u_input.a), countOneBits(vec4<i32>(22155i, 14380i, u_input.b.x, u_input.b.x)))), arg_1), 0i);
    let var_2 = Struct_1(u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), global0.x)) > _wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(var_1.a.x, -658f)), vec2<i32>(arg_1, max(-u_input.a, u_input.a)), reverseBits(vec3<u32>(_wgslsmith_div_u32(0u, 34055u) >> (0u % 32u), ~(21962u << (0u % 32u)), select(firstTrailingBit(52946u), 1u, false))), vec3<i32>(0i, ~(arg_1 | ~9042i), _wgslsmith_mult_i32(0i, -2147483647i)));
    let var_3 = 0i;
    let var_4 = var_1.b.b;
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, -1330f) + vec2<f32>(-105f, 360f))), _wgslsmith_f_op_vec2_f32(arg_0.a.yw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.a.x, var_1.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, false, vec2<i32>(19015i, u_input.a), vec3<u32>(45784u, 22760u, 3512u), u_input.b.yxw))), global0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1852f, 1735f), vec2<f32>(global0.x, global0.x))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-3010f, 932f) - _wgslsmith_f_op_vec2_f32(func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, 745f, 180f)), true), firstLeadingBit(~u_input.b.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1059f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(365f, -805f), vec2<f32>(-1342f, 135f)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 475f), vec2<f32>(global0.x, global0.x)))))));
    global1 = any(!(!vec4<bool>(true, select(false, true, false), true, true)));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1098f, global0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(510f, global0.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1859f) * vec2<f32>(global0.x, -1000f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, -1255f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(973f, _wgslsmith_f_op_f32(exp2(global0.x)), 294f, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 382f, global0.x)))), false), u_input.b.xz, ~2147483647i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(var_0.b.a, _wgslsmith_f_op_vec4_f32(var_0.b.a + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 557f, 352f, 703f) + vec4<f32>(global0.x, var_0.b.a.x, 586f, var_0.b.a.x))))))), var_0.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, var_0.b.b, var_0.c, vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_i32(u_input.b.yzx, u_input.b.ywx))))), min(firstTrailingBit(~max(100542u, 15647u)), ~1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(func_3(var_0.b))))), ~(~(~(~vec3<u32>(40441u, 4294967295u, 40015u)))));
}

