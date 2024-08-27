struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true), true), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), false), !select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(all(vec4<bool>(true, false, true, false)), true), any(vec3<bool>(false, false, true))));
    let var_1 = ~(-19769i);
    global1 = -_wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(max(vec3<i32>(global1.x, arg_1, global1.x) >> (vec3<u32>(4294967295u, 8551u, arg_2.b) % vec3<u32>(32u)), ~vec3<i32>(u_input.d, arg_1, -25034i)), firstTrailingBit(vec3<i32>(u_input.a.x, -1i, arg_1))), u_input.a >> (u_input.c.zwy % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.c.a, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1731f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_3.e.a))))), var_0.x)));
    global1 = u_input.a;
    return max(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, global1.x) | u_input.a, vec3<i32>(-3300i, u_input.a.x, 2147483647i))), arg_1, _wgslsmith_sub_i32(9463i, _wgslsmith_mult_i32(var_1, -2147483647i)) & ~var_1), u_input.a);
}

fn func_2() -> Struct_3 {
    global0 = array<vec2<u32>, 21>();
    global1 = func_3(~_wgslsmith_mult_vec2_u32(u_input.c.wz, global0[_wgslsmith_index_u32(13025u, 21u)]), ~(~countOneBits(countOneBits(-2147483647i))), Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-641f))))), ~(u_input.c.x ^ u_input.b.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-543f)) + _wgslsmith_f_op_f32(floor(-1378f)))), Struct_1(1f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) * _wgslsmith_f_op_f32(143f - 1154f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1232f, 282f))), u_input.c.x, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-251f + 129f), -888f, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-477f, -411f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)))));
    global1 = vec3<i32>(-25715i, -2147483647i, -1i);
    var var_0 = Struct_3((u_input.c.x > 1u) && all(vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), true)), ~u_input.b.yzx);
    global0 = array<vec2<u32>, 21>();
    return Struct_3(true, u_input.b.yww);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = var_0.a;
    return Struct_1(-1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), true));
    let var_1 = vec2<u32>(u_input.b.x, u_input.c.x);
    let var_2 = true;
    global1 = u_input.a;
    var var_3 = vec3<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2065f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, var_1.x), 13233u) << ((u_input.c.xz | _wgslsmith_add_vec2_u32(max(vec2<u32>(var_1.x, var_1.x), u_input.b.yw), ~u_input.c.zw)) % vec2<u32>(32u)), abs(global1.zy), var_3.xy, -593f);
}

