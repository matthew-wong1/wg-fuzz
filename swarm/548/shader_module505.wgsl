struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(854f, -1000f, -802f, -739f, -509f, -512f, -1000f, -1006f, 2141f, -272f, -1000f, -499f, 1326f, -154f, -563f, -129f, -1000f, -545f, -198f, 605f, 120f, -1421f, -1019f);

var<private> global1: array<f32, 11>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global3: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~abs(1u), 13u)];
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, u_input.a >> (0u % 32u)), ~(~(-43507i)), countOneBits(i32(-1i) * -1i)), ~u_input.a) ^ _wgslsmith_sub_vec2_i32(reverseBits(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-31607i | _wgslsmith_div_i32(u_input.a, u_input.a), 1i));
    let var_2 = Struct_1(true);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -657f);
    global0 = array<f32, 23>();
    return var_2;
}

fn func_3() -> u32 {
    var var_0 = !(!select(vec2<bool>(true, -2880i < u_input.a), vec2<bool>(all(vec3<bool>(false, false, true)), true), select(true, true, any(vec2<bool>(true, true)))));
    global3 = ~0u;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(67617u, 34469u), ~12238u, ~9548u), abs(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)))), vec3<u32>(1u, 1u, 1u));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    var var_0 = func_2(arg_1.x);
    var var_1 = min(_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(firstTrailingBit(1u >> (1u % 32u)), ~1u)), ~func_3());
    global2 = array<Struct_1, 13>();
    var var_2 = vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(69259u, 3831u), ~0u, 16707u), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, 12473u)), vec3<u32>(7801u, 9979u, 1u), ~vec3<u32>(4294967295u, 5055u, 29916u))) << (~1u % 32u), 11u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-275f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(6821u, 23u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1769f)));
    var var_3 = ~vec3<i32>(~(u_input.a << (79148u % 32u)) | -1i, abs(arg_0), 21914i);
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_clamp_u32(1u, 1u, 34256u)), abs(~1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(min(1u, 0u), 1u), firstLeadingBit(select(vec2<u32>(47568u, 93303u), vec2<u32>(9777u, 29576u), var_0.a)))) << (14697u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 13>();
    let var_0 = max(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 0u, 1u, 0u)) ^ vec4<u32>(~19566u, ~(~58976u), func_1(-1i | u_input.a, select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), 7710u), ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, 0u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = countOneBits(~(~vec2<u32>(103087u, var_0.x) & ~vec2<u32>(var_0.x, 50876u)));
    global1 = array<f32, 11>();
    var var_2 = false;
    let var_3 = select(~max(select(vec2<u32>(1u, var_0.x), var_0.yy, select(vec2<bool>(false, true), vec2<bool>(false, true), false)), ~(~var_0.xy)), var_0.wz, vec2<bool>(~firstTrailingBit(var_1.x) >= 1u, any(vec4<bool>(true, true, true, true))));
    let var_4 = func_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1073f, global1[_wgslsmith_index_u32(var_1.x, 11u)], -1066f)) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(1u, 11u)], 834f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_3.x, 23u)], global0[_wgslsmith_index_u32(20358u, 23u)], -243f) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(0u, 11u)])))), ~vec4<i32>(-6001i, reverseBits(u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a | 0i) & -vec4<i32>(max(u_input.a, -2147483647i), -u_input.a, abs(u_input.a), u_input.a));
}

