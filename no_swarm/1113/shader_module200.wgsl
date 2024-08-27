struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -924f;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(98690u, 44199u, 1u, 0u), 10061u, vec4<bool>(true, true, true, false));

var<private> global2: array<Struct_1, 22>;

var<private> global3: u32 = 48188u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = 160f;
    var var_1 = arg_1;
    let var_2 = vec4<bool>(!(var_0 > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 + var_0), var_0))), !(!(u_input.b >= 0i)), !(!(0u == var_1.a.x)), select(global1.c.x, any(vec4<bool>(true, var_0 == var_0, var_1.c.x, all(var_1.c.yyz))), var_1.c.x));
    global2 = array<Struct_1, 22>();
    let var_3 = -5519i;
    return global1.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_2;
    var var_1 = false;
    let var_2 = var_0;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, func_3(var_0.b, Struct_1(vec4<u32>(0u, 9954u, 1u, 1u), arg_2.b, var_0.c)) | _wgslsmith_add_u32(17010u, 1796u)), 0u), reverseBits(55346u));
    var_1 = any(select(vec2<bool>(!(arg_1.x <= arg_1.x), select(true, false, true)), vec2<bool>(var_0.c.x, (arg_3.x >> (6965u % 32u)) != (arg_3.x >> (54161u % 32u))), var_0.c.yx));
    return select(select(global1.c.x | !any(vec2<bool>(var_2.c.x, var_2.c.x)), true, arg_2.c.x), false, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~global1.b, 22u)];
    let var_1 = max(select(abs(vec3<i32>(arg_2, 1i, 8485i >> (0u % 32u))), -vec3<i32>(~arg_2, arg_2, u_input.a), select(var_0.c.zzz, !select(global1.c.yxw, global1.c.xxz, vec3<bool>(false, false, false)), vec3<bool>(func_2(vec2<u32>(global1.a.x, global1.b), vec2<f32>(545f, 308f), global2[_wgslsmith_index_u32(4294967295u, 22u)], vec2<i32>(arg_2, 1i)), var_0.c.x, !var_0.c.x))), abs(-select(reverseBits(vec3<i32>(0i, u_input.a, -1i)), vec3<i32>(arg_2, u_input.a, u_input.b) ^ vec3<i32>(u_input.a, arg_2, arg_2), true)));
    global3 = global1.b;
    let var_2 = 2147483647i;
    global3 = arg_0.x;
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(~global1.a.x, global1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.b), arg_0)), _wgslsmith_div_vec3_u32(firstTrailingBit(var_0.a.yww), ~var_0.a.wwz)), _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(var_0.a.x) >> (0u % 32u), select(~0u, 33289u & global1.a.x, any(vec3<bool>(true, var_0.c.x, var_0.c.x))), ~(var_0.b ^ arg_0.x)), vec3<u32>(abs(reverseBits(global1.a.x)), global1.a.x, 302u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec3<bool> {
    var var_0 = 0i;
    let var_1 = Struct_1(vec4<u32>(arg_1.b, global1.a.x, reverseBits(4294967295u ^ _wgslsmith_add_u32(arg_0.x, 15472u)), ~min(53942u, global1.b ^ 1u)), 4294967295u, select(select(select(vec4<bool>(global1.c.x, false, arg_3.x, arg_1.c.x), arg_1.c, vec4<bool>(arg_3.x, true, arg_3.x, true)), select(vec4<bool>(true, true, arg_3.x, false), arg_1.c, arg_1.c), global1.c.x), arg_1.c, func_2(~arg_1.a.xz ^ ~vec2<u32>(arg_1.b, arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-675f, -1423f))), global2[_wgslsmith_index_u32(countOneBits(select(arg_1.a.x, arg_0.x, true)), 22u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(-7538i, u_input.b), arg_2, vec2<i32>(u_input.a, arg_2.x)) & firstLeadingBit(vec2<i32>(arg_2.x, 0i)))));
    let var_2 = global2[_wgslsmith_index_u32(func_3(~select(func_1(global1.a.wx, vec2<bool>(arg_1.c.x, false), _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(u_input.a, -53304i))), 24074u << ((29645u ^ var_1.a.x) % 32u), true), var_1), 22u)];
    return select(vec3<bool>(_wgslsmith_add_u32(54398u | var_1.a.x, 4294967295u) <= _wgslsmith_mod_u32(1u, arg_0.x), arg_1.c.x, any(select(vec2<bool>(true, var_1.c.x), !vec2<bool>(arg_3.x, arg_3.x), !var_2.c.x))), !var_2.c.zzz, (all(var_1.c.wxw) | true) == ((!arg_1.c.x | var_1.c.x) || any(select(var_2.c.xwz, vec3<bool>(var_2.c.x, false, true), global1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<u32>(~0u, global1.a.x), Struct_1(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 9075u), vec2<u32>(global1.b, global1.a.x)), global1.b, global1.b, func_1(vec2<u32>(global1.a.x, global1.a.x), vec2<bool>(true, false), -1i)), ~global1.b ^ global1.a.x, !(!(!global1.c))), firstLeadingBit(vec2<i32>(u_input.a, ~abs(27088i))), !(!vec2<bool>(all(vec3<bool>(false, true, global1.c.x)), true)));
    global1 = Struct_1(~global1.a, global1.a.x, select(!global1.c, select(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), global1.c, select(select(global1.c, vec4<bool>(false, true, var_0.x, false), global1.c), !vec4<bool>(true, global1.c.x, var_0.x, var_0.x), false)), !global1.c));
    var var_1 = global2[_wgslsmith_index_u32(~global1.a.x, 22u)];
    var var_2 = Struct_1(min(~vec4<u32>(4294967295u, global1.a.x, global1.a.x, global1.a.x), (var_1.a & vec4<u32>(1u, 4294967295u, var_1.b, var_1.b)) << (_wgslsmith_clamp_vec4_u32(global1.a, global1.a, vec4<u32>(var_1.a.x, global1.b, 26012u, global1.b)) % vec4<u32>(32u))) ^ vec4<u32>(~var_1.a.x, max(1u & var_1.a.x, global1.b), global1.b, ~7069u), global1.b, vec4<bool>((!var_1.c.x | (true == var_1.c.x)) || true, true, func_2(~(~var_1.a.zw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1092f, 207f), vec2<f32>(-1000f, 660f)))), global2[_wgslsmith_index_u32(~4294967295u, 22u)], _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -22526i), vec2<i32>(-16902i, -53651i)), -vec2<i32>(-2147483647i, -39495i), vec2<i32>(44535i, u_input.a))), !(0i != (-56142i ^ u_input.b))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_div_u32(19935u, var_1.a.x) ^ ~4294967295u), ~var_2.a.x), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-1i, -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(8268i, -2147483647i), vec2<i32>(2147483647i, 1i)), firstTrailingBit(-u_input.a)), _wgslsmith_f_op_f32(-902f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2180f), _wgslsmith_f_op_f32(-1f)))), global1.a.ww, ~(select(_wgslsmith_add_vec3_u32(var_2.a.wzx, var_1.a.zzw), ~vec3<u32>(4294967295u, 20113u, 1u), var_1.c.x | var_1.c.x) | ~(~var_2.a.wzy)), vec4<u32>(min(1u, reverseBits(global1.a.x ^ 25900u)), var_2.a.x ^ ~(var_2.a.x << (4294967295u % 32u)), global1.b, ~(~max(0u, var_1.b))));
}

