struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(794f, 1008f, -565f, -114f, 669f, 583f, -493f, 1184f, -612f, -789f, -687f, -1410f, -828f);

var<private> global1: Struct_4;

var<private> global2: vec4<f32> = vec4<f32>(1290f, -845f, -1145f, 1438f);

var<private> global3: vec4<i32>;

var<private> global4: array<vec2<f32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = 2147483647i;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(max(abs(0i | var_0), 1i), ~firstTrailingBit(countOneBits(var_0))), vec2<i32>(0i, ~_wgslsmith_dot_vec3_i32(abs(global3.zzw), ~vec3<i32>(2147483647i, var_0, var_0))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1125f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))));
    var var_1 = 645f;
    let var_2 = ~vec4<u32>(u_input.a.x | 4294967295u, ~(30617u >> (~u_input.a.x % 32u)), u_input.a.x, _wgslsmith_div_u32(1u, abs(u_input.a.x >> (1u % 32u))));
    global3 = vec4<i32>(_wgslsmith_sub_i32(~0i, arg_3.x), -4311i, _wgslsmith_add_i32(min(~func_1(Struct_4(global1.a), var_2.yyz).x, arg_2), -(arg_3.x ^ _wgslsmith_mult_i32(global3.x, 0i))), ~((arg_3.x ^ arg_3.x) & -arg_2) << (4294967295u % 32u));
    var var_3 = u_input.a.x;
    return global2.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> vec2<bool> {
    global4 = array<vec2<f32>, 10>();
    let var_0 = vec4<i32>(-1i) * -(~(vec4<i32>(arg_3.d.d, 2147483647i, 22525i, global3.x) | vec4<i32>(arg_3.d.d, arg_3.d.d, arg_3.d.d, -11278i)));
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(u_input.a.x, arg_0.xz);
    var_1 = _wgslsmith_sub_u32(~u_input.a.x, 1u);
    return !(!select(arg_3.a, vec2<bool>(all(vec2<bool>(false, arg_3.b.b.x)), true), all(select(arg_3.d.c, vec3<bool>(arg_0.x, false, global1.a.x), arg_3.d.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(~72043u > (u_input.a.x << (22961u % 32u)), global2.x, _wgslsmith_dot_vec2_i32(global3.yz, func_1(Struct_4(vec3<bool>(global1.a.x, false, global1.a.x)), vec3<u32>(u_input.a.x, 4294967295u, 0u))), -global3.zz))))));
    global4 = array<vec2<f32>, 10>();
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 4294967295u), u_input.a.x), u_input.a.x, ~1u, 64722u) ^ ~(~select(vec4<u32>(0u, u_input.a.x, 23617u, 40123u), vec4<u32>(u_input.a.x, 30020u, u_input.a.x, u_input.a.x), vec4<bool>(true, global1.a.x, true, global1.a.x))), vec4<bool>(false, (_wgslsmith_f_op_f32(-global2.x) >= global0[_wgslsmith_index_u32(49396u, 13u)]) | (true & all(global1.a.zx)), global1.a.x, abs(u_input.a.x) >= u_input.a.x), global1.a, firstLeadingBit(select(-_wgslsmith_add_i32(-7118i, global3.x), func_1(Struct_4(vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), vec3<u32>(u_input.a.x, 4294967295u, 0u) << (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))).x, false)), Struct_1(1u, func_3(select(vec4<bool>(global1.a.x, global1.a.x, false, false), select(vec4<bool>(global1.a.x, false, true, false), vec4<bool>(false, true, false, false), global1.a.x), !vec4<bool>(false, false, true, global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 319f) - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))), 37071u, Struct_3(!vec2<bool>(true, global1.a.x), Struct_1(4294967295u, global1.a.zx), !global1.a.x, Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 51674u), vec4<bool>(global1.a.x, false, true, false), vec3<bool>(global1.a.x, false, true), 8110i, Struct_1(44374u, global1.a.yy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, -1030f, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))))));
    let var_2 = _wgslsmith_f_op_f32(abs(global2.x));
    var_1 = Struct_2(vec4<u32>(u_input.a.x, ~(~var_1.a.x), abs(min(reverseBits(var_1.e.a), ~17868u)), abs(~u_input.a.x)), !select(!var_1.b, vec4<bool>(false, all(var_1.b), u_input.a.x > 53750u, global1.a.x || var_1.e.b.x), global1.a.x), global1.a, firstLeadingBit(_wgslsmith_mult_i32(var_1.d, global3.x)), Struct_1(4294967295u >> ((min(var_1.e.a, u_input.a.x) & var_1.a.x) % 32u), vec2<bool>(true, true)));
    var var_3 = !vec4<bool>(!any(vec4<bool>(global1.a.x, true, global1.a.x, false)), !global1.a.x && true, true, _wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(global2.x * 478f)) > _wgslsmith_f_op_f32(-668f + -1582f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 86149u), var_1.a.xx), 21651u >> (u_input.a.x % 32u)), _wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(var_1.a.x)) >> (u_input.a.x % 32u));
}

