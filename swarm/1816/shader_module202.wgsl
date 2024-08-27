struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    global1 = Struct_1(global1.a);
    let var_0 = false;
    global0 = ~(~4294967295u);
    global0 = ~4294967295u;
    global0 = 4294967295u;
    return _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 35082u)) | u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    global0 = func_3(true, u_input.b.x ^ (7696i << (0u % 32u)));
    let var_0 = arg_0;
    global1 = var_0;
    var var_1 = vec4<bool>(~(~u_input.d) <= 1u, true, false, any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)));
    let var_2 = Struct_3(select(vec4<bool>(false, all(select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, false, false))), true, true), select(!vec4<bool>(var_1.x, false, true, var_1.x), !vec4<bool>(true, true, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, true)), !vec4<bool>(var_1.x, var_1.x, any(vec3<bool>(false, var_1.x, false)), true)), countOneBits(select(~vec3<u32>(4294967295u, 57811u, 101890u) << (firstLeadingBit(vec3<u32>(0u, u_input.c, 53193u)) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(33490u, u_input.d, 48917u) << (vec3<u32>(u_input.a.x, u_input.d, 39930u) % vec3<u32>(32u))), vec3<bool>(var_1.x, var_1.x, false))));
    return _wgslsmith_dot_vec4_u32(~select(vec4<u32>(min(u_input.d, 4294967295u), _wgslsmith_mult_u32(u_input.a.x, var_2.b.x), 4294967295u ^ var_2.b.x, 4294967295u), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, var_2.b.x, 4294967295u)) >> (max(vec4<u32>(7415u, 2205u, 17708u, 110579u), vec4<u32>(0u, 4294967295u, 1u, 0u)) % vec4<u32>(32u)), u_input.b.x != u_input.b.x), ~abs(vec4<u32>(_wgslsmith_mod_u32(21970u, u_input.c), ~0u, u_input.a.x, firstLeadingBit(45826u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    global0 = max(_wgslsmith_clamp_u32(25995u, ~4294967295u, 4294967295u), u_input.c);
    let var_0 = select(select(arg_3.c, vec4<bool>(false, !arg_3.c.x, select(any(arg_3.c.zxw), any(vec3<bool>(arg_2, arg_2, false)), false || arg_2), (108f >= global1.a) && (arg_1.x == 11765i)), !select(vec4<bool>(false, arg_2, arg_3.a.x, false), vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(false, false, false, false))), select(arg_3.c, arg_3.c, vec4<bool>((-309f >= global1.a) && all(arg_3.c), arg_2, !select(arg_3.c.x, arg_2, arg_2), false)), !select(vec4<bool>(arg_2, all(arg_3.c), true, false), !(!arg_3.c), true));
    let var_1 = 0u;
    global0 = var_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(arg_3.d.xx)))));
    return Struct_3(select(select(!var_0, !vec4<bool>(true, false, var_0.x, true), any(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_3.c.x, arg_3.c.x, true), var_0.x))), vec4<bool>(any(!arg_3.c.zz), all(vec4<bool>(arg_3.c.x, false, var_0.x, false)), arg_3.a.x, any(vec3<bool>(var_0.x, false, true))), false), ~arg_0.xzz);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = func_4(vec4<u32>(_wgslsmith_mod_u32(u_input.d ^ 5240u, ~(u_input.d ^ 4294967295u)), func_2(Struct_1(_wgslsmith_f_op_f32(-1863f * -1388f)), arg_1), 62008u, arg_0), -(~(~(~vec2<i32>(u_input.b.x, 20717i)))), all(arg_2.a.yxx), Struct_2(vec2<bool>(!arg_2.a.x, true | arg_2.a.x), Struct_1(_wgslsmith_f_op_f32(global1.a - global1.a)), select(vec4<bool>(arg_2.a.x, all(vec2<bool>(arg_2.a.x, false)), false, arg_2.b.x > u_input.d), !arg_2.a, select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), vec4<bool>(true, false, true, false), arg_2.a)), vec4<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x))), 1075f, _wgslsmith_f_op_f32(trunc(-729f)), _wgslsmith_f_op_f32(-global1.a))));
    let var_1 = arg_2.a.x;
    let var_2 = !func_4(~(~vec4<u32>(arg_2.b.x, 1u, arg_0, 0u)), firstTrailingBit(~u_input.b.zy), !all(vec3<bool>(true, arg_2.a.x, false)), Struct_2(vec2<bool>(var_0.a.x, false), Struct_1(arg_1.x), func_4(vec4<u32>(45163u, var_0.b.x, 30713u, 4294967295u), u_input.b.xx, arg_2.a.x, Struct_2(var_0.a.yy, Struct_1(global1.a), vec4<bool>(false, var_0.a.x, false, true), vec4<f32>(global1.a, global1.a, 1000f, 607f))).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(2522f, global1.a, -185f, arg_1.x) * vec4<f32>(-544f, 624f, arg_1.x, arg_1.x)))).a.x | (abs(-u_input.b.x | -6104i) > u_input.b.x);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-763f);
    let var_0 = min(u_input.b.yz, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(23978i, u_input.b.x), u_input.b.zx, true), vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yz >> (u_input.a % vec2<u32>(32u))), u_input.b.yx) | vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, u_input.b.x), ~vec4<i32>(0i, u_input.b.x, -3111i, u_input.b.x))));
    var var_1 = -31233i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(var_0, vec2<i32>(-_wgslsmith_clamp_i32(u_input.b.x, -41963i, 0i), func_1(54750u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)), Struct_3(vec4<bool>(true, false, true, false), vec3<u32>(u_input.c, u_input.a.x, 72097u))))), global1.a, u_input.b.xy);
}

