struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 95161u;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(0u), Struct_1(21170u), Struct_1(16782u), Struct_1(0u));

var<private> global3: array<vec2<u32>, 15>;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(4294967295u), Struct_1(0u), Struct_1(43816u), Struct_1(4294967295u), Struct_1(51763u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(73747u), Struct_1(4294967295u), Struct_1(84528u), Struct_1(36688u), Struct_1(13351u), Struct_1(29644u), Struct_1(23270u), Struct_1(0u), Struct_1(4294967295u), Struct_1(52453u), Struct_1(12694u), Struct_1(59690u), Struct_1(4294967295u), Struct_1(1056u), Struct_1(26881u), Struct_1(4294967295u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(9169u), Struct_1(1u), Struct_1(50630u), Struct_1(25885u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = vec4<u32>(arg_1.a, 53757u, ~(arg_2.a & select(_wgslsmith_mod_u32(global0.a, 0u), u_input.a.x ^ arg_2.a, true)), arg_1.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1416f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-291f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(744f, 442f, true)))) * _wgslsmith_f_op_f32(181f + _wgslsmith_f_op_f32(f32(-1f) * -118f))));
    var var_2 = vec2<u32>(1u, arg_0.a);
    global4 = array<Struct_1, 32>();
    let var_3 = _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(68207u, 4294967295u), reverseBits(vec2<u32>(arg_2.a, var_0.x) | global3[_wgslsmith_index_u32(1u, 15u)]))), ~(vec2<u32>(arg_1.a, 4294967295u) >> (u_input.d % vec2<u32>(32u))) & ~(~vec2<u32>(arg_2.a, 1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f - 904f)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> f32 {
    global3 = array<vec2<u32>, 15>();
    global3 = array<vec2<u32>, 15>();
    let var_0 = arg_2;
    var var_1 = Struct_1(arg_2.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(var_0.a, 32u)], arg_0, arg_2, select(u_input.c.x, arg_3, false))))) - arg_1), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -421f)));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.d.x), 1f, Struct_1(global0.a >> (0u % 32u)), -_wgslsmith_mult_i32(0i, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(22834u), global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(u_input.d.x, 32u)], -u_input.b.x)) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 1073f), 1f)), _wgslsmith_f_op_f32(-644f - _wgslsmith_div_f32(-1641f, _wgslsmith_f_op_f32(trunc(1775f))))));
    var var_1 = vec4<bool>(!(!any(vec2<bool>(true, true)) & any(vec3<bool>(true, true, true))), all(vec2<bool>(true, false)), true, all(vec2<bool>(_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_mult_i32(-2147483647i, u_input.b.x) <= ~(-1i))));
    let var_2 = global4[_wgslsmith_index_u32(~0u, 32u)];
    var var_3 = u_input.c.yyx;
    global4 = array<Struct_1, 32>();
    return vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.a, 61999u, 73987u, 1u)), vec4<u32>(u_input.d.x, 0u, var_2.a, var_2.a)), global0.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, countOneBits(var_2.a & 4294967295u)), vec2<u32>(0u, _wgslsmith_sub_u32(~u_input.a.x, ~4294967295u))));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    global1 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 348f))))), -484f));
    let var_1 = reverseBits(-(-u_input.c.yx | _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zy, vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_div_vec2_i32(u_input.c.wz, vec2<i32>(u_input.c.x, -21095i)))));
    let var_2 = 1i;
    global2 = array<Struct_1, 4>();
    return global2[_wgslsmith_index_u32(u_input.d.x, 4u)];
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(max(13072u << (u_input.a.x % 32u), u_input.a.x), 4u)];
    var var_1 = (~firstLeadingBit(arg_1) & arg_1) ^ max(vec2<i32>(_wgslsmith_mod_i32(arg_1.x, 0i), 0i), arg_1 << (vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 4294967295u, 40270u, arg_3.a)), 45895u) % vec2<u32>(32u)));
    let var_2 = (_wgslsmith_mod_u32(~arg_2.a & 4294967295u, _wgslsmith_mult_u32(~89393u, global0.a)) | ~17616u) << (~73506u % 32u);
    var_0 = Struct_1(18109u);
    var var_3 = Struct_1(countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_3.a, var_2), var_2)) ^ 1u);
    return global2[_wgslsmith_index_u32(4294967295u << (var_2 % 32u), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u);
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f - -345f) - -1038f))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.c.x, ~(-2208i)), vec2<i32>(2147483647i, u_input.c.x & u_input.c.x)), func_4(59000u, func_1()), func_4(25338u, vec2<u32>(u_input.a.x, 67425u)));
    let var_2 = vec2<bool>(false, !(true || select(false, true, true)) || (_wgslsmith_f_op_f32(select(-733f, 339f, true)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(131f + 508f)))));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.zzx, vec3<u32>(u_input.d.x, global0.a, 0u)), 0u ^ var_1.a, countOneBits(global0.a), func_1().x), _wgslsmith_sub_vec4_u32(vec4<u32>(37394u, 0u, var_0.a, var_1.a) << (min(u_input.a, u_input.a) % vec4<u32>(32u)), u_input.a)));
    let var_4 = vec4<bool>(var_2.x, true, var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(45146u, _wgslsmith_sub_vec4_i32(countOneBits(firstLeadingBit(select(vec4<i32>(-1i, u_input.c.x, 15595i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.b.x, -2147483647i, u_input.b.x), var_2.x))), ~countOneBits(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c))));
}

