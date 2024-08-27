struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: f32 = 455f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_2(arg_1, arg_1);
    global1 = _wgslsmith_f_op_f32(max(arg_0, 1119f));
    let var_1 = select(!select(select(!vec3<bool>(arg_2.x, true, arg_2.x), !vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(true, true, true)), vec3<bool>(arg_1.a.x > 2147483647i, true, true), select(select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(false, arg_2.x, arg_2.x), arg_2.x), select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(true, true, true), vec3<bool>(arg_2.x, arg_2.x, true)), vec3<bool>(true, false, arg_2.x))), select(select(!(!vec3<bool>(arg_2.x, false, false)), select(!vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), !(!vec3<bool>(arg_2.x, arg_2.x, true))), vec3<bool>(arg_2.x, any(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), true), !vec3<bool>(false, arg_2.x, arg_2.x || false)), 2147483647i <= (_wgslsmith_sub_i32(~(-1i), u_input.a) | _wgslsmith_dot_vec4_i32(min(arg_1.a, arg_1.a), -arg_1.a)));
    global0 = array<vec3<u32>, 2>();
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), -1098f)))), _wgslsmith_f_op_f32(-arg_0)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> vec4<u32> {
    global1 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -158f), Struct_1(vec4<i32>(-(~u_input.a), min(32928i, reverseBits(-26592i)), u_input.a, 0i), firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(711u, 29719u, 0u, arg_1)), vec4<u32>(0u, arg_1, 20263u, arg_1)))), vec2<bool>((1i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 28962i), vec2<i32>(u_input.a, 1i))) == u_input.a, true)));
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1772f);
    global1 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))))) * _wgslsmith_f_op_f32(-arg_2)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, arg_2, 459f, -358f) + vec4<f32>(-1534f, -117f, -1000f, -517f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2423f, arg_2, arg_2, arg_2) + vec4<f32>(-1492f, -588f, arg_2, arg_2)))), vec4<f32>(_wgslsmith_div_f32(arg_2, arg_2), -905f, -448f, arg_2), all(vec3<bool>(true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(468f, 505f, true)) * 572f), _wgslsmith_f_op_f32(round(-1000f)), arg_2, arg_2)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-607f, 441f, -889f, arg_2) + vec4<f32>(1000f, arg_2, 2538f, arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 1364f, arg_2, arg_2), vec4<f32>(916f, arg_2, arg_2, 244f))), false))));
    return ~(vec4<u32>(0u, min(~0u, _wgslsmith_sub_u32(arg_0, 0u)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(19559u, 26846u, arg_0, arg_0), vec4<u32>(4294967295u, arg_1, arg_0, arg_1)), arg_0, true), _wgslsmith_sub_u32(arg_0, arg_0)) ^ (vec4<u32>(arg_1, ~1u, ~arg_1, min(1u, 31432u)) >> (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0, 4294967295u, arg_1), vec4<u32>(1u, arg_0, arg_0, 0u), vec4<u32>(1u, 41398u, 4294967295u, arg_0)), min(vec4<u32>(69468u, arg_0, arg_0, 18255u), vec4<u32>(0u, 0u, arg_1, 38984u))) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0.b;
    let var_1 = arg_0;
    global1 = _wgslsmith_f_op_f32(min(-790f, -3493f));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(f32(-1f) * -617f)))));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1264f, 363f)) - _wgslsmith_f_op_f32(trunc(-726f))), var_1.a, select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, all(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))))));
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1013f, 301f, true)))), -947f)), arg_1.b, vec2<bool>(true, true)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1753f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(f32(-1f) * -515f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-305f, 821f, -1072f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(695f, -2015f, -1000f) * vec3<f32>(363f, 1300f, -336f))), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2419f, -1280f))) + vec3<f32>(-790f, _wgslsmith_f_op_f32(f32(-1f) * -902f), _wgslsmith_f_op_f32(-2141f + -363f)))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1032f * 553f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1234f - -2155f) * 1f), false))));
    var var_2 = 33671u << (countOneBits(11512u) % 32u);
    var var_3 = Struct_1(vec4<i32>(u_input.a, _wgslsmith_mult_i32(1i, -(~1i)), abs(min(u_input.a, -1i << (arg_0.a.b.x % 32u))), -(~_wgslsmith_sub_i32(21684i, u_input.a))), vec4<u32>(4294967295u, _wgslsmith_div_u32(arg_0.a.b.x, _wgslsmith_mult_u32(22364u, ~arg_0.a.b.x)), 1u, _wgslsmith_dot_vec3_u32(arg_0.a.b.zzx << (select(arg_0.a.b.xzx, vec3<u32>(4413u, arg_0.b.b.x, 4294967295u), vec3<bool>(true, false, false)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.a.b, vec4<u32>(arg_0.a.b.x, arg_0.b.b.x, 1u, 1u)), 2u)] & abs(vec3<u32>(36598u, 0u, 26516u)))));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(645f - 268f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1000f, Struct_1(vec4<i32>(1i, var_4.b.a.x, var_3.a.x, -1i), var_4.a.b), vec2<bool>(false, true)))))))) - _wgslsmith_f_op_f32(func_4(Struct_2(arg_0.b, Struct_1(min(vec4<i32>(u_input.a, u_input.a, -8287i, arg_0.b.a.x), vec4<i32>(2147483647i, u_input.a, 6330i, 71793i)), func_3(var_4.b.b.x, var_4.a.b.x, var_1.x))), var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~countOneBits(38186u));
    let var_1 = max(_wgslsmith_mod_i32(min(1i, _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 5091i), vec2<i32>(1i, u_input.a)))), u_input.a), u_input.a);
    let var_2 = 9094i;
    var var_3 = !(!(781f != _wgslsmith_f_op_f32(floor(-200f))));
    var_3 = all(vec4<bool>(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<i32>(-40737i, var_2, var_1, 0i), vec4<u32>(0u, var_0, var_0, var_0)), Struct_1(vec4<i32>(u_input.a, 2147483647i, 14381i, -2147483647i), vec4<u32>(4294967295u, var_0, 4294967295u, var_0))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(515f, Struct_1(vec4<i32>(var_2, u_input.a, u_input.a, u_input.a), vec4<u32>(var_0, var_0, 0u, 19875u)), vec2<bool>(false, true)))), false, true, true));
    var var_4 = ~_wgslsmith_mult_u32(var_0, ~_wgslsmith_dot_vec3_u32(func_3(4294967295u, var_0, -2189f).wxw, ~global0[_wgslsmith_index_u32(37517u, 2u)]));
    let var_5 = 3608u;
    let var_6 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -19725i, -69573i & ~var_2), abs(~(vec4<i32>(7302i, 0i, 25022i, var_1) ^ vec4<i32>(var_2, var_1, var_2, -2147483647i))), -abs(vec4<i32>(var_1, 23582i, 1i, u_input.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(14741u, 2391u) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 736u), vec2<u32>(var_5, 60930u)), var_0, 59342u, abs(0u)), vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_5, 0u), vec2<u32>(var_5, 4294967295u))), 34054u, _wgslsmith_div_u32(~57159u, countOneBits(var_0)), 53050u)));
    var var_7 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 317f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f))), abs(~var_6.b.zw), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, -907f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-601f, -315f) - vec2<f32>(1000f, 286f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, 115f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1668f, -1979f)))))), vec4<f32>(824f, _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)), 412f));
}

