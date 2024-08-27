struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<i32, 6> = array<i32, 6>(68395i, i32(-2147483648), 2147483647i, -31980i, 0i, -36940i);

var<private> global3: array<vec2<f32>, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    global1 = global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(4294967295u), ~(~62747u)), _wgslsmith_clamp_u32(arg_0, abs(abs(arg_0)), 34903u)), _wgslsmith_mod_u32(0u, ~(arg_0 & max(86801u, arg_0))), true), 6u)];
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - -193f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(min(global0.a, global0.a))), global0.a, select(true, global0.b, all(global0.c.xy))))), true, !global0.c);
    global1 = arg_3.x;
    var var_1 = var_0.c.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a * var_0.a), _wgslsmith_f_op_f32(select(1547f, 1411f, true)))))), var_0.b, !select(select(vec3<bool>(false, global0.c.x, var_0.b), vec3<bool>(true, true, true), global0.c), select(!global0.c, !vec3<bool>(var_0.b, false, false), var_0.b), select(!global0.c, var_0.c, true)));
    return 60007u;
}

fn func_2() -> Struct_1 {
    let var_0 = 459f;
    var var_1 = _wgslsmith_sub_u32(111187u, ~(~_wgslsmith_mult_u32(1u, 34024u)) | ~(func_3(0u, global2[_wgslsmith_index_u32(49646u, 6u)], global2[_wgslsmith_index_u32(62013u, 6u)], vec4<i32>(15096i, 38984i, -66923i, global2[_wgslsmith_index_u32(15530u, 6u)])) & 1u));
    global2 = array<i32, 6>();
    var_1 = 24892u;
    let var_2 = ~(~vec4<u32>(reverseBits(~50177u), ~(0u >> (0u % 32u)), 50205u, min(~1u, ~0u)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * 900f), true, global0.c);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_add_i32(global2[_wgslsmith_index_u32(66292u, 6u)], _wgslsmith_add_i32(-_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, -2147483647i), i32(-1i) * -17105i), 46579i));
    global2 = array<i32, 6>();
    global1 = i32(-1i) * -6231i;
    global3 = array<vec2<f32>, 13>();
    return Struct_1(_wgslsmith_f_op_f32(sign(func_2().a)), var_0.c.x, !select(select(vec3<bool>(false, false, true), var_0.c, vec3<bool>(global0.b, true, true)), select(var_0.c, !var_0.c, !global0.c), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.b, -u_input.a << ((vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13764u, 4294967295u, 1u, 79747u), vec4<u32>(4294967295u, 4294967295u, 34842u, 49329u)), 1u) ^ vec2<u32>(~4294967295u, 31627u)) % vec2<u32>(32u)));
    global0 = func_1(true, max(abs(~u_input.a), vec2<i32>(-(~(-40842i)), 1i)));
    let var_1 = ~(~vec4<u32>(~(~0u), 1u, min(1u, 27234u << (1u % 32u)), firstLeadingBit(_wgslsmith_add_u32(0u, 36195u))));
    var var_2 = vec4<bool>(func_2().c.x && any(!vec3<bool>(true, false, var_0.c.x)), !select(var_0.c.x, -global2[_wgslsmith_index_u32(var_1.x, 6u)] >= -47209i, true), true, global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-select(u_input.a.x, 1i, true), ~(~(-43932i)), ~global2[_wgslsmith_index_u32(0u, 6u)] ^ -u_input.a.x), -(~vec2<i32>(0i, -7636i & global2[_wgslsmith_index_u32(var_1.x, 6u)])), vec4<u32>(var_1.x, 1u, reverseBits(min(0u, countOneBits(31186u))), 12363u), _wgslsmith_div_f32(546f, 1000f));
}

