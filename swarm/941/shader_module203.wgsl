struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -1i, 2147483647i, 29001i);

var<private> global1: array<u32, 12> = array<u32, 12>(4294967295u, 49378u, 7703u, 0u, 1u, 25879u, 0u, 15482u, 0u, 74367u, 22782u, 1300u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(select(vec2<u32>(~4294967295u, ~u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 52106u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 4029u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global1[_wgslsmith_index_u32(29340u, 12u)])) % 32u)), ~vec2<u32>(u_input.a, abs(4294967295u)), (global0.x <= -47605i) & (all(vec3<bool>(false, false, false)) & true)), ~vec2<i32>(_wgslsmith_sub_i32(0i, global0.x) ^ global0.x, 0i));
    global0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-global0.x, global0.x ^ 2147483647i, 48517i, countOneBits(-1i)) >> (~(~vec4<u32>(0u, 4294967295u, 1u, u_input.a)) % vec4<u32>(32u)), firstTrailingBit(firstLeadingBit(-vec4<i32>(-40989i, var_0.b.x, var_0.b.x, 0i))));
    global1 = array<u32, 12>();
    let var_1 = _wgslsmith_sub_u32(reverseBits(var_0.a.x), ~(~(~(~1u))));
    let var_2 = var_0.b.x;
    return -1374f;
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_1(global0.x, max(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8366u, 12u)], 12u)], 47475u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42258u, global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec2<u32>(u_input.a, 0u)), ~u_input.a, global1[_wgslsmith_index_u32(1u, 12u)] ^ global1[_wgslsmith_index_u32(30621u, 12u)]), (vec3<u32>(4294967295u, u_input.a, 22561u) & vec3<u32>(u_input.a, 104535u, u_input.a)) | ~vec3<u32>(7125u, global1[_wgslsmith_index_u32(0u, 12u)], 4294967295u))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(269f, 506f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-375f, -944f)) + -1075f)))), -1i < arg_0.x);
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(986f * -226f) - var_0.c.x)) * -1107f));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.c.x))));
    return Struct_3(Struct_2(countOneBits(var_0.b.zz), -global0.zy), select(_wgslsmith_clamp_vec3_i32(global0.zzw << (var_0.b % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(global0.yzx, select(vec3<i32>(global0.x, -2524i, 1i), vec3<i32>(72072i, arg_0.x, 3808i), false)), ~global0.xxw), vec3<i32>(arg_0.x, 12791i, _wgslsmith_div_i32(31493i << (0u % 32u), _wgslsmith_sub_i32(global0.x, -2147483647i))), select(!vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(false, var_0.d & true, true), !vec3<bool>(var_0.d, var_0.d, var_0.d))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_3 {
    let var_0 = func_2(vec2<i32>(countOneBits(0i), ~(-1i >> (arg_1 % 32u))) << (select(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 9816u), vec2<u32>(u_input.a, 50708u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(37207u, 51393u), vec2<u32>(global1[_wgslsmith_index_u32(11108u, 12u)], 0u), arg_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 13676u), vec2<u32>(global1[_wgslsmith_index_u32(8221u, 12u)], u_input.a))), any(vec2<bool>(arg_0.x, true))) % vec2<u32>(32u)));
    global0 = firstLeadingBit(vec4<i32>(global0.x, ~(-2147483647i), _wgslsmith_mult_i32(global0.x, ~1i), var_0.b.x));
    let var_1 = ~arg_1;
    var var_2 = 472f;
    var var_3 = true;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(false, true), ~u_input.a);
    var var_1 = func_1(!select(vec2<bool>(any(vec2<bool>(true, false)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))), ~2040u);
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(u_input.a, u_input.a, 28694u)) & ~(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.a.x, 12u)], 12u)], 12u)], 12u)], 0u) << (vec3<u32>(u_input.a, var_1.a.a.x, u_input.a) % vec3<u32>(32u))), select(~(vec3<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.a.x, 12u)], 12u)]) ^ vec3<u32>(var_0.a.a.x, 4294967295u, var_1.a.a.x)), vec3<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(12750u, u_input.a, 1u, u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(77714u, 12u)], global1[_wgslsmith_index_u32(var_1.a.a.x, 12u)], var_1.a.a.x, u_input.a)), ~6093u), -175f > _wgslsmith_f_op_f32(round(800f)))));
    var_1 = func_2(-abs(_wgslsmith_clamp_vec2_i32(var_0.a.b, var_0.a.b, vec2<i32>(global0.x, var_1.a.b.x))) >> (reverseBits(vec2<u32>(var_2.x, 27223u) ^ ~var_2.yx) % vec2<u32>(32u)));
    let var_3 = var_0;
    global0 = vec4<i32>(-global0.x, ~(-57176i), var_0.a.b.x, _wgslsmith_add_i32(-2147483647i, 2147483647i));
    var var_4 = Struct_1(-(_wgslsmith_sub_i32(func_1(vec2<bool>(true, true), var_0.a.a.x).a.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.x, 3439i, 37273i), vec3<i32>(var_0.a.b.x, 2147483647i, global0.x))) ^ _wgslsmith_mod_i32(max(global0.x, var_0.b.x), i32(-1i) * -2147483647i)), var_2, vec3<f32>(-1365f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -1195f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(_wgslsmith_mult_vec2_i32(global0.xx, var_0.b.zz), ~var_3.b.xx)), -_wgslsmith_div_vec2_i32(-var_1.b.yx, vec2<i32>(-7740i, var_3.a.b.x) << (vec2<u32>(var_2.x, var_0.a.a.x) % vec2<u32>(32u))), var_4.c.x);
}

