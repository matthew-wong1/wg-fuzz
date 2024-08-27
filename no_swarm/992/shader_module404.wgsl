struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_5;

var<private> global2: bool = true;

var<private> global3: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-832f, -1000f), vec2<f32>(1384f, -991f), vec2<f32>(-758f, -790f));

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<bool> {
    let var_0 = true;
    let var_1 = select(!vec3<bool>((var_0 & global1.a.b.b.a.x) && var_0, !(global1.a.a.x > global1.a.a.x), all(global1.a.b.b.a)), !vec3<bool>(_wgslsmith_f_op_f32(trunc(-1255f)) > _wgslsmith_f_op_f32(-global1.b), !all(vec3<bool>(true, true, true)), _wgslsmith_mod_u32(0u, global1.a.a.x) < 1u), true);
    var var_2 = Struct_5(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.a.b.a, global1.b, global1.a.a.x < global1.a.a.x)), global1.b))));
    var_2 = Struct_5(var_2.a, var_2.b);
    global0 = var_2.a.b.b.a.x;
    return select(select(global1.a.b.b.a, select(global1.a.b.b.a, !vec2<bool>(var_2.a.b.b.a.x, var_1.x), !select(vec2<bool>(var_0, false), global1.a.b.b.a, true)), any(!(!vec3<bool>(true, var_1.x, false)))), vec2<bool>(any(var_1.xz) && select(any(vec2<bool>(global1.a.b.b.a.x, false)), true, any(vec4<bool>(false, true, global1.a.b.b.a.x, global1.a.b.b.a.x))), !(~var_2.a.a.x > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.a.x, global1.a.a.x, var_2.a.a.x), u_input.b))), var_1.yz);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1)));
    global0 = true;
    global1 = Struct_5(Struct_3(vec2<u32>(~0u, ~global1.a.a.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 1000f) + _wgslsmith_f_op_f32(step(-738f, 155f))), Struct_1(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(max(759f, _wgslsmith_f_op_f32(min(263f, _wgslsmith_f_op_f32(-global1.b))))));
    global3 = array<vec2<f32>, 3>();
    var var_1 = Struct_1(!(!func_3()));
    return arg_1.x;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_3 {
    global3 = array<vec2<f32>, 3>();
    global2 = any(arg_2.a);
    global3 = array<vec2<f32>, 3>();
    var var_0 = !(!select(vec3<bool>(global1.a.b.b.a.x, arg_0 || true, select(global1.a.b.b.a.x, arg_0, arg_2.a.x)), !vec3<bool>(arg_0, arg_2.a.x, arg_2.a.x), global1.a.b.b.a.x | true));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(global1.a.b.a - -1743f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(10950u, 1u, 42495u, 1u), u_input.b), arg_1.zwy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - -208f))))), -1246f, _wgslsmith_f_op_f32(max(270f, 1662f)));
    return Struct_3(~(~countOneBits(vec2<u32>(4294967295u, 4294967295u))), Struct_2(-543f, Struct_1(select(vec2<bool>(false, true), func_3(), arg_2.a.x))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: u32) -> Struct_2 {
    global3 = array<vec2<f32>, 3>();
    let var_0 = Struct_4(!(!vec3<bool>(true || arg_1.b.b.a.x, true, false)), countOneBits(u_input.a.x));
    var var_1 = -91249i;
    let var_2 = false;
    var var_3 = global1.b;
    return func_1(var_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-global1.a.b.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1272f + _wgslsmith_f_op_f32(floor(global1.a.b.a))))), 253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-580f))))), func_1(true & (any(vec3<bool>(false, false, false)) & arg_1.b.b.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1043f, 1122f, arg_0.b, 531f), vec4<f32>(613f, arg_0.a.b.a, arg_0.b, -1011f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1356f, global1.a.b.a, -710f, arg_1.b.a))) + vec4<f32>(global1.b, _wgslsmith_f_op_f32(trunc(arg_1.b.a)), _wgslsmith_f_op_f32(287f - arg_0.a.b.a), -1572f)), global4[_wgslsmith_index_u32(arg_2.x, 17u)]).b.b).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(~0u), ~(~(~u_input.b.x)), _wgslsmith_mult_u32(16441u, 0u), u_input.b.x), u_input.b >> (countOneBits(u_input.b) % vec4<u32>(32u)));
    let var_1 = func_4(Struct_5(func_1(all(global1.a.b.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, -157f, 554f, global1.b)) - vec4<f32>(global1.b, -1543f, 573f, global1.a.b.a)), global1.a.b.b), -1892f), global1.a, ~u_input.b ^ vec4<u32>(~var_0.x, countOneBits(var_0.x), 218u, 4294967295u), ~var_0.x);
    let var_2 = select(select(vec4<bool>(all(vec4<bool>(global1.a.b.b.a.x, global1.a.b.b.a.x, var_1.b.a.x, true)) & var_1.b.a.x, true, global1.b < _wgslsmith_f_op_f32(abs(global1.b)), var_1.b.a.x), vec4<bool>(true, var_1.b.a.x && true, any(select(vec4<bool>(false, global1.a.b.b.a.x, var_1.b.a.x, false), vec4<bool>(true, true, true, true), var_1.b.a.x)), var_1.b.a.x), true), select(vec4<bool>(true, all(!vec2<bool>(global1.a.b.b.a.x, true)), true, true), vec4<bool>(any(vec3<bool>(global1.a.b.b.a.x, false, false)), global1.a.b.b.a.x && false, all(select(vec4<bool>(var_1.b.a.x, false, global1.a.b.b.a.x, false), vec4<bool>(true, global1.a.b.b.a.x, var_1.b.a.x, var_1.b.a.x), var_1.b.a.x)), (global1.b != 2049f) || !var_1.b.a.x), var_1.b.a.x), !vec4<bool>(abs(var_0.x) < var_0.x, 280u <= (69565u ^ var_0.x), any(func_4(Struct_5(global1.a, -1202f), Struct_3(vec2<u32>(var_0.x, 4294967295u), global1.a.b), u_input.b, 4294967295u).b.a), true));
    var var_3 = 1i;
    global1 = Struct_5(Struct_3(reverseBits(global1.a.a), func_1(func_3().x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, global1.a.b.a, var_1.a, var_1.a), vec4<f32>(572f, global1.a.b.a, var_1.a, -771f), var_1.b.a.x))), global4[_wgslsmith_index_u32(0u, 17u)]).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(478f)) - 1000f));
    global1 = Struct_5(global1.a, 325f);
    var var_4 = 46970i <= u_input.a.x;
    global4 = array<Struct_1, 17>();
    var var_5 = func_1(global1.a.b.b.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * 436f) * var_1.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, -633f, -2066f, global1.b) + vec4<f32>(global1.b, var_1.a, -1204f, var_1.a))), vec4<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(409f - 1148f), 619f, _wgslsmith_div_f32(global1.b, global1.a.b.a)))), var_2)), Struct_1(func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(-621f, _wgslsmith_f_op_f32(2717f - global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(592f + 644f) * _wgslsmith_f_op_f32(-1202f - var_1.a)), -1937f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f) - _wgslsmith_f_op_f32(min(var_1.a, global1.a.b.a)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(872f)) * _wgslsmith_f_op_f32(abs(var_5.b.a))), _wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1373f)) * -1506f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f * global1.a.b.a) - -1046f)))), u_input.a.x | -reverseBits(u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(455f + func_1(!var_2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.a, var_1.a, global1.a.b.a, 903f)), Struct_1(var_5.b.b.a)).b.a), _wgslsmith_f_op_f32(f32(-1f) * -498f), !(!(1u <= var_5.a.x)))), reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, 0i), firstLeadingBit(-22798i))));
}

