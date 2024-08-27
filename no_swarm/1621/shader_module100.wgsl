struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> vec2<bool> {
    var var_0 = 28157u;
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = Struct_2(abs(countOneBits(-(~global1.a))), global1.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1225f, -942f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.c.a.x, global1.c.a.x))))));
    return !(!(!select(!vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), global2.x)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global1 = Struct_2(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.wzw, u_input.d), arg_0.zyx), u_input.d.x, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1003f * -512f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(global1.b.x * 450f)) * _wgslsmith_f_op_vec3_f32(-global1.b)), global1.b)), global1.c);
    var var_0 = 1074f;
    global0 = true;
    var var_1 = u_input.e.wyy;
    let var_2 = Struct_2(select(firstLeadingBit(-51542i), _wgslsmith_sub_i32(~(-u_input.d.x), ~global1.a), all(vec4<bool>(true, global2.x, global2.x || false, -2431i == global1.a))), _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.a.x, -493f, global1.b.x)) * _wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(-712f, global1.c.a.x, -691f)))), global1.c);
    return var_2.c.a.x;
}

fn func_4(arg_0: vec4<f32>) -> i32 {
    global0 = !func_1().x;
    let var_0 = vec4<i32>(-max(-3591i, global1.a), 9164i, global1.a, u_input.d.x);
    global1 = Struct_2(~(-26667i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(arg_0.xwy))))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.a))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_0.xx)));
    let var_2 = !global2.x;
    return global1.a;
}

fn func_2() -> i32 {
    global1 = Struct_2(-26948i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.c.a.x - _wgslsmith_f_op_f32(global1.c.a.x + -1267f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(110f, 1000f)))), -699f)), global1.c);
    var var_0 = global1.c;
    var_0 = global1.c;
    global2 = select(vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.d.yz >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))) <= 21825i, global2.x & false), !(!vec2<bool>(true, global2.x)), vec2<bool>(true, true));
    var var_1 = -vec4<i32>(-11730i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -1i, 53302i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a, -1i, global1.a, u_input.d.x), vec4<i32>(17661i, global1.a, global1.a, u_input.d.x), vec4<i32>(-2147483647i, -1i, global1.a, 723i)))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.a, global1.a, global1.a, global1.a)) ^ ~vec4<i32>(0i, global1.a, -2147483647i, u_input.d.x), -firstLeadingBit(vec4<i32>(18234i, global1.a, u_input.d.x, 11232i))), func_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(global1.a, u_input.d.x, global1.a, global1.a))), 183f, var_0.a.x, global1.c.a.x)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(vec2<bool>(false, true), !func_1(), !(!func_1())), !select(select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x)), func_1(), all(func_1())), true);
    global0 = global2.x;
    let var_0 = func_2() << (_wgslsmith_clamp_u32(reverseBits(13977u), 1u, ~select(u_input.c, u_input.e.x, false) >> ((~1u ^ u_input.c) % 32u)) % 32u);
    var var_1 = vec2<u32>(u_input.c, 1u);
    var_1 = u_input.e.wx;
    var var_2 = reverseBits(~select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, var_1.x), u_input.e.xx >> (vec2<u32>(29057u, var_1.x) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(129340u), ~68347u), !(!global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32((vec4<i32>(var_0, 11571i, 14634i, -1i) ^ -vec4<i32>(-11639i, global1.a, global1.a, 1i)) << (~select(vec4<u32>(var_1.x, 48745u, 4294967295u, 1u), u_input.e, global2.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(10009i, -u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, var_0, 2147483647i, var_0), vec4<i32>(-11786i, u_input.d.x, -36825i, global1.a))), global1.a, -(~var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, 45895i, global1.a, var_0), vec4<i32>(-1i, var_0, 0i, u_input.b.x)) >> (4294967295u % 32u))), countOneBits(-_wgslsmith_add_vec3_i32(select(vec3<i32>(var_0, global1.a, -6367i), u_input.d, vec3<bool>(true, global2.x, global2.x)), select(u_input.d, u_input.d, global2.x))));
}

