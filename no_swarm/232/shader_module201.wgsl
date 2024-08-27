struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<i32>(8048i, 9171i), vec3<i32>(1i, 2147483647i, 62051i), -19391i, false), vec3<u32>(1u, 4294967295u, 43483u));

var<private> global1: f32;

var<private> global2: vec3<i32> = vec3<i32>(28458i, 81202i, 2147483647i);

var<private> global3: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    global1 = -1084f;
    let var_0 = global0.a;
    var var_1 = (arg_1.c ^ -abs(_wgslsmith_sub_i32(var_0.c, var_0.a.x))) <= firstLeadingBit(~2147483647i);
    global1 = _wgslsmith_f_op_f32(max(970f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(467f, -120f, true))) - _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(f32(-1f) * -1070f))));
    global2 = -global0.a.b;
    return global0.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(max(-vec2<i32>(global0.a.b.x, 1i), vec2<i32>(38906i, 49071i)), arg_1.a.b, -global2.x, true));
    var var_1 = arg_3.x;
    var var_2 = 0i < _wgslsmith_sub_i32(8135i, -abs(global0.a.a.x));
    var var_3 = func_3(_wgslsmith_sub_i32(_wgslsmith_add_i32(countOneBits(9379i), var_0.a.a.x), global0.a.b.x), var_0.a, reverseBits(global0.b));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(ceil(-392f)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(f32(-1f) * -102f))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    global3 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    global2 = global0.a.b;
    var_0 = _wgslsmith_f_op_f32(124f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2322f) + _wgslsmith_f_op_f32(-arg_0))));
    global2 = _wgslsmith_sub_vec3_i32(global0.a.b, global0.a.b);
    return ~firstTrailingBit(17242u << (1u % 32u));
}

fn func_1() -> Struct_1 {
    global3 = select(func_4(_wgslsmith_div_f32(-1049f, 1840f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.b.yx, Struct_3(Struct_1(vec2<i32>(0i, -22991i), vec3<i32>(global0.a.a.x, 0i, 20778i), 1i, global0.a.d), vec3<u32>(1u, u_input.a.x, global0.b.x)), u_input.a.x, vec3<i32>(-7913i, global2.x, 38892i)))), all(select(vec3<bool>(global0.a.d, false, false), vec3<bool>(true, global0.a.d, true), true)))), !vec3<bool>(global0.a.d, true, global0.a.d)), firstTrailingBit(global0.b.x), global0.a.d);
    var var_0 = Struct_2(Struct_1(vec2<i32>(~(~2147483647i), max(-2518i, -global0.a.a.x)), -select(-global0.a.b, vec3<i32>(-2147483647i, -1i, global2.x), true), abs(_wgslsmith_div_i32(global0.a.c, -global2.x)), true));
    var var_1 = select(!select(select(vec4<bool>(false, false, var_0.a.d, true), vec4<bool>(false, false, global0.a.d, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(global0.a.d, global0.a.d, global0.a.d, var_0.a.d), select(vec4<bool>(false, false, global0.a.d, var_0.a.d), vec4<bool>(true, false, false, var_0.a.d), vec4<bool>(var_0.a.d, false, var_0.a.d, global0.a.d)), vec4<bool>(false, true, true, false)), true | var_0.a.d), select(vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 65046u), vec2<u32>(global0.b.x, u_input.a.x)) < 50059u, true, any(vec2<bool>(true, global0.a.d))), select(!(!vec4<bool>(global0.a.d, global0.a.d, var_0.a.d, global0.a.d)), !vec4<bool>(false, true, global0.a.d, false), vec4<bool>(!var_0.a.d, !var_0.a.d, select(false, false, false), false)), vec4<bool>(false, any(!vec2<bool>(var_0.a.d, true)), !global0.a.d, false)), false);
    var var_2 = u_input.a.x;
    let var_3 = ~firstTrailingBit(global0.a.c);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1326f * 419f))))));
    var var_0 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(global2.x, global0.a.b.x), 33884i);
    global0 = Struct_3(func_1(), global0.b);
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-255f - 200f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1518f, _wgslsmith_div_f32(-1000f, 1091f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(964f + 1386f) + _wgslsmith_f_op_f32(round(1000f))))))));
    global3 = func_3(firstLeadingBit(_wgslsmith_add_i32(~(-2147483647i), 1i)), global0.a, vec3<u32>(30650u >> (~4294967295u % 32u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~(~global0.b.x))).x | global0.b.x;
    let var_1 = min(abs(global0.a.b), vec3<i32>(global0.a.c, global0.a.c, 14699i)) ^ global0.a.b;
    var var_2 = vec3<u32>(1u, ~global0.b.x, select(~(~46773u), 34257u, true));
    var var_3 = global0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-781f, _wgslsmith_f_op_f32(abs(203f)))), 914f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-541f, -957f), 1f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-902f, -1000f, -838f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, 1210f, 1407f)), !global0.a.d))))), ~23903i);
}

