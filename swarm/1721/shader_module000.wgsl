struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -3698i);

var<private> global2: array<i32, 9>;

var<private> global3: vec3<f32> = vec3<f32>(-191f, -1522f, 1000f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = abs(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(global2[_wgslsmith_index_u32(44605u, 9u)], 16407i, global1.x)) & reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(arg_0.b, 9u)], 0i, global2[_wgslsmith_index_u32(4294967295u, 9u)])), reverseBits(min(vec3<i32>(global1.x, 2147483647i, global1.x), -vec3<i32>(global1.x, global2[_wgslsmith_index_u32(arg_0.b, 9u)], global1.x)))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1039f + global3.x) - _wgslsmith_f_op_f32(sign(1522f)))) - 154f), _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(round(global3.x)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(select(~(vec2<i32>(-459i, global1.x) | vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), -countOneBits(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_1.b, 9u)])), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_0.c, arg_0.a)))), vec2<i32>(reverseBits(-9986i), countOneBits(~reverseBits(16437i))));
    var var_3 = !vec3<bool>(false, !(!all(vec3<bool>(var_1.a, arg_1, var_1.c))), max(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(20610i, -62240i), vec2<i32>(-48932i, global2[_wgslsmith_index_u32(43994u, 9u)]))) > (_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], global1.x, global1.x, -1i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], -26830i, 2147483647i, global1.x)) >> (~4294967295u % 32u)));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    var var_0 = arg_0;
    global1 = vec2<i32>(-36914i, ~(~(-25984i) & global1.x));
    let var_1 = vec2<u32>(var_0.b, func_3(arg_2, select(true, global2[_wgslsmith_index_u32(u_input.a.x, 9u)] < -7978i, all(vec2<bool>(false, true))))) ^ (vec2<u32>(u_input.a.x, ~_wgslsmith_mod_u32(arg_3.x, 52559u)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, arg_2.b), vec4<u32>(arg_0.b, u_input.a.x, arg_2.b, 23160u)) << (var_0.b % 32u), 1u) % vec2<u32>(32u)));
    global1 = select(countOneBits(abs(reverseBits(max(vec2<i32>(691i, 1i), vec2<i32>(-1i, global2[_wgslsmith_index_u32(arg_3.x, 9u)]))))), -firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(0i, 0i), global2[_wgslsmith_index_u32(var_0.b, 9u)] | -32955i)), select(select(select(vec2<bool>(arg_1, true), select(vec2<bool>(var_0.c, arg_0.c), vec2<bool>(true, arg_2.c), vec2<bool>(var_0.a, arg_2.c)), global2[_wgslsmith_index_u32(arg_2.b, 9u)] == -1i), vec2<bool>(true, global3.x > global3.x), arg_1), select(select(select(vec2<bool>(arg_2.c, arg_2.a), vec2<bool>(true, true), vec2<bool>(arg_2.a, arg_1)), select(vec2<bool>(arg_2.c, var_0.c), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, var_0.c)), select(vec2<bool>(arg_0.c, false), select(vec2<bool>(arg_0.c, arg_1), vec2<bool>(var_0.a, false), arg_2.a), !vec2<bool>(false, arg_2.c)), true), vec2<bool>(true, var_0.a)));
    let var_2 = Struct_1(arg_0.a, abs(var_0.b), global2[_wgslsmith_index_u32(abs(abs(u_input.a.x) << (firstTrailingBit(var_1.x) % 32u)), 9u)] >= ~countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -18609i), vec2<i32>(-21956i, 0i))));
    return select(any(select(vec3<bool>(true, arg_0.a, true), !(!vec3<bool>(true, false, var_0.a)), !select(vec3<bool>(arg_2.a, var_2.a, false), vec3<bool>(true, false, arg_1), true))), arg_1, arg_2.c);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(false, _wgslsmith_sub_u32(u_input.a.x, ~(~83044u) >> (min(19176u | u_input.a.x, ~19742u) % 32u)), (all(vec3<bool>(true, true, true)) | !func_2(Struct_1(false, u_input.a.x, false), false, Struct_1(false, 10098u, false), u_input.a.xx)) | !(global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 9u)] >= _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 28776i, global1.x)));
    return StorageBuffer(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(9038u, 5933u, ~1u, ~1u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.b, 1u, u_input.a.x, u_input.a.x)), select(~vec4<u32>(u_input.a.x, var_0.b, u_input.a.x, u_input.a.x), select(vec4<u32>(u_input.a.x, var_0.b, 1u, u_input.a.x), vec4<u32>(var_0.b, 10521u, 1u, u_input.a.x), vec4<bool>(var_0.a, false, var_0.a, false)), !vec4<bool>(var_0.a, false, var_0.a, false)), ~vec4<u32>(var_0.b, 18648u, 42954u, var_0.b) >> (countOneBits(vec4<u32>(u_input.a.x, 1u, var_0.b, var_0.b)) % vec4<u32>(32u)))), _wgslsmith_mod_vec2_i32(vec2<i32>(~global2[_wgslsmith_index_u32(var_0.b, 9u)], 58832i), countOneBits(vec2<i32>(global1.x, 0i))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1555f, global3.x, 203f) * vec3<f32>(global3.x, 1000f, 1237f)), _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, 439f), vec3<f32>(-1000f, global3.x, 1909f))))))), min(-(vec2<i32>(-34516i, 27666i) | _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 51327i), vec2<i32>(global1.x, global2[_wgslsmith_index_u32(86863u, 9u)]))), ~max(select(vec2<i32>(global1.x, global2[_wgslsmith_index_u32(var_0.b, 9u)]), vec2<i32>(0i, -21451i), var_0.c), vec2<i32>(global1.x, -58674i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

