struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true);

var<private> global1: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> i32 {
    let var_0 = arg_0 ^ ~(~(~arg_0));
    var var_1 = max(countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0, var_0, arg_0), vec4<u32>(4294967295u, arg_0, var_0, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(23501u, arg_0, u_input.b, 0u), vec4<u32>(9244u, u_input.b, u_input.c, 13798u)))) >> (~firstTrailingBit(vec4<u32>(var_0, arg_0, arg_0, 31012u) ^ vec4<u32>(var_0, arg_0, 29279u, 37356u)) % vec4<u32>(32u)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, arg_0, var_0, 4294967295u), min(vec4<u32>(0u, arg_0, var_0, 1u), vec4<u32>(arg_0, u_input.b, var_0, 0u)))));
    let var_2 = select(!select(!(!vec3<bool>(global0.a, global0.a, true)), select(select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, true, true), global0.a), !vec3<bool>(true, global0.a, global0.a), true), !(!vec3<bool>(true, global0.a, global0.a))), vec3<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(global0.a, global0.a), global0.a), vec2<bool>(false, false), global0.a)), false, true), vec3<bool>(-_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) > (~72632i << (_wgslsmith_div_u32(arg_0, u_input.b) % 32u)), -(~(-34949i)) > _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.wzz), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, u_input.a.x), vec3<i32>(global1.x, u_input.e, 824i))), any(vec3<bool>(u_input.d.x <= 1i, !global0.a, false))));
    var var_3 = Struct_3(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, u_input.e, -19079i, global1.x), vec4<i32>(global1.x, 5950i, u_input.a.x, u_input.e)) | _wgslsmith_mod_i32(~u_input.d.x, 1185i)), Struct_2(var_2.x));
    var_1 = ~vec4<u32>(arg_0, 0u, var_1.x, ~var_0);
    return abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(global1.x, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), 1i)), -1i));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = vec4<i32>(firstTrailingBit(~(u_input.d.x & -13640i)), global1.x, -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global1.zx ^ vec2<i32>(-21252i, u_input.e), global1.yz | vec2<i32>(global1.x, u_input.a.x)), u_input.d.x), -_wgslsmith_add_i32(select(global1.x, func_3(arg_2, arg_0.x, Struct_4(vec4<f32>(-1116f, arg_0.x, arg_0.x, -501f), arg_1.x, arg_0.x, vec4<f32>(-279f, -1000f, arg_1.x, -1892f))), false), _wgslsmith_mod_i32(u_input.e, -global1.x)));
    let var_1 = Struct_3(-1i, arg_3);
    var var_2 = Struct_3(global1.x, Struct_2(!all(select(vec3<bool>(global0.a, true, var_1.b.a), vec3<bool>(arg_3.a, false, arg_3.a), true))));
    var var_3 = var_1.b;
    global1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(var_2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xxz, u_input.a.yyy), abs(2147483647i), _wgslsmith_mod_i32(0i, var_1.a)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(global1.x, 75748i, 0i), vec3<i32>(0i, var_2.a, global1.x), vec3<bool>(var_1.b.a, var_1.b.a, false)), vec3<i32>(var_0.x, var_0.x, 1i) ^ u_input.a.xyz)), -1i), select(u_input.a.wxw, _wgslsmith_sub_vec3_i32(var_0.xyy, vec3<i32>(max(var_2.a, var_0.x), _wgslsmith_add_i32(var_0.x, var_0.x), 2147483647i)), var_3.a), var_0.xwy);
    return _wgslsmith_add_vec4_u32(select(vec4<u32>(arg_2, arg_2, _wgslsmith_add_u32(u_input.b, arg_2), 0u), ~vec4<u32>(reverseBits(u_input.b), countOneBits(0u), _wgslsmith_div_u32(arg_2, 1u), ~9164u), true & !select(false, var_2.b.a, var_2.b.a)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(4294967295u, 14390u, 1u, u_input.b) & vec4<u32>(u_input.b, 1u, arg_2, 4294967295u)), abs(vec4<u32>(1u, 0u, arg_2, 25193u) >> (vec4<u32>(u_input.c, u_input.b, u_input.c, 0u) % vec4<u32>(32u))), ~(~vec4<u32>(4465u, 18710u, u_input.c, 37889u))) & ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2, arg_2), vec3<u32>(u_input.c, u_input.c, 0u)), arg_2, 32788u | u_input.b, firstTrailingBit(37680u)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = ~abs(firstLeadingBit(~(vec2<u32>(arg_1.x, u_input.b) ^ arg_1.wx)));
    return arg_2.b;
}

fn func_1() -> Struct_4 {
    global0 = func_4(-391f, abs(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b))) ^ (select(~vec4<u32>(32368u, u_input.b, 92256u, 1u), func_2(vec4<f32>(1000f, 914f, 262f, -1026f), vec2<f32>(407f, 521f), 4294967295u, Struct_2(global0.a)), true) >> (~(vec4<u32>(4294967295u, u_input.b, u_input.b, 16126u) >> (vec4<u32>(1u, u_input.c, 53458u, 2604u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_3(~global1.x, Struct_2(true)), firstLeadingBit(vec4<i32>(u_input.a.x, global1.x ^ u_input.a.x, _wgslsmith_clamp_i32(global1.x, u_input.e, 1i), global1.x)) >> (~(~firstLeadingBit(vec4<u32>(u_input.c, 1u, 4294967295u, 30416u))) % vec4<u32>(32u)));
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-923f))), ~vec4<u32>(u_input.b << (_wgslsmith_sub_u32(1u, u_input.c) % 32u), firstTrailingBit(~u_input.c), 1u, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1119f, -1521f, 1058f, 812f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2056f, -1047f))), u_input.c ^ 1u, func_4(-417f, vec4<u32>(u_input.b, 4294967295u, u_input.c, u_input.b), Struct_3(global1.x, Struct_2(global0.a)), u_input.a)).x), Struct_3(max(global1.x, i32(-1i) * -1i), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1565f, 2767f)), vec4<u32>(1u, ~u_input.b, 4294967295u, u_input.c), Struct_3(u_input.e | global1.x, Struct_2(global0.a)), vec4<i32>(~14044i, 0i, select(global1.x, u_input.e, false), u_input.d.x))), vec4<i32>(~(-2147483647i), u_input.d.x, u_input.a.x, ~(~u_input.d.x)));
    global0 = func_4(-250f, vec4<u32>(~1u, 28031u, 0u, u_input.c), Struct_3(~(-(u_input.a.x << (u_input.c % 32u))), var_0), abs(select(u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, u_input.a) ^ reverseBits(u_input.a), vec4<bool>(true, true, true, true))));
    var var_1 = vec3<i32>(u_input.e, ~(~0i), global1.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1007f, -1132f) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(245f, -1049f)), _wgslsmith_f_op_f32(-1119f - -1000f)), vec2<f32>(-1262f, _wgslsmith_f_op_f32(floor(-326f))), select(select(vec2<bool>(var_0.a, global0.a), vec2<bool>(var_0.a, var_0.a), global0.a), select(vec2<bool>(global0.a, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a)), vec2<bool>(var_0.a, global0.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(372f, _wgslsmith_f_op_f32(118f + -1777f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(617f, -1475f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-196f, 421f)))))))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 132f, -161f, -563f) - vec4<f32>(var_2.x, -646f, -1543f, -277f)))))), var_2.x, 577f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-627f, 724f, var_2.x, _wgslsmith_div_f32(-2210f, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = Struct_2(~u_input.b >= (u_input.b >> (~_wgslsmith_clamp_u32(u_input.c, u_input.b, u_input.b) % 32u)));
    var var_2 = u_input.c;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.yy, min(select(reverseBits(vec4<u32>(u_input.b, u_input.b, 0u, 1u)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 66283u, u_input.c, u_input.b), vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.c))), vec4<bool>(global1.x != global1.x, all(vec2<bool>(var_1.a, global0.a)), var_1.a, true)), ~(~vec4<u32>(0u, u_input.b, 0u, 93958u)) & (select(vec4<u32>(u_input.c, u_input.b, u_input.b, 9873u), vec4<u32>(u_input.b, 0u, u_input.c, u_input.c), true) << (~vec4<u32>(1u, 51045u, 22876u, u_input.c) % vec4<u32>(32u)))), max(~_wgslsmith_div_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, global1.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.ww, global1.xy), global1.yx)) | global1.xx, 1030f, u_input.a);
}

