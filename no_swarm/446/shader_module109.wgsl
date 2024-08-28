struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: f32;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - 871f))) - 958f));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(47425i, min(global3.x, ~1i), -20493i, -2147483647i);
    global3 = abs(reverseBits(var_0.xz));
    var var_1 = vec2<i32>(~(_wgslsmith_dot_vec2_i32(select(var_0.wx, var_0.yy, true), _wgslsmith_div_vec2_i32(var_0.xx, var_0.xw)) | _wgslsmith_sub_i32(i32(-1i) * -1i, 0i | global3.x)), 1i);
    global1 = 0i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f - -316f) * _wgslsmith_f_op_f32(-arg_2.a))) < 658f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-686f)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> i32 {
    global1 = -13510i;
    let var_0 = true;
    let var_1 = global0.c.b;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-1564f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, 1410f, arg_1)), arg_2))))), vec2<bool>(true, global0.b.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.a.zy, vec2<f32>(1609f, -1166f), Struct_4(arg_1, vec2<bool>(false, true), vec2<f32>(-746f, arg_3), Struct_1(true), vec3<bool>(arg_0.a, global0.b.x, global0.b.x)), Struct_3(global0.a, vec2<bool>(false, arg_0.a), global0.c, global0.d))))))), Struct_1(false), !select(select(select(vec3<bool>(var_0, false, false), vec3<bool>(true, global0.c.b.x, var_1.x), arg_0.a), select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_0, var_0)), var_0), select(vec3<bool>(global0.d.a, var_1.x, var_0), select(vec3<bool>(arg_0.a, var_0, false), vec3<bool>(global0.d.a, var_0, false), vec3<bool>(var_1.x, global0.b.x, var_0)), !vec3<bool>(true, false, var_1.x)), !(false & var_1.x)));
    var var_3 = Struct_2(u_input.a, vec2<bool>(true, global0.b.x), arg_0);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1549f, 1099f, -224f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1405f, -1265f, 211f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -394f, -638f))))))))));
    let var_1 = global0.a.x;
    var var_2 = ~(~(-select(vec2<i32>(global0.c.a, global3.x) & vec2<i32>(global0.c.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(global0.c.a, u_input.a), vec2<i32>(u_input.a, global3.x)), vec2<bool>(global0.c.c.a, global0.b.x))));
    let var_3 = global0.c.c;
    global1 = -20646i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-var_2.x, i32(-1i) * -2147483647i, u_input.a)), vec3<i32>(1i, max(-global0.c.a, func_1(Struct_1(false), var_0.x, vec2<i32>(42203i, 37807i), -827f)), countOneBits(76115i))), vec4<u32>(~39590u, 1u | select(~1u, countOneBits(u_input.b), any(vec4<bool>(true, true, true, true))), global0.a.x, abs(1u)), -vec3<i32>(_wgslsmith_mod_i32(~global0.c.a, var_2.x), firstLeadingBit(_wgslsmith_mod_i32(global0.c.a, u_input.a)), 1i ^ _wgslsmith_mod_i32(2147483647i, u_input.a)), ~vec3<i32>(_wgslsmith_add_i32(2147483647i, ~global3.x), -firstLeadingBit(global0.c.a), countOneBits(_wgslsmith_clamp_i32(2712i, 0i, 2147483647i))), ~u_input.b);
}

