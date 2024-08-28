struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: Struct_2 = Struct_2(29206u, vec2<bool>(true, false));

var<private> global2: array<vec2<bool>, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    global2 = array<vec2<bool>, 11>();
    var var_0 = -2147483647i;
    let var_1 = Struct_3(Struct_2(reverseBits(u_input.b), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, arg_0.a.a, global1.a), firstTrailingBit(vec3<u32>(4294967295u, global1.a, 1u))) & _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(global1.a, 0u)), 11u)]), true);
    var_0 = u_input.d;
    var_0 = _wgslsmith_mult_i32(max(arg_1, -10700i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(firstLeadingBit(-2147483647i), -arg_1, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-27160i, u_input.d, arg_1), vec3<i32>(u_input.d, u_input.d, u_input.d))), ~(~vec4<i32>(-1i, 1i, arg_1, arg_1)), vec4<bool>(false, true, global1.b.x, all(vec3<bool>(true, true, false)))), firstLeadingBit(~countOneBits(vec4<i32>(u_input.d, 2012i, -2253i, -40781i)))));
    return -253f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_mod_i32(-u_input.d, -2147483647i);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-234f, 2187f, -388f, -485f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f - 327f)), -714f, _wgslsmith_f_op_f32(floor(-1498f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-183f)) - _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(86676u, vec2<bool>(false, arg_0)), true), -1i, vec2<bool>(arg_0, false)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(70460u, vec2<bool>(true, true)), true), -2147483647i, vec2<bool>(false, false))), 250f, 897f))));
    let var_2 = ~(~(-reverseBits(u_input.d)));
    var var_3 = var_1.x;
    let var_4 = global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~(arg_2 << (_wgslsmith_div_u32(u_input.a, 37867u) % 32u)), ~arg_2), min(u_input.c, _wgslsmith_add_u32(countOneBits(6534u), max(arg_2, select(u_input.b, u_input.b, false)))), arg_1), 28u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(var_4.a, global1.b), true), u_input.d, var_4.b)), var_1.x)))) + _wgslsmith_f_op_f32(min(-860f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + 198f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -1040f), var_1.x)))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(arg_0, 28u)], global1.b.x);
    var var_1 = -2147483647i;
    var var_2 = -countOneBits(_wgslsmith_sub_i32(1i, arg_2));
    global0 = array<Struct_2, 28>();
    let var_3 = Struct_2(global1.a, var_0.a.b);
    return Struct_4(vec4<i32>(30353i, _wgslsmith_add_i32(u_input.d, -arg_2), -1i, 0i), any(select(select(!vec3<bool>(global1.b.x, global1.b.x, var_3.b.x), !vec3<bool>(true, false, var_0.b), vec3<bool>(var_3.b.x, global1.b.x, true)), !(!vec3<bool>(var_0.b, var_3.b.x, var_0.b)), vec3<bool>(true && var_0.a.b.x, !var_3.b.x, true))), -39929i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3, arg_3, -1483f, arg_3))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1000f, -818f, -1090f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1466f, 615f, arg_3, -271f))))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1184f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f * -392f)), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1839f + arg_3))), _wgslsmith_dot_vec4_u32(~vec4<u32>(91493u, global1.a, u_input.a, 4294967295u) << (_wgslsmith_add_vec4_u32(vec4<u32>(51120u, arg_0, 13415u, arg_1), vec4<u32>(u_input.c, 0u, 39063u, arg_1)) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.c, u_input.b, arg_1)), !(true | var_0.b), select(var_0.a.b, !global2[_wgslsmith_index_u32(select(arg_1, var_0.a.a, false), 11u)], abs(-5475i) > _wgslsmith_add_i32(-1i, u_input.d)), max(-(vec2<i32>(-80935i, arg_2) >> (vec2<u32>(36350u, 4294967295u) % vec2<u32>(32u))), ~abs(vec2<i32>(arg_2, arg_2)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = func_4(_wgslsmith_sub_u32(~u_input.c, 54743u), 0u, ~24920i, _wgslsmith_f_op_f32(func_2(true, !any(select(vec4<bool>(arg_3, false, false, false), vec4<bool>(false, false, true, global1.b.x), arg_3)), 33353u)));
    global0 = array<Struct_2, 28>();
    let var_1 = vec4<u32>(countOneBits(global1.a), ~(~(~_wgslsmith_mult_u32(var_0.e.b, u_input.a))), countOneBits(reverseBits(_wgslsmith_sub_u32(var_0.e.b, 29289u))) | _wgslsmith_mod_u32(global1.a, ~(1u << (u_input.c % 32u))), var_0.e.b);
    var var_2 = Struct_2(var_1.x, vec2<bool>(!((true || var_0.b) || (arg_1 < var_0.e.a.x)), arg_3));
    global0 = array<Struct_2, 28>();
    return ~reverseBits(55074u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_add_u32(func_1(min(countOneBits(vec2<i32>(-412i, u_input.d)), vec2<i32>(u_input.d, u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~0i, (true && global1.b.x) || any(vec3<bool>(global1.b.x, true, true))), u_input.a), func_4(u_input.b, ~(~min(global1.a, global1.a)), u_input.d, -1367f).e.d);
    let var_0 = func_4(4294967295u, 1u, -64i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1079f))))).e;
    global2 = array<vec2<bool>, 11>();
    let var_1 = var_0;
    var var_2 = ~(~(vec2<u32>(abs(global1.a), _wgslsmith_add_u32(global1.a, global1.a)) & vec2<u32>(~4294967295u, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.a))))));
}

