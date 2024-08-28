struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(false, true, true), 71681u), Struct_1(vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(false, false, true), 66991u), Struct_1(vec3<bool>(true, false, false), 87357u), Struct_1(vec3<bool>(false, true, true), 1u), Struct_1(vec3<bool>(true, false, true), 46406u), Struct_1(vec3<bool>(false, true, false), 1u), Struct_1(vec3<bool>(false, false, false), 0u), Struct_1(vec3<bool>(true, true, false), 1u), Struct_1(vec3<bool>(true, true, true), 4294967295u), Struct_1(vec3<bool>(false, true, false), 12335u), Struct_1(vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(false, true, false), 1u), Struct_1(vec3<bool>(false, false, false), 4294967295u), Struct_1(vec3<bool>(true, false, true), 0u), Struct_1(vec3<bool>(true, true, true), 1u), Struct_1(vec3<bool>(true, false, true), 86074u), Struct_1(vec3<bool>(true, true, true), 50243u), Struct_1(vec3<bool>(true, true, true), 57582u), Struct_1(vec3<bool>(false, false, false), 4294967295u), Struct_1(vec3<bool>(true, false, false), 51975u), Struct_1(vec3<bool>(false, true, true), 0u), Struct_1(vec3<bool>(false, true, false), 0u), Struct_1(vec3<bool>(true, true, true), 107230u), Struct_1(vec3<bool>(true, false, false), 1u), Struct_1(vec3<bool>(true, false, false), 40082u), Struct_1(vec3<bool>(true, true, false), 1u), Struct_1(vec3<bool>(true, false, true), 47077u), Struct_1(vec3<bool>(false, true, false), 0u), Struct_1(vec3<bool>(false, true, false), 19379u), Struct_1(vec3<bool>(true, true, true), 1u));

var<private> global1: array<vec3<i32>, 28>;

var<private> global2: array<i32, 15> = array<i32, 15>(2147483647i, 3103i, 0i, i32(-2147483648), 10317i, 1095i, 2147483647i, 0i, 48362i, -14223i, 2147483647i, -49671i, -28030i, 1i, -13044i);

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(false, false, true), 71990u), Struct_1(vec3<bool>(false, true, true), 54589u), Struct_1(vec3<bool>(true, true, true), 4294967295u), Struct_1(vec3<bool>(false, false, false), 1u), Struct_1(vec3<bool>(true, true, false), 27607u), Struct_1(vec3<bool>(true, false, false), 89347u), Struct_1(vec3<bool>(true, false, false), 4294967295u), Struct_1(vec3<bool>(false, true, false), 4294967295u), Struct_1(vec3<bool>(true, false, true), 0u), Struct_1(vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(true, true, true), 12816u), Struct_1(vec3<bool>(false, true, false), 1u), Struct_1(vec3<bool>(true, true, false), 0u), Struct_1(vec3<bool>(false, true, true), 24807u), Struct_1(vec3<bool>(true, true, true), 1u), Struct_1(vec3<bool>(true, true, false), 4294967295u), Struct_1(vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(true, false, false), 24008u), Struct_1(vec3<bool>(true, true, true), 1u), Struct_1(vec3<bool>(false, false, false), 39524u), Struct_1(vec3<bool>(true, true, true), 54867u), Struct_1(vec3<bool>(false, true, true), 1u), Struct_1(vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(true, false, true), 5769u));

var<private> global4: u32 = 43953u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> f32 {
    global3 = array<Struct_1, 24>();
    let var_0 = u_input.a;
    global3 = array<Struct_1, 24>();
    global2 = array<i32, 15>();
    var var_1 = arg_2;
    return _wgslsmith_f_op_f32(f32(-1f) * -1616f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -436f;
    global2 = array<i32, 15>();
    var var_1 = ~(~countOneBits(48721u));
    global2 = array<i32, 15>();
    global2 = array<i32, 15>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), _wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], -2147483647i, global2[_wgslsmith_index_u32(18485u, 15u)], global2[_wgslsmith_index_u32(31699u, 15u)]), vec4<i32>(global2[_wgslsmith_index_u32(36492u, 15u)], global2[_wgslsmith_index_u32(63084u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)])), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-634f, 1090f) * -358f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-295f * _wgslsmith_f_op_f32(602f + 1669f)), -657f)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(19019u, 1u, 94449u, 1u), vec4<u32>(38697u, 0u, 0u, 1u)), 5261u), 0u), var_2);
}

