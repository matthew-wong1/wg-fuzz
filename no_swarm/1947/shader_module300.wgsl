struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_1(!arg_0.x, vec4<bool>(select(any(arg_0), all(vec2<bool>(true, arg_0.x)), true) | (any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) || arg_0.x), any(select(vec4<bool>(true, false, false, arg_0.x), !vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, false, true, true))), arg_0.x, arg_0.x));
    var_0 = Struct_1(arg_0.x, vec4<bool>(arg_0.x, any(select(select(vec2<bool>(false, false), vec2<bool>(var_0.a, var_0.a), true), !arg_0, var_0.b.yy)), true, !(_wgslsmith_f_op_f32(min(789f, 1000f)) > _wgslsmith_f_op_f32(select(-868f, -1073f, arg_0.x)))));
    var_0 = Struct_1(true, select(!select(vec4<bool>(var_0.a, true, var_0.a, arg_0.x), !vec4<bool>(var_0.a, arg_0.x, var_0.a, arg_0.x), false), select(select(vec4<bool>(true, true, true, true), select(var_0.b, vec4<bool>(var_0.b.x, arg_0.x, false, var_0.a), false), var_0.b), vec4<bool>(any(vec3<bool>(false, var_0.b.x, var_0.b.x)), arg_0.x != arg_0.x, all(vec3<bool>(arg_0.x, true, true)), all(var_0.b.xyx)), arg_0.x), !var_0.b.x && arg_0.x));
    var_0 = Struct_1(all(!select(select(vec4<bool>(false, false, false, arg_0.x), var_0.b, arg_0.x), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, arg_0.x, var_0.b.x), vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(var_0.a, arg_0.x, var_0.a, true)))), var_0.b);
    var_0 = Struct_1(false, !var_0.b);
    return ~1u >= _wgslsmith_dot_vec4_u32(min(~u_input.a, u_input.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 9738u)) | u_input.a);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = any(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, true, u_input.b > u_input.b), !(!vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(true, arg_0, !(arg_0 && true)), func_3(vec2<bool>(true, true))));
    let var_1 = vec2<f32>(1f, 1f);
    var var_2 = u_input.a;
    var var_3 = Struct_1(func_3(vec2<bool>(!any(vec4<bool>(true, arg_0, arg_0, arg_0)), any(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(true, arg_0, arg_0))))), !(!vec4<bool>(false, select(arg_0, true, true), true, arg_0)));
    return Struct_1(_wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_1.x))), select(var_3.b, vec4<bool>(any(vec4<bool>(true, arg_0, false, arg_0)), arg_0, all(select(vec4<bool>(true, false, arg_0, true), var_3.b, var_3.b)), arg_0 & !arg_0), var_3.b));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2172f - _wgslsmith_f_op_f32(f32(-1f) * -1258f)));
    var var_2 = !((21733u ^ arg_1) != ~1u);
    let var_3 = func_2(any(vec4<bool>(all(arg_2.b) || !arg_2.b.x, arg_2.a, !arg_3.b.x, arg_2.a & !arg_3.a)));
    var_2 = (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f))) == _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-729f))), arg_2.a))) & all(!(!select(arg_2.b.yx, arg_3.b.xw, vec2<bool>(arg_3.a, false))));
    return Struct_1(arg_2.b.x, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1507f) * var_1) <= var_1, any(var_3.b), !arg_2.b.x, !((arg_1 >> (84568u % 32u)) != _wgslsmith_mult_u32(7131u, 10332u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    var var_0 = !select(!(!arg_0.b.xz), !arg_0.b.xx, vec2<bool>(false, arg_0.a));
    var_0 = arg_0.b.wy;
    var_0 = select(func_2(any(arg_0.b.wzx)).b.yz, func_1(-(-vec4<i32>(u_input.b, u_input.b, arg_3.x, -8082i) >> (~vec4<u32>(3706u, 29220u, 94639u, 13538u) % vec4<u32>(32u))), ~reverseBits(~u_input.a.x), Struct_1(!(!arg_0.a), select(!vec4<bool>(true, arg_0.b.x, var_0.x, true), select(arg_0.b, vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0.a), var_0.x), !vec4<bool>(true, false, arg_0.a, true))), arg_0).b.yx, arg_0.b.yw);
    var var_1 = select(_wgslsmith_div_vec3_i32(firstTrailingBit(arg_3.yzw | vec3<i32>(20303i, 21840i, 2147483647i)), -(min(vec3<i32>(u_input.b, arg_3.x, arg_3.x), arg_3.wwz) | arg_3.xyx)), ~arg_3.zwy, reverseBits(reverseBits(arg_3.x) >> (40239u % 32u)) == arg_3.x);
    var var_2 = vec3<u32>(abs(min(abs(0u) ^ u_input.a.x, ~abs(0u))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.wzz, select(~vec3<u32>(66149u, 45715u, 12343u), _wgslsmith_mod_vec3_u32(u_input.a.yxy, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(vec3<bool>(arg_0.b.x, true, var_0.x), arg_0.b.zyx, vec3<bool>(var_0.x, true, var_0.x)))), vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), 4567u ^ u_input.a.x, u_input.a.x) & reverseBits(~u_input.a.zxz)), 11165u);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_add_i32(func_4(func_1(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), u_input.a.x, Struct_1(false, vec4<bool>(false, true, false, true)), Struct_1(false, vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1056f, 176f, -917f) + vec3<f32>(1266f, -145f, 1385f)), -377f, ~vec4<i32>(-37871i, u_input.b, u_input.b, 2147483647i)), _wgslsmith_mult_i32(-2147483647i, u_input.b) << (abs(63705u) % 32u)), u_input.b), ~vec3<i32>(-28826i >> (~u_input.a.x % 32u), reverseBits(abs(u_input.b)), u_input.b));
    var var_1 = false;
    var_1 = true;
    var_1 = false;
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(max(var_0.x, var_0.x), var_0.x, _wgslsmith_add_i32(2147483647i, var_0.x), firstTrailingBit(var_0.x)), reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b, var_0.x, var_0.x), vec4<i32>(var_0.x, 25528i, var_0.x, 38673i)))) & _wgslsmith_dot_vec3_i32(vec3<i32>(func_4(func_2(true), _wgslsmith_div_vec3_f32(vec3<f32>(-1866f, 1171f, -1332f), vec3<f32>(-927f, -1479f, 289f)), _wgslsmith_f_op_f32(f32(-1f) * -282f), countOneBits(vec4<i32>(var_0.x, 28326i, -1i, var_0.x))), u_input.b, ~(~var_0.x)), _wgslsmith_clamp_vec3_i32(var_0 & -var_0, _wgslsmith_div_vec3_i32(-var_0, max(vec3<i32>(var_0.x, 56572i, 0i), var_0)), ~(~var_0)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-1512f)), -310f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(565f)), _wgslsmith_div_f32(1353f, -680f))))));
    let var_4 = vec2<bool>(true, !(~u_input.a.x <= u_input.a.x) & func_3(vec2<bool>(true, true)));
    var var_5 = func_1(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_2, -2147483647i, -65902i), -vec4<i32>(2147483647i, u_input.b, -75490i, 16890i)), -37776i & _wgslsmith_clamp_i32(18632i, 131i, 9926i), -8306i, 73721i), max(19390u, select(31647u, 1u, false)) ^ u_input.a.x, func_1(vec4<i32>(~(var_2 << (31099u % 32u)), 3446i, var_2, ~var_0.x & ~u_input.b), 1u, func_1(abs(min(vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, var_0.x, 1i, -1i))), u_input.a.x, Struct_1(true, vec4<bool>(false, true, false, var_4.x)), func_2(-408f > var_3.x)), func_2(_wgslsmith_f_op_f32(-var_3.x) <= var_3.x)), Struct_1(select(!var_4.x, true, any(vec3<bool>(true, true, var_4.x))), vec4<bool>(var_3.x < var_3.x, _wgslsmith_f_op_f32(-var_3.x) == -296f, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(select(var_2, 7015i, var_5.a), ~(-u_input.b), i32(-1i) * -41353i), reverseBits(2147483647i));
}

