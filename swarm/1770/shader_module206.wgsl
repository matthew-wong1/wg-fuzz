struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global0 = vec3<bool>(true, any(arg_0), true);
    let var_0 = max(~(-(~(0i ^ u_input.c))), u_input.c);
    var var_1 = -461f;
    var_1 = -1066f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2520f * -326f), _wgslsmith_f_op_f32(f32(-1f) * -1747f), true))))));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    let var_0 = i32(-1i) * -20298i;
    global0 = !vec3<bool>(global0.x, true, !select(global0.x, true, global0.x));
    global0 = !vec3<bool>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, u_input.b.x), vec2<u32>(u_input.b.x, 51635u)), u_input.d.zz ^ vec2<u32>(arg_0.a, 4294967295u)) == _wgslsmith_mult_u32(21858u, 1u), global0.x, select(true, true, global0.x) || !all(vec4<bool>(global0.x, global0.x, true, false)));
    let var_1 = Struct_2(vec3<i32>(0i, (1i << (arg_0.a % 32u)) >> ((u_input.d.x << (arg_0.a % 32u)) % 32u), 1i >> (0u % 32u)) | vec3<i32>(func_3(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, global0.x))), _wgslsmith_mult_i32(14449i, 4256i), 2147483647i));
    let var_2 = ~_wgslsmith_clamp_u32(1u, arg_0.a, select(17958u, ~0u, true));
    return -1361f;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = vec3<bool>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.d.x), vec2<i32>(14997i, u_input.c))))) > 1355f, arg_0, true | (((17246u & u_input.d.x) & u_input.b.x) >= (u_input.e.x >> (~53471u % 32u))));
    global0 = !(!select(!vec3<bool>(arg_0, global0.x, false), !vec3<bool>(arg_0, false, global0.x), global0.x));
    var var_0 = max(u_input.e.x, 0u);
    var var_1 = ~min(u_input.b.x, firstLeadingBit(u_input.e.x));
    var var_2 = Struct_2(~countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, u_input.a.x), firstTrailingBit(vec3<i32>(u_input.a.x, -1i, -4579i)))));
    return Struct_1(countOneBits(abs(abs(u_input.e.x))) | _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(60913u, _wgslsmith_clamp_u32(u_input.e.x, 1u, 4294967295u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f + 479f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(237f)))))));
    let var_1 = select(!arg_0.x, false, ~max(1u, u_input.e.x ^ u_input.e.x) > ~countOneBits(u_input.d.x));
    var var_2 = func_1(global0.x);
    let var_3 = _wgslsmith_f_op_f32(ceil(1767f));
    let var_4 = arg_1;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(false, true, !(global0.x && select(false | global0.x, true, global0.x)));
    var var_0 = ~(-abs(~(~vec3<i32>(2147483647i, 26980i, u_input.c))));
    let var_1 = func_4(vec4<bool>(any(vec3<bool>(true, global0.x, any(vec4<bool>(true, global0.x, true, false)))), !global0.x, true, !any(!vec4<bool>(global0.x, true, global0.x, false))), func_1(false));
    var var_2 = ~vec3<i32>(-59108i, _wgslsmith_mod_i32(-20993i, _wgslsmith_mult_i32(1i, -1i) | u_input.a.x), 2147483647i);
    let var_3 = Struct_2(_wgslsmith_sub_vec3_i32(select(-(~vec3<i32>(1i, u_input.c, var_2.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 21176i, var_0.x, var_0.x), vec4<i32>(0i, -1i, var_2.x, u_input.c)), 2147483647i, 1i), true), _wgslsmith_div_vec3_i32(max(vec3<i32>(-2449i, -2147483647i, 1i), vec3<i32>(-35812i, var_2.x, 37628i)), reverseBits(vec3<i32>(7961i, 1i, 2147483647i))) | ~abs(vec3<i32>(38861i, 3546i, var_0.x))));
    global0 = !select(select(select(vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), true), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, global0.x), true), vec3<bool>(true, false, global0.x), true), true), select(vec3<bool>(global0.x, !global0.x, true), vec3<bool>(false, global0.x | true, !global0.x), true), vec3<bool>(true || any(vec4<bool>(true, global0.x, false, false)), false, true));
    let var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(select((firstTrailingBit(vec2<u32>(22797u, u_input.b.x)) >> (vec2<u32>(u_input.d.x, var_1.a) % vec2<u32>(32u))) ^ ~select(vec2<u32>(1u, u_input.d.x), vec2<u32>(11261u, u_input.e.x), global0.x), ~vec2<u32>(max(65269u, u_input.e.x), var_1.a), !vec2<bool>(false, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(0u), firstTrailingBit(u_input.a))), _wgslsmith_f_op_f32(-1304f - -1214f), -693f, -1000f)), var_3.a);
}

