struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: f32 = 197f;

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 8> = array<u32, 8>(104371u, 1u, 1u, 36856u, 4294967295u, 11364u, 4294967295u, 14266u);

var<private> global4: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<bool>(true, arg_2.b.x, false, !(!(0u == _wgslsmith_dot_vec2_u32(vec2<u32>(81903u, 4294967295u), vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78593u, 8u)], 8u)])))));
    var var_1 = select(~vec2<u32>(4294967295u, _wgslsmith_div_u32(63527u, arg_2.c)), abs(~abs(min(vec2<u32>(21941u, 41186u), vec2<u32>(1u, arg_2.c)))), !(!arg_2.b.yz));
    return _wgslsmith_f_op_f32(step(1685f, arg_0));
}

fn func_2(arg_0: Struct_5) -> bool {
    global1 = arg_0.b.x;
    let var_0 = ~(u_input.b >> ((select(firstLeadingBit(u_input.b), ~u_input.b, arg_0.a.x == false) | (~1u >> ((u_input.b >> (1u % 32u)) % 32u))) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(func_3(-1431f, vec2<i32>(-17948i, 41416i), Struct_1(-1211f, arg_0.a, 80789u, arg_0.a.zw))), !arg_0.a.x)), arg_0.b.x), _wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(484f, -128f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - 1f)), arg_0.b.x));
    global3 = array<u32, 8>();
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f)))), 1472f, _wgslsmith_f_op_f32(trunc(var_1.x)));
    return all(arg_0.a.wwz);
}

fn func_1(arg_0: Struct_2) -> f32 {
    global1 = _wgslsmith_f_op_f32(select(arg_0.b.x, -410f, func_2(Struct_5(arg_0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1621f, -250f, arg_0.a.a)), vec2<u32>(0u, 71365u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(23576u, arg_0.c.x), vec2<u32>(arg_0.c.x, global3[_wgslsmith_index_u32(0u, 8u)]))))));
    let var_0 = vec2<i32>(u_input.a, max(~_wgslsmith_mod_i32(2147483647i, -2147483647i) ^ -abs(global0[_wgslsmith_index_u32(0u, 17u)]), ~1i));
    var var_1 = Struct_4(arg_0.a, Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.x)) * 1071f), vec4<bool>(arg_0.a.d.x, true, all(vec3<bool>(true, false, arg_0.a.b.x)), !arg_0.a.b.x), 4294967295u, vec2<bool>(any(arg_0.a.d), func_2(Struct_5(vec4<bool>(arg_0.a.d.x, true, arg_0.a.b.x, arg_0.a.b.x), vec3<f32>(arg_0.b.x, -302f, arg_0.a.a), vec2<u32>(23013u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18669u, 8u)], 8u)]))))), ~(~firstLeadingBit(vec4<u32>(17972u, 4294967295u, 1u, arg_0.a.c))), arg_0), select(~(-var_0), var_0, (arg_0.a.d.x && true) & all(vec3<bool>(true, arg_0.a.b.x, arg_0.a.d.x))));
    global1 = 249f;
    var_1 = Struct_4(var_1.a, var_1.b, global2.wy);
    return _wgslsmith_f_op_f32(-var_1.a.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_3(arg_2.a, ~_wgslsmith_mod_vec4_u32(vec4<u32>(29113u, u_input.b, _wgslsmith_add_u32(arg_2.a.c, arg_2.c.x), ~4294967295u), abs(vec4<u32>(81460u, 3731u, 35353u, global3[_wgslsmith_index_u32(arg_2.a.c, 8u)]))), arg_2);
    var var_1 = (vec3<u32>(39178u, var_0.c.a.c << ((global3[_wgslsmith_index_u32(arg_2.a.c, 8u)] | arg_2.a.c) % 32u), 3908u) | (vec3<u32>(1u, global3[_wgslsmith_index_u32(~var_0.b.x, 8u)], 17534u & u_input.b) ^ ~(~var_0.c.c))) & arg_2.c;
    var var_2 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 0u, 1u) | vec3<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(var_1.x, 8u)]), var_1.x, select(40204u, global3[_wgslsmith_index_u32(arg_2.c.x, 8u)], arg_2.a.d.x))), max(~var_0.b.wyz, arg_2.c));
    let var_3 = 7141i;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f), arg_2.b.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.a), var_0.c.a.a)) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(3021f - arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec2_i32(global2.ww, vec2<i32>(abs(u_input.a), -48751i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-235f, vec4<bool>(true, true, true, false), 4294967295u, vec2<bool>(true, true)), vec4<f32>(-680f, 1799f, 1310f, 2147f), vec3<u32>(7176u, u_input.b, 60925u)))))), Struct_2(Struct_1(1020f, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11229u, 8u)], 8u)], 8u)], 8u)] ^ u_input.b, select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(step(2842f, 306f)), -880f, 1000f, _wgslsmith_f_op_f32(-1279f * -1000f)), max(countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 8u)], 0u, 5426u)), vec3<u32>(0u, 0u, 0u))), vec2<bool>((u_input.b & u_input.b) > (global3[_wgslsmith_index_u32(u_input.b, 8u)] ^ global3[_wgslsmith_index_u32(1u, 8u)]), true))));
    let var_0 = max(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, global2.x, global0[_wgslsmith_index_u32(u_input.b, 17u)], -2147483647i), vec4<i32>(global2.x, _wgslsmith_add_i32(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 17u)]), ~global0[_wgslsmith_index_u32(u_input.b, 17u)], u_input.a ^ u_input.a))), ~(abs(-vec4<i32>(2147483647i, global2.x, 1i, 2147483647i)) ^ reverseBits(~vec4<i32>(global2.x, global0[_wgslsmith_index_u32(17828u, 17u)], 2147483647i, -21495i))));
    global2 = var_0;
    global2 = -(-vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(var_0.x, -22458i, 7824i)), 45859i, var_0.x) >> (abs(~(~vec4<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(4294967295u, 8u)], 25145u))) % vec4<u32>(32u)));
    let var_1 = ~vec2<u32>(0u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31307u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 8u)], 8u)], 8u)]), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)) % 32u), ~(~_wgslsmith_clamp_u32(115052u, 4294967295u, 1u)));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - -488f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1308f + -762f) * _wgslsmith_f_op_f32(f32(-1f) * -832f))), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, false, false, false))), false || (var_1.x >= 20485u)), ~(1u >> ((81422u & u_input.b) % 32u)), select(vec2<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, true, true))), vec2<bool>(true, true), any(vec3<bool>(true, true, false)))), Struct_3(Struct_1(_wgslsmith_div_f32(-745f, -802f), vec4<bool>(true, true, true, true), var_1.x, vec2<bool>(select(true, false, true), true)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 16452u, 46626u), vec4<u32>(18202u, u_input.b, u_input.b, 5345u)), ~vec4<u32>(global3[_wgslsmith_index_u32(var_1.x, 8u)], var_1.x, global3[_wgslsmith_index_u32(10638u, 8u)], 0u)) ^ vec4<u32>(u_input.b, ~0u, _wgslsmith_add_u32(61043u, 1u), countOneBits(global3[_wgslsmith_index_u32(37869u, 8u)])), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -568f), vec4<bool>(true, true, true, true), _wgslsmith_div_u32(u_input.b, 40748u), vec2<bool>(true, false)), vec4<f32>(1f, 1f, 1f, 1f), ~vec3<u32>(1u, var_1.x, 45238u) ^ ~vec3<u32>(u_input.b, var_1.x, u_input.b))), vec2<i32>(-u_input.a, 2147483647i) ^ ~(vec2<i32>(1i, 0i) & (vec2<i32>(-40998i, global0[_wgslsmith_index_u32(0u, 17u)]) << (vec2<u32>(0u, 10437u) % vec2<u32>(32u)))));
    global4 = !(!(~(~4294967295u) <= firstTrailingBit(var_2.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(6979i, global0[_wgslsmith_index_u32(1u, 17u)], u_input.a, -2147483647i) >> (~var_2.b.b % vec4<u32>(32u)), ~var_0), var_0 ^ var_0), (_wgslsmith_sub_vec3_u32(var_2.b.b.yzy >> (vec3<u32>(var_1.x, 33927u, global3[_wgslsmith_index_u32(var_1.x, 8u)]) % vec3<u32>(32u)), ~vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 8u)], var_1.x, var_2.b.a.c)) | abs(vec3<u32>(0u, var_1.x, 3825u) ^ var_2.b.c.c)) >> (~abs(var_2.b.c.c) % vec3<u32>(32u)), var_1.x, countOneBits(vec2<u32>(reverseBits(max(0u, u_input.b)), ~_wgslsmith_add_u32(var_2.b.a.c, var_1.x))));
}

