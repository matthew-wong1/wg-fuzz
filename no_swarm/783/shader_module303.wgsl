struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = reverseBits(vec4<u32>(31953u & arg_3.d.x, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, arg_3.d.x)), ~23974u, 1u));
    let var_1 = arg_2.a;
    let var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, global1.b.x, -1i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, global1.b.x, 1i, arg_3.b.x), vec4<i32>(22226i, arg_3.b.x, arg_3.b.x, arg_3.b.x))), arg_3.b.x), ~(-vec3<i32>(arg_0, 57649i, -1i)) | select(-vec3<i32>(arg_3.b.x, arg_1, arg_0), vec3<i32>(-9515i, global1.b.x, global1.b.x), arg_2.c.xyx), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, arg_3.b.x, arg_0) ^ vec3<i32>(1i, arg_0, -41727i), vec3<i32>(-35491i, 58328i, arg_3.b.x) & vec3<i32>(-2147483647i, 1i, -1i)));
    let var_3 = global0[_wgslsmith_index_u32(arg_3.d.x, 6u)];
    let var_4 = 6722u;
    return _wgslsmith_f_op_f32(-global1.a.b);
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_3(15155i, global1.b.x, Struct_2(global1.a, global1.c, vec4<bool>(global1.c, false, global1.c, true), vec3<bool>(true, true, true)), Struct_3(global1.a, -global1.b, false, ~u_input.c.xx))), _wgslsmith_f_op_f32(-115f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -287f))))), global1.b, false, global1.d);
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    var var_0 = global1.a.a;
    let var_1 = true;
    return Struct_3(global1.a, _wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(~global1.b, vec2<i32>(global1.b.x, -21080i)), firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-3580i, 17496i), global1.b)))), all(select(vec3<bool>(any(vec3<bool>(var_1, var_1, true)), select(true, false, false), !var_1), vec3<bool>(var_1, false & global1.c, var_1), ~global1.d.x != (u_input.d.x ^ u_input.c.x))), ~vec2<u32>(~1u, u_input.a.x));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    global0 = array<vec2<u32>, 6>();
    global1 = func_2();
    var var_0 = Struct_2(arg_1, true, !select(vec4<bool>(global1.c, all(vec2<bool>(global1.c, true)), true, func_2().c), vec4<bool>(true, true, global1.c, global1.c), !(!vec4<bool>(global1.c, true, true, false))), vec3<bool>(true, true, true));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 6>();
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(abs(-1212f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f * 243f) * global1.a.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) * _wgslsmith_f_op_f32(global1.a.b + -873f))), global1.a.a));
    var var_1 = func_2().d;
    let var_2 = !vec3<bool>(select(var_1.x | global1.d.x, var_0.d.x, var_0.c) >= var_1.x, all(vec2<bool>(var_0.c, var_0.c & false)), func_2().c);
    var var_3 = func_2();
    global1 = func_1(-964f, Struct_1(_wgslsmith_f_op_f32(195f - -209f), _wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-21827i, 2147483647i, Struct_2(var_3.a, false, vec4<bool>(true, var_0.c, var_2.x, var_0.c), var_2), Struct_3(Struct_1(-1719f, var_3.a.b), vec2<i32>(2147483647i, var_0.b.x), true, u_input.a.xy)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(823f, var_3.a.b))), _wgslsmith_div_f32(global1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(562f, var_3.a.a)) + -233f))));
}

