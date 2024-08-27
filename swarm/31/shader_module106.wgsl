struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 0u, 18276u, 63061u), vec4<u32>(79471u, 0u, 43579u, 858u), vec4<u32>(22615u, 1u, 42370u, 62987u), vec4<u32>(47426u, 38268u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1987u, 4294967295u, 31214u), vec4<u32>(10783u, 4294967295u, 0u, 43803u), vec4<u32>(4294967295u, 4294967295u, 1u, 8864u), vec4<u32>(23505u, 40891u, 4294967295u, 56255u), vec4<u32>(1u, 17010u, 55687u, 897u), vec4<u32>(14592u, 1u, 71285u, 0u), vec4<u32>(0u, 1u, 47649u, 79838u), vec4<u32>(0u, 31933u, 104474u, 28246u), vec4<u32>(58828u, 1u, 1u, 65269u), vec4<u32>(0u, 19209u, 1147u, 0u), vec4<u32>(841u, 136645u, 4294967295u, 58957u), vec4<u32>(23193u, 21032u, 0u, 0u), vec4<u32>(110715u, 81208u, 1u, 397u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>) -> StorageBuffer {
    global0 = array<vec4<u32>, 19>();
    var var_0 = select(vec2<i32>(-(~u_input.c.x), 59250i), u_input.c.xz, !vec2<bool>(!arg_1.x, true)) & u_input.c.xz;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 566f, 1230f, -880f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-176f, -167f, _wgslsmith_f_op_f32(f32(-1f) * -115f), 350f)))));
    return StorageBuffer(_wgslsmith_add_vec4_u32(~(~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(1u, 19u)], vec4<u32>(47537u, 4294967295u, u_input.a, u_input.a))), abs(~(~vec4<u32>(41551u, 35931u, u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(u_input.a, u_input.a) | reverseBits(~(~vec2<u32>(u_input.a, 0u))));
    global0 = array<vec4<u32>, 19>();
    global0 = array<vec4<u32>, 19>();
    global0 = array<vec4<u32>, 19>();
    var var_1 = u_input.c.yww;
    global0 = array<vec4<u32>, 19>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-730f, -1055f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), 1546f))));
    let var_3 = abs(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(71692u, 4618u, 1u), vec3<u32>(1u, 16887u, var_0.a.x))) >> (_wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, 11221u, u_input.a)), vec3<u32>(firstLeadingBit(4294967295u), _wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a)) % vec3<u32>(32u)));
    var_1 = vec3<i32>(_wgslsmith_add_i32(-1i, var_1.x >> (1u % 32u)), ~reverseBits(~(u_input.c.x ^ -48549i)), -2147483647i << (u_input.a % 32u));
    let x = u_input.a;
    s_output = func_1(vec3<bool>(false, true, any(vec4<bool>(all(vec3<bool>(false, true, false)), false, any(vec3<bool>(true, true, false)), -1145f > var_2.x))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
}

