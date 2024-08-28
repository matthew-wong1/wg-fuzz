struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false)));

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(select(min(vec3<u32>(~arg_0, arg_0, arg_0 ^ 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), ~vec3<u32>(1u, 24834u, 48190u))), ~vec3<u32>(arg_0 | arg_0, 0u, ~arg_0), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, ~4294967295u, ~arg_0), vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(16637u), arg_0, abs(arg_0)), arg_0, ~abs(arg_0))));
    var var_1 = global1[_wgslsmith_index_u32(~28814u, 13u)];
    global1 = array<Struct_1, 13>();
    var_0 = firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(arg_0, _wgslsmith_add_u32(var_0.x, 19857u) >> (_wgslsmith_div_u32(arg_0, 157100u) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(24435u, var_0.x, arg_0)), ~vec3<u32>(arg_0, 1u, var_0.x)), reverseBits(reverseBits(vec3<u32>(var_0.x, 1u, var_0.x)))), arg_0));
    let var_2 = global1[_wgslsmith_index_u32(var_0.x, 13u)];
    return 19410u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    global2 = array<vec4<bool>, 24>();
    var var_0 = global1[_wgslsmith_index_u32(arg_1.x, 13u)];
    var var_1 = 1587f;
    let var_2 = vec4<i32>(arg_2.x, 1i ^ select(u_input.a, u_input.a, arg_0.x), -(~max(10801i >> (0u % 32u), _wgslsmith_div_i32(49192i, arg_2.x))), u_input.a);
    let var_3 = Struct_1(vec3<bool>(all(var_0.a), !(arg_0.x != false), !all(select(arg_0.xy, vec2<bool>(false, false), arg_0.x))), vec2<bool>(all(vec4<bool>(false, !arg_3, true, !var_0.a.x)), !all(!vec3<bool>(false, true, arg_0.x))));
    return _wgslsmith_sub_u32(~(arg_1.x & arg_1.x), 32528u);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~25585u, 13u)];
    var var_1 = reverseBits(~(vec3<u32>(4294967295u, 0u, 109744u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 27355u, arg_2), vec3<u32>(1u, 21212u, arg_2)) % vec3<u32>(32u)))) >> ((vec3<u32>(func_2(arg_2, var_0.b.x), 44757u, 4294967295u) ^ _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(7715u, arg_2, arg_2), vec3<u32>(47707u, arg_2, 36765u), vec3<u32>(2903u, arg_2, 0u)), vec3<u32>(29126u, arg_2, arg_2) << (vec3<u32>(4294967295u, arg_2, 0u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(1u, arg_2, 0u)))) % vec3<u32>(32u));
    var var_2 = Struct_1(vec3<bool>(false, arg_0.x, arg_0.x), !var_0.a.yy);
    var_1 = vec3<u32>(func_3(vec3<bool>(var_2.a.x, select(!var_0.a.x, var_2.b.x, -1i >= arg_1), any(!vec4<bool>(var_0.a.x, arg_0.x, false, arg_0.x))), ~(~(~vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x))), ~(~min(vec2<i32>(1i, arg_1), vec2<i32>(arg_1, 66160i))), !all(!vec4<bool>(var_2.b.x, var_0.a.x, var_0.b.x, arg_0.x))), _wgslsmith_dot_vec4_u32(abs(max(vec4<u32>(0u, arg_2, 0u, var_1.x), ~vec4<u32>(var_1.x, 9102u, 3775u, arg_2))), max(~vec4<u32>(arg_2, 32010u, arg_2, var_1.x), max(vec4<u32>(arg_2, 77584u, arg_2, arg_2) ^ vec4<u32>(arg_2, 1u, var_1.x, var_1.x), vec4<u32>(3296u, var_1.x, arg_2, var_1.x)))), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(57199u << (arg_2 % 32u), abs(51808u)), var_1.x));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.a, _wgslsmith_mod_i32(-4538i, _wgslsmith_add_i32(arg_1, arg_1) >> (reverseBits(arg_2) % 32u)), u_input.a, -1i), vec4<i32>(-6326i, i32(-1i) * -u_input.a, _wgslsmith_add_i32(-2147483647i, u_input.a), -8898i) << (vec4<u32>(var_1.x, _wgslsmith_add_u32(arg_2, arg_2), reverseBits(~4294967295u), func_2(arg_2, true) & var_1.x) % vec4<u32>(32u)));
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(4294967295u), firstTrailingBit(countOneBits(4294967295u))) >> (~61937u % 32u), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~79184u, 13u)];
    var_0 = global1[_wgslsmith_index_u32(min(~func_1(!vec3<bool>(true, true, var_0.a.x), ~u_input.a, 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], 862f))), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(1u), _wgslsmith_mod_u32(1u, 1u), ~11430u), ~vec3<u32>(1u, 1u, 1u))) >> (reverseBits(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(17132u, 17640u, 3432u)), ~(~vec3<u32>(2304u, 27898u, 4294967295u)))) % 32u), 13u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(102374u, 16u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, _wgslsmith_f_op_f32(max(1392f, -644f)))), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-977f, -264f), vec2<f32>(global0[_wgslsmith_index_u32(77955u, 16u)], 179f), var_0.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], -986f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(47847u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)])))))));
    global1 = array<Struct_1, 13>();
    var var_2 = -1154f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0.a.x))))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(select(1276f, 649f, any(var_0.a)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~4428u), 16u)])), -910f, ~vec4<i32>(firstLeadingBit(u_input.a << (40997u % 32u)), abs(46196i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(15374i, 2147483647i, 38423i))), ~u_input.a), reverseBits(4294967295u), -64175i);
}

