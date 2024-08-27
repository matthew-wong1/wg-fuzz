struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-11276i, 1i), vec2<i32>(54517i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(29259i, i32(-2147483648)), vec2<i32>(-70333i, -1i), vec2<i32>(32464i, 0i), vec2<i32>(26489i, i32(-2147483648)), vec2<i32>(-1512i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(168i, -9498i), vec2<i32>(-12560i, 22986i), vec2<i32>(2167i, 6530i), vec2<i32>(0i, 64561i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 0i), vec2<i32>(26908i, 2147483647i), vec2<i32>(i32(-2147483648), -35501i), vec2<i32>(-7466i, -5161i));

var<private> global2: vec4<f32>;

var<private> global3: vec2<f32> = vec2<f32>(1205f, 852f);

var<private> global4: array<vec3<u32>, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global4 = array<vec3<u32>, 29>();
    let var_0 = -16833i;
    var var_1 = vec2<bool>((u_input.a & 2147483647i) > ~_wgslsmith_clamp_i32(i32(-1i) * -521i, _wgslsmith_add_i32(-1i, u_input.a), var_0), !any(vec4<bool>(true, true, true, true)));
    global4 = array<vec3<u32>, 29>();
    let var_2 = Struct_5(vec2<u32>(max(countOneBits(arg_0), ~arg_0) ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, 0u), arg_0), 66346u | arg_0), ~abs(reverseBits(vec4<u32>(arg_0, arg_0, arg_0, arg_0))));
    return var_2.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> vec4<u32> {
    global0 = array<Struct_4, 8>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(global2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f + _wgslsmith_f_op_f32(1449f * global3.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(419f, _wgslsmith_f_op_f32(global2.x + global2.x))))), -1155f);
    let var_0 = 2147483647i;
    global4 = array<vec3<u32>, 29>();
    global0 = array<Struct_4, 8>();
    return func_3(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(16543u, 1u), ~vec2<u32>(0u, 4294967295u)), 0u, 6786u));
}

fn func_1() -> i32 {
    global3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.xz)));
    let var_0 = !vec3<bool>(false, true, -(~u_input.a) < _wgslsmith_add_i32(firstTrailingBit(u_input.a), -u_input.a));
    var var_1 = var_0.x;
    let var_2 = ~vec4<i32>(_wgslsmith_div_i32(93039i, -u_input.a), 2147483647i, -8198i | reverseBits(u_input.a), 0i) >> (_wgslsmith_add_vec4_u32(func_2(select(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, 2147483647i, u_input.a), false), firstLeadingBit(u_input.a)), firstTrailingBit(vec4<u32>(abs(19680u), _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(27463u, 29u)], global4[_wgslsmith_index_u32(0u, 29u)]), 4294967295u, ~1011u))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f - _wgslsmith_f_op_f32(-507f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-34777i, ~u_input.a, _wgslsmith_clamp_i32(0i, -15829i, _wgslsmith_add_i32(~(-1i), max(var_2.x, var_2.x))), -2147483647i >> (0u % 32u)), var_2);
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(min(-(vec4<i32>(-1i, 0i, -46002i, u_input.a) ^ vec4<i32>(15825i, arg_0.c, 1i, u_input.a)), min(vec4<i32>(98514i, u_input.a, u_input.a, u_input.a) | vec4<i32>(arg_0.d.a.x, 2147483647i, u_input.a, u_input.a), select(vec4<i32>(1i, -2147483647i, 27663i, arg_0.c), vec4<i32>(arg_0.c, u_input.a, u_input.a, arg_0.c), vec4<bool>(true, true, true, true)))), ~vec4<i32>(countOneBits(u_input.a), min(u_input.a, u_input.a), -23712i, _wgslsmith_dot_vec2_i32(arg_0.d.a, vec2<i32>(1i, arg_0.c)))), 0i, 1i, _wgslsmith_sub_i32(arg_0.d.a.x, abs(arg_0.c)));
    let var_1 = vec4<u32>(arg_0.b.b, 4294967295u, 95114u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.b, 4294967295u, 1u, 1u), vec4<u32>(0u, arg_0.b.b, 24078u, 17413u)), vec4<u32>(1u, arg_0.b.b, arg_0.b.b & arg_0.b.b, func_2(vec3<i32>(arg_0.d.a.x, 2147483647i, u_input.a), arg_0.d.a.x).x)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.b, 1u), vec2<u32>(4294967295u, arg_0.b.b))), arg_0.b.b, _wgslsmith_add_u32(arg_0.b.b, 4294967295u) >> (~135300u % 32u), _wgslsmith_add_u32(~91148u, abs(arg_0.b.b)))));
    var var_2 = _wgslsmith_add_vec2_u32(var_1.yy, ~vec2<u32>(_wgslsmith_add_u32(44755u, 1u), arg_0.b.b));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_f32(trunc(global2.x)), false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 116f)), 1350f) + global3.x));
    var var_4 = min(~(~(~select(var_1.wwz, vec3<u32>(var_2.x, var_1.x, var_1.x), true))), ~vec3<u32>(~1u, 4294967295u, arg_0.b.b));
    return StorageBuffer(-vec4<i32>(var_0.x, ~1i, _wgslsmith_mult_i32(u_input.a, arg_0.d.a.x) << (1u % 32u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(true, Struct_1(vec3<bool>(true, true, true), reverseBits(1u), vec4<bool>(true, true, true, any(vec3<bool>(false, false, false)))), func_1() << (func_3(firstTrailingBit(1714u)).x % 32u), Struct_2(vec2<i32>(u_input.a, u_input.a), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true))));
}

