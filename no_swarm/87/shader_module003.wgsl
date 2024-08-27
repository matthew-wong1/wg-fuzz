struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3;

var<private> global2: array<vec3<f32>, 24>;

var<private> global3: array<u32, 17> = array<u32, 17>(41555u, 5832u, 1u, 48972u, 102545u, 25539u, 19665u, 1u, 1u, 1u, 0u, 32250u, 119944u, 4294967295u, 1u, 3747u, 73811u);

var<private> global4: Struct_2 = Struct_2(Struct_1(true, vec3<u32>(4294967295u, 106648u, 4294967295u), vec2<i32>(-1i, 0i)), vec3<u32>(817u, 4294967295u, 40603u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> u32 {
    global3 = array<u32, 17>();
    var var_0 = ~(select(vec4<i32>(0i, _wgslsmith_add_i32(-1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1480i, u_input.a.x, 2147483647i, global4.a.c.x), vec4<i32>(global4.a.c.x, global1.b.c.x, 1342i, 0i)), firstLeadingBit(global4.a.c.x)), reverseBits(vec4<i32>(2147483647i, global1.d.c.x, 2147483647i, 2147483647i) ^ vec4<i32>(-2147483647i, 0i, u_input.a.x, global1.d.c.x)), !any(vec3<bool>(arg_2.x, true, global1.a))) << (arg_1 % vec4<u32>(32u)));
    global1 = Struct_3(true, Struct_1(any(select(select(vec4<bool>(false, global4.a.a, global1.a, true), vec4<bool>(arg_2.x, global1.c, true, false), vec4<bool>(global4.a.a, arg_2.x, global1.a, global1.c)), vec4<bool>(arg_2.x, global1.c, global4.a.a, true), var_0.x < global1.d.c.x)), vec3<u32>(33877u, global4.b.x, ~firstTrailingBit(4294967295u)), vec2<i32>(_wgslsmith_dot_vec3_i32(~var_0.wyx, _wgslsmith_mult_vec3_i32(vec3<i32>(global4.a.c.x, var_0.x, 0i), var_0.wzw)), -2147483647i)), true, global4.a);
    global1 = Struct_3(any(!vec4<bool>(true, true, all(vec3<bool>(global4.a.a, global1.c, true)), true)), Struct_1(-(global4.a.c.x ^ u_input.a.x) != -global1.b.c.x, vec3<u32>(global4.b.x, 42070u, countOneBits(~global4.a.b.x)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(global4.a.c.x, 40231i), _wgslsmith_add_vec2_i32(global1.d.c, vec2<i32>(global4.a.c.x, var_0.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(6834i, -1i), vec2<i32>(global1.d.c.x, global1.d.c.x)), i32(-1i) * -30627i), firstLeadingBit(-vec2<i32>(u_input.a.x, -1i)))), arg_2.x, global4.a);
    var var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(global4.b.x), 17u)];
    return ~(~(~4294967295u << (~global1.b.b.x % 32u))) ^ 1u;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1779f) + arg_1.x);
    var var_2 = _wgslsmith_sub_u32(1u, ~(_wgslsmith_add_u32(~0u, global3[_wgslsmith_index_u32(~arg_0.a.a.b.x, 17u)]) << (~func_3(arg_2, vec4<u32>(0u, 33934u, arg_0.a.b.x, var_0.a.b.x), vec3<bool>(arg_0.b, false, false)) % 32u)));
    var var_3 = !select(select(vec4<bool>(all(vec4<bool>(false, false, arg_0.b, global4.a.a)), true, true, arg_0.b), !(!vec4<bool>(global1.a, false, true, global1.d.a)), all(vec2<bool>(true, var_0.a.a.a))), select(vec4<bool>(global4.a.a, true, true, u_input.a.x <= -2147483647i), vec4<bool>(true, all(vec4<bool>(global1.d.a, global1.a, global4.a.a, true)), global1.b.a, !global4.a.a), select(any(vec3<bool>(false, var_0.b, global1.c)), false, 432f < arg_1.x)), !(!global4.a.a));
    var var_4 = abs(firstTrailingBit(~(~vec4<u32>(arg_0.a.b.x, global1.d.b.x, 4294967295u, var_0.a.b.x)))) << (~(~vec4<u32>(reverseBits(global3[_wgslsmith_index_u32(var_0.a.b.x, 17u)]), ~35395u, 7321u, 1u)) % vec4<u32>(32u));
    return !(!vec2<bool>(!global4.a.a, true | var_0.b));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_add_u32(abs(55262u), ~global3[_wgslsmith_index_u32(~50613u, 17u)]);
    let var_1 = min(vec2<u32>(_wgslsmith_mult_u32(16956u, 36762u), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0, ~global4.b.x), _wgslsmith_mult_u32(arg_2, 3663u) << (14574u % 32u))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.a.b.x, global3[_wgslsmith_index_u32(arg_0.a.a.b.x, 17u)]), vec2<u32>(82367u, 45237u)), ~vec2<u32>(var_0, arg_2)), select(arg_0.a.b.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global1.d.b.x, 17u)], global3[_wgslsmith_index_u32(0u, 17u)]) ^ vec2<u32>(global4.b.x, 31599u), ~vec2<u32>(0u, global3[_wgslsmith_index_u32(var_0, 17u)])), select(func_2(Struct_4(arg_0.a, true), vec4<f32>(283f, -357f, 3189f, -153f), vec2<f32>(2088f, 626f)), vec2<bool>(true, false), vec2<bool>(global4.a.a, true)))));
    let var_2 = Struct_1(any(vec3<bool>(any(func_2(arg_0, vec4<f32>(-1043f, -540f, -1333f, 1133f), vec2<f32>(-1000f, 255f))), global4.a.a, all(select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false))))), global4.b, vec2<i32>(arg_3.x, arg_0.a.a.c.x));
    global2 = array<vec3<f32>, 24>();
    global1 = Struct_3(_wgslsmith_add_i32(0i, i32(-1i) * -6753i) == _wgslsmith_add_i32(arg_0.a.a.c.x, -global4.a.c.x), global1.d, all(select(vec3<bool>(true, func_2(Struct_4(Struct_2(global1.b, global1.b.b), global1.b.a), vec4<f32>(1000f, -946f, -1000f, 191f), vec2<f32>(-979f, 571f)).x, global1.b.a), !select(vec3<bool>(true, arg_0.b, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), global1.c)), Struct_1(all(!vec3<bool>(global1.a, global4.a.a, false)), ~vec3<u32>(_wgslsmith_sub_u32(67342u, 1u), _wgslsmith_clamp_u32(1u, var_2.b.x, 1u), ~0u), firstTrailingBit(countOneBits(firstLeadingBit(vec2<i32>(1i, global4.a.c.x))))));
    return vec2<i32>(var_2.c.x >> ((23948u & arg_0.a.a.b.x) % 32u), -(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, Struct_1(global4.a.a, _wgslsmith_add_vec3_u32(global1.d.b, global4.b), vec2<i32>(-global4.a.c.x, global1.b.c.x) | _wgslsmith_mod_vec2_i32(global4.a.c, func_1(Struct_4(Struct_2(global4.a, vec3<u32>(4294967295u, global4.b.x, global1.b.b.x)), false), true, global3[_wgslsmith_index_u32(global4.a.b.x, 17u)], u_input.a))), global4.a.a, global4.a);
    global3 = array<u32, 17>();
    var var_1 = Struct_4(Struct_2(global4.a, var_0.d.b), any(!vec2<bool>(global1.b.a & true, true)));
    let var_2 = global1.b;
    var var_3 = vec2<bool>(!(!(!(25660i <= var_2.c.x))), _wgslsmith_f_op_f32(trunc(710f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1948f - -1500f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f), 1837f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(global4.a.c.x, u_input.a.x)), vec2<i32>(_wgslsmith_div_i32(global1.b.c.x, reverseBits(-1i)) ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.a.a.c.x, 1i, 7187i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-54353i, 2147483647i, var_1.a.a.c.x, var_1.a.a.c.x), vec4<i32>(21371i, var_2.c.x, var_1.a.a.c.x, 7482i))), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 284f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(748f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(901f + _wgslsmith_f_op_f32(select(-1755f, 2101f, true))) + _wgslsmith_f_op_f32(-1827f * _wgslsmith_f_op_f32(select(-432f, -120f, var_2.a))))), global4.a.b.x);
}

