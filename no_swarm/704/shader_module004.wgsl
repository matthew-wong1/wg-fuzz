struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(934f))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(513f - _wgslsmith_div_f32(-1253f, var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1088f, 1000f)))), select(true, _wgslsmith_mod_i32(13044i, u_input.b) != u_input.b, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(384f, _wgslsmith_f_op_f32(var_0 - var_0))));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(~u_input.a.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(35086u, 4294967295u), u_input.a.xz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -802f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -461f, 1013f) * vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(1589f, _wgslsmith_f_op_f32(-var_1)), -529f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(674f)), _wgslsmith_f_op_f32(max(var_1, var_0)))))));
    var var_3 = _wgslsmith_clamp_vec4_u32(reverseBits(~(~vec4<u32>(0u, u_input.a.x, 0u, arg_0.a)) >> (vec4<u32>(14727u << (1u % 32u), 15307u, 1u, var_2.a.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, u_input.a.x, 4294967295u, 22606u) & vec4<u32>(34444u, arg_0.a, u_input.a.x, var_2.a.x)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, u_input.a.x, 21136u, 0u), vec4<u32>(u_input.a.x, 1u, 22542u, arg_0.a)), vec4<u32>(1u, var_2.a.x, 0u, u_input.a.x))), ~(~(~countOneBits(vec4<u32>(0u, 4294967295u, 30503u, 0u)))));
    let var_4 = ~var_2.a.x;
    return select(vec3<i32>(0i, countOneBits(i32(-1i) * -2147483647i), i32(-1i) * -17731i), -abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, 1i, u_input.b), countOneBits(vec3<i32>(u_input.b, u_input.b, 1i)))), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true), vec3<bool>(false, true, true)), vec3<bool>(!(u_input.b <= 8851i), select(false, select(false, true, true), select(true, false, false)), select(false, false, true) && (u_input.b < -9226i))));
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(934f)));
    var var_1 = _wgslsmith_div_i32(~(u_input.b ^ _wgslsmith_sub_i32(u_input.b, -51975i)), 1i);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -780f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1406f + 608f)))));
    var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(858f + _wgslsmith_f_op_f32(798f + -1425f)) + _wgslsmith_f_op_f32(f32(-1f) * -209f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1310f, -889f)) + -1000f))), 985f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1203f, -304f, 1060f, -1386f)))) - vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, 1633f)))), -839f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f + var_2.x));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, _wgslsmith_f_op_f32(func_4(func_3(Struct_2(u_input.a.x)))))));
    var var_1 = vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), !all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(select(false, false, true), all(vec4<bool>(false, false, false, true)), false, false), vec4<bool>(u_input.a.x == 0u, false, true, all(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true))));
    var var_2 = ~0u;
    var var_3 = ~4294967295u;
    let var_4 = Struct_3(u_input.a.yx, _wgslsmith_add_i32(u_input.b, -73482i));
    return (~vec2<u32>(~0u, var_4.a.x) << ((vec2<u32>(~10726u, ~u_input.a.x) ^ (select(vec2<u32>(var_4.a.x, 0u), vec2<u32>(61625u, u_input.a.x), vec2<bool>(true, var_1.x)) >> (~vec2<u32>(var_4.a.x, var_4.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u))) ^ max(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 21948u), vec2<u32>(u_input.a.x, var_4.a.x))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.x, 4294967295u, var_4.a.x, var_4.a.x), vec4<u32>(1u, 94410u, var_4.a.x, var_4.a.x)), ~var_4.a.x) ^ u_input.a.yy);
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(u_input.a.x, ~abs(4294967295u), _wgslsmith_add_u32(0u, 1u << (~u_input.a.x % 32u)), ~(~u_input.a.x));
    var var_1 = var_0.x;
    var_0 = ~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 0u), vec2<bool>(true, true)), abs(~var_0.wx)), ~(1u & u_input.a.x), ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, u_input.a.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))));
    var var_2 = Struct_2(41647u);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(509f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1376f), 451f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-441f, 285f, -1944f) * vec3<f32>(1f, 1f, 1f)))))));
    return Struct_1(~(func_2() >> (u_input.a.zz % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-640f, -1206f, -201f, _wgslsmith_f_op_f32(func_4(-vec3<i32>(u_input.b, u_input.b, -2147483647i)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -730f), var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.x, var_3.x), var_3.x)), _wgslsmith_f_op_f32(var_3.x * var_3.x)), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false)))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2163f - _wgslsmith_f_op_f32(ceil(arg_0.b.x))), _wgslsmith_f_op_f32(func_4(~vec3<i32>(u_input.b, u_input.b, -22874i))))), 957f);
    let var_1 = Struct_3(firstTrailingBit(select(~select(vec2<u32>(arg_0.a.x, u_input.a.x), arg_0.a, arg_2.zw), firstLeadingBit(u_input.a.zx), arg_2.xy)), min(func_3(Struct_2(arg_0.a.x)).x & abs(abs(-11967i)), 0i | u_input.b));
    var var_2 = ~4294967295u;
    var_2 = ~((((15440u | arg_0.a.x) ^ 71848u) << (_wgslsmith_sub_u32(arg_0.a.x, firstTrailingBit(4294967295u)) % 32u)) >> (48507u % 32u));
    var var_3 = Struct_3(~firstLeadingBit(arg_0.a), 0i);
    return arg_0.b.zzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(420f, 180f, -2387f)) + vec3<f32>(1711f, -516f, -1744f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1394f, -811f, 604f), vec3<f32>(-1981f, 2283f, 213f)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(), all(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)), !vec4<bool>(false, true, all(vec2<bool>(true, false)), all(vec2<bool>(true, true))))));
    var var_1 = Struct_3(u_input.a.yx, _wgslsmith_sub_i32(u_input.b, -1i));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))), var_0.x)));
    var var_2 = ~(~vec3<u32>(_wgslsmith_add_u32(1u, 86475u >> (var_1.a.x % 32u)), 1u, 28978u));
    let var_3 = true;
    var_1 = Struct_3(max(u_input.a.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_1.a.x, var_2.x), ~var_1.a.x), var_1.a)), firstLeadingBit(firstLeadingBit(-1i)));
    var var_4 = !(!select(select(vec2<bool>(var_3, false), vec2<bool>(var_3, true), select(var_3, var_3, false)), vec2<bool>(true, true), select(vec2<bool>(var_3, false), select(vec2<bool>(true, var_3), vec2<bool>(true, var_3), var_3), select(vec2<bool>(false, var_3), vec2<bool>(var_3, var_3), vec2<bool>(true, var_3)))));
    var var_5 = ~(u_input.a.yx | u_input.a.yz) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1075i, var_1.b, vec4<i32>(-1i) * -firstLeadingBit(countOneBits(vec4<i32>(u_input.b, var_1.b, -37023i, var_1.b))));
}

