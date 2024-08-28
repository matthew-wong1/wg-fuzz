struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, true, true));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = 68260u;
    var var_1 = -_wgslsmith_dot_vec4_i32((vec4<i32>(35862i, u_input.a.x, u_input.a.x, u_input.a.x) ^ -vec4<i32>(1i, -17580i, global0[_wgslsmith_index_u32(24976u, 7u)], -1i)) | vec4<i32>(u_input.a.x, ~1i, _wgslsmith_mod_i32(-68524i, 4017i), u_input.a.x), select(-vec4<i32>(0i, global0[_wgslsmith_index_u32(23294u, 7u)], -1i, 22000i), -select(vec4<i32>(-2147483647i, 13512i, -1i, global0[_wgslsmith_index_u32(0u, 7u)]), vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(var_0, 7u)], -50394i), global1.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), global1.a)));
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(u_input.c, var_0, 0u), abs(var_0), u_input.c, (1u | max(u_input.c, 82u)) & 0u) | _wgslsmith_mult_vec4_u32(~(~firstLeadingBit(vec4<u32>(var_0, 0u, 1u, 0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0, var_0), min(14392u, 0u), _wgslsmith_mod_u32(var_0, 0u), _wgslsmith_clamp_u32(var_0, var_0, 0u)), ~(~vec4<u32>(3148u, u_input.c, u_input.c, 1u)), ~vec4<u32>(81181u, var_0, var_0, 1u)));
    return all(!global1.a.xzz);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = -1153f;
    global0 = array<i32, 7>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1433f, 362f) + -246f) + -263f)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)))), -959f);
    var var_2 = Struct_5(Struct_3(arg_2, vec2<bool>(global1.a.x && global1.a.x, global1.a.x), Struct_1(!global1.a)), Struct_1(select(!global1.a, !vec4<bool>(true, global1.a.x, true, global1.a.x), vec4<bool>(global1.a.x, all(vec3<bool>(global1.a.x, true, false)), true, func_3()))), vec3<f32>(173f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(trunc(var_1.x))), vec4<u32>(_wgslsmith_div_u32(2360u, 1u), _wgslsmith_mod_u32(4294967295u >> (u_input.c % 32u), u_input.c), 15639u, 20074u) ^ vec4<u32>(u_input.c, max(20654u, u_input.c), _wgslsmith_div_u32(countOneBits(0u), ~0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 37412u, 4294967295u), ~u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1779f * -209f))), 451f));
    return vec2<i32>(abs(min(_wgslsmith_div_i32(reverseBits(2147483647i), abs(u_input.a.x)), -2147483647i)), -3917i);
}

fn func_1(arg_0: bool, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(u_input.a.x, -1i)), select(vec2<i32>(-(u_input.b.x << (u_input.c % 32u)), _wgslsmith_div_i32(~(-51977i), _wgslsmith_mod_i32(-2147483647i, u_input.a.x))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.zy, u_input.b.xx), func_2(-31776i, u_input.b, Struct_2(u_input.b.x))), abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)])) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], -2147483647i), u_input.a)), true), firstTrailingBit(~(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a) | ~vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 7u)]))));
    let var_1 = ~_wgslsmith_mod_u32(max(~u_input.c, 4294967295u), select(~u_input.c, u_input.c, any(global1.a)));
    let var_2 = 0i;
    var var_3 = ~(abs(~34925i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 55831u, var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, 56930u, 0u) & vec4<u32>(var_1, 16544u, 28460u, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, var_1, var_1, u_input.c), vec4<u32>(var_1, 10051u, 7192u, 23069u)))) % 32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, -831f, -183f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(select(arg_1, arg_1, all(global1.a.ywy))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -2298f))))), vec3<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-512f)) + _wgslsmith_f_op_f32(613f - arg_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1771f * arg_1), _wgslsmith_f_op_f32(1884f + -550f), true))))), (_wgslsmith_f_op_f32(arg_1 - arg_1) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, -1000f)), -1544f)) != !(global1.a.x | true)));
    return 308f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-674f - 1000f), -686f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1676f, -875f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false && global1.a.x, _wgslsmith_f_op_f32(max(787f, 152f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(497f, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-762f, -322f, 315f) * vec3<f32>(var_0.x, 1223f, 145f)))), vec3<f32>(var_0.x, var_0.x, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 436f, var_0.x)))))));
    let var_2 = select(global1.a, select(select(!vec4<bool>(global1.a.x, false, true, true), select(vec4<bool>(true, false, global1.a.x, true), select(global1.a, global1.a, vec4<bool>(true, global1.a.x, false, false)), global1.a.x), true), vec4<bool>(true, all(vec3<bool>(true, false, global1.a.x)), global1.a.x, true), vec4<bool>(any(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 14878i, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(56824u, 7u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x, u_input.b.x, -21277i)) <= _wgslsmith_mod_i32(u_input.a.x, u_input.b.x), global1.a.x, !global1.a.x)), select(global1.a, select(vec4<bool>(!global1.a.x, true, true, var_0.x == -1128f), !(!global1.a), vec4<bool>(true, global1.a.x, true, select(true, global1.a.x, true))), global1.a));
    var var_3 = Struct_5(Struct_3(Struct_2(u_input.a.x), select(global1.a.zz, !select(var_2.xw, var_2.wy, false), 61438i <= (global0[_wgslsmith_index_u32(u_input.c, 7u)] << (u_input.c % 32u))), Struct_1(select(!var_2, select(global1.a, global1.a, var_2.x), global1.a))), Struct_1(vec4<bool>(182f < var_0.x, select(global0[_wgslsmith_index_u32(u_input.c, 7u)] <= u_input.b.x, !global1.a.x, false), true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -236f, -1178f) + vec3<f32>(var_0.x, var_1.x, 1189f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 572f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, var_0.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, var_0.x, var_1.x)), true || var_2.x)))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 76183u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 22626u), vec4<u32>(u_input.c, 48287u, u_input.c, 1u))) ^ ~vec4<u32>(0u, 46371u, max(u_input.c, u_input.c), u_input.c ^ u_input.c), -183f);
    var var_4 = !global1.a.x;
    global0 = array<i32, 7>();
    var_3 = Struct_5(var_3.a, Struct_1(select(var_2, !vec4<bool>(var_2.x, global1.a.x, var_3.b.a.x, false), var_3.a.c.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.x, -620f))), _wgslsmith_f_op_vec3_f32(-var_3.c))), var_3.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))));
    var_3 = Struct_5(var_3.a, var_3.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_3.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_3.c, var_3.c, false)))) * _wgslsmith_f_op_vec3_f32(sign(var_3.c)))), ~(~var_3.d), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

