struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1397f;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 79987u);

var<private> global2: array<i32, 9>;

var<private> global3: Struct_2 = Struct_2(Struct_1(-418f, 0i), vec2<bool>(true, true), vec2<f32>(-1000f, -1655f), vec2<bool>(false, true), 1440f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.c + _wgslsmith_f_op_vec2_f32(-global3.c)), vec2<f32>(-1307f, _wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(max(343f, 1049f)))))) - global3.c);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = !((~(~84551u) | (_wgslsmith_div_u32(global1.x, 1u) >> (global1.x % 32u))) <= _wgslsmith_mult_u32(4294967295u, 1u >> (~u_input.e.x % 32u)));
    let var_1 = Struct_2(global3.a, select(!global3.d, global3.b, vec2<bool>(arg_2, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_f32(min(-814f, _wgslsmith_f_op_f32(arg_3.a + global3.a.a)))), -515f), vec2<bool>(all(!vec3<bool>(arg_2, false, global3.d.x)) || !(false || arg_0), !arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.c.x)))))));
    let var_2 = Struct_1(-425f, global3.a.b);
    var var_3 = vec3<u32>(~(~(~(~1479u))), 1u, ~(~firstTrailingBit(_wgslsmith_clamp_u32(20254u, 4294967295u, global1.x))));
    let var_4 = var_3.x;
    return vec2<bool>(false, any(select(select(vec3<bool>(arg_2, false, global3.d.x), vec3<bool>(var_1.d.x, true, var_1.b.x), false), select(vec3<bool>(false, true, arg_0), vec3<bool>(true, global3.d.x, arg_0), vec3<bool>(true, true, true)), !arg_2)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(~abs(~global3.a.b), _wgslsmith_mult_u32(min(countOneBits(1u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, u_input.e.x, global1.x), _wgslsmith_div_u32(global1.x, 0u))), 36180u), global3.a, func_4(global3.b.x, _wgslsmith_f_op_vec2_f32(func_3()), any(vec4<bool>(false, false, false, global3.d.x)), global3.a));
    var var_1 = ~(select(u_input.e.x, 1u, global3.b.x) ^ global1.x);
    global1 = _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 1u), firstTrailingBit(~(~u_input.e.zy)));
    var var_2 = reverseBits(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(global3.a.b, global3.a.b, -1i, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<i32>(2147483647i, 20735i, global2[_wgslsmith_index_u32(4294967295u, 9u)], 5068i), global3.d.x) | (vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(18169u, 9u)], u_input.b, var_0.a, var_0.a)), -vec4<i32>(1i, select(17113i, 72077i, true), select(var_0.c.b, var_0.c.b, var_0.d.x), global3.a.b | 1i)));
    var var_3 = Struct_1(-778f, -global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(37271u, 0u, 29896u, var_0.b) << ((vec4<u32>(12585u, 938u, var_0.b, 29120u) >> (vec4<u32>(26085u, var_0.b, global1.x, 20816u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(var_0.b, u_input.e.x, 32039u, u_input.e.x)), 9u)]);
    return Struct_2(global3.a, !select(!var_0.d, global3.d, !(-7286i > var_0.c.b)), global3.c, func_4(!var_0.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.a, -1000f))), global3.c)) - _wgslsmith_div_vec2_f32(global3.c, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-209f, -1934f))))), true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.a))), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.a + var_0.c.a), _wgslsmith_f_op_f32(round(453f)))), _wgslsmith_f_op_f32(ceil(1150f)))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global0 = -2002f;
    var var_0 = -338f;
    var var_1 = func_2();
    var var_2 = true;
    var_2 = true;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(vec3<bool>(true, all(vec3<bool>(global3.b.x, false, global3.b.x)), any(!vec3<bool>(global3.b.x, global3.b.x, true))), select(!(!vec3<bool>(global3.b.x, true, global3.d.x)), !vec3<bool>(global3.b.x, global3.b.x, global3.b.x), !(!vec3<bool>(true, global3.b.x, global3.d.x))), select(!vec3<bool>(true, true, global3.d.x), vec3<bool>(true, !global3.b.x, true), select(vec3<bool>(false, false, global3.b.x), select(vec3<bool>(global3.d.x, global3.b.x, false), vec3<bool>(false, global3.d.x, global3.d.x), vec3<bool>(global3.b.x, global3.d.x, global3.d.x)), global3.b.x))));
    let var_1 = func_1(vec3<bool>(all(vec3<bool>(func_4(var_0.b.x, global3.c, false, Struct_1(790f, -1i)).x, !var_0.d.x, u_input.e.x < global1.x)), true, !any(select(vec4<bool>(global3.b.x, var_0.d.x, global3.d.x, var_0.d.x), vec4<bool>(true, true, var_0.d.x, false), vec4<bool>(var_0.b.x, global3.d.x, global3.d.x, false)))));
    let var_2 = max(~(firstLeadingBit(vec2<i32>(33539i, var_0.a.b) ^ u_input.c) & _wgslsmith_clamp_vec2_i32(-vec2<i32>(global2[_wgslsmith_index_u32(global1.x, 9u)], 3394i), u_input.c, abs(u_input.a.yy))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(~var_1.a.b, var_1.a.b), u_input.c, vec2<i32>(-42019i, firstTrailingBit(var_0.a.b)))));
    global0 = -356f;
    let var_3 = Struct_2(func_2().a, !var_1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(956f, _wgslsmith_f_op_f32(-145f * var_0.e)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a.a, var_1.e))))), !func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e * var_0.c.x), -832f)))));
    global1 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~u_input.e.x, 0u), 4294967295u), vec2<u32>(_wgslsmith_div_u32(1u, 46058u) | _wgslsmith_mod_u32(global1.x, 0u), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.e.x, global1.x), vec4<u32>(global1.x, 1u, 4294967295u, global1.x))))), ~(~abs(vec2<u32>(global1.x, u_input.e.x)) ^ vec2<u32>(u_input.e.x, 1u)));
    let var_4 = !vec3<bool>(all(select(vec3<bool>(false, var_1.d.x, global3.b.x), select(vec3<bool>(true, true, var_0.b.x), vec3<bool>(true, false, var_3.d.x), global3.d.x), all(var_3.b))), global3.b.x, func_4(true, var_3.c, true, var_0.a).x & all(select(vec4<bool>(global3.d.x, true, global3.d.x, var_3.d.x), vec4<bool>(true, false, false, var_3.d.x), var_3.d.x)));
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(min(1u, global1.x));
}

