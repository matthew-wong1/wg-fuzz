struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<i32> = vec3<i32>(-54867i, 2147483647i, -39111i);

var<private> global2: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool) -> bool {
    return any(vec3<bool>(false, any(select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, true))), all(vec3<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), true, true))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(-1480f, _wgslsmith_f_op_f32(abs(-1187f)))), -528f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f)), _wgslsmith_f_op_f32(ceil(1f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(969f))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(134f, _wgslsmith_f_op_f32(-1077f - var_0.x), any(vec4<bool>(true, arg_0, true, arg_0))))), _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = Struct_1(select(~(-(vec3<i32>(global0.x, -2222i, 0i) << (vec3<u32>(u_input.c.x, u_input.c.x, 41830u) % vec3<u32>(32u)))), ~vec3<i32>(global0.x >> (u_input.a % 32u), -49836i >> (u_input.b.x % 32u), global0.x >> (0u % 32u)), arg_0), select(select(select(!vec4<bool>(arg_0, true, true, true), select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, true, false, false), arg_0), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, false, false, false))), !vec4<bool>(arg_0, true, true, true), true), !select(vec4<bool>(arg_0, arg_0, true, arg_0), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, false), false), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(false, true, false, arg_0), false)), vec4<bool>(any(!vec2<bool>(false, arg_0)), !(!arg_0), false, all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true))))), vec3<f32>(478f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + -283f), var_0.x, arg_0)))), _wgslsmith_f_op_f32(-556f - var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(2037f, -271f), var_0.x, 1191f, _wgslsmith_div_f32(var_1.x, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - var_0.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * 350f)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), 925f, _wgslsmith_f_op_f32(-251f + var_0.x))));
    var var_3 = !(var_2.c.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)));
    var_3 = !(!(any(select(var_2.b.zww, var_2.b.zyw, var_2.b.zxy)) | (u_input.b.x == u_input.a)));
    return firstLeadingBit(global0.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = arg_0.a;
    global2 = func_2(u_input.b.x == ~(~u_input.c.x));
    global1 = vec3<i32>(~func_3(arg_1.x), ~_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(15971i, -1i, -14434i, -1i)), vec4<i32>(~(-24237i), _wgslsmith_sub_i32(15043i, -42834i), global0.x, arg_0.a.x)), global0.x);
    global1 = -(~_wgslsmith_mult_vec3_i32(-(vec3<i32>(-2147483647i, -1i, 0i) ^ arg_0.a), arg_0.a));
    var var_1 = Struct_2(1287i, _wgslsmith_f_op_vec4_f32(arg_0.d + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1038f, _wgslsmith_div_f32(arg_2.a, arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x + arg_0.c.x), _wgslsmith_f_op_f32(1000f - arg_0.d.x)))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global0.x, global0.x), _wgslsmith_sub_i32(global0.x, global0.x), min(global0.x, global1.x)) << (u_input.c.zyx % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(min(abs(vec3<i32>(global1.x, global1.x, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(9564i, 926i, 2147483647i), vec3<i32>(global0.x, global0.x, global0.x))), select(vec3<i32>(2147483647i, global0.x, 37887i), func_1(Struct_1(vec3<i32>(1i, 0i, 0i), vec4<bool>(true, false, true, false), vec3<f32>(111f, 457f, -1255f), vec4<f32>(1000f, -855f, 1638f, -154f)), vec4<bool>(true, true, false, true), Struct_4(-274f)), all(vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 972f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1208f, 157f, 288f, -168f)))))))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1062f)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(global1.zz, global1.zx), global0.x, _wgslsmith_mod_i32(var_0.a, var_0.a))), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, 2147483647i, 42532i, global0.x)), abs(max(vec4<i32>(var_0.a, var_0.a, var_0.a, global0.x), vec4<i32>(-1i, -22016i, global1.x, global1.x))))));
}

