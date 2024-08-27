struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(0u, 4294967295u), vec2<u32>(799u, 0u), vec2<u32>(101199u, 0u), vec2<u32>(64241u, 0u), vec2<u32>(0u, 52349u), vec2<u32>(10613u, 4294967295u), vec2<u32>(21084u, 4294967295u));

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(-35222i, 45534i, -14094i)), Struct_1(vec3<i32>(-29598i, -43846i, 0i)), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(2147483647i, 0i, 83133i)), Struct_1(vec3<i32>(37679i, 2147483647i, -58466i)), Struct_1(vec3<i32>(22848i, 20159i, 2147483647i)), Struct_1(vec3<i32>(-54857i, 13807i, 2147483647i)), Struct_1(vec3<i32>(-23833i, 0i, -4374i)), Struct_1(vec3<i32>(0i, -21236i, -2002i)), Struct_1(vec3<i32>(53384i, 1i, -1i)), Struct_1(vec3<i32>(-10595i, 56839i, 1i)), Struct_1(vec3<i32>(1i, -31524i, 1i)), Struct_1(vec3<i32>(68891i, -1i, -1i)), Struct_1(vec3<i32>(-76676i, -1i, -36420i)), Struct_1(vec3<i32>(-41721i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(0i, -1i, 2399i)), Struct_1(vec3<i32>(18177i, -8075i, -1i)), Struct_1(vec3<i32>(15116i, 2147483647i, 0i)), Struct_1(vec3<i32>(-1i, 2147483647i, 1i)));

var<private> global3: u32;

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec3<i32> {
    return vec3<i32>(0i, countOneBits(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(3474i, -57902i), vec2<i32>(-1i, u_input.c)), u_input.c), u_input.c << (23575u % 32u))), _wgslsmith_mod_i32(select(-28790i, u_input.c, !global0[_wgslsmith_index_u32(50582u, 28u)]), min(0i, u_input.c)) | ~_wgslsmith_add_i32(-1i << (u_input.a.x % 32u), -4131i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> StorageBuffer {
    global1 = array<vec2<u32>, 7>();
    var var_0 = ~abs(~firstTrailingBit(firstTrailingBit(arg_0.d.wy)));
    let var_1 = countOneBits(arg_0.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1349f - 130f))), -345f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-707f, 1259f)), 1f, _wgslsmith_f_op_f32(1083f - 1571f), _wgslsmith_f_op_f32(trunc(258f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(409f + 1121f), -1505f, 1f, _wgslsmith_div_f32(-425f, -928f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(806f * -204f), _wgslsmith_f_op_f32(step(730f, -1201f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(897f + 316f), 1020f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(898f * -333f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, 1273f, -983f, -1273f))))), all(!select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(28252u, 28u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 28u)]), vec2<bool>(arg_0.e, false)), vec2<bool>(arg_0.e, true), arg_0.a.a.x >= -2147483647i))));
    return StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, var_0.x), 42854u, var_1.x), ~u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, ~2987u), var_1.x, var_3.yx, vec4<i32>(1i >> (1u % 32u), -15710i >> (((var_0.x ^ u_input.b) >> (0u % 32u)) % 32u), _wgslsmith_mult_i32(-arg_1.x, -16401i), 15259i));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: u32) -> StorageBuffer {
    global0 = array<bool, 28>();
    return func_3(Struct_2(Struct_1(abs(vec3<i32>(-6299i, -2147483647i, -1i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(-52894i, -1i, u_input.c), vec3<i32>(arg_0, arg_0, 67956i))), countOneBits(u_input.b), ~(func_2() | _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, arg_0, u_input.c), vec3<i32>(-1962i, 22800i, u_input.c), vec3<i32>(15878i, arg_0, -1i))), vec4<u32>(u_input.d, 42368u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_2, 4294967295u, arg_2), ~4294967295u), ~1u), true), -vec2<i32>(arg_0, ~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1076f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2057f * _wgslsmith_f_op_f32(step(-794f, -1989f)))))));
    let var_1 = var_0.x;
    let var_2 = Struct_1(vec3<i32>(28158i, 22100i, u_input.c));
    var var_3 = false;
    var var_4 = u_input.d;
    let var_5 = global2[_wgslsmith_index_u32(~39471u ^ min(abs(u_input.a.x) & u_input.a.x, u_input.b & countOneBits(0u)), 20u)];
    let x = u_input.a;
    s_output = func_1(countOneBits(var_5.a.x) >> (abs(_wgslsmith_add_u32(u_input.b, u_input.b)) % 32u), !vec4<bool>(false, true, ~u_input.b > ~104433u, global0[_wgslsmith_index_u32(u_input.d, 28u)] & false), ~u_input.a.x);
}

