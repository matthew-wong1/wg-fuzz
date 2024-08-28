struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(33632u, 10688u, 6836u, 36790u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.a.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) - -657f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a.a.b))), arg_1)))));
    let var_1 = arg_3.b;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * 829f)), _wgslsmith_f_op_f32(ceil(-828f)), _wgslsmith_f_op_f32(max(-1278f, -655f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1, 2392f, arg_3.a.a.b) * vec4<f32>(var_0.x, arg_1, arg_3.a.a.b, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -792f, var_0.x, 859f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, 1493f, -333f, -554f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1263f * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(564f - arg_1))), 1929f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -909f), arg_3.b.a.b, all(vec2<bool>(arg_3.e, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1000f, -967f, 276f), vec4<f32>(arg_1, var_1.a.b, -554f, var_0.x), true))))));
    global0 = ~(max(~(vec4<u32>(arg_2, global0.x, 1u, u_input.a) & vec4<u32>(arg_2, arg_3.b.b, 4294967295u, 37719u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 18989u, 1u, u_input.a), vec4<u32>(63746u, global0.x, 4294967295u, 4294967295u))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(23715u, arg_3.a.a.a, arg_2, 0u), countOneBits(select(vec4<u32>(0u, global0.x, global0.x, u_input.a), vec4<u32>(u_input.a, 0u, 119692u, global0.x), true))) % vec4<u32>(32u)));
    let var_2 = 613f;
    return abs(_wgslsmith_clamp_vec3_u32(abs(global0.www), countOneBits(~global0.xxw), global0.wxw)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_mod_u32(0u, u_input.a), ~4294967295u) & global0.yxz, select(global0.yxy, global0.wyx, select(select(vec3<bool>(arg_3.e, false, arg_3.e), vec3<bool>(true, false, true), arg_3.c), vec3<bool>(arg_3.c, arg_3.c, true), true)), vec3<u32>(reverseBits(firstLeadingBit(0u)), ~_wgslsmith_dot_vec3_u32(global0.wzz, vec3<u32>(9331u, arg_2, u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, arg_3.b.b, u_input.a), max(global0.xzw, vec3<u32>(0u, u_input.a, arg_2)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = -38035i;
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(13379u, 11471u, global0.x) & vec3<u32>(u_input.a, 23168u, arg_1.x)), global0.zzz, arg_1), select(reverseBits(global0.yzw), vec3<u32>(_wgslsmith_sub_u32(global0.x, 66184u), _wgslsmith_dot_vec2_u32(vec2<u32>(31943u, 0u), arg_1.yz), _wgslsmith_clamp_u32(4294967295u, global0.x, global0.x)), true)), ~countOneBits(vec3<u32>(abs(3480u), ~arg_1.x, _wgslsmith_clamp_u32(1u, 117841u, u_input.a))));
    let var_2 = Struct_3(Struct_2(Struct_1(8751u, 1522f), arg_1.x), Struct_2(Struct_1(_wgslsmith_mult_u32(global0.x, 0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x)))), 4294967295u), select(true, false, (_wgslsmith_f_op_f32(select(621f, arg_2.x, false)) != _wgslsmith_f_op_f32(trunc(1741f))) | any(vec2<bool>(true, true))), global0.x, all(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, select(false, true, false)))));
    var var_3 = var_2;
    let var_4 = -_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, firstTrailingBit(2147483647i)), 1i ^ u_input.b.x) <= arg_0.x;
    return global0.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = !(any(vec3<bool>(all(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, false, true)), true)) | true);
    global0 = vec4<u32>(func_4(u_input.b.wyy, select(func_3(u_input.b.wwz, -607f, arg_0.x, Struct_3(Struct_2(Struct_1(arg_0.x, -776f), 4294967295u), Struct_2(Struct_1(4294967295u, 877f), 4294967295u), var_0, 1u, false)) ^ max(global0.wwz, global0.zxz), func_3(vec3<i32>(u_input.b.x, u_input.c, -24941i) ^ vec3<i32>(-3517i, u_input.c, 0i), _wgslsmith_f_op_f32(-642f - 1299f), 1u, Struct_3(Struct_2(Struct_1(arg_0.x, 223f), 3253u), Struct_2(Struct_1(1u, 1362f), global0.x), var_0, 72093u, var_0)), vec3<bool>(true, var_0, var_0)), vec2<f32>(_wgslsmith_f_op_f32(sign(-190f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1150f + -179f) * _wgslsmith_f_op_f32(f32(-1f) * -572f)))), ~(~max(func_4(vec3<i32>(0i, -1i, u_input.c), global0.xxx, vec2<f32>(-1948f, -1000f)), abs(16004u))), 1u, ~(~global0.x));
    var var_1 = ~arg_0.x;
    var var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) + _wgslsmith_f_op_f32(-726f * 1259f)), _wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-143f, _wgslsmith_f_op_f32(735f + -427f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1008f, 1034f)) - _wgslsmith_div_f32(-504f, 1143f)), _wgslsmith_f_op_f32(f32(-1f) * -1172f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f + _wgslsmith_div_f32(1183f, -2386f)))));
    return Struct_1(arg_0.x, _wgslsmith_f_op_f32(ceil(var_3.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.b.x, ~_wgslsmith_clamp_i32(1i, u_input.b.x, u_input.c), 33304i);
    var var_1 = func_2(global0.wz);
    return Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.b;
    var var_1 = arg_0;
    let var_2 = u_input.b.xwy >> (vec3<u32>(_wgslsmith_add_u32(20510u, u_input.a), 1u, ~arg_0.a.a) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, -479f, 380f, var_1.a.b) * vec4<f32>(arg_0.a.b, var_1.a.b, -774f, -151f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, -847f, var_1.a.b, 2111f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -509f, 1975f, -623f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, -400f, 1517f, 825f) + vec4<f32>(-1985f, var_1.a.b, var_0, arg_0.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, var_1.a.b, var_0, arg_0.a.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, var_0, var_1.a.b, var_0))))))));
    var var_4 = 32426i;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(Struct_2(func_1(), ~52012u)), u_input.a);
    var var_1 = Struct_2(func_2(func_3(_wgslsmith_div_vec3_i32(~vec3<i32>(15614i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -36865i, -39323i)), -1000f, global0.x & 1u, Struct_3(Struct_2(var_0.a, global0.x), Struct_2(Struct_1(83199u, var_0.a.b), var_0.a.a), true, 4294967295u, true)).yz), 0u);
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.a.b)))), func_2(global0.xy).b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(199f))), _wgslsmith_f_op_f32(-1522f - 2361f), select(any(vec2<bool>(true, true)), u_input.b.x <= 17673i, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.b + var_0.a.b), _wgslsmith_div_f32(-614f, var_0.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, 2814f, 291f, var_1.a.b)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.b - 1000f), _wgslsmith_f_op_f32(var_2.x * 148f), 825f, _wgslsmith_f_op_f32(var_1.a.b + var_2.x)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))))), var_0.a.b, min(u_input.c, abs(u_input.b.x) | 1i), vec4<i32>(-countOneBits(_wgslsmith_mod_i32(18847i, 1i)), u_input.b.x << (~(~28670u) % 32u), -(-u_input.b.x ^ -2147483647i), max(min(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -2147483647i), u_input.b.x), -2147483647i)));
}

