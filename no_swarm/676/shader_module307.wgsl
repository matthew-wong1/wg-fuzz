struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec3<i32>, 12>;

var<private> global2: array<vec3<u32>, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), 1u > u_input.a.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, true)))));
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_1(u_input.b ^ -_wgslsmith_mult_i32(u_input.b, countOneBits(u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-894f, 1486f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-254f, 449f), vec2<f32>(1428f, -483f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1204f, -187f) * vec2<f32>(-1390f, 2124f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, _wgslsmith_f_op_f32(f32(-1f) * -170f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1463f, 903f), vec2<f32>(-1000f, 586f))))))), vec3<u32>(u_input.d, abs(4294967295u | u_input.d), u_input.d) >> (_wgslsmith_mult_vec3_u32(u_input.a, firstLeadingBit(global2[_wgslsmith_index_u32(reverseBits(u_input.d), 24u)])) % vec3<u32>(32u)));
    var var_2 = u_input.d;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-374f - 2002f))))))), var_1.b.x, 277f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-310f - 643f))))))));
    return var_1.c.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<bool>) -> bool {
    global0 = array<Struct_1, 4>();
    global2 = array<vec3<u32>, 24>();
    let var_0 = arg_1.d.x;
    let var_1 = Struct_1(~arg_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(arg_1.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0))))) - vec2<f32>(_wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-arg_1.b.x), !arg_3.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f))), u_input.a);
    var var_2 = Struct_1(i32(-1i) * -9308i, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.c.x + var_1.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1347f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1019f)))), arg_2);
    return max(max(~0u, 29077u), ~_wgslsmith_clamp_u32(4294967295u, var_2.d.x, _wgslsmith_sub_u32(var_1.d.x, 12915u))) <= ~70961u;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> bool {
    var var_0 = u_input.b;
    var var_1 = Struct_1(-48003i, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -577f), -200f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), arg_0.x)))), u_input.a);
    let var_2 = any(vec4<bool>(true, true, func_4(_wgslsmith_f_op_f32(func_3()), global0[_wgslsmith_index_u32(u_input.a.x, 4u)], ~var_1.d, vec4<bool>(true, true, true, true)), true));
    var var_3 = global0[_wgslsmith_index_u32(1u, 4u)];
    var var_4 = _wgslsmith_div_i32(max(_wgslsmith_add_i32(~(-u_input.c.x), ~(-2147483647i)), (~(-29187i) << (reverseBits(var_3.d.x) % 32u)) >> (((var_1.d.x >> (var_1.d.x % 32u)) | var_3.d.x) % 32u)), countOneBits(u_input.c.x >> (~1u % 32u)));
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    global1 = array<vec3<i32>, 12>();
    global1 = array<vec3<i32>, 12>();
    global0 = array<Struct_1, 4>();
    var var_0 = arg_3.x;
    let var_1 = true;
    return func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.c.x))), _wgslsmith_div_f32(1518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-997f))) + 461f)));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(-1032f, _wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = vec4<u32>(min(reverseBits(~(42623u << (u_input.d % 32u))), 0u ^ _wgslsmith_div_u32(5441u << (1u % 32u), ~u_input.a.x)), ~firstTrailingBit(u_input.a.x), ~(~(~u_input.a.x & (0u >> (u_input.d % 32u)))), ~u_input.a.x);
    global1 = array<vec3<i32>, 12>();
    global0 = array<Struct_1, 4>();
    var var_2 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, arg_0, true)), vec3<bool>(!arg_0, func_4(-1246f, global0[_wgslsmith_index_u32(u_input.d, 4u)], ~vec3<u32>(72074u, 1u, u_input.d), select(vec4<bool>(true, true, arg_2, false), vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, false, false, arg_0))), any(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, arg_0, false)))), true);
    return Struct_1(~_wgslsmith_add_i32(1i, ~(u_input.c.x >> (var_1.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.yy + arg_1.zy), arg_1.xy)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, -469f)))))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = -(~firstTrailingBit(reverseBits(vec4<i32>(9502i, -23723i, -1i, u_input.c.x)) ^ vec4<i32>(2147483647i, u_input.c.x, -12297i, u_input.b)));
    var var_2 = func_5(true, vec3<f32>(373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-371f))), 342f), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(vec3<u32>(u_input.d, var_0, 41902u) >> (vec3<u32>(var_0, 1u, 0u) % vec3<u32>(32u)), ~vec4<i32>(u_input.c.x, -19134i, var_1.x, var_1.x), Struct_1(-1i, vec2<f32>(-657f, 488f), vec2<f32>(-2494f, -300f), vec3<u32>(var_0, u_input.d, var_0)), ~vec4<u32>(61904u, var_0, var_0, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(abs(-511f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1180f + -800f)) - -710f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.b.x, -306f)), _wgslsmith_f_op_f32(-var_2.b.x)))), _wgslsmith_sub_u32(u_input.a.x, var_2.d.x), -reverseBits(33874i), _wgslsmith_mult_u32(110105u, max(25574u, u_input.d)) & ~79285u, _wgslsmith_mod_vec4_i32(abs((vec4<i32>(-13472i, 6109i, var_1.x, -1i) >> (vec4<u32>(var_2.d.x, var_2.d.x, 0u, 0u) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_2.a, 7186i, var_1.x), vec4<i32>(var_2.a, u_input.b, var_2.a, -2147483647i))), vec4<i32>(~_wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_add_i32(abs(-2147483647i), var_1.x), var_2.a, -min(u_input.b, u_input.c.x))));
}

