struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-45961i, -44859i, 1i, -1i);

var<private> global1: Struct_3 = Struct_3(vec4<f32>(161f, -2120f, -606f, -824f));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global3: u32 = 0u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(select(!select(global2.zzw, global2.xyw, false & global2.x), !(!select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, true, global2.x), false)), select(!select(vec3<bool>(false, false, true), global2.yyw, global2.xyw), vec3<bool>(!global2.x, true, all(vec3<bool>(false, global2.x, true))), vec3<bool>(all(global2.xwx), global2.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.x + -369f), _wgslsmith_f_op_f32(-682f + -562f), 445f > global1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1313f - global1.a.x), -1104f), _wgslsmith_f_op_f32(global1.a.x - -704f))), firstTrailingBit(-11623i ^ global0.x));
    var var_1 = Struct_4(Struct_1(global2.xwy, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(640f, global1.a.x, var_0.a.x))), _wgslsmith_f_op_f32(exp2(global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(570f, 1927f)), _wgslsmith_div_f32(var_0.b.x, -1086f)))), countOneBits(min(~(-21110i), _wgslsmith_add_i32(var_0.c, var_0.c)))), var_0.a);
    var var_2 = any(!vec2<bool>(all(!vec3<bool>(var_1.b.x, global2.x, false)), true && any(var_0.a)));
    global0 = vec4<i32>(-32944i, 29693i, ~reverseBits(~min(0i, var_1.a.c)), -var_1.a.c);
    return firstLeadingBit(var_0.c) <= -20770i;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = arg_1.a;
    var var_1 = u_input.c;
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_3.a.x, global1.a.x, var_2.b.x)))), select(select(!vec4<bool>(var_2.a.x, var_2.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(false, var_2.a.x, global2.x, false), 1008f < global1.a.x), !vec4<bool>(false, false, var_2.a.x, global2.x), vec4<bool>(func_3(u_input.a.xxw), 906f >= arg_3.a.x, true, 0i > var_2.c)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(-2147483647i, Struct_1(select(global2.wxw, arg_1.a, vec3<bool>(arg_1.a.x, global2.x, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(224f, -111f, -2066f, -2186f), arg_1.b)), ~(-23338i)), _wgslsmith_div_vec3_f32(arg_1.b.yww, _wgslsmith_f_op_vec3_f32(vec3<f32>(254f, global1.a.x, global1.a.x) + vec3<f32>(arg_2.a.x, arg_2.a.x, -246f))), Struct_3(vec4<f32>(-292f, 676f, arg_1.b.x, arg_2.a.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(trunc(-570f)), _wgslsmith_f_op_f32(450f + arg_2.a.x), _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-849f, global1.a.x, arg_2.a.x, -1049f))), _wgslsmith_f_op_vec4_f32(-arg_2.a)))))));
    let var_1 = Struct_2(arg_1);
    var var_2 = false;
    let var_3 = ~max(abs(83632u), ~_wgslsmith_dot_vec3_u32(u_input.a.xxx, u_input.b) | (u_input.c | reverseBits(4294967295u)));
    let var_4 = var_1.a;
    return Struct_4(arg_1, select(!select(var_4.a, select(vec3<bool>(false, var_4.a.x, global2.x), vec3<bool>(global2.x, false, true), global2.zzw), vec3<bool>(true, true, true)), !select(!vec3<bool>(arg_1.a.x, var_1.a.a.x, var_4.a.x), arg_1.a, true), reverseBits(var_3 >> (0u % 32u)) >= 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global0.x ^ min(global0.x, -3121i)), ~firstTrailingBit(~vec2<i32>(-1i, global0.x))), Struct_1(vec3<bool>(any(vec4<bool>(global2.x, global2.x, true, false)), global2.x, all(global2.yyx) || true), global1.a, ~_wgslsmith_sub_i32(-1442i, i32(-1i) * -25867i)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-647f, global1.a.x, 1483f, global1.a.x) * vec4<f32>(global1.a.x, global1.a.x, -576f, global1.a.x)) - vec4<f32>(global1.a.x, -1000f, global1.a.x, -196f)))));
    var var_1 = global1.a.yx;
    global0 = vec4<i32>(~global0.x, global0.x, ~(-global0.x), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(-(global0.x | 8298i))), -(-vec4<i32>(1i, var_0.a.c, 0i, 28341i) & reverseBits(-vec4<i32>(1i, global0.x, 1i, -1i))));
}

