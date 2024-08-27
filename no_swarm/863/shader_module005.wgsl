struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<f32> = vec3<f32>(932f, 972f, 1056f);

var<private> global2: bool = false;

var<private> global3: Struct_3 = Struct_3(Struct_2(vec2<u32>(0u, 1u), vec2<bool>(true, true), 185f, vec3<u32>(4294967295u, 13764u, 36830u)), 0u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_4(u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2185f, _wgslsmith_div_f32(global3.a.c, global3.a.c)) + global1.zy)));
    var var_1 = Struct_4(-1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, var_0.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(trunc(global1.x)))));
    var var_2 = any(select(!arg_0.zyy, !vec3<bool>(any(vec4<bool>(global0.x, false, arg_0.x, global0.x)), !global3.a.b.x, true), vec3<bool>(all(global0.wxx), _wgslsmith_f_op_f32(-167f * global3.a.c) != _wgslsmith_f_op_f32(-var_1.b.x), false)));
    var var_3 = Struct_1(arg_0, vec2<i32>(reverseBits(var_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-4502i, -19916i), vec2<i32>(var_0.a << (4294967295u % 32u), -2147483647i))), !arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f + global1.x) + _wgslsmith_f_op_f32(-arg_2.x)))))), ~u_input.a);
    var_1 = var_0;
    return abs(vec4<u32>(~select(4294967295u, 1u, arg_0.x), global3.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33795u, var_3.e), vec3<u32>(global3.b, 4294967295u, 4051u)) % 32u), firstLeadingBit(~24381u), 22684u | global3.a.a.x) >> (~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 11417u, var_3.e, var_3.e), vec4<u32>(global3.a.d.x, var_3.e, u_input.a, u_input.c))) % vec4<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.c + global3.a.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.a.c * global3.a.c)))))));
    let var_1 = abs(arg_1.x);
    let var_2 = vec3<i32>(max(0i, 2147483647i), u_input.b.x, u_input.b.x | _wgslsmith_add_i32(abs(-2147483647i), ~min(27328i, 0i)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(global3.a.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.a.c, global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(1148f, 1107f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global3.a.c)))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global3.a.c)), global3.a.c);
    var var_4 = (i32(-1i) * -var_2.x) != -10002i;
    return _wgslsmith_mod_vec2_u32(((~arg_1.zw ^ global3.a.d.yx) << (vec2<u32>(4294967295u, arg_1.x) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(arg_1.zw, ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 46841u), vec2<u32>(u_input.c, var_1))), vec2<u32>(arg_1.x, ~_wgslsmith_sub_u32(36308u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, u_input.a, 2778u), arg_1))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: u32) -> Struct_4 {
    let var_0 = global3.a;
    var var_1 = ~var_0.a;
    let var_2 = func_4(any(!vec3<bool>(global0.x, true, global0.x)), func_3(select(!vec4<bool>(var_0.b.x, false, arg_0.x, global0.x), vec4<bool>(global3.a.b.x, var_0.b.x, false, true), select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global3.a.b.x, true, global3.a.b.x, true), true)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.x, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-20887i, arg_1.x, 1i), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -266f))), !select(vec4<bool>(global0.x, var_0.b.x, var_0.b.x, true), vec4<bool>(arg_0.x, var_0.b.x, false, false), vec4<bool>(false, true, arg_0.x, true)))) ^ var_0.a;
    let var_3 = abs(u_input.a);
    let var_4 = arg_2;
    return var_4;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    let var_0 = vec4<i32>(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(32182i, arg_2, 72205i, 1i) ^ vec4<i32>(arg_2, -2147483647i, -86962i, -2147483647i), vec4<i32>(arg_1.x, -41150i, -2147483647i, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, 0i, select(u_input.b.x, 2147483647i, global3.a.b.x)), countOneBits(~vec4<i32>(arg_1.x, u_input.b.x, -13478i, arg_1.x)))), _wgslsmith_mult_i32(-39507i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_1.x, -62808i), vec2<i32>(-2147483647i, -16600i)) >> (global3.a.d.zy % vec2<u32>(32u)), ~(-u_input.b))), -2147483647i);
    let var_1 = -1591f;
    var var_2 = abs(_wgslsmith_div_i32(1i, i32(-1i) * -32709i)) << (reverseBits(global3.a.a.x) % 32u);
    var var_3 = func_2(global3.a.b, ~(vec3<i32>(-1i) * -var_0.wzw), Struct_4(firstLeadingBit(~arg_1.x), global1.zz), 93127u);
    var_2 = arg_2;
    return 37139u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(global0.x, !all(global3.a.b), global0.x, true), u_input.b, !(global3.a.b.x && false) & true, _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.c, -916f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), -1433f), _wgslsmith_f_op_f32(-869f + _wgslsmith_f_op_f32(-global3.a.c)))), ~(~func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(643f, global1.x, -827f, global3.a.c), vec4<f32>(1000f, 161f, global3.a.c, 220f))), countOneBits(vec2<i32>(u_input.d, u_input.d)), u_input.b.x)));
    global2 = global0.x;
    let var_1 = Struct_3(Struct_2(global3.a.d.zx, vec2<bool>(all(vec4<bool>(true, global3.a.b.x, true, true)), var_0.a.x), var_0.d, global3.a.d), u_input.a);
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-419f, _wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(abs(global1.x))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2005f, 1487f, 1477f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_1.a.c, var_2.a.c) - vec3<f32>(-677f, var_1.a.c, -184f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-218f, 1157f, 2300f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(596f, var_0.d, var_0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -1640f, 512f) * vec3<f32>(var_0.d, 883f, var_1.a.c))))))));
    var var_4 = Struct_2(vec2<u32>(reverseBits(1u), var_1.a.d.x), vec2<bool>(!all(var_2.a.b), !(_wgslsmith_dot_vec2_u32(var_1.a.a, var_2.a.a) >= func_4(global3.a.b.x, vec4<u32>(var_2.b, u_input.c, var_1.b, global3.a.a.x)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-260f)) * -718f), max(global3.a.d, ~vec3<u32>(var_1.a.d.x | var_1.a.d.x, 1u, 1u)));
    let var_5 = global3.a.a;
    global2 = var_4.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~abs(~reverseBits(2147483647i)), var_2.a.c);
}

