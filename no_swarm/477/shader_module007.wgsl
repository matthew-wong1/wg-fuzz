struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(1u, 46896u, 26034u, 4294967295u, 34885u, 5450u, 0u, 4294967295u);

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(783f, vec4<bool>(true, true, true, false)), Struct_4(-1256f, vec4<bool>(false, false, false, false)), Struct_4(-206f, vec4<bool>(true, true, false, true)), Struct_4(-1251f, vec4<bool>(false, false, false, true)), Struct_4(-516f, vec4<bool>(true, true, false, false)), Struct_4(1019f, vec4<bool>(true, false, true, false)), Struct_4(-2352f, vec4<bool>(true, false, false, false)), Struct_4(1587f, vec4<bool>(false, true, true, false)), Struct_4(-1410f, vec4<bool>(false, false, true, false)));

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_2(global2.b.zy << (u_input.b % vec2<u32>(32u)), u_input.c, Struct_1(_wgslsmith_div_u32(firstLeadingBit(4294967295u >> (global2.a % 32u)), 7125u), vec3<i32>(-1i) * -vec3<i32>(-22489i, arg_0, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1553f + arg_1))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + -858f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -1250f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c, var_0.c.c, var_0.c.c, -337f), vec4<f32>(322f, 960f, 322f, 1414f), arg_2.x)) - vec4<f32>(global2.c, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(955f - global2.c), global2.c))));
    var var_2 = reverseBits(vec2<u32>(var_0.c.a, 0u));
    global0 = array<u32, 8>();
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(var_1.wx, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.c)), _wgslsmith_f_op_f32(-arg_1)), var_1.yz)))));
    return ~min(var_2.x, global2.a);
}

fn func_2() -> Struct_5 {
    var var_0 = select(vec4<bool>(true, global4.x, all(global4.xyx) || global4.x, !(41757u <= global0[_wgslsmith_index_u32(func_3(global2.b.x, -1704f, vec4<bool>(false, false, true, false)), 8u)])), vec4<bool>(~(-39092i) == u_input.c, global4.x != false, global2.c > 676f, global4.x || !all(vec2<bool>(global4.x, global4.x))), !select(!select(vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(global4.x, true, global4.x, false), vec4<bool>(global4.x, true, global4.x, global4.x)), select(vec4<bool>(false, global4.x, false, global4.x), vec4<bool>(false, true, global4.x, false), select(false, global4.x, global4.x)), true));
    return Struct_5(select(select(var_0.wy, var_0.yy, any(!vec4<bool>(true, var_0.x, var_0.x, global4.x))), vec2<bool>(true, any(select(var_0.xxx, var_0.zyx, global4.zzw))), global4.wy), ~_wgslsmith_dot_vec3_i32(global2.b, abs(firstLeadingBit(vec3<i32>(-46027i, 2147483647i, 2147483647i)))), -(~u_input.c), Struct_2(-(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), global2.b.zx) | ~vec2<i32>(0i, 21297i)), global2.b.x, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a >> (0u % 32u), 8u)] & ~37734u, 8u)], ~vec3<i32>(-75i, -39917i, 2147483647i), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-global2.c))))));
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = func_2();
    let var_1 = global4.wxx;
    var_0 = func_2();
    var var_2 = any(!(!(!vec4<bool>(var_0.a.x, true, true, var_1.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + var_0.d.c.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0)))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-1664f, select(!select(!vec4<bool>(false, true, global4.x, true), !vec4<bool>(false, false, global4.x, true), !global4.x), vec4<bool>(any(vec3<bool>(global4.x, global4.x, true)), global4.x, global4.x, global4.x), true));
    let var_1 = ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(46940u, 8u)] | _wgslsmith_dot_vec2_u32(u_input.d, u_input.a), ~1u) >> (global2.a % 32u);
    var var_2 = vec2<i32>(reverseBits(firstTrailingBit(global2.b.x)), func_1(655f, -1232f));
    var var_3 = -20112i;
    var var_4 = firstTrailingBit(firstLeadingBit(~var_2.x));
    var var_5 = 57177u;
    let var_6 = Struct_2(global2.b.zz, -u_input.c, Struct_1(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(10234u, 1u), 27405u)), vec3<i32>(5605i, 1i, -96116i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c.a >> (0u % 32u), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(1i, 2147483647i, u_input.c, global2.b.x) | vec4<i32>(var_6.c.b.x, 2291i, -2147483647i, global2.b.x), firstLeadingBit(vec4<i32>(var_2.x, -2147483647i, -2147483647i, 1i))), vec4<i32>(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(var_6.c.b.xx, var_6.c.b.zy)), var_6.b, 26214i, _wgslsmith_div_i32(var_2.x >> (90602u % 32u), countOneBits(u_input.c)))), vec4<u32>(var_6.c.a, var_6.c.a, 4294967295u ^ global2.a, var_1 | select(var_1, 1u, var_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(448f, global2.c, 438f), vec3<f32>(-334f, 486f, global2.c)))))) * vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), var_6.c.c)));
}

