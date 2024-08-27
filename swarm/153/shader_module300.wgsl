struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, 2147483647i, -39503i), i32(-2147483648));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = Struct_1(global1.a, ~_wgslsmith_add_i32(-21553i, -_wgslsmith_add_i32(global1.a.x, -4843i)));
    global0 = global2.x;
    let var_0 = ~_wgslsmith_mult_vec4_i32(~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, global1.b, -15244i), vec4<i32>(global1.b, global1.b, global1.b, global1.a.x))), vec4<i32>(global1.a.x, -2147483647i, 2147483647i, -(global1.b & -75237i)));
    global1 = Struct_1(global1.a, abs(2147483647i));
    global1 = Struct_1(var_0.yyz, 27504i);
    return _wgslsmith_f_op_f32(ceil(269f));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_3(!select(!vec3<bool>(global2.x, false, global2.x), vec3<bool>(!global2.x, global2.x & true, any(vec2<bool>(global2.x, global2.x))), true));
    let var_1 = ~u_input.a;
    global0 = !global2.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1306f - -649f), -532f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1652f), -948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(322f, 3571f))) < _wgslsmith_f_op_f32(func_3()))));
    var_0 = Struct_3(select(var_0.a, var_0.a, var_0.a.x));
    return !(!var_0.a.xz);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global2 = func_2();
    global1 = Struct_1(vec3<i32>(global1.b, -(i32(-1i) * -global1.a.x), _wgslsmith_mult_i32(global1.b, ~_wgslsmith_dot_vec2_i32(global1.a.yz, vec2<i32>(global1.a.x, global1.a.x)))), _wgslsmith_sub_i32(global1.a.x, firstTrailingBit(-2147483647i) | _wgslsmith_add_i32(global1.b, firstTrailingBit(global1.b))));
    let var_0 = select(-global1.a.zx, max(select(select(~global1.a.yz, firstLeadingBit(vec2<i32>(-92039i, global1.a.x)), func_2()), _wgslsmith_mult_vec2_i32(global1.a.xz, firstTrailingBit(vec2<i32>(global1.a.x, 1i))), vec2<bool>(true, true)), global1.a.xx), arg_0.x);
    global2 = vec2<bool>(!(!any(vec4<bool>(arg_0.x, false, arg_0.x, true))), var_0.x != _wgslsmith_mod_i32(~global1.a.x, _wgslsmith_mod_i32(-2899i, global1.b)));
    global2 = select(!arg_0.xz, select(arg_0.zy, arg_0.yx, all(select(select(vec4<bool>(global2.x, false, arg_0.x, false), vec4<bool>(true, arg_0.x, global2.x, arg_0.x), true), vec4<bool>(false, true, arg_0.x, global2.x), true))), func_2());
    return Struct_2(_wgslsmith_div_f32(-1587f, _wgslsmith_f_op_f32(func_3())), Struct_1(~(min(global1.a, vec3<i32>(47409i, -1i, 43905i)) << (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u))), var_0.x), Struct_1(~global1.a, 28071i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global1 = Struct_1(global1.a, 46911i);
    let var_1 = func_1(vec3<bool>(all(select(vec2<bool>(true, global2.x), vec2<bool>(true, true), vec2<bool>(global2.x, true))), all(vec2<bool>(global2.x, global2.x)), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, var_1.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-683f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-411f - -976f)))));
    let var_3 = Struct_3(!select(!vec3<bool>(false, global2.x, global2.x), select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, true, global2.x), true), vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, false, global2.x)), true));
    global1 = func_1(!vec3<bool>(true, false, true | global2.x)).b;
    let var_4 = firstTrailingBit(abs(countOneBits(u_input.a | u_input.a) & ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(8340i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1425f * -968f), -1850f)));
}

