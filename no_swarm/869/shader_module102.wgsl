struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
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

var<private> global0: vec3<i32> = vec3<i32>(-1i, 27304i, -14317i);

var<private> global1: i32;

var<private> global2: vec4<u32>;

var<private> global3: Struct_1 = Struct_1(1197f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = u_input.c;
    global1 = -global0.x;
    var var_1 = vec2<i32>(21452i, reverseBits(-global0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1124f * _wgslsmith_f_op_f32(round(arg_1.x))));
    var var_3 = arg_2;
    return arg_2.a.yx;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = max(_wgslsmith_mult_vec2_i32(global0.zx, global0.yx), select(global0.zy, vec2<i32>(38536i, -2147483647i), !select(select(vec2<bool>(false, arg_1.b), vec2<bool>(true, arg_1.b), false), func_3(vec2<f32>(-220f, 546f), arg_1.d.xx, Struct_3(vec3<bool>(true, arg_1.b, true), -8672i, vec3<i32>(u_input.d, 6084i, u_input.a)), vec2<u32>(16973u, arg_1.c.x)), arg_1.b)));
    var var_1 = u_input.c.xx;
    var var_2 = arg_1;
    var var_3 = any(!vec4<bool>(true, var_2.b, !all(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b)), false));
    var var_4 = ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_div_u32(0u, 30937u), arg_0.x)), vec2<u32>(4294967295u, 4294967295u) | u_input.c.wx);
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(ceil(-952f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), arg_0.a.x), !(u_input.e < ~(~u_input.c.x)), u_input.c.zz, arg_0.d, 1i);
    var_0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-394f, _wgslsmith_f_op_f32(arg_1.a - -1871f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(477f, 1146f, var_0.b)))), var_0.d.zz), var_0.b, select(global2.yy, ~min(vec2<u32>(1u, 0u), vec2<u32>(0u, arg_0.c.x)), false), arg_0.d, ~(-var_0.e));
    global1 = _wgslsmith_add_i32(-abs(arg_0.e), -(2147483647i >> (1u % 32u)));
    let var_1 = func_2(arg_0.c, arg_0);
    return vec2<bool>(var_0.b, !var_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    global0 = -vec3<i32>(arg_3.b, ~_wgslsmith_add_i32(1i, global0.x) ^ 201i, -27352i);
    let var_0 = arg_0;
    var var_1 = arg_0.a;
    var var_2 = Struct_3(arg_3.a, global0.x, arg_3.c);
    let var_3 = !select(!(!vec4<bool>(arg_0.b, false, false, false)), !vec4<bool>(any(vec4<bool>(false, false, arg_2.x, true)), var_2.a.x, true, any(vec4<bool>(true, false, var_2.a.x, arg_2.x))), arg_1.x);
    return ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.c.x, var_0.c.x) & _wgslsmith_clamp_u32(0u, u_input.b, 0u), 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, u_input.b), vec2<u32>(u_input.e, 44538u)), ~4294967295u) >> (1u % 32u);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    let var_0 = func_5(Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(abs(arg_2.d.x))), global3.a), true, ~vec2<u32>(global2.x << (global2.x % 32u), ~44895u), arg_2.d, 2147483647i << (arg_2.c.x % 32u)), arg_1.zz, !func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, 957f) - arg_2.a), arg_2.b, _wgslsmith_div_vec2_u32(arg_2.c, vec2<u32>(1126u, u_input.e)), arg_2.d, max(arg_0, global0.x)), func_2(countOneBits(vec2<u32>(4294967295u, global2.x)), arg_2)), Struct_3(vec3<bool>(global3.a == -293f, !(!arg_1.x), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, global3.a)), vec2<f32>(-1322f, 1065f), Struct_3(vec3<bool>(false, true, false), -46595i, vec3<i32>(29343i, u_input.a, -25365i)), vec2<u32>(1u, 0u) >> (vec2<u32>(26901u, global2.x) % vec2<u32>(32u))).x), max(max(2147483647i, u_input.d), 29134i), vec3<i32>(arg_0, firstLeadingBit(global0.x << (arg_2.c.x % 32u)), max(abs(-1i), arg_2.e))));
    let var_1 = Struct_1(502f);
    var var_2 = Struct_3(!(!select(arg_1, arg_1, arg_3.x && arg_3.x)), reverseBits(~_wgslsmith_mult_i32(global0.x, arg_0)), vec3<i32>(_wgslsmith_div_i32(2147483647i, firstTrailingBit(_wgslsmith_clamp_i32(15040i, 0i, arg_0))), 2147483647i, -_wgslsmith_mod_i32(~2147483647i, ~(-46354i))));
    var var_3 = arg_2;
    global3 = Struct_1(_wgslsmith_f_op_f32(var_3.d.x + 394f));
    return _wgslsmith_dot_vec2_i32(~(~vec2<i32>(~2147483647i, arg_0)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, var_2.c.x) << (arg_2.c % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(var_3.e, -46870i), abs(global0.yy))) ^ firstTrailingBit(firstTrailingBit(vec2<i32>(0i, 1i)) | vec2<i32>(arg_0, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)), global3.a)));
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~(-vec3<i32>(-52254i, u_input.a, 32459i)), -(vec3<i32>(u_input.a, -27358i, global0.x) | vec3<i32>(global0.x, global0.x, -25421i))), vec3<i32>(-u_input.a, 55451i, global0.x)) ^ vec3<i32>(u_input.a, ~(func_1(-6293i, vec3<bool>(true, false, false), Struct_2(vec2<f32>(2223f, -1267f), false, vec2<u32>(u_input.b, u_input.e), vec3<f32>(-1435f, global3.a, 1705f), global0.x), vec3<bool>(true, true, false)) | firstTrailingBit(-8957i)), min(u_input.a, -2147483647i));
    var var_1 = _wgslsmith_mult_u32(0u, max(select(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, 4294967295u), vec3<u32>(u_input.e, 43089u, global2.x)) & u_input.e, any(vec2<bool>(true, true))), 0u));
    let var_2 = select(select(vec4<bool>(true, true, false, all(vec2<bool>(true, true))), !vec4<bool>(u_input.c.x <= 4294967295u, true, true, all(vec2<bool>(false, true))), var_0.x > global0.x), select(select(vec4<bool>(u_input.e < 7410u, global0.x < 20084i, select(true, false, false), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, global3.a > -202f, all(vec3<bool>(true, false, false)), false)), select(vec4<bool>(true, true, true, false), vec4<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(false, false, false)), func_4(Struct_2(vec2<f32>(1074f, 411f), false, global2.xw, vec3<f32>(global3.a, -404f, global3.a), -5194i), Struct_1(global3.a)).x), true), true), !all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global3.a), -721f), false, ~(~max(global2.yw, abs(vec2<u32>(68052u, 1u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -529f, global3.a)))))), _wgslsmith_dot_vec3_i32(vec3<i32>(-global0.x, global0.x, ~global0.x), ~(vec3<i32>(var_0.x, var_0.x, 27440i) ^ (vec3<i32>(var_0.x, 2147483647i, global0.x) >> (global2.yzz % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

