struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(117f, false, 10393i), Struct_2(1065f, false, 2147483647i), Struct_2(-1000f, true, -3392i), Struct_2(-696f, false, 14533i), Struct_2(1354f, true, -5465i), Struct_2(-1395f, false, -1i), Struct_2(278f, true, 0i), Struct_2(401f, false, -25464i), Struct_2(-740f, false, 0i), Struct_2(320f, false, 13466i), Struct_2(-1559f, true, 25951i), Struct_2(-716f, false, -57655i), Struct_2(-705f, false, 0i), Struct_2(-963f, false, 2675i));

var<private> global4: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(1888f, 419f), vec2<f32>(-432f, -1677f), vec2<f32>(-1000f, -694f), vec2<f32>(1581f, 1000f), vec2<f32>(1396f, -1000f), vec2<f32>(-685f, -580f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> u32 {
    global1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + -736f) == _wgslsmith_f_op_f32(647f - -1505f));
    global3 = array<Struct_2, 14>();
    var var_0 = i32(-1i) * -arg_1.c;
    global2 = array<Struct_1, 4>();
    global1 = !select(true, false, arg_0);
    return u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> bool {
    global4 = array<vec2<f32>, 6>();
    let var_0 = _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(58518u, 17u)]), 1u, func_3(false, Struct_2(331f, true, 1i), 1i), arg_0)), ~reverseBits(firstLeadingBit(vec4<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(arg_0, 17u)], u_input.a.x)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_1), (-208f >= _wgslsmith_f_op_f32(arg_1 + 1151f)) || !((arg_1 == 1845f) && true), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-14010i, 0i), -1i << (0u % 32u)), _wgslsmith_mult_i32(60275i, 0i) >> ((1u & arg_0) % 32u)) << (~28805u % 32u));
    global2 = array<Struct_1, 4>();
    global1 = true;
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = 302u;
    global2 = array<Struct_1, 4>();
    let var_1 = vec3<bool>(true, all(vec3<bool>(true, true, select(true, all(vec4<bool>(true, false, true, true)), func_2(0u, 829f)))), !(abs(_wgslsmith_mod_i32(1i, 2147483647i)) <= (_wgslsmith_clamp_i32(6377i, 47538i, -33610i) | 1i)));
    let var_2 = select(min(vec4<i32>(-1i) * -reverseBits(vec4<i32>(-1i, 1i, -34218i, -1i)), vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)), (vec4<i32>(-1i) * -vec4<i32>(19609i, -2147483647i, 2147483647i, 0i)) << (~(~abs(vec4<u32>(u_input.a.x, 30290u, var_0, u_input.a.x))) % vec4<u32>(32u)), !(!select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), !vec4<bool>(false, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x))));
    let var_3 = u_input.a.x;
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(172f)), _wgslsmith_f_op_f32(trunc(-763f)), all(vec2<bool>(var_1.x, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, -1050f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1059f), -412f, var_1.x | false))), all(var_1.zz))), true, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (2147483647i >> ((select(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), select(false, true, false)) ^ firstLeadingBit(_wgslsmith_mod_u32(5604u, 10261u))) % 32u)) & ~(~(-30758i));
    let var_1 = func_1();
    global3 = array<Struct_2, 14>();
    let var_2 = func_3(any(vec2<bool>(var_1.b, ~(-1i) > var_1.c)), var_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(-31109i, 18605i, 2147483647i)), vec3<i32>(var_1.c, var_1.c, -1i)), -_wgslsmith_sub_i32(var_0, var_0)) ^ -var_1.c);
    global4 = array<vec2<f32>, 6>();
    global0 = array<u32, 17>();
    let var_3 = Struct_1(~_wgslsmith_clamp_i32(~1i, -var_0, -1i) < ~(var_0 << (min(u_input.a.x, var_2) % 32u)), var_0, var_1.a);
    var var_4 = global2[_wgslsmith_index_u32(max(~43466u, _wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 17u)]) & _wgslsmith_dot_vec2_u32(~select(u_input.a, u_input.a, vec2<bool>(var_1.b, true)), select(u_input.a << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(2010u, var_2)), !vec2<bool>(var_1.b, var_1.b)))), 4u)];
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 1u), u_input.a, var_3.a), vec2<u32>(1u, global0[_wgslsmith_index_u32(var_2, 17u)]) >> (vec2<u32>(u_input.a.x, var_2) % vec2<u32>(32u)), countOneBits(vec2<u32>(var_2, 117346u))), ~(~u_input.a)) | firstTrailingBit(_wgslsmith_mult_vec2_u32(~u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 0u), u_input.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_2, 17u)], var_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 17u)], 17u)], 17u)])), vec4<u32>(4294967295u, 0u >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 17u)], 1u), u_input.a.x)), var_2, abs(34120u), max(~0u, u_input.a.x >> (108764u % 32u)) >> (35469u % 32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(858f)))))));
}

