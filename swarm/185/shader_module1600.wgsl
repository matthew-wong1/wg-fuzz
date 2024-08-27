struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_i32(abs(_wgslsmith_div_i32(2147483647i, 1i & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -33798i), vec2<i32>(1i, -2147483647i)))), 0i);
    var var_1 = -256f;
    let var_2 = firstLeadingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, arg_2.a, arg_0.a, u_input.a.x), countOneBits(select(vec4<u32>(4294967295u, arg_0.a, u_input.a.x, 0u), vec4<u32>(35922u, arg_0.a, 0u, 4294967295u), true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), true)) * -746f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<f32> {
    let var_0 = vec4<bool>(all(vec3<bool>(true, true, true)), -772f == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-283f * _wgslsmith_f_op_f32(arg_2.x - 512f)))), true, true);
    var var_1 = arg_1;
    let var_2 = Struct_1(~4294967295u, _wgslsmith_f_op_vec2_f32(arg_2 * vec2<f32>(arg_1.b.x, -1126f)), 953f);
    var var_3 = -(abs(reverseBits(_wgslsmith_sub_i32(-2147483647i, -11828i))) & -(_wgslsmith_add_i32(0i, 2406i) << (_wgslsmith_mod_u32(arg_1.a, arg_1.a) % 32u)));
    var var_4 = _wgslsmith_f_op_f32(-1008f * -477f);
    return var_1.b;
}

fn func_2() -> i32 {
    let var_0 = true;
    let var_1 = ~abs(~(~vec4<u32>(4294967295u, u_input.a.x, 8504u, u_input.a.x))) << (firstLeadingBit(~vec4<u32>(~19509u, _wgslsmith_div_u32(51735u, 68861u), u_input.a.x >> (u_input.a.x % 32u), ~u_input.a.x)) % vec4<u32>(32u));
    let var_2 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~select(36069u, 85397u, var_0), var_1.x, countOneBits(u_input.a.x) | u_input.a.x), vec4<u32>(var_1.x >> (var_1.x % 32u), var_1.x, ~u_input.a.x, var_1.x) >> (abs(var_1) % vec4<u32>(32u))), countOneBits(~(~81638u ^ u_input.a.x)), 0u);
    var var_3 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(77590u, vec2<f32>(110f, -165f), -969f), vec4<f32>(1920f, -226f, 1162f, -352f), Struct_1(25118u, vec2<f32>(1000f, -1900f), -719f))))))), Struct_1(~_wgslsmith_sub_u32(1u, var_1.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(684f, -132f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1184f, -1000f) * vec2<f32>(-579f, 214f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -1487f), _wgslsmith_f_op_f32(min(-1611f, 1000f)))), 929f))), _wgslsmith_f_op_f32(step(-199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, vec2<f32>(-1487f, 2676f), -531f), vec4<f32>(887f, -1000f, -940f, -2210f), Struct_1(14368u, vec2<f32>(-430f, 112f), 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(815f + -207f))))));
    var_3 = Struct_1(var_2.x, vec2<f32>(-772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f + _wgslsmith_f_op_f32(-var_3.b.x)))), 2338f);
    return -53059i;
}

fn func_1() -> vec2<bool> {
    var var_0 = select(select(vec3<i32>(_wgslsmith_mod_i32(1i, firstLeadingBit(-69392i)), abs(func_2()), -10228i), -firstTrailingBit(vec3<i32>(0i, 44683i, 0i)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), ~vec3<i32>(~_wgslsmith_div_i32(-19164i, -1i), -24460i, 4572i), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1597f, 1928f, 2173f, 130f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1221f, 1514f, 415f, 1184f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(794f, 1440f, -583f, 586f)), true)) * vec4<f32>(314f, _wgslsmith_div_f32(-1000f, -1000f), -363f, _wgslsmith_f_op_f32(func_3(Struct_1(60352u, vec2<f32>(-204f, -527f), 706f), vec4<f32>(319f, -717f, 601f, 693f), Struct_1(10700u, vec2<f32>(534f, -1448f), 283f)))))));
    var var_2 = 1717f;
    var_0 = select(vec3<i32>(~(var_0.x & 23202i), _wgslsmith_sub_i32(firstTrailingBit(var_0.x), -1i), min(-43577i, -5136i)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 3446i, 26230i), vec3<i32>(var_0.x, -2147483647i, var_0.x)), vec3<i32>(~(-2147483647i), var_0.x, reverseBits(var_0.x))), true) << (~(~vec3<u32>(~0u, firstTrailingBit(u_input.a.x), ~5391u)) % vec3<u32>(32u));
    var_2 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(step(var_1.x, var_1.x))))));
    return !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(vec2<bool>(15937u != u_input.a.x, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, all(vec3<bool>(true, true, true)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(any(func_1()), true, true, _wgslsmith_div_u32(u_input.a.x, 4294967295u) != reverseBits(36673u)), select(vec4<bool>(true, select(true, true, false), true, false), vec4<bool>(true, false, all(vec2<bool>(true, false)), any(vec4<bool>(false, false, false, true))), -75182i >= (-2147483647i << (u_input.a.x % 32u))), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-906f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-289f, -592f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-415f, -458f)) + -541f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1926f)))));
    var var_2 = Struct_1(14822u, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1710f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-232f + -626f) - 1476f), 1f)), _wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(971f, 833f, true)) - 1084f) - _wgslsmith_div_f32(-297f, _wgslsmith_f_op_f32(f32(-1f) * -1063f)))));
    var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.b))), _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c, var_2.b.x, false))))));
    let var_3 = Struct_1(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.b.x, -388f)))), _wgslsmith_f_op_vec2_f32(var_2.b * _wgslsmith_div_vec2_f32(var_2.b, var_2.b)))) * _wgslsmith_f_op_vec2_f32(func_4(var_2.b.x, Struct_1(~var_2.a, var_2.b, _wgslsmith_div_f32(var_2.c, 694f)), var_2.b))), _wgslsmith_f_op_f32(trunc(2231f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~u_input.a.xy, ~(~u_input.a.zx)));
}

