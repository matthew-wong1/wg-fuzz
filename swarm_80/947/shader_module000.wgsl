struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = u_input.c.zw >> (((firstLeadingBit(max(vec2<u32>(u_input.a.x, 4294967295u), u_input.b.yx)) | ~countOneBits(vec2<u32>(30222u, u_input.b.x))) << (~countOneBits(u_input.a.zy) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = any(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), any(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(347f)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.a;
    let var_1 = 1u;
    let var_2 = vec3<bool>(arg_1.b, arg_1.b, arg_1.b);
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.e.x)), -441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, 293f) - _wgslsmith_div_f32(arg_1.a.c, arg_1.a.a.x)))), 0u, _wgslsmith_f_op_f32(-var_0.c), min(~(~arg_0.d), 60172i));
    var var_3 = u_input.b.yx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f + -2004f) + _wgslsmith_f_op_f32(123f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-990f)) - var_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - 549f), _wgslsmith_f_op_f32(func_3()))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(arg_2, arg_2));
    var var_1 = reverseBits(vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.xwy, vec3<u32>(u_input.b.x, 4294967295u, 1u)), _wgslsmith_mod_u32(u_input.b.x, 8662u)), firstLeadingBit(~(~103670u)), 34316u));
    let var_2 = Struct_4(u_input.c, var_1.x, (u_input.b << (u_input.a.wzy % vec3<u32>(32u))) << (~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(517f, arg_2.x, -172f), vec3<f32>(-170f, -1703f, -352f), false)), vec3<f32>(arg_2.x, var_0.x, 181f), vec3<bool>(true, true, true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, arg_0.x, -695f), vec3<f32>(2162f, arg_0.x, -831f), arg_1)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -991f, arg_2.x), vec3<f32>(-513f, arg_0.x, var_0.x), true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1590f, -959f, arg_2.x) - vec3<f32>(var_0.x, -1177f, -292f)))));
    var_1 = u_input.a.www;
    var var_3 = 0i;
    return -1000f;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_2(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(202f, -1431f)) - -1107f) + _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(-2104f, -371f, 1077f, 1380f), arg_0, 208f, -2147483647i), Struct_3(Struct_1(vec4<f32>(972f, 556f, 340f, -1000f), arg_0, 140f, 19962i), arg_2.x, vec4<i32>(u_input.d.x, u_input.d.x, 35681i, u_input.c.x), -1000f, vec4<f32>(536f, -1000f, -501f, -201f)))), _wgslsmith_f_op_f32(f32(-1f) * -570f)), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2166f, -471f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2170f, -1334f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1366f, -1000f, 791f), vec4<f32>(-513f, -1786f, -2112f, -336f), vec4<bool>(arg_1, arg_1, arg_2.x, arg_1))), vec4<f32>(-260f, -401f, -347f, 2758f)), vec4<f32>(_wgslsmith_f_op_f32(min(884f, -1000f)), -240f, -671f, _wgslsmith_f_op_f32(trunc(-873f))), true)), 0u ^ arg_3, -319f, 775i));
    var var_1 = Struct_1(var_0.c.a, arg_3, _wgslsmith_f_op_f32(sign(var_0.b)), u_input.d.x);
    var var_2 = -u_input.c.x;
    let var_3 = u_input.d << (u_input.a.zz % vec2<u32>(32u));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(2579f, var_0.b, var_1.c, -617f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, var_1.a.x, var_0.c.a.x, -1472f))))), var_0.c.a, (arg_0 ^ (0u & var_0.c.b)) == _wgslsmith_mod_u32(u_input.b.x, 0u))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_i32(i32(-1i) * -firstLeadingBit(var_3.x), _wgslsmith_dot_vec4_i32(u_input.c, abs(u_input.c))));
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, any(vec3<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), any(func_1(0u, true, vec2<bool>(false, true), 27930u)), false)));
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(u_input.a.xyw, ~u_input.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1245f, 296f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2226f, 752f)), vec2<f32>(-1119f, 2343f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-var_2.x))));
    let var_3 = Struct_2(all(!vec2<bool>(func_1(var_1, var_0.x, vec2<bool>(true, var_0.x), u_input.a.x).x, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), _wgslsmith_f_op_f32(141f - _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(vec2<f32>(2058f, var_2.x), var_0.x, vec2<f32>(var_2.x, -2260f))), _wgslsmith_f_op_f32(select(300f, var_2.x, var_0.x)))))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 1000f, 1193f, -175f), vec4<f32>(1000f, 126f, var_2.x, -597f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1140f, var_2.x, var_2.x, 771f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, 347f, var_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -939f, 527f, 445f), vec4<f32>(3178f, -295f, var_2.x, -301f)), !vec4<bool>(var_0.x, var_0.x, true, false))))), 27865u, var_2.x, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1521f, ~u_input.c.x, vec3<i32>(-2147483647i, var_3.c.d, 55805i), countOneBits(u_input.a >> (~(~u_input.a) % vec4<u32>(32u))));
}

