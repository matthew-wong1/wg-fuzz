struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = ~u_input.b.xzz;
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1f, arg_0.b), 212f)), arg_0.b);
    var_2 = arg_0.b;
    global0 = array<Struct_1, 10>();
    return false;
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<Struct_1, 10>();
    let var_0 = 1i;
    global0 = array<Struct_1, 10>();
    global1 = array<vec4<u32>, 14>();
    global2 = u_input.a;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    global2 = _wgslsmith_dot_vec4_i32(reverseBits(~firstLeadingBit(u_input.b) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.d), vec4<u32>(u_input.d, 1u, 4294967295u, 67148u)) % vec4<u32>(32u))), vec4<i32>(2147483647i, _wgslsmith_div_i32(-37809i, -20347i), ~u_input.b.x, -2147483647i));
    var var_0 = global0[_wgslsmith_index_u32(u_input.c ^ ~max(~u_input.d, u_input.d), 10u)];
    var var_1 = all(select(!arg_0, var_0.a.zx, ~1u == _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 47519u, u_input.c, 4294967295u) & vec4<u32>(16776u, u_input.c, 0u, 4294967295u), vec4<u32>(u_input.d, u_input.c, 122110u, u_input.d))));
    let var_2 = Struct_4(~(-u_input.e), var_0.b, arg_0.x, Struct_2(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), global1[_wgslsmith_index_u32(1u, 14u)]), ~vec3<i32>(~(-1i), countOneBits(6739i), firstLeadingBit(u_input.b.x)), _wgslsmith_mod_i32(-(1i & u_input.e.x), ~(u_input.a & u_input.e.x)), Struct_1(select(var_0.a, vec3<bool>(false, arg_0.x, false), var_0.a), var_0.b), max(u_input.c, u_input.c)));
    return Struct_1(vec3<bool>(!arg_0.x, false || !(!var_0.a.x), all(!var_0.a.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b)) * var_0.b)))));
}

fn func_1() -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~(~23246u), 10u)];
    let var_1 = func_4(!vec2<bool>(func_2(Struct_1(vec3<bool>(true, false, true), 417f)) && any(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), true), select(vec4<bool>(var_0.a.x, any(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), false | var_0.a.x, var_0.a.x), vec4<bool>(all(vec4<bool>(false, false, var_0.a.x, var_0.a.x)), u_input.b.x > u_input.a, func_3(_wgslsmith_mod_u32(u_input.d, u_input.c)), var_0.a.x), all(var_0.a.zy)));
    var var_2 = vec4<f32>(1000f, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1241f + -616f)))) + var_0.b), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) + _wgslsmith_f_op_f32(var_1.b + var_0.b))))));
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    return -vec3<i32>(_wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.e.x, u_input.b.x))), firstTrailingBit(u_input.e.x)), select(~0i, ~countOneBits(-2147483647i), any(!var_1.a.xy)), abs(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_dot_vec3_i32(u_input.b.zww, countOneBits(func_1()));
    let var_0 = Struct_3(vec3<bool>(true, true, true), func_4(vec2<bool>(true, any(vec3<bool>(true, true, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), true)), func_4(vec2<bool>(true, true), select(vec4<bool>(true, select(false, false, true), true, true), vec4<bool>(true, true, any(vec2<bool>(true, true)), func_4(vec2<bool>(true, true), vec4<bool>(false, true, false, false)).a.x), true || all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-909f, _wgslsmith_f_op_f32(-514f - 131f), _wgslsmith_f_op_f32(select(809f, -1289f, false))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, 459f, -390f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, 1252f, 199f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, -1000f, -449f))))));
    global0 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_mod_i32(0i ^ min(-u_input.e.x & u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 2147483647i)), abs(1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-462f, _wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-684f, var_0.c.b, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.b)))))));
    global1 = array<vec4<u32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.d + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, var_2.x, var_0.c.b))), _wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(-var_2.yyw), vec3<bool>(false, var_0.c.a.x, var_0.b.a.x)))))));
}

