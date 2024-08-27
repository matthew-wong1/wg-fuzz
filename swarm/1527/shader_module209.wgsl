struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: array<bool, 31> = array<bool, 31>(false, true, true, false, false, false, true, true, false, false, true, true, true, true, false, true, true, false, false, true, false, false, false, false, false, true, false, true, false, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = u_input.c.x;
    global1 = array<bool, 31>();
    var var_1 = Struct_3(_wgslsmith_add_i32(1i, 1i & _wgslsmith_mult_i32(48230i, -u_input.d.x)));
    let var_2 = Struct_2(select(select(select(select(vec2<bool>(false, true), vec2<bool>(global0.a, global0.a), vec2<bool>(global1[_wgslsmith_index_u32(32211u, 31u)], global0.a)), select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, true), true), all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)]))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(global0.a, true)), select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, true), global1[_wgslsmith_index_u32(1u, 31u)]), true), select(!vec2<bool>(true, global0.a), vec2<bool>(true, false), true)), !vec2<bool>(global0.a, true), !(all(vec2<bool>(global0.a, false)) | (global1[_wgslsmith_index_u32(63889u, 31u)] && false))), Struct_1(all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, false), true)) || global1[_wgslsmith_index_u32(abs(4294967295u), 31u)]), Struct_1(any(select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global0.a, global1[_wgslsmith_index_u32(75892u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], false, false), vec3<bool>(global0.a, global1[_wgslsmith_index_u32(9040u, 31u)], global0.a)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(10148u, 31u)], global0.a), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], true), vec3<bool>(global0.a, global0.a, global1[_wgslsmith_index_u32(u_input.a, 31u)])), false))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1415f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1357f, 160f)) + _wgslsmith_f_op_f32(floor(376f))), _wgslsmith_f_op_f32(509f - _wgslsmith_f_op_f32(abs(723f))))));
    return false;
}

fn func_2() -> vec2<bool> {
    global0 = Struct_1(true);
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    return select(vec2<bool>(!all(!vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)], true)), any(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(31933u, 31u)]), vec2<bool>(false, true), select(vec2<bool>(true, global0.a), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, false))))), vec2<bool>(true, func_3()), any(select(select(vec2<bool>(true, true), vec2<bool>(global0.a, global0.a), any(vec2<bool>(global0.a, false))), select(!vec2<bool>(global0.a, global1[_wgslsmith_index_u32(59215u, 31u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(22344u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(true, global0.a), vec2<bool>(global0.a, true)), select(vec2<bool>(false, false), vec2<bool>(global0.a, global0.a), vec2<bool>(true, global1[_wgslsmith_index_u32(22937u, 31u)]))), !select(vec2<bool>(global1[_wgslsmith_index_u32(8198u, 31u)], global0.a), vec2<bool>(global0.a, global0.a), false))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    global1 = array<bool, 31>();
    global0 = arg_1.c;
    return u_input.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    var var_0 = vec3<u32>(~func_4(vec3<f32>(-1405f, _wgslsmith_div_f32(-1700f, -1268f), _wgslsmith_f_op_f32(f32(-1f) * -1213f)), Struct_2(func_2(), Struct_1(global0.a), Struct_1(false))), u_input.c.x, arg_0.x << (_wgslsmith_mult_u32(u_input.b ^ func_4(vec3<f32>(2455f, -710f, arg_2.x), Struct_2(vec2<bool>(true, arg_1.a), arg_1, Struct_1(arg_1.a))), 50377u) % 32u));
    global1 = array<bool, 31>();
    var var_1 = vec4<u32>(45230u, ~_wgslsmith_sub_u32(~var_0.x, var_0.x & 4137u) >> (~min(~u_input.c.x, countOneBits(0u)) % 32u), abs(37853u), ~24921u);
    global0 = Struct_1(true || any(vec3<bool>(!global0.a, true, global0.a)));
    var var_2 = Struct_1(false);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(func_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.b), u_input.b), abs(0u), 29925u), Struct_1(global0.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1009f, -2127f, -1000f, 445f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1242f, 1085f, -1651f, 769f))))))));
    var var_1 = !(!select(!vec2<bool>(global0.a, false), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], false), false));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<u32>(~0u, u_input.c.x, ~firstLeadingBit(43468u)), Struct_1(global0.a & all(vec4<bool>(true, false, false, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 737f, -378f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1420f, var_0.x) - vec4<f32>(1114f, var_0.x, var_0.x, var_0.x)))))), 1208f);
    let var_2 = 1u;
    var var_3 = Struct_2(!(!vec2<bool>(true, var_0.x == 600f)), Struct_1(true), Struct_1(true));
    var var_4 = -1i;
    var var_5 = Struct_2(select(vec2<bool>(_wgslsmith_div_i32(27576i, u_input.d.x) == _wgslsmith_dot_vec3_i32(vec3<i32>(6490i, u_input.d.x, 593i), vec3<i32>(-1i, 1362i, u_input.d.x)), any(!vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)]))), func_2(), all(vec4<bool>(any(vec4<bool>(false, global0.a, false, global1[_wgslsmith_index_u32(0u, 31u)])), !global1[_wgslsmith_index_u32(u_input.a, 31u)], var_3.c.a, true))), Struct_1(var_3.c.a), Struct_1(((true && global1[_wgslsmith_index_u32(12185u, 31u)]) != true) || global1[_wgslsmith_index_u32(1u, 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, (_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -5584i, -2147483647i), vec3<i32>(u_input.d.x, -1i, u_input.d.x)) | -(~vec3<i32>(-54323i, u_input.d.x, u_input.d.x))) & ~vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, -23646i), -u_input.d.x), min(vec4<i32>(u_input.d.x, -u_input.d.x, u_input.d.x & (0i << (u_input.c.x % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d.x, u_input.d.x, -34936i), ~vec3<i32>(u_input.d.x, -12246i, 1i))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -25055i), ~vec4<i32>(13143i, u_input.d.x, 1i, -2147483647i)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d.x, u_input.d.x, 29332i, -2147483647i), vec4<i32>(32499i, -1i, -60371i, -1i)), vec4<bool>(var_0.x >= -2520f, true, false, !global0.a))), _wgslsmith_mult_i32(u_input.d.x, -u_input.d.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -672f), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(-1043f + 1201f))), var_0.x));
}

