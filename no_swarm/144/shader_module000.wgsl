struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1226f, 779f), true);

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(767f, 419f, -483f, 1059f), vec4<f32>(-882f, -223f, 446f, 175f), vec4<f32>(-1000f, 240f, -1121f, -1341f), vec4<f32>(2451f, -779f, -463f, 2151f), vec4<f32>(431f, -1320f, 1000f, 365f), vec4<f32>(-1411f, -2030f, -142f, -381f), vec4<f32>(1894f, 1459f, 431f, -1000f), vec4<f32>(-409f, -2199f, 238f, 2003f), vec4<f32>(-1000f, 462f, -1000f, 932f), vec4<f32>(-1000f, -121f, -1566f, 547f), vec4<f32>(1000f, 1082f, 290f, 1000f), vec4<f32>(806f, -768f, 1692f, 1000f), vec4<f32>(1236f, -601f, -858f, 605f), vec4<f32>(-638f, 375f, -507f, -125f), vec4<f32>(-1459f, -462f, -1000f, 265f), vec4<f32>(306f, -1000f, -179f, -903f), vec4<f32>(-1122f, 847f, 1614f, -535f), vec4<f32>(912f, -437f, 2273f, 599f), vec4<f32>(1114f, -1527f, 1447f, 1515f));

var<private> global3: u32 = 48174u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-275f, 1313f), global1.a, select(!arg_2, vec2<bool>(false, arg_0.b), true)))), arg_0.b);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), 1251f), arg_0.b);
    global1 = Struct_1(var_0.a, !all(vec4<bool>(any(vec3<bool>(arg_0.b, global1.b, arg_0.b)), true, true, true)));
    global1 = Struct_1(global1.a, global1.b);
    global1 = arg_0;
    return var_1.b;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.x, -460f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 763f))))) - vec2<f32>(arg_3.x, arg_3.x)), global1.b);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x)))), _wgslsmith_f_op_f32(ceil(510f)), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) + _wgslsmith_f_op_f32(-var_0.a.x)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1516f);
    var_0 = Struct_1(var_1.xy, !func_3(Struct_1(global1.a, true), u_input.a, vec2<bool>(!arg_1, false)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), var_2), vec2<f32>(-870f, _wgslsmith_f_op_f32(1772f * var_0.a.x))), vec2<f32>(var_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 + arg_3.x)))))), false);
    return u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    global2 = array<vec4<f32>, 19>();
    var var_0 = -1043f;
    let var_1 = arg_1;
    global0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(~0u, func_2(arg_2.b | arg_1.b, global1.b & false, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, 0i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 926f) - vec2<f32>(var_1.a.x, -1167f)))), u_input.a.wx);
    let var_2 = abs(_wgslsmith_clamp_vec2_i32(-abs(abs(vec2<i32>(arg_0, arg_0))), vec2<i32>(_wgslsmith_sub_i32(-arg_0, arg_0 << (u_input.a.x % 32u)), _wgslsmith_mod_i32(~2147483647i, arg_0)), select(countOneBits(firstLeadingBit(vec2<i32>(50137i, arg_0))), max(max(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-20534i, arg_0)), vec2<i32>(14242i, arg_0) & vec2<i32>(arg_0, arg_0)), arg_2.b)));
    return _wgslsmith_f_op_f32(-arg_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = vec3<bool>(all(select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0.b, global1.b), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, arg_1.b), false), true)), all(vec2<bool>(true, true)), global1.b & arg_0.b);
    global3 = ~(~5611u);
    global0 = _wgslsmith_add_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), u_input.a.yz) ^ ((u_input.a.yy << (u_input.a.yy % vec2<u32>(32u))) & ~vec2<u32>(global0.x, u_input.a.x)), u_input.a.wx ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global0.x), ~vec2<u32>(global0.x, global0.x)), var_0.yy), countOneBits(~countOneBits(u_input.a.zx)));
    global2 = array<vec4<f32>, 19>();
    let var_1 = select(~select(abs(vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, select(true, arg_0.b, arg_0.b), false)), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-85173i, -57205i, -20748i), vec3<i32>(1i, 1i, 1i))) << (min(reverseBits(u_input.a.yyz), _wgslsmith_mult_vec3_u32(u_input.a.ywz ^ u_input.a.wyx, vec3<u32>(u_input.a.x, 4294967295u, 20795u))) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -141f), -1028f, !arg_1.b)), arg_0.a.x) > _wgslsmith_f_op_f32(arg_0.a.x * arg_1.a.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(-arg_1.a)) * _wgslsmith_f_op_vec2_f32(round(global1.a))))), all(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var_0 = 29955u;
    global2 = array<vec4<f32>, 19>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(710f, -1584f)))))), _wgslsmith_f_op_vec2_f32(-global1.a))), true);
    var_0 = ~global0.x;
    var var_1 = u_input.a.x;
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a))), 1u <= u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a - global1.a) * _wgslsmith_f_op_vec2_f32(global1.a - global1.a)) * global1.a), false), _wgslsmith_f_op_f32(func_1(-_wgslsmith_add_i32(-11590i, 1i), Struct_1(global1.a, global0.x == _wgslsmith_clamp_u32(42532u, 37251u, 6628u)), Struct_1(global1.a, !(global1.a.x == -1003f)), ~global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec4<i32>(-2147483647i, -5721i, 0i, 1i))), 27501i, 1i);
}

