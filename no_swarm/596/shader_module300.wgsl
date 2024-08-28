struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(30190i, 42858i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(30161i, -21397i), vec2<i32>(0i, 45447i), vec2<i32>(1i, 12235i));

var<private> global2: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_5(u_input.e.x, any(vec3<bool>(false, true, global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1949f, _wgslsmith_f_op_f32(-687f + -285f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2124f)), _wgslsmith_f_op_f32(sign(619f)))) + _wgslsmith_f_op_f32(f32(-1f) * -174f)));
    var var_1 = _wgslsmith_sub_vec2_i32(arg_0, reverseBits(_wgslsmith_div_vec2_i32(~global2.yx, ~vec2<i32>(global2.x, 1i))));
    let var_2 = true;
    var var_3 = vec4<u32>(min(_wgslsmith_add_u32(~0u, var_0.a | u_input.d.x) << (~_wgslsmith_sub_u32(u_input.c, var_0.a) % 32u), u_input.e.x), 2920u, 4294967295u, 49228u >> (_wgslsmith_div_u32(85780u, u_input.a.x) % 32u));
    var var_4 = Struct_4(select(select(!select(vec4<bool>(var_0.b, global0.a, true, global0.a), vec4<bool>(var_2, false, false, var_2), vec4<bool>(var_0.b, arg_1, var_2, false)), !(!vec4<bool>(arg_1, false, true, false)), true), !select(!vec4<bool>(var_0.b, var_2, arg_1, var_0.b), select(vec4<bool>(var_2, true, global0.a, false), vec4<bool>(false, true, false, arg_1), false), !vec4<bool>(false, arg_1, true, true)), select(select(!vec4<bool>(arg_1, global0.c, true, global0.c), !vec4<bool>(var_0.b, false, var_2, true), true), vec4<bool>(true, all(vec3<bool>(false, var_0.b, false)), false, true), !(!vec4<bool>(true, true, arg_1, false)))), 0u, Struct_1(false || global0.c, _wgslsmith_dot_vec2_i32(arg_0, global1[_wgslsmith_index_u32(u_input.c, 6u)]), var_2), ~_wgslsmith_mod_vec2_u32(max(~vec2<u32>(32496u, u_input.a.x), u_input.a.zx), max(u_input.e, vec2<u32>(84914u, var_0.a) << (vec2<u32>(4294967295u, u_input.e.x) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) - _wgslsmith_f_op_f32(ceil(var_0.c)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    global2 = reverseBits(vec3<i32>(global2.x, min(2147483647i, reverseBits(global2.x)), -abs(global0.b)));
    global2 = ~vec3<i32>(2147483647i >> (u_input.a.x % 32u), 0i, -23964i);
    let var_0 = Struct_3(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-953f * _wgslsmith_f_op_f32(func_3(vec2<i32>(global2.x, 35936i), false)))))), Struct_2(select(arg_0.zzz, !arg_0.xyx, (true | arg_0.x) & any(vec2<bool>(true, arg_0.x))), _wgslsmith_mod_i32(-51i, min(-15710i, ~2147483647i))));
    let var_1 = Struct_1(all(!(!select(var_0.c.a.yx, arg_0.wx, arg_0.yw))), abs(abs(var_0.c.b)), all(vec3<bool>(all(vec4<bool>(false, false, global0.a, var_0.a.x)), any(arg_0.xxx), all(var_0.a.yz))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), -704f, _wgslsmith_f_op_f32(step(1000f, -272f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 586f) - -1147f)))));
    return _wgslsmith_div_u32(u_input.e.x, u_input.c);
}

fn func_1(arg_0: Struct_5) -> vec4<bool> {
    global2 = ~firstTrailingBit(vec3<i32>(global0.b, 33569i, ~(-1i >> (arg_0.a % 32u))));
    let var_0 = arg_0;
    var var_1 = firstLeadingBit(func_2(vec4<bool>(~u_input.a.x <= 31065u, all(select(vec4<bool>(true, global0.a, true, true), vec4<bool>(true, var_0.b, arg_0.b, true), vec4<bool>(var_0.b, false, false, true))), false, global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c + arg_0.c), 720f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1017f))))));
    global0 = Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_0.b)) || (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.x, global0.b, global2.x), select(vec4<i32>(u_input.b, u_input.b, global0.b, u_input.b), vec4<i32>(1i, global0.b, 0i, u_input.b), var_0.b)) != 21060i), i32(-1i) * -abs(global0.b), true);
    var var_2 = any(vec4<bool>((true & var_0.b) && (var_0.b == (arg_0.c < -187f)), !var_0.b || var_0.b, !any(vec2<bool>(true, true)), 25269i >= abs(_wgslsmith_mult_i32(u_input.b, u_input.b))));
    return vec4<bool>(!(!(!arg_0.b)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d)) - -1602f) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(338f, 1006f))), all(!select(vec2<bool>(global0.a, false), select(vec2<bool>(false, true), vec2<bool>(arg_0.b, true), vec2<bool>(true, global0.c)), true)), (max(-global0.b, global0.b) & reverseBits(0i)) > global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(false, all(!vec4<bool>(true, global0.a, true, global0.a))), vec2<bool>((global0.c || true) == global0.a, global0.a), vec2<bool>(any(vec3<bool>(global0.a, true, true)) && global0.c, u_input.a.x != u_input.c)), vec2<bool>(global0.c, all(vec4<bool>(false, global0.a, all(vec4<bool>(true, global0.a, true, global0.a)), global0.a))), !(!vec2<bool>(!global0.a, true)));
    global1 = array<vec2<i32>, 6>();
    global2 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(select(vec3<i32>(12351i, u_input.b, global2.x) >> (vec3<u32>(1u, 14750u, 51314u) % vec3<u32>(32u)), vec3<i32>(u_input.b, -5669i, global0.b), global0.a), vec3<i32>(1i, 0i, ~u_input.b));
    global2 = abs(~(-vec3<i32>(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(37903u, 6u)], vec2<i32>(u_input.b, u_input.b)), -2147483647i, -22490i)));
    var var_1 = Struct_4(select(!(!func_1(Struct_5(62101u, false, -544f, -1000f))), vec4<bool>(true & global0.c, false, true == var_0.x, !any(var_0)), func_1(Struct_5(reverseBits(133460u), all(vec4<bool>(true, var_0.x, false, global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1784f), -163f))), 4294967295u, Struct_1(all(vec2<bool>(false, true)), 0i, !global0.c), ~u_input.a.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, -1480f, 1919f, 1985f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-281f, -1000f, 333f, 119f), vec4<f32>(381f, -304f, 116f, 441f), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1518f, 458f), _wgslsmith_f_op_f32(f32(-1f) * -1313f), _wgslsmith_f_op_f32(floor(-343f)), _wgslsmith_f_op_f32(sign(1269f)))), func_1(Struct_5(_wgslsmith_sub_u32(u_input.e.x, u_input.c), var_0.x, -595f, _wgslsmith_f_op_f32(func_3(vec2<i32>(global0.b, 1i), false)))))), var_1.d);
}

