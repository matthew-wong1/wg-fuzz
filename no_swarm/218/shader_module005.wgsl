struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 31> = array<f32, 31>(1000f, -887f, -1405f, -801f, 1253f, -266f, -1000f, 1595f, -2614f, 1439f, -1757f, -1235f, -1000f, -934f, -115f, -1001f, 719f, 173f, 758f, 1000f, 815f, -387f, 350f, 256f, 501f, -1095f, 1000f, 1000f, -847f, -2142f, 1000f);

var<private> global2: vec2<i32> = vec2<i32>(2315i, 1i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: bool) -> vec3<u32> {
    global0 = Struct_2(Struct_1(global0.b.c.yx, 1405f, vec4<bool>(global0.c.x, (false && global0.b.a.x) || select(global0.b.c.x, arg_2, global0.b.c.x), all(vec3<bool>(true, global0.c.x, false)), (arg_1.x ^ 2147483647i) > ~arg_1.x), vec2<u32>(u_input.a.x, 0u), select(~(global0.b.e | vec4<u32>(41886u, 1u, u_input.c.x, u_input.c.x)), countOneBits(~vec4<u32>(global0.a.e.x, 39947u, u_input.c.x, u_input.a.x)), !select(vec4<bool>(false, global0.a.a.x, false, false), vec4<bool>(true, true, true, arg_2), vec4<bool>(true, true, true, global0.b.c.x)))), global0.b, global0.a.c.xyy);
    var var_0 = 1u;
    var var_1 = ~(~(-1i));
    global2 = -_wgslsmith_add_vec2_i32(vec2<i32>(0i, 37962i), (arg_1.yy | vec2<i32>(arg_1.x, u_input.b)) << (~u_input.a.zz % vec2<u32>(32u)));
    var var_2 = _wgslsmith_add_vec4_u32(select(select(global0.b.e, global0.b.e, all(global0.a.c)), vec4<u32>(u_input.a.x, countOneBits(1u), u_input.a.x, 1u), vec4<bool>(true, global0.a.c.x, global1[_wgslsmith_index_u32(13482u, 31u)] > global1[_wgslsmith_index_u32(global0.a.e.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)] >= global1[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_div_vec4_u32(~global0.b.e | ~global0.a.e, vec4<u32>(min(1u, 1u), _wgslsmith_dot_vec3_u32(global0.a.e.wwx, vec3<u32>(global0.a.e.x, 1u, u_input.a.x)), u_input.a.x, 75972u))) & global0.b.e;
    return ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32((global0.b.e.xzw ^ var_2.zzx) << (~global0.b.e.ywz % vec3<u32>(32u)), abs(vec3<u32>(global0.b.e.x, global0.a.d.x, 0u) | vec3<u32>(0u, 21531u, u_input.a.x))), ~(global0.a.e.yxz | vec3<u32>(4294967295u, 4294967295u, var_2.x)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = !all(global0.b.c);
    global2 = vec2<i32>(u_input.b, u_input.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f * _wgslsmith_div_f32(1027f, -1065f)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)]))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)]) + _wgslsmith_div_f32(arg_0, 904f))))), _wgslsmith_div_f32(global0.b.b, arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2844f - 264f)) * arg_0) - global1[_wgslsmith_index_u32(27455u, 31u)]));
    return Struct_3(_wgslsmith_mod_vec3_u32(u_input.a, func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global2.x), vec2<i32>(-1i, 53514i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, 22504i, global2.x, -2147483647i), vec4<i32>(global2.x, -2147483647i, u_input.b, 1i)), u_input.b > u_input.b) | u_input.a), -global2.x, -(~(-2147483647i)) != u_input.b, Struct_2(global0.b, Struct_1(global0.c.xz, global0.a.b, !global0.a.c, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(4294967295u, 0u)), _wgslsmith_div_vec4_u32(global0.b.e ^ global0.b.e, global0.a.e)), select(!global0.a.c.wxw, global0.a.c.xwz, global0.c)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = func_2(-1069f);
    global2 = vec2<i32>(~_wgslsmith_dot_vec2_i32(arg_1.ww, max(arg_1.wz, vec2<i32>(-1i, global2.x))), -global2.x);
    var var_1 = vec4<bool>(true, !(any(vec4<bool>(false, global0.a.a.x, false, false)) & (true || (var_0.b >= 18440i))), global0.c.x, false);
    let var_2 = true;
    let var_3 = Struct_2(func_2(-460f).d.b, func_2(207f).d.a, vec3<bool>(true, !(!global0.b.a.x), false));
    return Struct_5(25766u | u_input.c.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec2<f32>) -> bool {
    var var_0 = vec2<i32>(u_input.b, -2147483647i);
    var_0 = -_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(-33676i, var_0.x)), vec2<i32>(-2147483647i, 0i)) & countOneBits(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, 2147483647i), _wgslsmith_clamp_i32(global2.x, global2.x, -189i)), -33812i));
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-45795i, global2.x, 0i, u_input.b), vec4<i32>(global2.x, -2147483647i, 16962i, -58588i)), 1i, -u_input.b, -1i), ~(vec4<i32>(global2.x, u_input.b, 69696i, 30474i) ^ vec4<i32>(u_input.b, 1917i, -71257i, global2.x)), !vec4<bool>(global0.a.c.x, true, global0.c.x, true)), vec4<i32>(-42191i, 1868i, _wgslsmith_add_i32(-1i ^ var_0.x, global2.x), -global2.x)), ~firstLeadingBit(abs(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -1i, 1i, -2147483647i), vec4<i32>(-10058i, -13569i, global2.x, 4443i)))));
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    return global0.a.c.x;
}

fn func_5(arg_0: bool) -> Struct_2 {
    global1 = array<f32, 31>();
    var var_0 = Struct_2(func_2(global0.a.b).d.a, Struct_1(vec2<bool>(arg_0, arg_0 == false), global0.b.b, vec4<bool>(~1u >= func_2(-401f).a.x, all(select(global0.b.c, global0.a.c, vec4<bool>(false, global0.b.a.x, true, arg_0))), all(global0.b.c), true && (global0.a.e.x <= 4294967295u)), u_input.a.zy, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.d.x, _wgslsmith_mult_u32(u_input.c.x, 54377u), 20041u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.e.x, u_input.c.x), vec2<u32>(5518u, global0.a.e.x))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.e.x, global0.b.e.x, 25948u, 83675u), global0.b.e)))), !vec3<bool>(global0.c.x, !global0.b.a.x, false));
    global2 = abs(vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, func_2(348f).b), vec2<i32>(u_input.b, -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(select(var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(12741u, 31u)]).d.a.b - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 31u)])) + _wgslsmith_f_op_f32(-121f - -1251f))), global1[_wgslsmith_index_u32(global0.a.d.x, 31u)] <= _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 60961u), 31u)], _wgslsmith_f_op_f32(-1204f - 799f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b, 184f, global1[_wgslsmith_index_u32(4294967295u, 31u)], global0.a.b)))))))));
    return Struct_2(Struct_1(!vec2<bool>(var_0.b.c.x, global0.a.c.x), var_1, func_2(var_1).d.b.c, global0.a.d, abs(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1020u, 29368u, 11852u), vec4<u32>(1u, 81645u, 21617u, var_0.a.e.x))))), global0.a, !(!select(!vec3<bool>(var_0.b.c.x, arg_0, false), !global0.b.c.wyx, !var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (vec3<i32>(i32(-1i) * -2147483647i, -_wgslsmith_sub_i32(0i, 1i), -49898i) & firstTrailingBit(abs(-vec3<i32>(-27083i, global2.x, global2.x)))) << (vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.e.x, global0.a.e.x), ~global0.a.d), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global0.a.d.x, global0.b.e.x), global0.b.d.x), 0u), global0.b.d.x) % vec3<u32>(32u));
    let var_1 = ~countOneBits(vec2<i32>(var_0.x | global2.x, _wgslsmith_mod_i32(abs(-1i), global2.x)));
    var var_2 = Struct_4(func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(2554f + global0.a.b), _wgslsmith_f_op_f32(-275f - -845f)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-310f, global1[_wgslsmith_index_u32(4294967295u, 31u)], 190f)), firstLeadingBit(vec4<i32>(var_0.x, -8770i, 42409i, 26798i)), select(vec4<bool>(global0.c.x, true, true, global0.b.a.x), vec4<bool>(global0.b.c.x, true, global0.a.c.x, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2477f, -275f) + vec2<f32>(242f, global1[_wgslsmith_index_u32(4294967295u, 31u)])) + vec2<f32>(global0.b.b, global1[_wgslsmith_index_u32(32066u, 31u)])))), 161f);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.d.x, global0.a.e.x, _wgslsmith_sub_u32(abs(~28426u), _wgslsmith_sub_u32(global0.a.d.x, ~func_2(923f).d.b.e.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b, -1000f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], -2154f, global0.a.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 31u)], -1724f, var_2.a.a.b) * vec3<f32>(-267f, -598f, -1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b.b, var_2.a.b.b, 1644f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b, global1[_wgslsmith_index_u32(var_2.a.b.d.x, 31u)], global1[_wgslsmith_index_u32(15277u, 31u)]))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(782f, -1000f, 815f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.b, -172f, 1426f))))))))));
}

