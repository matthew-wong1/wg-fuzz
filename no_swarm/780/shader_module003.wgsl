struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

var<private> global0: Struct_4 = Struct_4(Struct_1(vec2<f32>(1296f, -2317f), 1u, vec4<bool>(true, false, true, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> i32 {
    global0 = Struct_4(global0.a);
    let var_0 = global0.a.a.x;
    global0 = Struct_4(global0.a);
    global0 = Struct_4(global0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, -664f, -1000f) - vec3<f32>(1000f, 1000f, 435f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -472f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) + -962f), _wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x))))));
    return _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(select(-vec2<i32>(1i, -1i), max(vec2<i32>(1i, -15466i), vec2<i32>(-1i, 38563i)), 624f == global0.a.a.x), reverseBits(vec2<i32>(16941i, -11340i))), -(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 0i), ~vec2<i32>(13140i, 2147483647i), abs(vec2<i32>(-1i, -1i))) >> (vec2<u32>(69954u, u_input.b.x) % vec2<u32>(32u))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> vec2<u32> {
    global0 = Struct_4(global0.a);
    global0 = Struct_4(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * 1514f), arg_1.b.a.x), vec2<f32>(_wgslsmith_f_op_f32(-1799f * arg_1.b.a.x), 405f)), (abs(arg_1.b.b) << (arg_1.a.x % 32u)) | (~u_input.b.x | firstTrailingBit(60130u)), vec4<bool>(select(global0.a.c.x, all(vec3<bool>(true, global0.a.c.x, arg_1.b.c.x)), any(vec4<bool>(arg_1.b.c.x, false, true, arg_1.b.c.x))), false, false, false)));
    global0 = Struct_4(Struct_1(global0.a.a, 27249u, !global0.a.c));
    let var_0 = countOneBits(vec2<i32>(~arg_1.c, 1i));
    var var_1 = Struct_5(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.a.x - -553f), -246f, !arg_1.b.c.x))), -1394f), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.a) - global0.a.a), arg_1.a.x, global0.a.c)), Struct_4(arg_1.b), abs(arg_1.b.b));
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = global0.a.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1597f, 343f, global0.a.a.x), vec4<f32>(886f, arg_2.a.x, arg_2.a.x, global0.a.a.x), global0.a.c)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-515f, -396f, global0.a.a.x, arg_2.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, global0.a.a.x, global0.a.a.x, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-138f, global0.a.a.x, arg_2.a.x, 2715f), vec4<f32>(-828f, arg_2.a.x, global0.a.a.x, 1000f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), -2095f, _wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(1382f * 587f)) + vec4<f32>(-709f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.x + -128f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -543f), arg_2.a.x)), _wgslsmith_f_op_f32(748f + _wgslsmith_f_op_f32(arg_2.a.x * -275f)))));
    let var_2 = _wgslsmith_mult_i32(arg_1, func_2());
    var_0 = 4294967295u;
    var_0 = u_input.a.x;
    return Struct_3(~func_3(arg_2.a.x, Struct_2(u_input.a.zz, Struct_1(vec2<f32>(global0.a.a.x, global0.a.a.x), 4294967295u, vec4<bool>(arg_2.c.x, false, arg_2.c.x, global0.a.c.x)), ~var_2), 1i << (global0.a.b % 32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    let var_0 = ~vec4<u32>(firstLeadingBit(global0.a.b), ~arg_1.a.x, _wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(1u, func_1(global0.a.b, -68898i, Struct_1(vec2<f32>(global0.a.a.x, 219f), 0u, global0.a.c)).a.x)), ~(~63395u | global0.a.b));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, global0.a.a.x, 184f, global0.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.a.x, global0.a.a.x, -1000f, global0.a.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1379f, global0.a.a.x, 1488f, -546f) * vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, global0.a.a.x)))))), Struct_4(global0.a), Struct_4(Struct_1(vec2<f32>(739f, -407f), countOneBits(~2216u), arg_2)), max(select(1u, u_input.a.x, true), abs(~var_0.x) | var_0.x));
    return i32(-1i) * -(_wgslsmith_mod_i32(i32(-1i) * -12173i, 1i) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 0i), vec3<i32>(2147483647i, 1i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0.a.c.x || any(!(!global0.a.c.wwx)), global0.a.c.x);
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(-55310i, select(~(-2147483647i), abs(firstLeadingBit(20691i)), true)), _wgslsmith_mod_i32(16770i, _wgslsmith_div_i32(abs(min(5681i, 34665i)), func_4(any(global0.a.c.zy), func_1(4294967295u, 2147483647i, Struct_1(vec2<f32>(global0.a.a.x, global0.a.a.x), u_input.a.x, vec4<bool>(global0.a.c.x, global0.a.c.x, global0.a.c.x, true))), global0.a.c))));
    let var_2 = global0.a.c.x;
    let var_3 = global0.a.a;
    var var_4 = func_1(1u, select(_wgslsmith_div_i32(~(var_1.x & var_1.x), ~2147483647i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-23247i, var_1.x, 34883i, var_1.x), vec4<i32>(7444i, 1i, var_1.x, 0i)) >> (abs(30539u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - -243f) - _wgslsmith_f_op_f32(var_3.x - -383f)) != 2099f), global0.a);
    var var_5 = ~countOneBits(~max(firstTrailingBit(vec3<i32>(var_1.x, -4033i, var_1.x)), vec3<i32>(31385i, var_1.x, var_1.x)));
    var_0 = select(!(!global0.a.c.ww), select(select(select(!vec2<bool>(true, var_0.x), select(vec2<bool>(true, true), vec2<bool>(global0.a.c.x, true), true), !vec2<bool>(true, global0.a.c.x)), select(global0.a.c.yw, global0.a.c.yz, select(global0.a.c.xx, vec2<bool>(false, var_0.x), global0.a.c.wz)), var_0.x), vec2<bool>(global0.a.c.x, select(global0.a.c.x, var_0.x, global0.a.c.x != false)), !select(select(global0.a.c.zy, vec2<bool>(var_0.x, var_0.x), global0.a.c.x), select(vec2<bool>(false, global0.a.c.x), vec2<bool>(var_0.x, var_0.x), false), true)), select(global0.a.c.wz, vec2<bool>(select(4294967295u > u_input.a.x, all(global0.a.c.wy), var_0.x), all(vec4<bool>(var_0.x, var_0.x, false, var_0.x))), select(select(global0.a.c.xw, select(vec2<bool>(true, var_0.x), global0.a.c.xw, true), vec2<bool>(true, global0.a.c.x)), global0.a.c.xw, global0.a.c.x)));
    var var_6 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(204f - var_3.x), -326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.a.x, -513f, var_0.x)))))), Struct_4(Struct_1(vec2<f32>(2177f, -1968f), ~(~1u), global0.a.c)), Struct_4(global0.a), abs(_wgslsmith_clamp_u32(~min(0u, 0u), global0.a.b, global0.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

