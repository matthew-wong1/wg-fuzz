struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3 = Struct_3(-19633i, vec3<i32>(27544i, 0i, 16294i), vec3<i32>(2147483647i, 22747i, i32(-2147483648)), true);

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<u32>, 1>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = firstLeadingBit((min(u_input.b, 0i ^ global1.b.x) << (87227u % 32u)) ^ ~min(reverseBits(-1i), u_input.b));
    let var_1 = Struct_3(u_input.a.x, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.b), min(vec2<i32>(2787i, -22773i), vec2<i32>(global1.c.x, 1i))), -vec2<i32>(global1.c.x, -72491i)), global1.a, u_input.b), max(max(-u_input.a.yxw, max(vec3<i32>(u_input.a.x, -731i, global1.b.x), vec3<i32>(-1i, u_input.a.x, global1.a)) ^ vec3<i32>(u_input.a.x, 949i, 23429i)), global1.b), true);
    global3 = array<vec2<u32>, 1>();
    global2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 851f) * vec2<f32>(1558f, global2.x)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1578f, global2.x) * vec2<f32>(1024f, -782f)))))))));
    return select(3763i, var_1.c.x, all(vec2<bool>(any(vec2<bool>(var_1.d, true)), true)));
}

fn func_2() -> Struct_3 {
    global0 = u_input.b;
    var var_0 = Struct_3(global1.c.x, vec3<i32>(~_wgslsmith_add_i32(countOneBits(u_input.b), u_input.a.x), u_input.b, -(~2147483647i)), max(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), vec3<i32>(-11633i, u_input.a.x, u_input.b)) >> (vec3<u32>(54680u, 37027u, 18112u) % vec3<u32>(32u)), -(vec3<i32>(global1.a, -2147483647i, 2147483647i) ^ vec3<i32>(-4191i, -1i, -2147483647i))), global1.c), global1.d);
    let var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(61842i, global1.c.x, func_3()), select(countOneBits(vec3<i32>(global1.c.x, 0i, global1.c.x)) | vec3<i32>(-809i, -1i, 1i), -(~var_0.b), !select(vec3<bool>(false, false, var_0.d), vec3<bool>(var_0.d, true, true), global1.d)));
    var var_2 = all(!vec3<bool>(global1.d, true, false)) || false;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-772f, -997f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(1644f + global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))));
    return Struct_3(1i, ~global1.c, countOneBits(~firstLeadingBit(~global1.b)), true);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1688f), -149f, global2.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(826f, 1600f, 528f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-579f, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)), arg_0.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-705f, global2.x, global2.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1149f, global2.x)))) + vec3<f32>(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(round(global2.x)))), global2.x)));
    global1 = func_2();
    let var_1 = arg_0.d;
    let var_2 = -global1.c.x;
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(4012f, global2.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2211f, -798f), var_0.yx, true))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(global2.x, global2.x)))))))));
    return func_2();
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 242f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-183f, global2.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1163f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 372f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(568f, -417f)), !select(global1.d, !global1.d, global1.d)));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global2.x, 1740f), 2151f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(310f, _wgslsmith_f_op_f32(ceil(global2.x))))));
    global1 = Struct_3(u_input.b, global1.c, -vec3<i32>(u_input.a.x, firstTrailingBit(30707i >> (arg_1.x % 32u)), countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, global1.b.x)))), !global1.d);
    global0 = -4092i;
    global1 = func_4(func_2());
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(232f, -471f, 930f, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -1906f, 816f, global2.x))), vec4<bool>(false, false, true, false))) - vec4<f32>(global2.x, 664f, _wgslsmith_f_op_f32(f32(-1f) * -2585f), global2.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, -953f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, global2.x, -1796f, global2.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(global2.x, 973f, 1074f, -1234f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, global2.x, -524f, global2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1707f, 188f, _wgslsmith_f_op_f32(f32(-1f) * -1578f), global2.x), vec4<f32>(123f, _wgslsmith_f_op_f32(-global2.x), 293f, global2.x)))));
    let var_1 = 4294967295u;
    var var_2 = Struct_4(Struct_3(_wgslsmith_div_i32(7124i & reverseBits(u_input.a.x), countOneBits(28926i)), vec3<i32>(49007i, global1.a, u_input.a.x), reverseBits(global1.b), true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(global1.b.x, vec2<u32>(0u, 6826u))), _wgslsmith_f_op_f32(-global2.x), global1.d)), global2.x, -195f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1113f, _wgslsmith_f_op_f32(-323f - var_0.x), var_0.x, _wgslsmith_div_f32(global2.x, var_0.x))), select(vec4<bool>(false, global1.d && true, false, global1.d), select(select(vec4<bool>(true, global1.d, global1.d, global1.d), vec4<bool>(global1.d, false, false, global1.d), global1.d), !vec4<bool>(true, global1.d, global1.d, true), false), !select(vec4<bool>(global1.d, true, true, global1.d), vec4<bool>(false, global1.d, true, global1.d), vec4<bool>(global1.d, global1.d, global1.d, false))))), _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.b.x, global1.b.x, 0i, 39134i), u_input.a, vec4<bool>(global1.d, true, global1.d, false)), -u_input.a), u_input.a.x), global1.c.x);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * global2.x) + _wgslsmith_f_op_f32(min(global2.x, -1108f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x))))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) - -637f), 539f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * -470f)) + -806f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-344f, var_0.x), global2.x, true))))));
}

