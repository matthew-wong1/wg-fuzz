struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec2<i32> = vec2<i32>(-9822i, -13311i);

var<private> global2: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(1257f, -482f, 593f, -375f), vec4<f32>(-1342f, -1391f, -301f, 618f), vec4<f32>(136f, -1000f, -930f, 333f), vec4<f32>(-658f, 170f, 2917f, 472f), vec4<f32>(-1000f, -652f, -708f, 187f), vec4<f32>(-1000f, -337f, 221f, -261f), vec4<f32>(1013f, -1587f, 383f, -791f), vec4<f32>(-1000f, 962f, -493f, 1000f), vec4<f32>(565f, 223f, 745f, -735f), vec4<f32>(726f, -442f, 460f, 515f), vec4<f32>(-529f, -368f, 2419f, -1735f), vec4<f32>(-2903f, 683f, 403f, 1244f), vec4<f32>(-1721f, 360f, 1860f, 265f), vec4<f32>(170f, -1249f, 1322f, 558f), vec4<f32>(1000f, -715f, 345f, 758f), vec4<f32>(193f, 1938f, -1000f, 1147f), vec4<f32>(1000f, 840f, -112f, 688f), vec4<f32>(-612f, -136f, 2395f, -405f), vec4<f32>(-861f, 2105f, -1138f, -367f), vec4<f32>(531f, -254f, -396f, -1000f), vec4<f32>(1612f, -133f, -842f, -363f), vec4<f32>(-1135f, -831f, -1305f, 2628f));

var<private> global3: array<Struct_4, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = 0u;
    let var_1 = select(vec3<bool>(!global0.x, select(false, select(global0.x, any(vec3<bool>(false, true, global0.x)), all(vec3<bool>(false, global0.x, true))), false), any(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, global0.x, false, global0.x), true))), vec3<bool>(global0.x, !(true && (global1.x == global1.x)), global0.x), global0.wwy);
    let var_2 = Struct_2(Struct_1(-select(-vec3<i32>(0i, global1.x, global1.x), -vec3<i32>(-57270i, global1.x, 28943i), u_input.a.x < u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, 1000f, -636f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1569f, 673f, 472f))) - vec3<f32>(1000f, 929f, 1562f))), firstLeadingBit(~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u))), true), ~(u_input.a.x & _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.wwz, vec3<u32>(1u, 44365u, u_input.a.x), u_input.a.xyw), u_input.a.xzw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1524f, _wgslsmith_f_op_f32(f32(-1f) * -770f))))), false, 0u);
    var var_3 = var_2.c;
    var_3 = _wgslsmith_f_op_vec2_f32(-var_2.a.b.zx);
    return var_2.a.c >> (_wgslsmith_div_vec3_u32(select(abs(u_input.a.xyy) ^ vec3<u32>(u_input.a.x, var_2.b, 0u), ~(vec3<u32>(0u, u_input.a.x, var_2.b) << (vec3<u32>(u_input.a.x, 80109u, u_input.a.x) % vec3<u32>(32u))), !var_1.x), abs(u_input.a.zzx)) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 8u)];
    var var_1 = ~16673u;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.b.x))), _wgslsmith_f_op_f32(309f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x))))), arg_0.a.b.x, arg_0.c.x, -939f);
    var var_3 = ~4294967295u;
    var var_4 = Struct_4(0i, ~(firstLeadingBit(func_3()) | _wgslsmith_sub_vec3_u32(~var_0.b, vec3<u32>(var_0.b.x, 3680u, u_input.a.x) ^ u_input.a.wxz)), vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1749f))), -459f), ~u_input.a.x);
    return countOneBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_4.b.x, firstTrailingBit(reverseBits(u_input.a.x)), _wgslsmith_sub_u32(~1u, u_input.a.x)), _wgslsmith_mult_u32(var_0.b.x, ~arg_0.b)));
}

fn func_1(arg_0: Struct_4) -> vec3<u32> {
    return vec3<u32>(~(firstLeadingBit(func_2(Struct_2(Struct_1(vec3<i32>(8849i, 0i, 25414i), vec3<f32>(498f, -1381f, arg_0.d.x), vec3<u32>(53716u, arg_0.e, arg_0.b.x), false), u_input.a.x, vec2<f32>(arg_0.d.x, 742f), arg_0.c.x, 44762u))) >> (1u % 32u)), u_input.a.x, ~arg_0.b.x);
}

fn func_4(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = (vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-2477i, global1.x, global1.x), reverseBits(vec3<i32>(-2147483647i, 21432i, -2147483647i)))) << (reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 9204u, arg_0.x), u_input.a.yyx)) % vec3<u32>(32u));
    var var_1 = Struct_3(26765u);
    let var_2 = Struct_2(Struct_1(abs(-(~vec3<i32>(33608i, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(512f, -297f, -1223f), vec3<f32>(775f, -246f, -796f), false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, -522f, -112f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(703f, 1394f, -1395f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-742f, -283f, 1344f)))), func_1(global3[_wgslsmith_index_u32(arg_0.x, 8u)]), true), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-353f, -126f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3195f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1091f, 313f)), all(global0.wwx))))), false, u_input.a.x);
    global3 = array<Struct_4, 8>();
    let var_3 = var_2.a.a;
    return max(~vec2<u32>(~_wgslsmith_mod_u32(var_1.a, var_2.a.c.x), ~1u), ~u_input.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(vec3<u32>(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(~u_input.a.zwy, func_1(global3[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, 4294967295u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1873f, -195f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1444f, 328f)) * _wgslsmith_f_op_f32(ceil(2022f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1216f, 502f) * vec2<f32>(1132f, -474f)))))), vec2<f32>(487f, 604f)));
    global3 = array<Struct_4, 8>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-725f, var_1.x) + vec2<f32>(-405f, var_1.x)))) * vec2<f32>(var_1.x, -841f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-338f + var_2.x), _wgslsmith_f_op_f32(var_2.x * var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), var_2.x) * global2[_wgslsmith_index_u32(max(68580u, 7416u), 22u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(-423f)), _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(select(-577f, -1483f, true)), var_2.x)))));
    let var_4 = Struct_3(_wgslsmith_clamp_u32(func_1(global3[_wgslsmith_index_u32(var_0.x, 8u)]).x | ~u_input.a.x, 0u, var_0.x) | u_input.a.x);
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 202f), vec2<f32>(var_3.x, var_1.x))))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_3.x)), _wgslsmith_f_op_vec2_f32(var_3.xy + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, var_3.x))))));
    let var_5 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(max(53024i, 52084i), global1.x, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.zww), var_3.wwz), var_3.xwy)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1060f, var_2.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_3.yxw - vec3<f32>(1839f, var_2.x, var_2.x)))))), _wgslsmith_mult_vec3_u32(u_input.a.xyz, ~u_input.a.zww), false);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

