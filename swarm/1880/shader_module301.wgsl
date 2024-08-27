struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: i32 = -1i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> Struct_3 {
    global1 = min(u_input.b, -22187i);
    let var_0 = 79299u;
    var var_1 = ~_wgslsmith_mult_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-25496i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, -9535i)), ~22873i), vec3<i32>(-39687i, u_input.b, u_input.b));
    var var_2 = u_input.a;
    var_2 = u_input.a | u_input.a;
    return global0[_wgslsmith_index_u32(4294967295u, 32u)];
}

fn func_3() -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = any(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), false, false));
    let var_2 = (_wgslsmith_div_vec4_u32(u_input.a, u_input.a) | u_input.a) ^ u_input.a;
    var var_3 = !func_1().c.b.xy;
    var var_4 = func_1().c;
    return countOneBits(28170i);
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec2<u32> {
    global1 = ~(-func_3()) & ~_wgslsmith_div_i32(~(arg_0.d | 2147483647i), u_input.b);
    global1 = _wgslsmith_mod_i32(0i, arg_0.c.a.x);
    let var_0 = Struct_1(-(arg_0.c.a | arg_0.c.a), vec3<bool>(any(func_1().c.b.xz), any(arg_0.c.b), false), 109992u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.d.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - -1072f)))), _wgslsmith_f_op_f32(min(-399f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-1525f * arg_1)));
    global1 = -49692i;
    let var_1 = -1713f;
    return _wgslsmith_sub_vec2_u32(select(countOneBits(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(37332u, u_input.a.x), u_input.a.yx))), arg_0.b, vec2<bool>(true, (var_0.a.x == var_0.a.x) & !var_0.b.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.e.a & _wgslsmith_add_vec2_u32(u_input.a.xz, arg_0.e.a), ~u_input.a.yz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), arg_0.e.a) << (countOneBits(vec2<u32>(u_input.a.x, 36747u) & vec2<u32>(var_0.c, arg_0.e.a.x)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_add_vec2_u32(~(u_input.a.zw ^ _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.e.a.x, var_0.c.c), _wgslsmith_mult_vec2_u32(var_0.e.a, vec2<u32>(u_input.a.x, u_input.a.x)))), select(~(~func_2(Struct_3(var_0.a, u_input.a.zx, var_0.c, u_input.b, var_0.e), -1000f)), ~(~vec2<u32>(u_input.a.x, var_0.b.x)), select(var_0.c.b.zz, var_0.c.b.yy, vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.c.a.zy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.e.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.d.x)) * _wgslsmith_f_op_f32(var_0.c.d.x + var_0.e.b))), func_1().d, var_1.x, u_input.a.yzy);
}

