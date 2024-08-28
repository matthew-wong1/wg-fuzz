struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(786f, 1454f, -1714f, -930f);

var<private> global1: vec4<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = !select(select(!vec4<bool>(arg_0.a.c.x, arg_0.a.b.x, true, arg_0.a.b.x), vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, -1504f > global0.x, arg_0.a.a < u_input.e), true), select(select(vec4<bool>(true, true, false, arg_0.a.b.x), !vec4<bool>(true, true, arg_0.a.b.x, arg_0.a.c.x), true), select(!vec4<bool>(false, true, true, arg_0.a.b.x), vec4<bool>(false, true, arg_0.a.c.x, false), arg_0.a.c.x & arg_0.a.b.x), vec4<bool>(select(arg_0.a.c.x, arg_0.a.b.x, false), arg_0.a.b.x, !arg_0.a.c.x, true)), arg_0.a.c.x);
    return !(!vec2<bool>((38856u > arg_0.a.a) & (global1.x < u_input.a), var_0.x));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_i32(-42125i, global1.x);
    var var_1 = Struct_1(u_input.e, vec3<bool>(true, false, true), select(select(func_3(Struct_2(Struct_1(1u, vec3<bool>(false, false, true), vec2<bool>(true, false))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_0, u_input.c.x, u_input.d), vec4<i32>(var_0, -74060i, -14830i, u_input.b)), ~vec2<u32>(56554u, 4294967295u)), func_3(Struct_2(Struct_1(0u, vec3<bool>(true, true, true), vec2<bool>(true, true))), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, -1i, 0i, var_0), vec4<i32>(-2147483647i, global1.x, global1.x, 14697i)), max(vec2<u32>(u_input.e, 1u), vec2<u32>(18377u, u_input.e))), select(func_3(Struct_2(Struct_1(3959u, vec3<bool>(false, false, false), vec2<bool>(false, false))), vec4<i32>(-10505i, -53777i, -27212i, var_0), vec2<u32>(60587u, 5432u)), func_3(Struct_2(Struct_1(u_input.e, vec3<bool>(true, false, true), vec2<bool>(false, false))), vec4<i32>(global1.x, u_input.d, 2147483647i, u_input.a), vec2<u32>(u_input.e, 1u)), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(false, false))), vec2<bool>(true, select(true, false, false)), vec2<bool>(true, true)), vec2<bool>(true | select(false, false, true), func_3(Struct_2(Struct_1(u_input.e, vec3<bool>(true, false, false), vec2<bool>(true, true))), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, u_input.c.x, global1.x), vec4<i32>(36612i, -2147483647i, global1.x, 2147483647i)), ~vec2<u32>(u_input.e, 0u)).x)));
    let var_2 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - -126f))), -1555f), Struct_3(var_1.b, ~1u, select(!vec4<bool>(var_1.c.x, true, false, true), !select(vec4<bool>(false, var_1.b.x, var_1.b.x, true), vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, false, false, false)), false), Struct_1(_wgslsmith_sub_u32(u_input.e, 19487u), !var_1.b, !var_1.b.xy), ~select(~vec4<u32>(4294967295u, var_1.a, 1u, var_1.a), vec4<u32>(u_input.e, u_input.e, 1u, 26475u), select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.b.x, false), vec4<bool>(false, var_1.b.x, true, var_1.b.x), var_1.b.x))));
    var var_3 = Struct_4(Struct_1(~u_input.e, vec3<bool>(all(var_1.b), true | all(vec3<bool>(var_2.b.d.b.x, true, var_1.b.x)), false), !vec2<bool>(!var_1.b.x, any(vec3<bool>(false, true, var_1.c.x)))), var_2.b.c, firstLeadingBit((select(vec2<u32>(0u, 32376u), vec2<u32>(16006u, 0u), var_1.b.x) >> (~vec2<u32>(var_2.b.d.a, 5608u) % vec2<u32>(32u))) << (firstTrailingBit(var_2.b.e.yy) % vec2<u32>(32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.a.x)))))), countOneBits(global1.zz));
    var var_4 = Struct_4(var_2.b.d, var_2.b.c, var_2.b.e.wz, _wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + var_2.a.x), _wgslsmith_div_f32(-1454f, var_3.d)) * 1f)), ~u_input.c.zz);
    return -64724i;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(global1.x, _wgslsmith_add_i32(max(1i, 1i), global1.x)) ^ func_2();
    var var_1 = arg_0.c.x;
    var var_2 = ~vec2<u32>(4294967295u, ~min(arg_0.a, arg_0.a));
    return vec4<bool>(false, arg_1.x, arg_1.x, select(!arg_1.x, false, false) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(-839f * _wgslsmith_f_op_f32(623f + -714f)))), _wgslsmith_f_op_f32(f32(-1f) * -1882f), global0.x, 1307f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(177f, 1104f, 446f, -568f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 623f, -1626f, global0.x)))) + vec4<f32>(_wgslsmith_div_f32(-1000f, -1000f), global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x))), !(!(!func_1(Struct_1(u_input.e, vec3<bool>(false, true, true), vec2<bool>(false, true)), vec3<bool>(false, true, false))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(global0.x - global0.x)), 1f)))), global0.x, 961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f - -1124f))));
    let var_2 = true;
    global1 = -min(vec4<i32>(_wgslsmith_dot_vec3_i32(-global1.yww, countOneBits(u_input.c)), -global1.x >> (16034u % 32u), _wgslsmith_dot_vec2_i32(global1.wx, _wgslsmith_add_vec2_i32(global1.ww, vec2<i32>(u_input.a, 19453i))), u_input.a), select(~vec4<i32>(17337i, 34252i, -1i, u_input.a), ~countOneBits(vec4<i32>(13002i, -39624i, global1.x, 2147483647i)), !func_1(Struct_1(u_input.e, vec3<bool>(var_2, false, true), vec2<bool>(var_2, var_2)), vec3<bool>(true, false, var_2)).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(select(u_input.e, _wgslsmith_sub_u32(13865u, u_input.e), any(!vec2<bool>(var_2, false))), ~67830u));
}

