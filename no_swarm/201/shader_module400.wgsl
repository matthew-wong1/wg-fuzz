struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(19193u, 0u)), Struct_1(vec2<u32>(0u, 31711u)), Struct_1(vec2<u32>(42964u, 39553u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(56821u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 46351u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(88577u, 1u)), Struct_1(vec2<u32>(1u, 0u)));

var<private> global2: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = 1i;
    let var_1 = Struct_1(firstTrailingBit(abs(vec2<u32>(1u, 1u))));
    var var_2 = ~min(vec3<u32>(22532u, 915u ^ (var_1.a.x << (var_1.a.x % 32u)), var_1.a.x), vec3<u32>(1u, 4294967295u, countOneBits(min(1u, var_1.a.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f * _wgslsmith_f_op_f32(f32(-1f) * -2494f))));
    let var_4 = -2147483647i;
    return var_2.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~_wgslsmith_clamp_u32(func_3(), 83200u, _wgslsmith_div_u32(4294967295u, 45616u)), 1u), 11u)];
    return -1000f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(reverseBits(vec3<i32>(1i, u_input.b, -2147483647i)), _wgslsmith_mod_vec2_i32(-u_input.c, -vec2<i32>(u_input.b, u_input.a.x)), all(global0[_wgslsmith_index_u32(~1u, 31u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f))), 1860f));
    var var_1 = global1[_wgslsmith_index_u32(arg_0.a.x, 11u)];
    let var_2 = Struct_1(vec2<u32>((max(56292u, arg_1.a.x) >> (~var_1.a.x % 32u)) & 70814u, abs(~max(var_1.a.x, arg_1.a.x))));
    let var_3 = ~vec2<u32>(countOneBits(~var_2.a.x) & 0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(75153u, var_2.a.x, 4294967295u, 0u), vec4<u32>(arg_0.a.x, var_2.a.x, 35308u, var_1.a.x))));
    global0 = array<vec3<bool>, 31>();
    return !(false && (u_input.a.x == _wgslsmith_mod_i32(firstLeadingBit(u_input.b), ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global2 = !any(!vec4<bool>(true, any(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false)), true));
    let var_1 = !select(vec2<bool>(true, all(vec2<bool>(false, false)) == any(vec4<bool>(true, false, true, true))), vec2<bool>(false, func_1(Struct_1(vec2<u32>(1u, 11501u)), global1[_wgslsmith_index_u32(firstTrailingBit(24764u), 11u)])), select(vec2<bool>(true, true), vec2<bool>(select(true, true, false), select(true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~0u, 0u, 30682u), select(firstLeadingBit(reverseBits(vec4<u32>(12236u, 0u, 35430u, 30301u))), vec4<u32>(1u, 1u, 1u, 1u), !(!vec4<bool>(true, var_1.x, var_1.x, var_1.x))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~75829u, 4294967295u, select(1u, 4294967295u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(60066u, 26419u, 4294967295u, 10864u), vec4<u32>(15251u, 0u, 70742u, 4294967295u)))) % vec4<u32>(32u)));
    let var_3 = u_input.a.yzw;
    let var_4 = func_1(Struct_1(vec2<u32>(~firstLeadingBit(62623u), ~_wgslsmith_sub_u32(16252u, 15557u))), Struct_1(vec2<u32>(~_wgslsmith_div_u32(4294967295u, 4294967295u), 1u)));
    global0 = array<vec3<bool>, 31>();
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(max(72227u, 4294967295u), _wgslsmith_mod_u32(83280u, 1u)) >> (firstTrailingBit(~vec2<u32>(108101u, 74669u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(362f, 111f, -1000f, -1199f) + vec4<f32>(-615f, -1059f, 746f, 538f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-275f, 396f, 437f, -359f), vec4<f32>(-313f, -830f, 307f, -1225f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1797f, -1909f, 107f, 986f), vec4<f32>(-1203f, 154f, 464f, 1544f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -963f, -579f, -529f), vec4<f32>(413f, 1000f, -753f, 1597f)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-180f, 328f, 1561f, -526f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-116f, -953f, 391f, 550f), vec4<f32>(681f, 850f, -2972f, -332f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1070f, 240f, 165f, -890f), vec4<f32>(494f, -543f, 259f, -250f))), true))))));
}

