struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 17>;

var<private> global3: array<u32, 7>;

var<private> global4: vec3<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 17u)], 7u)])), 7u)], min(global1.b, _wgslsmith_mult_u32(global4.x, 99727u)), ~0u, abs(43847u)), vec4<u32>(global4.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(72146u, global2[_wgslsmith_index_u32(1u, 17u)]), global0.x), reverseBits(select(0u, global4.x, true)), ~(~0u))), Struct_3(vec4<i32>(~(-u_input.a.x), u_input.c.x, -6507i, _wgslsmith_mult_i32(countOneBits(u_input.c.x), u_input.a.x))), Struct_2(vec2<i32>(u_input.a.x, global1.c.x >> ((69906u >> (global2[_wgslsmith_index_u32(u_input.b.x, 17u)] % 32u)) % 32u)), i32(-1i) * -36270i, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d, 205f, global1.d, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(global1.d, 1573f, -1000f, -1594f), vec4<f32>(528f, -421f, 766f, 895f)), vec4<bool>(true, true, true, true))) - vec4<f32>(1611f, global1.d, _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(sign(global1.a)))), ~0u), 2011f, ~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1042u), abs(1u)), 7u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d - var_0.d), _wgslsmith_f_op_f32(global1.d - -2334f))))), var_0.e, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(430f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * -630f)))));
    var var_2 = global0.yx;
    var var_3 = _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u | var_0.a, _wgslsmith_add_u32(global0.x, 0u)), u_input.b.x), 7u)] | ~(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(16732u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], var_0.c.e, global1.b)) >> (u_input.b.x % 32u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(min(81377u, 65042u), ~global2[_wgslsmith_index_u32(6783u, 17u)]), select(var_2.x << (u_input.b.x % 32u), var_0.e, all(vec3<bool>(true, var_0.c.c, var_0.c.c))), global0.x), 37925u));
    let var_4 = -1i;
    return firstTrailingBit(var_4) >> (~global0.x % 32u);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = Struct_2(reverseBits(-(abs(u_input.c.xw) >> (~vec2<u32>(0u, global0.x) % vec2<u32>(32u)))), u_input.a.x, func_3() < (2147483647i << (global0.x % 32u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_f_op_f32(round(983f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * 1000f)), -407f), _wgslsmith_f_op_f32(f32(-1f) * -2214f)), ~58687u);
    global3 = array<u32, 7>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + global1.a)), ~abs(firstTrailingBit(_wgslsmith_clamp_u32(1u, arg_1.a, 0u))), abs(_wgslsmith_div_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.c.x, global1.c.x, u_input.c.x), vec4<i32>(-2147483647i, global1.c.x, -4045i, u_input.a.x)), firstTrailingBit(u_input.c)), abs(firstLeadingBit(global1.c)))), -825f);
    global4 = ~u_input.b.zyy;
    return Struct_3(u_input.c);
}

fn func_1() -> Struct_5 {
    return Struct_5(0u, func_2(1u, Struct_4(4294967295u), Struct_4(u_input.b.x)), Struct_2(-vec2<i32>(u_input.a.x, -14520i) >> ((vec2<u32>(89522u, 4294967295u) & ~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 48837u)) % vec2<u32>(32u)), global1.c.x, -65443i > (~(-9249i) & (-1i ^ u_input.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(869f, global1.d, global1.d, global1.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, -213f, -498f, global1.d))))), ~(~u_input.b.x)), global1.d, global0.x);
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = ~(vec3<u32>(4294967295u, firstLeadingBit(func_1().c.e), 6749u) ^ u_input.b.xxw);
    global0 = _wgslsmith_mod_vec3_u32(u_input.b.xzw, u_input.b.xxy);
    global3 = array<u32, 7>();
    var var_0 = -592f;
    global0 = ~(~abs(u_input.b.xyy)) & abs(firstLeadingBit(u_input.b.xxz) & ~max(u_input.b.yxw, vec3<u32>(2810u, 51142u, 1u)));
    return Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(0i, _wgslsmith_sub_i32(u_input.c.x, 26115i) << (_wgslsmith_add_u32(76562u, global4.x) % 32u)), select(_wgslsmith_div_vec2_i32(~arg_2.a, arg_1.c.a), firstTrailingBit(vec2<i32>(2254i, arg_2.b)), false)), abs((_wgslsmith_mod_i32(87890i, -2147483647i) & _wgslsmith_sub_i32(u_input.a.x, arg_1.b.a.x)) & -(~arg_3.a.x)), arg_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global1.d - -450f), _wgslsmith_f_op_f32(ceil(arg_3.d.x)), _wgslsmith_f_op_f32(abs(arg_2.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -289f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1175f, arg_3.d.x, arg_2.d.x, global1.d))))), 4294967295u);
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_2 {
    global2 = array<u32, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.c.d, _wgslsmith_f_op_vec4_f32(arg_0.c.d * vec4<f32>(arg_0.c.d.x, global1.a, arg_0.d, arg_0.d)), false)) * arg_0.c.d) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)), _wgslsmith_f_op_f32(round(-721f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.d.x)), global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1081f, -567f, 1000f, arg_0.d) - vec4<f32>(-893f, arg_0.c.d.x, -1353f, 736f)) * vec4<f32>(322f, global1.a, 1285f, 378f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-153f, _wgslsmith_f_op_f32(-arg_0.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d - arg_0.c.d.x)))));
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(39733u, 1u), 17u)]);
    var var_3 = Struct_4(countOneBits(abs(min(4294967295u, 39042u))));
    return func_1().c;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_4(arg_1.c, Struct_5(63045u, Struct_3(u_input.c), arg_1, -1683f, ~(~u_input.b.x | 32161u)), Struct_2(vec2<i32>(-countOneBits(-2147483647i), 2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(43233u, 132u, global3[_wgslsmith_index_u32(global1.b, 7u)], u_input.b.x), u_input.b) % 32u)), -_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.b, global1.c.x, 34359i), global1.c.zyy ^ vec3<i32>(5325i, arg_1.a.x, arg_1.b)), any(!(!vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true))), _wgslsmith_f_op_vec4_f32(arg_1.d + arg_0), 1u), arg_1).c;
    global0 = u_input.b.xww;
    var var_1 = Struct_4(abs(select(4294967295u, 0u, !all(vec3<bool>(true, var_0, arg_1.c)))));
    global1 = Struct_1(-1000f, firstLeadingBit(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzz, vec3<u32>(25493u, 1u, 4294967295u)), global2[_wgslsmith_index_u32(1u, 17u)]))), u_input.c, arg_1.d.x);
    let var_2 = 56360u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.b.zzw;
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~global0.x > ~global3[_wgslsmith_index_u32(global4.x, 7u)]));
    let var_1 = ~(~u_input.b);
    global3 = array<u32, 7>();
    let var_2 = global0.yy;
    let var_3 = func_6(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.a)), global1.a, _wgslsmith_f_op_f32(trunc(-352f)), -445f), func_5(Struct_5(u_input.b.x, Struct_3(vec4<i32>(u_input.c.x, -11081i, u_input.a.x, u_input.c.x)), func_4(any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), func_1(), func_1().c, Struct_2(vec2<i32>(27314i, global1.c.x), -1i, false, vec4<f32>(1000f, 861f, global1.d, global1.d), global3[_wgslsmith_index_u32(var_1.x, 7u)])), _wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), u_input.b.zzx) & _wgslsmith_add_u32(79051u, var_1.x)), global1.c.xy, Struct_4(_wgslsmith_sub_u32(var_2.x, 9352u) << (~u_input.b.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.d.x, global1.a, var_3.c)) * _wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-336f, global1.a)), -1160f))));
}

