struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-32116i, -37205i, 3932i, 0i, 28722i, i32(-2147483648), -1i, i32(-2147483648), 18722i, i32(-2147483648), -1i, 5320i, -8616i, 34291i, -38223i, -14736i, 35266i, -62196i, -58566i, 4723i, 1i, 1i, -24579i, -9543i);

var<private> global1: vec3<i32> = vec3<i32>(15846i, -1i, i32(-2147483648));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 24>();
    return Struct_1(vec2<bool>(true, true), true);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_0 = Struct_4(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a, global0[_wgslsmith_index_u32(43267u, 24u)], ~u_input.b, -3708i), firstTrailingBit(vec4<i32>(-1i, arg_0.c.a, -2147483647i, arg_2)), ~select(vec4<i32>(global1.x, 2147483647i, -14150i, 0i), vec4<i32>(arg_0.c.a, global0[_wgslsmith_index_u32(arg_1, 24u)], -17226i, -4339i), vec4<bool>(arg_0.b.b, arg_0.b.a.x, arg_0.b.b, false))));
    global1 = vec3<i32>(~(-1i), abs(-2147483647i), _wgslsmith_sub_i32(countOneBits(-1i), _wgslsmith_mod_i32(arg_2, abs(global0[_wgslsmith_index_u32(1u, 24u)])))) | ~var_0.a.yyw;
    return !select(vec2<bool>(any(vec2<bool>(arg_0.b.b, arg_0.b.a.x)), any(select(vec3<bool>(arg_0.b.a.x, arg_0.b.b, arg_0.b.b), vec3<bool>(false, arg_0.b.a.x, false), arg_0.b.b))), vec2<bool>(false, arg_0.b.a.x), arg_0.b.a);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = func_2();
    let var_1 = all(func_3(Struct_3(_wgslsmith_add_vec3_u32(~vec3<u32>(12011u, 17203u, 1u), vec3<u32>(u_input.a, 1u, 0u)), var_0, arg_1, arg_1.c), 85528u, -u_input.c.x, arg_1));
    var var_2 = Struct_2(-(~global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1462f, -1000f)) + _wgslsmith_f_op_f32(round(109f)))), _wgslsmith_f_op_f32(exp2(arg_1.c)));
    var_2 = Struct_2(2147483647i, arg_1.c, -923f);
    global1 = vec3<i32>(global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(~u_input.c.x), abs(var_2.a)), vec2<i32>(-2147483647i >> (u_input.a % 32u), (var_2.a >> (43770u % 32u)) & arg_1.a)), global1.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -11228i >> (func_1(true, Struct_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.x, -7581i), ~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(320f, -225f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(265f + 724f) * _wgslsmith_f_op_f32(min(171f, -745f))))) % 32u);
    global1 = ~(-(~(~vec3<i32>(global1.x, u_input.c.x, 2147483647i))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(40733u, 24u)], -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(179f, 589f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-285f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(663f + -1000f), 999f), _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(u_input.c.x), global0[_wgslsmith_index_u32(func_1(false, Struct_2(1i, var_1.c, var_1.c)), 24u)], ~(-44805i)) & min(~vec3<i32>(7797i, -12966i, -39791i), ~vec3<i32>(2147483647i, 1i, 7409i)), vec3<i32>(54371i, _wgslsmith_sub_i32(1i, global0[_wgslsmith_index_u32(~76460u, 24u)]), abs(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + 1000f))))), 229f);
}

