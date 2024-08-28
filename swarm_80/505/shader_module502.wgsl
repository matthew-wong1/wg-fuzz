struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32;

var<private> global2: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(741f))));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1468f);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -239f)))), 1000f));
    global1 = -1400f;
    let var_2 = u_input.e;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(178f, -1370f)), _wgslsmith_f_op_f32(1287f + var_1), true))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c.x)))));
    var var_0 = Struct_1((global2.yxx | abs(firstLeadingBit(global2.xyz))) >> (~u_input.e.yzz % vec3<u32>(32u)), select(select(arg_1.a.b, !vec4<bool>(arg_1.c.b.x, true, global0.x, true), true), vec4<bool>(!(!global0.x), any(vec4<bool>(arg_1.a.b.x, false, arg_1.a.d, global0.x)), global0.x, arg_1.c.d), !vec4<bool>(!arg_1.b.d, false, global0.x && global0.x, arg_1.c.b.x && false)), _wgslsmith_f_op_vec4_f32(select(arg_1.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.a.c.x, arg_1.a.c.x, 374f))), true)), any(!(!select(arg_1.a.b.wyw, arg_1.b.b.yzx, false))));
    let var_1 = _wgslsmith_div_i32((max(max(u_input.a.x, -1i), abs(-2147483647i)) << (~1u % 32u)) >> (max(~23751u, 1u) % 32u), var_0.a.x);
    global0 = arg_1.a.b.www;
    let var_2 = arg_1;
    return var_2.c.c.x <= arg_0;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec4<bool>(!func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(2147483647i, vec4<i32>(u_input.a.x, u_input.a.x, 1i, 1i))))), Struct_2(Struct_1(vec3<i32>(1i, 959i, -34388i), arg_0.b, vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), global0.x), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec4<bool>(arg_0.d, false, false, arg_0.d), vec4<f32>(-223f, -1290f, -1124f, -1000f), true), Struct_1(arg_0.a, arg_0.b, vec4<f32>(-452f, arg_0.c.x, arg_0.c.x, arg_0.c.x), global0.x), u_input.b.xz)), true, any(global0.xx), arg_0.b.x);
    var var_1 = select(vec4<bool>(global0.x, true && all(select(arg_0.b, arg_0.b, vec4<bool>(true, global0.x, false, global0.x))), !all(select(var_0.zw, global0.zz, global0.x)), all(var_0.zxz)), vec4<bool>(any(vec3<bool>(select(arg_0.b.x, global0.x, true), true, true)), u_input.a.x >= -27545i, global0.x, true), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(17570u, u_input.b.x, u_input.c.x), vec3<u32>(u_input.d, u_input.d, 19616u))) == u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.c.ww))), _wgslsmith_f_op_vec2_f32(exp2(arg_0.c.xx))));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.x, 7049i, 0i, 746i), abs(vec4<i32>(-1i, -42171i, -38952i, -38533i))), vec4<i32>(1i, 1i, _wgslsmith_sub_i32(-26812i, _wgslsmith_clamp_i32(-21390i, global2.x, arg_0.a.x)) >> (u_input.d % 32u), arg_0.a.x));
    let var_4 = countOneBits(-37784i);
    return vec4<bool>(true, !((arg_0.c.x <= -151f) && !(arg_0.c.x == arg_0.c.x)), !any(!var_1.xw), any(select(select(!vec4<bool>(global0.x, global0.x, var_1.x, var_0.x), vec4<bool>(true, global0.x, global0.x, true), true), select(vec4<bool>(false, true, arg_0.d, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_1.x), func_4(var_2.x, Struct_2(arg_0, Struct_1(vec3<i32>(u_input.a.x, var_3.x, 1i), vec4<bool>(true, true, global0.x, global0.x), vec4<f32>(arg_0.c.x, 606f, var_2.x, var_2.x), false), arg_0, u_input.c))), !(var_0.x && false))));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    global2 = select(min(~firstTrailingBit(vec4<i32>(-2147483647i, -56620i, 28317i, 2147483647i)) & (vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, -1i, 0i)), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-34900i, 56280i, 1i, u_input.a.x), vec4<i32>(arg_1, arg_2.a.x, 47407i, 1i)))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, arg_2.a.x, global2.x, -45669i) & vec4<i32>(0i, global2.x, arg_1, 1204i), vec4<i32>(2147483647i, arg_2.a.x, -32100i, -2147483647i)) ^ -max(vec4<i32>(global2.x, arg_0.b.x, global2.x, arg_1), vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, arg_0.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-9262i, -19020i, arg_2.a.x, 0i) & _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -2147483647i, arg_1, -1i), vec4<i32>(-37060i, arg_2.a.x, arg_2.a.x, -1i)), vec4<i32>(arg_2.a.x, firstTrailingBit(global2.x), 3249i, ~u_input.a.x))), select(!func_2(Struct_1(vec3<i32>(-2147483647i, 26138i, arg_1), vec4<bool>(global0.x, true, arg_2.d, global0.x), arg_0.a, global0.x)), arg_2.b, vec4<bool>(!global0.x, global0.x, false, select(true, global0.x, false))));
    let var_1 = !arg_2.b.xx;
    let var_2 = -(~arg_2.a.x);
    let var_3 = !(!(!arg_2.b.zzx));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -520f)) * _wgslsmith_div_vec3_f32(arg_0.a.wyy, vec3<f32>(arg_0.a.x, arg_2.c.x, 151f))) + _wgslsmith_f_op_vec3_f32(-arg_0.a.xxw)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, arg_0.a.x, arg_2.c.x))) * _wgslsmith_div_vec3_f32(arg_2.c.zxw, vec3<f32>(arg_0.c, -652f, var_0))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, -1000f, arg_2.c.x)), _wgslsmith_div_vec3_f32(arg_2.c.yyx, arg_2.c.wxw))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec4<f32>(824f, 759f, 851f, -739f), global2.yzx, 1454f), u_input.a.x, Struct_1(global2.yyy, vec4<bool>(true, global0.x, false, true), vec4<f32>(322f, 970f, -1315f, -1153f), global0.x))))))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.yy));
}

