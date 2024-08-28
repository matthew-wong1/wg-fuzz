struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 15>;

var<private> global3: array<Struct_2, 25>;

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1997f - _wgslsmith_f_op_f32(f32(-1f) * -1536f))))), any(select(vec2<bool>(true, arg_2), !select(vec2<bool>(false, arg_2), vec2<bool>(true, true), arg_2), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), arg_2))), arg_0);
    var var_1 = Struct_4(global1.d, vec4<f32>(1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.b.x, var_0.a)))), _wgslsmith_f_op_f32(-2369f + var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d)))), arg_1.c, _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    let var_2 = global0[_wgslsmith_index_u32(~(~1u), 25u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b.x, var_2.c.x)))))), arg_1.b.zx, true)));
    var var_4 = vec4<i32>(4429i, min(var_2.d, reverseBits(-u_input.a.x)), abs(-6198i), firstLeadingBit(-25577i));
    return _wgslsmith_mod_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.c.a.x, var_2.a.x, 49281u, ~40282u), arg_0.a), var_2.a.x), var_2.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    let var_0 = -1606f;
    global3 = array<Struct_2, 25>();
    let var_1 = Struct_1(~vec4<u32>(~849u, arg_0.a.x, func_3(Struct_2(vec4<u32>(arg_1, 19583u, 1u, 1u), -14616i, u_input.a.zy), Struct_4(arg_0.d, vec4<f32>(685f, -872f, 533f, arg_0.c.x), vec3<i32>(arg_0.d, 0i, -2147483647i), arg_2), true), max(7990u, arg_0.a.x)) | vec4<u32>(global1.a.x, arg_1, 13996u, ~1u), arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-812f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-836f)), 1272f))), _wgslsmith_sub_i32(~0i, global1.d << (_wgslsmith_mod_u32(22845u, 4294967295u) % 32u)) & ~(-(1i & global1.d)));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + global1.b.x));
    var var_2 = arg_0;
    return _wgslsmith_dot_vec4_i32(u_input.a, ~(u_input.a >> (~global1.a % vec4<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: f32) -> vec4<u32> {
    var var_0 = firstLeadingBit(4294967295u);
    global2 = array<vec2<i32>, 15>();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-768f, _wgslsmith_f_op_f32(f32(-1f) * -532f), false)), global1.c.x));
    global0 = array<Struct_1, 25>();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1707f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(1511f + -760f)), 125f)))));
    return ~(vec4<u32>(global1.a.x, 4294967295u, 4294967295u, ~reverseBits(61959u)) << (global1.a % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = func_4(-abs(~func_2(global0[_wgslsmith_index_u32(arg_0.c.a.x, 25u)], arg_0.c.a.x, 1548f, vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b))), 926f);
    var var_1 = _wgslsmith_f_op_f32(trunc(-717f));
    global2 = array<vec2<i32>, 15>();
    return select(select(vec2<bool>(any(vec3<bool>(arg_0.b, false, true)), true), select(!(!vec2<bool>(true, arg_0.b)), !(!vec2<bool>(arg_0.b, true)), !vec2<bool>(arg_0.b, false)), !(!arg_0.b | true)), select(vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(false == arg_0.b, true), arg_0.b), vec2<bool>(true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(vec4<bool>(true | any(vec4<bool>(false, true, true, false)), any(func_1(Struct_3(global1.b.x, true, Struct_2(global1.a, -740i, vec2<i32>(-1i, global1.d))), global1.a, global1.b.xy, u_input.a.wy)), any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, false)) | true)), !select(false, u_input.a.x == 2147483647i, false) || !(!func_1(Struct_3(-659f, false, global3[_wgslsmith_index_u32(global1.a.x, 25u)]), vec4<u32>(global1.a.x, 17756u, 18842u, 17238u), vec2<f32>(global1.c.x, 1508f), u_input.a.xx).x), all(select(vec2<bool>(any(vec3<bool>(true, true, false)), true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    global4 = global1.b.x;
    global4 = -186f;
    global0 = array<Struct_1, 25>();
    var var_1 = vec3<u32>(~global1.a.x, ~_wgslsmith_sub_u32(global1.a.x ^ firstLeadingBit(global1.a.x), global1.a.x), 4294967295u);
    let var_2 = _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + 296f));
    var var_3 = Struct_4(27501i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 918f, -2001f, global1.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-158f, 2084f, -151f, global1.b.x), vec4<f32>(1719f, 162f, 380f, var_2), !vec4<bool>(false, var_0.x, var_0.x, false))))), vec3<i32>(~(-2147483647i), ~63310i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f * global1.c.x)))));
    global3 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.xxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.ywy * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1312f, global1.b.x, var_2), vec3<f32>(var_2, 1012f, 102f))), vec3<f32>(global1.c.x, global1.c.x, var_3.b.x))))), firstLeadingBit(44633i), 1u);
}

