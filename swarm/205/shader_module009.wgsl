struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: vec3<u32>;

var<private> global2: vec2<f32> = vec2<f32>(-315f, 1693f);

var<private> global3: array<vec3<u32>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    global0 = array<vec4<f32>, 19>();
    var var_0 = select(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 4912i), -vec2<i32>(u_input.c, 1i), select(u_input.b.zz, u_input.b.yx, arg_0)), u_input.b.zx, arg_0) | max(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), u_input.b.yz), u_input.b.x), reverseBits(min(_wgslsmith_div_vec2_i32(u_input.b.zx, vec2<i32>(u_input.c, 0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-9616i, -1i), u_input.b.yx))));
    var var_1 = Struct_2(Struct_1(var_0.x, arg_1));
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1210f, var_1.a.b), _wgslsmith_f_op_f32(601f - var_1.a.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-144f * var_1.a.b) - global2.x), arg_1)), all(select(vec4<bool>(arg_0.x != false, any(vec4<bool>(false, arg_0.x, true, false)), !arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, false, true))), vec4<bool>(true, true, all(vec2<bool>(arg_0.x, true)), arg_0.x), !vec4<bool>(false, arg_0.x, true, false)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 1503f)), _wgslsmith_div_f32(1094f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_1) - _wgslsmith_f_op_f32(var_1.a.b * var_1.a.b))))), _wgslsmith_f_op_f32(-var_1.a.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> f32 {
    global1 = u_input.a.zyz;
    global3 = array<vec3<u32>, 23>();
    var var_0 = arg_3;
    global0 = array<vec4<f32>, 19>();
    let var_1 = global2.x;
    return -1847f;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_4(-_wgslsmith_add_i32(~_wgslsmith_clamp_i32(-20784i, arg_0.a.a.a, -2147483647i), -u_input.b.x ^ _wgslsmith_mod_i32(638i, u_input.d)), vec2<u32>(global1.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 0u, arg_1.x) << (0u % 32u), ~abs(arg_1.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-680f + -263f)))) + _wgslsmith_f_op_f32(abs(global2.x))));
    var var_2 = arg_0;
    global0 = array<vec4<f32>, 19>();
    global3 = array<vec3<u32>, 23>();
    return _wgslsmith_f_op_f32(func_4(Struct_4(var_2.a.a.a, arg_1.zy), !vec3<bool>(-52874i > var_0.a, var_2.c, any(!vec4<bool>(true, arg_0.c, var_2.c, false))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, arg_0.c), global2.x, vec4<u32>(39663u, arg_1.x, 1u, global1.x))), 332f, -1255f) + vec3<f32>(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global2.x, global2.x))))), countOneBits(_wgslsmith_div_vec3_i32((vec3<i32>(-47414i, u_input.d, arg_0.a.a.a) >> (u_input.a.yxy % vec3<u32>(32u))) ^ vec3<i32>(-1i, 1i, 1i), -vec3<i32>(var_2.a.a.a, var_2.a.a.a, var_0.a)))));
}

fn func_5(arg_0: vec3<f32>) -> vec4<i32> {
    global0 = array<vec4<f32>, 19>();
    var var_0 = true;
    var var_1 = select(u_input.a.yxz, ~global3[_wgslsmith_index_u32(19615u << (u_input.a.x % 32u), 23u)], vec3<bool>(true || select(all(vec3<bool>(false, false, false)), u_input.d >= 13843i, true), true, select(true, true, !(48980u > u_input.e.x))));
    global0 = array<vec4<f32>, 19>();
    return vec4<i32>(u_input.c, countOneBits(55014i), ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.d, u_input.c, -17437i), u_input.c), 6296i) ^ vec4<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -55351i, u_input.b.x, -30738i), vec4<i32>(-25875i, u_input.b.x, 2147483647i, 37421i)) << (u_input.a.x % 32u)), firstTrailingBit(-u_input.b.x) ^ 1i, _wgslsmith_sub_i32(min(_wgslsmith_div_i32(u_input.d, 0i), _wgslsmith_mod_i32(u_input.d, u_input.d)), abs(u_input.d)), -2147483647i);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(-(vec4<i32>(68034i, -56367i, -2147483647i, u_input.b.x) & vec4<i32>(59811i, -24407i, u_input.d, 28499i)), func_5(vec3<f32>(global2.x, _wgslsmith_div_f32(-2355f, global2.x), _wgslsmith_f_op_f32(func_2(Struct_5(Struct_2(Struct_1(u_input.b.x, -1000f)), global2.x, true), vec3<u32>(global1.x, global1.x, global1.x)))))) & vec4<i32>(0i, u_input.b.x, _wgslsmith_mod_i32(i32(-1i) * -u_input.b.x, u_input.c), u_input.c);
    var var_1 = select(~vec3<u32>(countOneBits(select(1u, 7871u, false)), ~_wgslsmith_mod_u32(11639u, global1.x), _wgslsmith_add_u32(~36007u, min(81952u, 1u))), min(select(~firstLeadingBit(vec3<u32>(u_input.a.x, 28538u, global1.x)), abs(vec3<u32>(4294967295u, 25565u, 0u)), vec3<bool>(true, true, any(vec2<bool>(false, false)))), ~vec3<u32>(abs(u_input.a.x), ~global1.x, ~u_input.a.x)), false);
    var var_2 = true;
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(-(~(1i ^ u_input.b.x)), 2147483647i), var_0.x, ~(-1i));
    let var_4 = Struct_1(~(-abs(min(2147483647i, -2147483647i))), 1003f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-_wgslsmith_mult_i32(-_wgslsmith_clamp_i32(u_input.d, u_input.b.x, u_input.b.x), abs(2147483647i)), min(_wgslsmith_div_vec2_u32(global1.yx, u_input.a.xx), countOneBits(global1.xx)));
    var var_1 = Struct_3(Struct_1(28949i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), vec3<bool>(true && any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), true, select(true, false, false)), _wgslsmith_mod_vec2_i32(u_input.b.yy, u_input.b.xx));
    global2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b, var_1.a.b) + vec2<f32>(global2.x, var_1.a.b)))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, var_1.a.b)) * var_1.a.b), -1999f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.b, 1912f), vec2<f32>(-146f, 1032f), vec2<bool>(var_1.b.x, false))))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(751f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-228f)))));
    global0 = array<vec4<f32>, 19>();
    var_1 = Struct_3(Struct_1(~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.c, -2147483647i)), vec2<i32>(-2147483647i, u_input.c) | vec2<i32>(-28362i, u_input.b.x)), var_1.a.b), select(!var_1.b, var_1.b, !vec3<bool>(!var_1.b.x, true, !var_1.b.x)), ~select(vec2<i32>(firstTrailingBit(var_0.a), 0i), max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.a, var_0.a), var_1.c), -vec2<i32>(u_input.c, u_input.b.x)), vec2<bool>(true, var_1.b.x)));
    var var_2 = vec4<bool>(!any(var_1.b.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))) < -800f, true, !(!all(!vec4<bool>(var_1.b.x, true, false, true))));
    let var_3 = _wgslsmith_f_op_f32(1000f * 238f);
    var var_4 = func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(211f, 355f, var_1.a.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -462f, var_1.a.b))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-148f - 166f), _wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(var_1.a.b * -1507f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(84362i, i32(-1i) * -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0, vec3<bool>(false, true, var_1.b.x), vec3<f32>(496f, 176f, 863f), var_4.zzw)) + _wgslsmith_f_op_f32(ceil(var_3))))), firstTrailingBit(u_input.d), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, 3316i, 13881i) & -var_4.xwx, -vec3<i32>(-43825i, u_input.c, var_0.a) << (vec3<u32>(var_0.b.x, 1u, 0u) % vec3<u32>(32u))), -u_input.d, ~(-31646i), -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_0.a, var_0.a, 0i)), u_input.b)), firstTrailingBit(-(~_wgslsmith_mod_i32(0i, var_1.c.x))));
}

