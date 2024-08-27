struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
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

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(-3155i, 2205i), vec2<i32>(38594i, 0i), vec2<i32>(0i, -38006i), vec2<i32>(-42740i, -29722i), vec2<i32>(-27746i, 1i), vec2<i32>(1i, -1981i), vec2<i32>(10170i, 1638i), vec2<i32>(47605i, -30306i), vec2<i32>(15024i, 29208i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: bool) -> bool {
    let var_0 = vec2<bool>(true, false);
    global0 = array<vec4<u32>, 19>();
    global0 = array<vec4<u32>, 19>();
    global1 = array<vec2<i32>, 9>();
    return true;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_4) -> bool {
    let var_0 = u_input.b;
    let var_1 = ~4294967295u;
    global0 = array<vec4<u32>, 19>();
    let var_2 = i32(-1i) * -15645i;
    global1 = array<vec2<i32>, 9>();
    return select(arg_0.x < ~1u, !any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    global0 = array<vec4<u32>, 19>();
    global0 = array<vec4<u32>, 19>();
    global0 = array<vec4<u32>, 19>();
    var var_0 = all(vec2<bool>(!(~u_input.a.x != ~u_input.b.x), func_3(~vec3<u32>(u_input.a.x, 43459u, u_input.a.x), ~u_input.b.ywy, Struct_4(vec4<f32>(arg_0, arg_0, arg_0, arg_0))) | !func_3(u_input.b.zxy, vec3<u32>(4294967295u, 23417u, 1u), Struct_4(vec4<f32>(arg_0, 1492f, arg_1, 573f)))));
    global1 = array<vec2<i32>, 9>();
    return Struct_2(~(-select(62505i, -9475i, true) ^ -1i));
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = reverseBits(firstTrailingBit(-_wgslsmith_sub_i32(func_2(-698f, -1396f).a, arg_0.a)));
    global0 = array<vec4<u32>, 19>();
    var var_1 = _wgslsmith_mod_u32(0u, 4294967295u);
    var var_2 = ~_wgslsmith_add_u32(max(4294967295u, 1u), min(1u, _wgslsmith_add_u32(u_input.b.x, 34459u >> (1u % 32u))));
    global1 = array<vec2<i32>, 9>();
    return global1[_wgslsmith_index_u32(40717u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1502f, 450f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1597f) - _wgslsmith_f_op_f32(round(-340f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f + _wgslsmith_div_f32(-1106f, 916f)) * _wgslsmith_f_op_f32(-2557f + _wgslsmith_f_op_f32(f32(-1f) * -840f)))), 127f, _wgslsmith_f_op_f32(round(-387f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(1237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f))))));
    global1 = array<vec2<i32>, 9>();
    var_0 = vec4<f32>(-337f, 1000f, -135f, -856f);
    var var_1 = select(select(vec4<bool>(true, !any(vec2<bool>(true, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, any(vec2<bool>(true, true)), false, false), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))), !vec4<bool>(true, any(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, false)))), !(!vec4<bool>(true, func_1(23974u, false, true), true, false)), !select(vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, true))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true)));
    let var_2 = 1u;
    let var_3 = ~func_4(func_2(_wgslsmith_f_op_f32(round(-1000f)), -978f));
    let var_4 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(var_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.x, var_3.x, var_3.x), vec4<i32>(var_3.x, -36862i, -60059i, 0i))) & reverseBits(func_4(Struct_2(16862i)).x), reverseBits(1i));
    let var_5 = Struct_5(!(false | ((var_1.x || var_1.x) && var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(-1i, -2147483647i, false), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, -var_3.x, countOneBits(-2147483647i), 7469i), -vec4<i32>(var_4, -15181i, 0i, var_4)), var_4, -2147483647i >> (var_2 % 32u)));
}

