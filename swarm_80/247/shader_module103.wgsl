struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: array<Struct_4, 23>;

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: u32 = 33563u;

var<private> global4: vec4<i32> = vec4<i32>(26525i, 2147483647i, 34419i, 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<i32> {
    global2 = array<vec2<bool>, 26>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f)))))));
    var var_1 = -global4.zz;
    global0 = array<Struct_4, 4>();
    global1 = array<Struct_4, 23>();
    return u_input.b;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: f32) -> vec2<u32> {
    let var_0 = arg_1;
    var var_1 = countOneBits(vec4<i32>(1i, arg_0.b, u_input.b.x, _wgslsmith_mod_i32(-2147483647i, select(arg_0.b, u_input.b.x, false))));
    var var_2 = 49077i;
    let var_3 = vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_0.b, 35943i, -16214i), global4.x << (92673u % 32u)), var_1.zy | ~global4.xw) < _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_1.x, 0i), arg_0.b), _wgslsmith_mod_i32(global4.x, -2147483647i) | var_1.x), !all(arg_0.d));
    global3 = _wgslsmith_sub_u32(~(abs(~arg_0.c) << (arg_0.c % 32u)), abs(u_input.a));
    return min(vec2<u32>(53828u, 26142u), ~_wgslsmith_div_vec2_u32(vec2<u32>(select(u_input.c, 114488u, false), 1u), select(select(vec2<u32>(u_input.c, 0u), vec2<u32>(arg_0.c, arg_0.c), true), abs(vec2<u32>(8863u, 142319u)), !var_0.b.x)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_3(func_3(Struct_5(vec2<f32>(480f, 1068f), _wgslsmith_clamp_i32(global4.x, -18180i, -14709i), ~arg_0.a, vec4<bool>(true, true, true, true)), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, -217f, -779f, -1341f)), vec3<bool>(false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(-692f, -168f)), -653f) << (vec2<u32>(u_input.c ^ reverseBits(0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.c, 39333u), vec4<u32>(24938u, 0u, 5772u, arg_0.a))) % vec2<u32>(32u)));
    let var_1 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), u_input.b.x <= global4.x), _wgslsmith_f_op_f32(sign(-1427f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(974f, 280f)), _wgslsmith_f_op_f32(floor(-2152f))));
    var var_2 = vec4<f32>(987f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-655f, 1012f, true)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(494f * 248f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1357f + 2005f))), _wgslsmith_f_op_f32(934f - -220f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f - 604f) - _wgslsmith_f_op_f32(570f - 2031f)))))));
    let var_3 = -618f;
    return vec3<bool>(false, true, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(func_1(vec4<bool>(false, false, !(u_input.a >= 4294967295u), select(any(vec2<bool>(true, false)), 1u == u_input.a, select(true, true, false))), Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.c), ~vec2<u32>(0u, 50596u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1921f, _wgslsmith_f_op_f32(-1121f * _wgslsmith_f_op_f32(ceil(1790f))))), vec2<i32>(16981i, ~1935i));
    var var_1 = select(vec3<bool>(false, false, true), !vec3<bool>((u_input.a >> (1u % 32u)) < select(4294967295u, 110857u, true), false, all(vec3<bool>(true, true, true))), !func_2(Struct_2(u_input.a), ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(17732u, 40559u, abs(_wgslsmith_add_u32(~u_input.a, min(0u, u_input.a)))), ~min(~(~vec4<i32>(u_input.b.x, -2147483647i, 25599i, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -24793i, 3075i, -7448i) >> (vec4<u32>(u_input.a, u_input.c, 9013u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(global4.x, u_input.b.x, global4.x, 36952i))));
}

