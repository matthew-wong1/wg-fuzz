struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -5056i;

var<private> global1: vec3<f32> = vec3<f32>(-922f, 1872f, -125f);

var<private> global2: i32 = 7462i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(399f, 645f, global1.x)))))), ~_wgslsmith_mult_u32(select(95251u, 48183u, true), _wgslsmith_dot_vec2_u32(arg_0.a.xx ^ arg_0.a.xx, min(arg_0.a.xz, vec2<u32>(arg_0.a.x, arg_0.a.x)))), vec3<bool>(any(vec3<bool>(true, true, all(vec2<bool>(true, false)))), all(vec3<bool>(global1.x == -1114f, true, any(vec2<bool>(true, true)))), !any(vec3<bool>(true, true, true))));
    var var_1 = var_0.c.x;
    global2 = ~_wgslsmith_div_i32((-1i & firstTrailingBit(u_input.d.x)) << (~_wgslsmith_dot_vec3_u32(arg_0.a.xzx, vec3<u32>(arg_0.a.x, 0u, 4294967295u)) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(45554i, u_input.e.x, -27033i, 0i), u_input.e));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -639f);
    let var_3 = Struct_4(Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.e.zy), u_input.d.x, reverseBits(-2147483647i), _wgslsmith_mult_i32(~0i, -1392i)), var_0.a.x, ~max(~33126u, u_input.c), (global1.x > _wgslsmith_f_op_f32(-642f - 1000f)) | (firstLeadingBit(u_input.d.x) > 0i)), abs(u_input.e), vec4<bool>(true, var_2 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1099f + -1518f)), all(!var_0.c), !(!(var_0.c.x & var_0.c.x))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), var_0.a.x, global1.x), 73918u, var_0.c));
    return vec3<bool>(!(!var_0.c.x), true, var_3.a.d);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = Struct_4(Struct_1(vec4<i32>(~_wgslsmith_mult_i32(u_input.b, 30663i), u_input.d.x, _wgslsmith_clamp_i32(u_input.b, firstTrailingBit(u_input.b), 2147483647i), u_input.b), global1.x, firstLeadingBit(~4294967295u) | ~select(4294967295u, arg_1.b, false), select(arg_1.c.x, true, false)), reverseBits(vec4<i32>(5783i ^ u_input.e.x, 10999i, 59622i, u_input.b)), vec4<bool>(false, true, any(select(vec4<bool>(arg_1.c.x, true, true, true), vec4<bool>(true, arg_1.c.x, false, arg_1.c.x), select(vec4<bool>(arg_2.c.x, false, false, false), vec4<bool>(arg_1.c.x, arg_2.c.x, arg_1.c.x, false), arg_1.c.x))), !(!arg_1.c.x) | false), arg_2);
    var var_1 = Struct_4(Struct_1(vec4<i32>(~(i32(-1i) * -1i), -32562i, ~(~15595i), abs(u_input.b)), 1029f, var_0.d.b, true), var_0.b << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55074u, 0u, arg_1.b), ~vec3<u32>(0u, 0u, var_0.d.b)), ~(~arg_1.b), ~(~arg_1.b), ~1u) % vec4<u32>(32u)), var_0.c, Struct_2(var_0.d.a, var_0.d.b, vec3<bool>(true, arg_2.c.x, true)));
    let var_2 = u_input.e.yzy;
    let var_3 = Struct_3(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(arg_1.b, arg_2.b, var_0.a.c, u_input.a)), vec4<u32>(35195u, 0u, 40395u, 2012u)), abs(vec4<u32>(arg_2.b, 20837u, arg_1.b, arg_1.b)) >> (firstLeadingBit(vec4<u32>(var_0.a.c, arg_2.b, 34741u, u_input.c)) % vec4<u32>(32u)))));
    var var_4 = 18610u;
    return !select(any(select(vec4<bool>(true, false, false, arg_2.c.x), !vec4<bool>(false, true, arg_2.c.x, var_1.c.x), select(var_0.c, vec4<bool>(false, arg_2.c.x, true, false), vec4<bool>(arg_1.c.x, var_1.c.x, false, false)))), (any(var_1.d.c.xz) && false) || false, true);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = !vec2<bool>(false, u_input.a >= countOneBits(abs(33005u)));
    let var_1 = func_4(global1.x, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(sign(global1.x))), 121059u, select(vec3<bool>(false, var_0.x, true), !vec3<bool>(false, var_0.x, false), any(vec2<bool>(var_0.x, var_0.x)))), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1601f, 238f, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1775f, 1215f) * vec3<f32>(global1.x, 401f, -1000f))), 0u, select(func_3(Struct_3(vec4<u32>(u_input.a, u_input.a, 18301u, 1u))), vec3<bool>(true, true, var_0.x), true))) & any(!vec4<bool>(var_0.x, var_0.x || var_0.x, !var_0.x, true));
    var var_2 = Struct_3(vec4<u32>(u_input.c, u_input.a, ~u_input.c, ~_wgslsmith_mod_u32(~u_input.a, 1u)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 825f, -703f))))), 1u, select(select(select(vec3<bool>(false, var_0.x, false), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, var_0.x)), var_1), !(!vec3<bool>(true, var_0.x, false)), any(select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, true, false)))), vec3<bool>(false, func_3(Struct_3(vec4<u32>(0u, 38705u, u_input.a, 38793u))).x, u_input.d.x > -27036i), select(var_0.x, true, true)));
    var var_4 = reverseBits(0i);
    return Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_3.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, -176f, global1.x)))), var_3.a)), var_2.a.x, !var_3.c);
}

fn func_1(arg_0: Struct_3) -> bool {
    global0 = _wgslsmith_div_i32(1i, -14972i);
    global0 = firstLeadingBit(~_wgslsmith_mod_i32(~abs(u_input.d.x), -1i));
    var var_0 = func_2(~firstLeadingBit(firstLeadingBit(vec2<i32>(-41940i, -40198i))));
    global2 = u_input.e.x;
    var_0 = func_2(reverseBits(_wgslsmith_add_vec2_i32(countOneBits(firstLeadingBit(u_input.d.xx)), -abs(vec2<i32>(4043i, 0i)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var var_1 = u_input.a;
    var var_2 = vec3<bool>(func_1(Struct_3(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a))), true, func_2(u_input.d.xz).c.x);
    global0 = _wgslsmith_mult_i32(select(u_input.d.x, _wgslsmith_div_i32(1i, -u_input.e.x), true), _wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(~u_input.d.x, 14479i)), _wgslsmith_sub_i32(select(~5063i, u_input.b, false & var_2.x), u_input.e.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)), i32(-1i) * -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(37494i, ~_wgslsmith_mult_vec2_u32(~select(vec2<u32>(21167u, u_input.a), vec2<u32>(u_input.a, u_input.c), var_2.yz), vec2<u32>(~u_input.c, 0u)), select(reverseBits(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a) ^ reverseBits(vec4<u32>(50984u, u_input.c, 0u, 4294967295u))), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(63671u, u_input.a, u_input.c, u_input.a), vec4<u32>(u_input.a, u_input.c, 78245u, 52162u)), vec4<u32>(max(u_input.c, 22507u), 1217u, _wgslsmith_mult_u32(4294967295u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(71543u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.c)))), false));
}

