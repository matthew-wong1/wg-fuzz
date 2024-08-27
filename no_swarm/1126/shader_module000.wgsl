struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_2(!arg_2, Struct_1(firstLeadingBit(firstLeadingBit(-27325i)), !arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, arg_1, -330f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1233f, arg_1) + vec3<f32>(1000f, 616f, -1325f)), !vec3<bool>(false, arg_0.x, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(423f, arg_1, arg_1), vec3<f32>(arg_1, 702f, arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -542f, -420f))))));
    let var_1 = Struct_1((abs(_wgslsmith_div_i32(-2147483647i, -8912i)) >> (u_input.b.x % 32u)) ^ ~(-var_0.b.a), var_0.b.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * 994f) + var_0.b.c.x), 795f, _wgslsmith_f_op_f32(-var_0.b.c.x)));
    return !vec4<bool>(~_wgslsmith_div_u32(4294967295u, u_input.e.x) <= 19965u, !var_1.b.x, !((var_1.b.x && true) & true), 0i < var_0.b.a);
}

fn func_2() -> Struct_2 {
    let var_0 = !func_3(vec4<bool>(true, true, true, true), -1660f, !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true));
    var var_1 = false;
    var var_2 = ~(~_wgslsmith_dot_vec2_u32(max(~u_input.e, vec2<u32>(u_input.d.x, u_input.d.x)), min(~u_input.e, u_input.e << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1033f, -1176f)) + 1f))));
    var_1 = true;
    return Struct_2(func_3(!func_3(!vec4<bool>(false, var_0.x, false, true), -1937f, var_0.yz), var_3, !func_3(vec4<bool>(var_0.x, false, var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_3), var_0.xw).zw).wy, Struct_1(-((79307i << (u_input.b.x % 32u)) | 39629i), var_0.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 1787f, 535f) - vec3<f32>(var_3, 717f, 1543f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1816f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-663f + 1757f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    var var_0 = Struct_2(arg_0.b, arg_0);
    var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_2(arg_0.b, Struct_1(13902i, var_0.a, var_0.b.c));
    let var_1 = ~vec4<u32>(reverseBits(reverseBits(u_input.c)), ~10588u, 4294967295u, 17348u) | firstLeadingBit(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(17952u, 6676u, 5694u), u_input.b, u_input.b), u_input.d.yzz ^ vec3<u32>(41526u, u_input.d.x, u_input.b.x)), ~firstTrailingBit(0u), ~u_input.b.x));
    return select(vec4<bool>(var_0.a.x, !any(vec2<bool>(false, arg_0.b.x)) == (-2513f != func_2().b.c.x), var_0.b.b.x, true), select(!vec4<bool>(true, func_2().a.x, false, !var_0.a.x), !vec4<bool>(true, var_0.b.b.x, true, func_2().b.b.x), func_3(!select(vec4<bool>(arg_0.b.x, true, var_0.b.b.x, true), vec4<bool>(true, false, arg_0.b.x, var_0.b.b.x), false), _wgslsmith_f_op_f32(1331f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(!arg_0.b.x, true))), any(select(!vec3<bool>(true, false, arg_0.b.x), vec3<bool>(arg_0.b.x || var_0.a.x, func_3(vec4<bool>(true, arg_0.b.x, var_0.a.x, var_0.b.b.x), -1905f, var_0.b.b).x, false), false || var_0.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~(-1i), max(1i, abs(1i)), 2147483647i, ~1i);
    var var_1 = vec3<bool>(any(select(vec3<bool>(true, u_input.a <= u_input.b.x, false), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), true)), !(!any(vec3<bool>(true, true, true)) | any(func_1(Struct_1(2147483647i, vec2<bool>(true, true), vec3<f32>(-417f, 554f, 910f)), vec4<i32>(1i, -1i, -15349i, var_0.x)))), true);
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, 18842i), var_0.yx), reverseBits(vec2<i32>(var_0.x, var_0.x)))), -27847i), 2147483647i << (_wgslsmith_clamp_u32(u_input.b.x, ~u_input.d.x, u_input.e.x) % 32u));
    var var_3 = all(vec3<bool>(true, func_1(func_2().b, ~vec4<i32>(var_0.x, var_0.x, 0i, var_2)).x, var_1.x));
    var_1 = select(vec3<bool>(~(~u_input.b.x) > ~firstLeadingBit(0u), false, false), !(!func_3(select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, true, false, false), false), 1f, var_1.xz).wwz), func_1(Struct_1(_wgslsmith_sub_i32(var_2, firstLeadingBit(var_0.x)), !func_1(Struct_1(var_2, vec2<bool>(true, var_1.x), vec3<f32>(458f, 813f, 425f)), vec4<i32>(var_0.x, 2147483647i, var_0.x, var_2)).yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, -357f, 1000f) * vec3<f32>(1385f, 325f, 1675f)))), ~(~(vec4<i32>(-47646i, var_2, -48113i, 9142i) << (u_input.d % vec4<u32>(32u))))).zzy);
    var var_4 = Struct_2(var_1.yx, func_2().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_4.b.c.yy)), var_4.b.c.zy)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.b.c.yx + vec2<f32>(var_4.b.c.x, 1144f))), vec2<f32>(_wgslsmith_f_op_f32(-var_4.b.c.x), _wgslsmith_f_op_f32(max(-1290f, 924f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(41611u, u_input.c, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(11662u, 71253u, u_input.a, u_input.a), u_input.d)), u_input.a ^ ~u_input.d.x), u_input.d), firstTrailingBit(~u_input.d) & ~u_input.d);
}

