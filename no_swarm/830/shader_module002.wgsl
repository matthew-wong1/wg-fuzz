struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-1i, -18027i, 22339i, -1i, 0i, 0i, -1i, 0i, -17980i, 0i, i32(-2147483648));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<i32, 11>();
    let var_0 = -(-2147483647i & _wgslsmith_div_i32(global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.c), 11u)], -_wgslsmith_clamp_i32(u_input.c, 67447i, arg_0.d)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1132f, 1f, false)));
    var var_2 = -(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.b.x, global0[_wgslsmith_index_u32(arg_0.c, 11u)], u_input.c) ^ (vec3<i32>(27490i, arg_0.d, 0i) | vec3<i32>(arg_0.b.x, var_0, -2147483647i)), vec3<i32>(-var_0, ~global0[_wgslsmith_index_u32(arg_0.c, 11u)], arg_0.b.x)) ^ vec3<i32>(~38276i, var_0, firstLeadingBit(arg_0.b.x | arg_0.b.x)));
    var var_3 = var_2.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, arg_0.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1084f)))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1705f), _wgslsmith_f_op_f32(select(1000f, arg_2.a, arg_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 1474f, arg_2.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1588f, arg_2.a, 982f), vec3<f32>(-206f, arg_2.a, 323f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-770f, arg_2.a, -338f) - vec3<f32>(arg_2.a, arg_2.a, arg_2.a)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.a, arg_2.a, 202f)))), vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(sign(696f)), arg_2.a), arg_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2579f), _wgslsmith_f_op_f32(-181f - -1781f))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(exp2(arg_2.a)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), arg_2.b), _wgslsmith_div_u32(44312u, 17548u), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0, 11u)], u_input.c, -17342i)))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-177f, _wgslsmith_f_op_f32(arg_2.a + arg_2.a), _wgslsmith_f_op_f32(floor(1302f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 1242f, -1224f)), true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1694f, arg_2.a, 453f)))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1084f))))))), _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f * arg_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_f32(-1102f + 373f));
    let var_2 = Struct_2(-vec2<i32>(~(~u_input.c), arg_2.d), vec4<bool>(arg_1, arg_1, arg_1, !arg_1));
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(~0u, u_input.d.x) << (vec2<u32>(countOneBits(18243u | u_input.a), max(~arg_0, ~arg_0)) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(~u_input.d.zy, abs(~u_input.d.zy)));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 11u)], -26394i, var_2.a.x, arg_2.d)), vec4<i32>(global0[_wgslsmith_index_u32(74176u, 11u)], 2147483647i, arg_2.b.x, global0[_wgslsmith_index_u32(42657u, 11u)]), vec4<bool>(arg_1, false, true, true)) | vec4<i32>(arg_2.d, ~62392i, arg_2.d, u_input.b.x), firstLeadingBit(~(vec4<i32>(u_input.c, 0i, -2147483647i, 0i) & vec4<i32>(-2147483647i, var_2.a.x, arg_2.b.x, u_input.c)))), ~vec4<i32>(i32(-1i) * -1i, -91145i, 1i, ~u_input.b.x & ~global0[_wgslsmith_index_u32(u_input.d.x, 11u)]));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(countOneBits(arg_0.ww), !vec4<bool>(false, all(vec2<bool>(false, true)) || false, all(vec2<bool>(true, false)) || true, false));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -244f), arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -2091f)), _wgslsmith_mod_vec2_i32(var_0.a, u_input.b), 1u, -abs(1i));
    var_0 = Struct_2(vec2<i32>(arg_0.x, 12371i), vec4<bool>(_wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(-arg_1), !(func_2(1u, var_0.b.x, Struct_1(-398f, vec2<i32>(var_1.d, -2147483647i), 4294967295u, -1i)).x < _wgslsmith_clamp_i32(-4150i, arg_2.d, var_0.a.x)), all(vec2<bool>(any(vec3<bool>(true, var_0.b.x, var_0.b.x)), var_0.b.x || var_0.b.x)), true));
    var_1 = Struct_1(arg_1, u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(23122u, u_input.d.x) << (u_input.d.xz % vec2<u32>(32u)), u_input.d.zx), u_input.d.zw) << (u_input.a % 32u), abs(_wgslsmith_sub_i32(-30506i << (arg_2.c % 32u), firstTrailingBit(8658i)) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(29637u, u_input.d.x, 45572u), u_input.d.yyw)) % 32u)));
    return _wgslsmith_f_op_f32(-var_1.a);
}

fn func_1() -> f32 {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(select(-vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(12511u, 11u)], u_input.b.x, u_input.b.x), func_2(1u, false, Struct_1(-1471f, vec2<i32>(47721i, -2147483647i), u_input.a, global0[_wgslsmith_index_u32(u_input.a, 11u)])), true), _wgslsmith_f_op_f32(-1117f - 869f), Struct_1(-1669f, -u_input.b, u_input.d.x | 34299u, 35615i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1288f + _wgslsmith_f_op_f32(f32(-1f) * -224f))))), _wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(u_input.b, ~(-u_input.b)), vec2<i32>(1i, -abs(-27038i))), _wgslsmith_div_u32(u_input.d.x, 0u), -1261i);
    var var_1 = 4294967295u;
    let var_2 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(-max(u_input.b.x, var_0.b.x), -(2466i & u_input.b.x), global0[_wgslsmith_index_u32(17296u, 11u)]), ~(vec3<i32>(-1i) * -vec3<i32>(u_input.c, -1i, 1i))), _wgslsmith_mult_vec3_i32(min(select(vec3<i32>(var_0.b.x, global0[_wgslsmith_index_u32(15867u, 11u)], 1648i), vec3<i32>(u_input.b.x, 22721i, u_input.c), true), vec3<i32>(2147483647i, var_0.b.x, u_input.b.x)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, u_input.c, var_0.b.x), vec3<i32>(2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(var_0.c, 11u)])), vec3<i32>(191i, -23195i, global0[_wgslsmith_index_u32(1u, 11u)]))) ^ -firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(14133u, 11u)], u_input.b.x, -6575i)), select(false, true, true) | false);
    return var_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> StorageBuffer {
    global0 = array<i32, 11>();
    let var_0 = select(vec2<bool>(0i != select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, 2147483647i), vec3<i32>(15275i, u_input.c, arg_1.d)), arg_0.a.x >> (17825u % 32u), true), true), vec2<bool>(arg_2, arg_0.b.x), select(vec2<bool>(any(arg_0.b.yy), arg_2), select(arg_0.b.yx, arg_0.b.yz, !all(vec2<bool>(arg_0.b.x, true))), any(vec3<bool>(false, arg_2, true))));
    let var_1 = arg_0.b.yw;
    return StorageBuffer(u_input.d, 104f, func_2(68101u, true, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a, arg_3.x), _wgslsmith_f_op_f32(-562f - arg_1.a)), reverseBits(vec2<i32>(arg_1.d, -1i)), ~firstLeadingBit(7920u), 25864i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(6025u, 11u)] | 73467i, 0i), vec2<i32>(2147483647i, u_input.b.x) | ~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 1i)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), u_input.b, 1u, _wgslsmith_clamp_i32(-1080i, 0i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, 57374i), _wgslsmith_clamp_i32(-186i, -35799i, 24079i), global0[_wgslsmith_index_u32(u_input.d.x, 11u)]))), any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, -1000f, -581f)))), vec3<f32>(1373f, _wgslsmith_f_op_f32(f32(-1f) * -197f), -590f), vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-472f - -901f) + _wgslsmith_f_op_f32(f32(-1f) * -754f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-485f - 352f))), _wgslsmith_f_op_f32(step(-1521f, _wgslsmith_f_op_f32(2186f + -1817f))))));
}

