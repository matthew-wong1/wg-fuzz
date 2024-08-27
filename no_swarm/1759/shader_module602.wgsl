struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 6>;

var<private> global2: u32 = 0u;

var<private> global3: array<i32, 14> = array<i32, 14>(1i, -13157i, -32703i, 2147483647i, 0i, -20940i, -1i, -3712i, 24642i, i32(-2147483648), -19229i, 2147483647i, 2147483647i, 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec4<i32> {
    var var_0 = Struct_1(~select(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-16336i, global3[_wgslsmith_index_u32(u_input.c, 14u)], global3[_wgslsmith_index_u32(u_input.c, 14u)], u_input.d.x), vec4<i32>(global3[_wgslsmith_index_u32(1u, 14u)], u_input.a, global3[_wgslsmith_index_u32(41569u, 14u)], global3[_wgslsmith_index_u32(u_input.c, 14u)])), abs(1i), u_input.d.x), vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(57260u, 14u)]), u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 14u)], global3[_wgslsmith_index_u32(3099u, 14u)], u_input.a), vec4<i32>(global3[_wgslsmith_index_u32(13332u, 14u)], u_input.a, u_input.d.x, u_input.a)), global3[_wgslsmith_index_u32(17041u, 14u)]), arg_1), abs(u_input.d.zx) | u_input.d.zz, u_input.b.x, global1[_wgslsmith_index_u32(u_input.c, 6u)]);
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    global3 = array<i32, 14>();
    global3 = array<i32, 14>();
    return _wgslsmith_mod_vec4_i32(vec4<i32>(~(~u_input.a), var_0.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.x, u_input.a, 2147483647i), firstTrailingBit(vec4<i32>(var_0.a.x, var_0.b.x, 1i, var_0.b.x))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(31945u, 31932u, 1u, 4294967295u) & u_input.b, vec4<u32>(var_0.c, arg_0, 36256u, arg_0)), 14u)], global3[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(2070u | var_0.c, var_0.c), 1u | _wgslsmith_dot_vec3_u32(u_input.b.wyx, u_input.b.www), true), 14u)]), ~select(firstTrailingBit(var_0.a) << (vec4<u32>(78280u, 1u, var_0.c, 8940u) % vec4<u32>(32u)), var_0.a ^ var_0.a, select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, true, true, true), arg_1)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec2<u32>(~u_input.b.x, u_input.b.x);
    let var_1 = Struct_1(func_3(~77540u, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0 << (var_0.x % 32u), 6u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 6u)])) > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(133784u, 6u)])), u_input.d.xy, ((4294967295u | _wgslsmith_dot_vec2_u32(u_input.b.yz, var_0)) >> (var_0.x % 32u)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), ~u_input.b.yy) % 32u), -1984f);
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2233f - 1f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_0, 1u, var_1.c, arg_0)), 6u)], true))));
    var var_4 = var_1;
    return Struct_1(~vec4<i32>(2147483647i, reverseBits(firstTrailingBit(12311i)), global3[_wgslsmith_index_u32(u_input.b.x, 14u)], u_input.d.x), var_4.a.ww, select(29244u, arg_0, arg_1.a), _wgslsmith_f_op_f32(max(587f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.d, 424f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(all(vec4<bool>(all(vec3<bool>(true, false, true)), select(true, true, true), -1653f != _wgslsmith_div_f32(arg_1.x, -1826f), false)));
    var var_1 = Struct_2(var_0.a);
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)));
    var var_4 = u_input.d.yy;
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = select(select(vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), false, select(0u < arg_0.c, true, true)), vec3<bool>(true, !all(vec2<bool>(true, false)), any(vec2<bool>(false, false)) | false), vec3<bool>(false, !all(vec3<bool>(true, false, false)), select(true, false, true) && (u_input.d.x > u_input.a))), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), !vec3<bool>(any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, false)), false), select(any(vec4<bool>(true, true, true, true)) & true, true, false)), vec3<bool>(any(vec2<bool>(true, all(vec3<bool>(true, false, false)))), _wgslsmith_mult_i32(func_3(4294967295u, true).x, u_input.d.x >> (u_input.b.x % 32u)) >= (~arg_0.a.x | _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], global3[_wgslsmith_index_u32(arg_0.c, 14u)])), false));
    var var_1 = _wgslsmith_f_op_f32(1000f * -1443f);
    var_1 = arg_0.d;
    var var_2 = u_input.b.xw;
    var_2 = ~(~vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(arg_0.c), ~arg_0.c), func_2(countOneBits(0u), Struct_2(var_0.x)).c));
    return Struct_2(all(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(true, true, false, var_0.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(exp2(arg_0.d));
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1993f, arg_0.d)), vec2<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], -1000f, false)), -1166f), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d, arg_0.d, global1[_wgslsmith_index_u32(88238u, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)])))))), func_2(~32734u, Struct_2(true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(5941u, u_input.c, arg_0.c, arg_0.c), u_input.b) << (arg_0.c % 32u)));
    var var_1 = !(!var_0.a) && select(_wgslsmith_f_op_f32(f32(-1f) * -743f) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, arg_0.d)), var_0.a, select(var_0.a, true, var_0.a));
    let var_2 = Struct_2(!(var_0.a && false));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1586f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d)) - -542f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 14>();
    let var_0 = 408f;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, var_0)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global1[_wgslsmith_index_u32(u_input.c, 6u)]))))) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + global1[_wgslsmith_index_u32(u_input.c, 6u)]))), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.c, 4294967295u)), 6u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 889f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(873f)) * var_0), all(vec2<bool>(true, true))))), vec2<bool>(true, true)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -395f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)])))), vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a, -30158i), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 14u)]), 0u, var_1.x), _wgslsmith_sub_i32(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 6u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(23555u, 1u, 1u), u_input.b.wxy, vec3<u32>(0u, 4294967295u, 2276u)))), var_1.x)));
    let var_2 = Struct_1(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(1u, 14u)]), ~vec2<i32>(-15396i, 2147483647i)), -u_input.d.x, 0i, func_3(0u, true).x), _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.a, u_input.a) >> (~(~u_input.b.yx) % vec2<u32>(32u)), vec2<i32>(global3[_wgslsmith_index_u32(func_2(u_input.b.x, Struct_2(true)).c, 14u)] ^ (u_input.d.x >> (u_input.c % 32u)), ~(-1i))), _wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) - _wgslsmith_f_op_f32(-var_0))))));
    global3 = array<i32, 14>();
    var_1 = vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f - -404f) - -1228f));
    let var_3 = select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !func_5(var_2).a);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~max(1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 25888u, 25387u), vec3<u32>(3561u, 1u, u_input.c)))), 14u)], ~4294967295u);
}

