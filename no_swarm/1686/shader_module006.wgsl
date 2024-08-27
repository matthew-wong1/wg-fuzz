struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(65688u, 78115u, 615u);

var<private> global1: Struct_4 = Struct_4(-1151f, true, true, Struct_1(true, vec3<i32>(2147483647i, 45327i, -7589i), 66254u, vec2<u32>(16698u, 0u)));

var<private> global2: vec3<f32>;

var<private> global3: Struct_3 = Struct_3(Struct_2(4294967295u, 1670f, Struct_1(true, vec3<i32>(74712i, 2147483647i, -9844i), 16198u, vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4294967295u, 1u), Struct_1(true, vec3<i32>(-7219i, i32(-2147483648), 16538i), 19919u, vec2<u32>(4294967295u, 74441u))), 69449i, vec3<f32>(-1920f, -228f, -108f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = select(vec2<bool>(global1.b, global3.a.e.a), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, global1.d.a), vec2<bool>(false, global3.a.e.a), true), false), select(!(!vec2<bool>(global1.d.a, global1.c)), select(vec2<bool>(false, false), select(vec2<bool>(true, global1.b), vec2<bool>(true, global1.b), true), select(global1.d.a, false, true)), any(vec4<bool>(false, false, true, global3.a.e.a))), select(!vec2<bool>(false, global3.a.c.a), select(vec2<bool>(global1.c, false), vec2<bool>(false, true), any(vec4<bool>(global3.a.e.a, global3.a.e.a, global3.a.e.a, false))), !vec2<bool>(true, global1.c))), false);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), _wgslsmith_f_op_f32(f32(-1f) * -903f)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, var_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c) + _wgslsmith_f_op_vec3_f32(vec3<f32>(605f, global1.a, global2.x) - global3.c)), global3.c), !(!select(true, true, global3.a.e.a)))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1240f, global3.a.b)), _wgslsmith_f_op_f32(global1.a - 1860f)) * 1f) * _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f + global3.c.x))))), -322f);
    let var_2 = !select(vec3<bool>(all(!vec3<bool>(var_0.x, false, false)), true, false), !(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, false, global3.a.c.a), var_0.x)), !(!vec3<bool>(false, global3.a.e.a, var_0.x)));
    return _wgslsmith_clamp_vec3_i32(~abs(select(vec3<i32>(global3.b, 21891i, 1i), -vec3<i32>(global3.a.c.b.x, 2147483647i, -9177i), var_0.x)), ~firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(global3.b, global1.d.b.x, 60743i), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, 0i, global3.a.c.b.x, global3.a.c.b.x), vec4<i32>(global3.a.c.b.x, -23913i, 28360i, -1i)), -2147483647i)), vec3<i32>(global1.d.b.x, firstTrailingBit(global1.d.b.x), _wgslsmith_sub_i32(-2147483647i, reverseBits(-1i))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = -2147483647i;
    var var_1 = global3.a.c.c;
    let var_2 = func_3();
    var var_3 = _wgslsmith_clamp_vec3_i32(var_2, -global3.a.e.b, _wgslsmith_div_vec3_i32(~(-(~vec3<i32>(2147483647i, global3.a.c.b.x, arg_0.x))), func_3()));
    var_0 = -var_2.x;
    return !select(select(vec4<bool>(global1.d.a, true, select(global3.a.c.a, arg_2.x, arg_3.a), true), !vec4<bool>(true, arg_2.x, true, true), select(!vec4<bool>(true, arg_2.x, false, true), !vec4<bool>(false, false, arg_3.a, false), vec4<bool>(false, global3.a.e.a, global3.a.c.a, true))), vec4<bool>(!(!global3.a.c.a), !all(vec3<bool>(global3.a.c.a, true, arg_3.a)), any(arg_2), true), !select(false != global1.c, global1.d.a, global1.d.a));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    var var_0 = ~(firstTrailingBit(vec3<u32>(u_input.a.x, reverseBits(global0.x), u_input.a.x >> (44862u % 32u))) >> (~max(~vec3<u32>(71427u, global3.a.d.x, 30416u), _wgslsmith_div_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u)));
    var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(firstLeadingBit(abs(firstLeadingBit(u_input.a))), vec3<u32>(global3.a.a, u_input.a.x, ~34348u)));
    let var_1 = min(_wgslsmith_clamp_i32(-(global3.a.e.b.x << (var_0.x % 32u)), (2147483647i | global3.a.c.b.x) << (global3.a.e.d.x % 32u), global1.d.b.x), 58735i ^ _wgslsmith_div_i32(select(global3.a.e.b.x, -1i, global3.a.e.a), max(-5282i, global3.a.e.b.x))) << (~(global0.x ^ countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(29091u, 3218u), u_input.a.xx))) % 32u);
    let var_2 = arg_2.xwy;
    let var_3 = global3.a.e.b.x;
    return _wgslsmith_f_op_f32(global2.x + global2.x);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(all(vec3<bool>(global3.a.c.a, global1.c, false)) == true, any(func_2(vec2<i32>(-17960i, -20439i), vec3<u32>(4294967295u, arg_0, u_input.a.x), vec3<bool>(false, true, global3.a.e.a), global3.a.c)), !select(vec4<bool>(false, global1.c, false, global1.d.a), vec4<bool>(true, true, global1.d.a, false), global1.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))))), true, true, Struct_1(true, vec3<i32>(global3.a.e.b.x >> (50375u % 32u), 60500i, global1.d.b.x), _wgslsmith_sub_u32(global1.d.c, ~(~1534u)), global0.yx));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1516f);
    var var_1 = Struct_2(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 17805u, 27005u, 0u) >> (vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x) % vec4<u32>(32u))), reverseBits(~vec4<u32>(global1.d.c, global0.x, 0u, global0.x))) << (u_input.a.x % 32u), -966f, Struct_1(global3.a.e.a, ~(-min(global3.a.c.b, global3.a.e.b)), ~(~1u), (~global0.zx >> (_wgslsmith_add_vec2_u32(global3.a.e.d, vec2<u32>(u_input.a.x, global0.x)) % vec2<u32>(32u))) >> (u_input.a.zx % vec2<u32>(32u))), u_input.a.xx, global1.d);
    return vec3<u32>(_wgslsmith_add_u32(1u, ~u_input.a.x), reverseBits(min(30162u, 72217u)), global1.d.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global3.a.d.x, 1u, global0.x & min(49555u, global3.a.d.x)) & _wgslsmith_mod_vec3_u32(func_1(8541u) >> (~u_input.a % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(global1.d.c, global0.x, 72563u)) | vec3<u32>(0u, u_input.a.x, 1u)), -abs(-(~1i)), _wgslsmith_f_op_vec2_f32(trunc(global2.yx)), firstLeadingBit(-10534i));
}

