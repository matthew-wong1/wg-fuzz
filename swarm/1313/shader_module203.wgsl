struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, true, true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, false, true, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_clamp_i32(-1i, u_input.a.x, 0i);
    var_0 = 103273i;
    var var_1 = vec3<bool>(select(false, global0[_wgslsmith_index_u32(24220u, 21u)], false) & true, false, true);
    var var_2 = ~(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, 4294967295u, 15249u, 4294967295u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 5787u, 8078u, 38546u), ~vec4<u32>(110u, 4294967295u, 44511u, 1u), vec4<u32>(4294967295u, 4294967295u, 30794u, 1u))) ^ vec4<u32>(1u, 1u, 1u, 1u));
    var_1 = !(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(1553u, 21u)], global0[_wgslsmith_index_u32(var_2.x, 21u)], var_1.x), vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 21u)], false, true), select(vec3<bool>(global0[_wgslsmith_index_u32(23235u, 21u)], var_1.x, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    return Struct_3(-8406i);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2629f, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), false)) - -686f), var_0.x)), -472f, 878f);
    let var_1 = max(min(reverseBits(select(35687u, 0u, global0[_wgslsmith_index_u32(19651u, 21u)])), 29787u) ^ 101079u, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(4294967295u, ~0u), ~1830u));
    var var_2 = vec2<bool>(-(countOneBits(u_input.a.x) >> (0u % 32u)) != select(abs(-u_input.a.x), ~1i, global0[_wgslsmith_index_u32(~var_1, 21u)]), global0[_wgslsmith_index_u32(var_1, 21u)]);
    return var_1;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = Struct_3(2147483647i);
    let var_3 = 1i << (0u % 32u);
    let var_4 = Struct_2(-374f, select(~_wgslsmith_mod_u32(~1u, func_3(vec4<f32>(-481f, 1000f, -2423f, 1249f))), abs(~(~8935u)), all(!var_1.b)), vec3<u32>(_wgslsmith_mult_u32(6943u, 1u), _wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(8895u, 57074u), vec2<u32>(1181u, 4294967295u))), ~1u), 37923u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1720u, 17820u, 5833u), vec4<u32>(29185u, 1u, 48017u, 4294967295u)) % 32u)), _wgslsmith_mod_i32(reverseBits(~_wgslsmith_sub_i32(-8460i, -7711i)), _wgslsmith_mod_i32(select(-23643i >> (0u % 32u), 1i, var_1.b.x), _wgslsmith_sub_i32(arg_2, ~(-1i)))));
    return func_1();
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = arg_1;
    var var_1 = vec4<bool>(true, any(!(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 21u)]))), select(true, global0[_wgslsmith_index_u32(1u, 21u)], false), false);
    global0 = array<bool, 21>();
    let var_2 = ~_wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, -34097i, var_0.a), u_input.a.wzy)), select(vec3<i32>(5025i, -2459i, 0i), u_input.a.xzx, global0[_wgslsmith_index_u32(4294967295u, 21u)]) & u_input.a.zxw) >> (firstLeadingBit(vec3<u32>(abs(~1u), _wgslsmith_clamp_u32(1u, 1u, ~4294967295u), 65864u)) % vec3<u32>(32u));
    var_1 = !vec4<bool>(global0[_wgslsmith_index_u32(max(~90758u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 0u, 63454u), 0u)), 21u)], true, true, all(vec4<bool>(false, true, false, true)));
    return any(select(select(vec4<bool>(true, false, all(vec4<bool>(arg_3.x, global0[_wgslsmith_index_u32(0u, 21u)], var_1.x, false)), u_input.a.x == 21543i), vec4<bool>(true, all(vec3<bool>(true, true, false)), var_2.x <= var_2.x, true), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], false, false), select(vec4<bool>(global0[_wgslsmith_index_u32(22675u, 21u)], var_1.x, false, global0[_wgslsmith_index_u32(69728u, 21u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(35927u, 21u)], arg_3.x, arg_3.x), true), vec4<bool>(global0[_wgslsmith_index_u32(6287u, 21u)], arg_3.x, arg_3.x, false))), !select(!vec4<bool>(global0[_wgslsmith_index_u32(21099u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], var_1.x, arg_3.x), !vec4<bool>(true, arg_3.x, false, arg_3.x), vec4<bool>(var_1.x, true, true, true)), any(select(var_1.zxz, select(vec3<bool>(false, true, false), vec3<bool>(false, var_1.x, false), false), global0[_wgslsmith_index_u32(92429u, 21u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -601f);
    var var_1 = func_1();
    var var_2 = select(!vec2<bool>(func_4(_wgslsmith_f_op_f32(min(228f, 277f)), func_2(Struct_3(2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(30225u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], false), -2147483647i, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 21u)], vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(41613u, 21u)], true, global0[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_f_op_f32(min(343f, 662f)), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(12589u, 21u)], false), global0[_wgslsmith_index_u32(102522u, 21u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], false))), vec2<bool>(!global0[_wgslsmith_index_u32(1u, 21u)], true), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~1u, ~1u), 21u)]);
    let var_3 = var_1.a;
    let var_4 = Struct_1(all(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(83872u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 21u)], var_2.x), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], false))) && global0[_wgslsmith_index_u32(1u, 21u)], select(select(vec4<bool>(var_2.x && true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(37495u, 0u), 21u)], var_2.x, func_4(1014f, Struct_3(-33424i), -1588f, vec2<bool>(true, false))), vec4<bool>(var_2.x, var_2.x, all(vec2<bool>(false, false)), true), vec4<bool>(true, select(false, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(4565u, 21u)]), !var_2.x, global0[_wgslsmith_index_u32(countOneBits(1u), 21u)])), vec4<bool>(true, any(!vec2<bool>(true, global0[_wgslsmith_index_u32(5546u, 21u)])), any(vec3<bool>(false, var_2.x, true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -388f), -1307f)) < _wgslsmith_f_op_f32(step(795f, _wgslsmith_f_op_f32(floor(813f))))));
    var var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(734f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-311f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) * 1058f), -580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1321f, _wgslsmith_f_op_f32(round(-794f)), true)) + 1558f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1i, 47600u, ~u_input.a.yyy, var_1.a);
}

