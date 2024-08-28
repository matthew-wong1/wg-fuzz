struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 13390u, 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    global0 = array<vec3<f32>, 7>();
    var var_0 = ~(~((_wgslsmith_add_i32(global1.b.x, global1.b.x) | arg_0.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, global2.x, global2.x, arg_1.x), ~vec4<u32>(72398u, u_input.b, 5659u, 0u)) % 32u)));
    let var_1 = arg_0;
    var var_2 = select(!vec3<bool>(true, true, global1.a), select(vec3<bool>(var_1.a || false, arg_0.a, !arg_0.a), select(select(select(vec3<bool>(true, arg_0.a, var_1.a), vec3<bool>(var_1.a, global1.a, false), vec3<bool>(true, global1.a, true)), !vec3<bool>(arg_0.a, false, true), select(vec3<bool>(true, false, false), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, true, global1.a))), !(!vec3<bool>(arg_0.a, arg_0.a, false)), vec3<bool>(any(vec3<bool>(global1.a, global1.a, false)), select(false, false, false), !var_1.a)), !vec3<bool>(false, 1u > u_input.a.x, true)), all(vec3<bool>(true, true, min(var_1.b.x, var_1.b.x) >= arg_3.c.x)));
    global2 = ~vec3<u32>(17674u, 1u, ~43373u);
    return arg_0.c.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, vec4<i32>(-2147483647i, global1.b.x, global1.b.x, 57931i), global1.c), vec3<u32>(u_input.a.x, 4294967295u, arg_2.x), 1u, Struct_2(vec4<f32>(arg_1.x, 1287f, 387f, global1.c.x), 1471f, vec2<i32>(global1.b.x, -14999i))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f * arg_0) - arg_1.x)), _wgslsmith_f_op_f32(-1271f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.x, arg_1.x)) + -889f)))));
    var var_2 = ~countOneBits(77011u | ~(arg_2.x & u_input.b));
    var var_3 = Struct_2(vec4<f32>(-394f, _wgslsmith_div_f32(-1621f, 1513f), arg_1.x, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global1.b.wx);
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), 384f, _wgslsmith_div_f32(global1.c.x, var_3.a.x), global1.c.x)))), 1240f, var_3.c);
    return ~firstTrailingBit(~_wgslsmith_add_vec2_u32(min(vec2<u32>(arg_2.x, 4294967295u), global2.xx), firstTrailingBit(vec2<u32>(arg_2.x, u_input.a.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    var var_0 = vec3<u32>(arg_0.x, ~(~arg_0.x), _wgslsmith_sub_u32(1u, ~_wgslsmith_mult_u32(~u_input.a.x, 1u)));
    global2 = u_input.a;
    let var_1 = Struct_1(!global1.a && any(!(!vec4<bool>(global1.a, global1.a, global1.a, global1.a))), abs(global1.b), global1.c);
    return Struct_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-153f + arg_2), arg_2, false))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2050f + _wgslsmith_f_op_f32(round(arg_2))))), global1.c.x, _wgslsmith_mult_vec2_i32(max(~_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b.x, var_1.b.x), vec2<i32>(-2147483647i, 1i)), global1.b.xw), var_1.b.xw));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = 1i >> (1u % 32u);
    var var_1 = func_4((abs(~u_input.a.xy) >> (~_wgslsmith_mod_vec2_u32(global2.zx, vec2<u32>(u_input.a.x, 45391u)) % vec2<u32>(32u))) ^ (func_2(_wgslsmith_f_op_f32(floor(1141f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, global1.c.x)), ~vec4<u32>(44362u, u_input.b, 0u, 34565u)) << (u_input.a.xx % vec2<u32>(32u))), i32(-1i) * -11868i, -215f);
    let var_2 = Struct_1(global1.a && true, abs(~global1.b), _wgslsmith_f_op_vec2_f32(var_1.a.yw - var_1.a.zw));
    var var_3 = global1.c;
    var var_4 = _wgslsmith_f_op_f32(-491f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + -523f)) * arg_0));
    return func_4(vec2<u32>(func_2(_wgslsmith_f_op_f32(floor(675f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-520f, 405f, -916f), vec3<f32>(696f, -138f, global1.c.x))), max(~vec4<u32>(global2.x, 12918u, 3759u, u_input.b), select(vec4<u32>(26157u, 4294967295u, u_input.b, global2.x), vec4<u32>(1u, global2.x, u_input.a.x, 82175u), var_2.a))).x, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(global2.x, u_input.b), firstTrailingBit(24510u))), firstTrailingBit(~var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(881f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(!(!global1.a), all(select(vec2<bool>(true, true), vec2<bool>(false, true), global1.a))));
    var var_1 = func_1(1767f);
    var var_2 = countOneBits(firstLeadingBit(_wgslsmith_mod_u32(38244u, 4294967295u)));
    var_2 = _wgslsmith_add_u32(max(~(~0u), _wgslsmith_mod_u32(~6154u, ~89314u)) << (firstLeadingBit(u_input.a.x) % 32u), func_2(global1.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.yxz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b, 7u)]))), max(~countOneBits(vec4<u32>(8679u, 48518u, 26163u, 0u)), vec4<u32>(~17653u, ~global2.x, 1u, global2.x ^ global2.x))).x);
    global1 = Struct_1(false, global1.b, _wgslsmith_f_op_vec2_f32(-var_1.a.zz));
    var var_3 = !(!(!select(!vec3<bool>(global1.a, false, false), vec3<bool>(true, true, true), var_1.a.x != 2154f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~global1.b.wwz));
}

