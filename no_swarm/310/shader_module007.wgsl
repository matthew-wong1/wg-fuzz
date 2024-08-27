struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<u32>, 16>;

var<private> global2: array<vec4<bool>, 3>;

var<private> global3: i32 = -25145i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    var var_0 = u_input.b.yy;
    let var_1 = max(-firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b, arg_2.a.a.b, arg_1.b), vec3<i32>(arg_2.a.a.b, -36041i, 2147483647i))), arg_2.a.b.c) ^ vec3<i32>(arg_1.b, 2147483647i, arg_1.b);
    var var_2 = vec2<bool>(all(!arg_2.a.b.d.yxz), false);
    global3 = reverseBits(-abs(~firstLeadingBit(-1i)));
    let var_3 = arg_2.a.a.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1561f)))), arg_1.c)) - arg_2.a.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.b.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -124f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(300f, arg_1.c)))));
}

fn func_2() -> u32 {
    global0 = !(!((u_input.b.x != (0u >> (0u % 32u))) | true));
    global0 = true;
    global0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-930f)), _wgslsmith_f_op_f32(f32(-1f) * -650f), any(global2[_wgslsmith_index_u32(u_input.b.x, 3u)]))) + -971f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec4<u32>(49497u, u_input.b.x, 4294967295u, u_input.b.x), Struct_2(37380u, -32463i, 1000f, u_input.b), Struct_4(Struct_3(Struct_2(u_input.b.x, 2147483647i, -1837f, vec3<u32>(32678u, u_input.b.x, 1u)), Struct_1(vec3<i32>(-1i, 6778i, 20981i), 488f, vec3<i32>(-32037i, -65073i, -2147483647i), global2[_wgslsmith_index_u32(0u, 3u)], u_input.b.x), vec4<f32>(458f, -1351f, -128f, 121f)), u_input.a, 26319u))))));
    let var_0 = Struct_4(Struct_3(Struct_2(~firstLeadingBit(67546u), i32(-1i) * -28808i, _wgslsmith_f_op_f32(-2271f + _wgslsmith_f_op_f32(f32(-1f) * -1657f)), min(global1[_wgslsmith_index_u32(u_input.a, 16u)], ~vec3<u32>(5000u, 4294967295u, 4294967295u))), Struct_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2037f)), vec3<i32>(~0i, max(-33853i, -59447i), -52084i), select(!global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(~0u, 3u)], false), u_input.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-664f, -1000f, 242f, 1150f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2011f, 132f, -2093f, -184f))) * vec4<f32>(4191f, 1594f, 828f, 173f))))), 0u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, countOneBits(25531u), _wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, 58342u, 114256u, 0u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.a), vec4<u32>(u_input.b.x, 0u, 0u, u_input.a))) % 32u), 1u);
    global0 = !(!(!var_0.a.b.d.x & false));
    return countOneBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(8932u, _wgslsmith_dot_vec3_u32(var_0.a.a.d, vec3<u32>(69515u, 34399u, 33416u)), var_0.c | u_input.a), ~_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.xz))) & var_0.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_2(2143u, -1i, -1418f, vec3<u32>(17874u, u_input.b.x, u_input.b.x)), Struct_1(~vec3<i32>(arg_2.a.b, arg_2.b.c.x, -1i), -456f, arg_2.b.c, select(vec4<bool>(arg_2.b.d.x, arg_2.b.d.x, false, true), !vec4<bool>(false, true, arg_1, false), false), ~37633u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, 500f, 115f, -484f)))), ~func_2(), ~arg_2.a.d.x);
    var var_1 = !any(!arg_2.b.d.xz);
    var var_2 = ~vec4<u32>(firstLeadingBit(arg_2.a.d.x), var_0.a.b.e, 1u, arg_2.a.a);
    var_2 = abs(min(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_2.x, u_input.b.x, var_0.a.b.e), vec4<u32>(arg_2.b.e, var_2.x, 1u, 4294967295u), vec4<u32>(var_0.b, arg_2.a.d.x, 1u, var_0.c)) << (~vec4<u32>(13406u, u_input.a, 4294967295u, 4294967295u) % vec4<u32>(32u))), vec4<u32>(abs(94355u), u_input.b.x, var_2.x, abs(~1u))));
    var var_3 = Struct_3(var_0.a.a, Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(12569i, var_0.a.a.b, -57834i), ~(-2147483647i)), var_0.a.a.b, select(-var_0.a.a.b, arg_2.b.a.x, all(var_0.a.b.d))), -1006f, abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b.a.x, var_0.a.a.b, 5470i), -arg_2.b.c)), !(!vec4<bool>(arg_2.b.d.x, true, arg_2.b.d.x, false)), ~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0.a.c + arg_2.c))))));
    return min(arg_2.a.a, 19261u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x >= (countOneBits(u_input.a) >> ((_wgslsmith_sub_u32(29037u, ~u_input.a) >> (func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(527f, 1000f)), true, Struct_3(Struct_2(11850u, -545i, 583f, vec3<u32>(0u, 4294967295u, u_input.a)), Struct_1(vec3<i32>(0i, -23149i, -27488i), -218f, vec3<i32>(-1i, 1i, -1i), global2[_wgslsmith_index_u32(u_input.a, 3u)], 56612u), vec4<f32>(989f, -874f, -1515f, -679f))) % 32u)) % 32u));
    var var_1 = Struct_3(Struct_2(1u, -63081i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f + -1492f)), select(~global1[_wgslsmith_index_u32(u_input.b.x, 16u)], ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 2796u), vec3<u32>(14727u, u_input.b.x, 46160u)), vec3<bool>(true, true, true))), Struct_1(select(vec3<i32>(0i, 7955i, -9113i), ~vec3<i32>(-7784i, 6261i, -2147483647i), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -239f))), -(-vec3<i32>(-33780i, -30100i, 1i) >> (u_input.b % vec3<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, false), true), 28630u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, 1123f, -687f, 359f) - vec4<f32>(1007f, 533f, -1000f, 1279f)), vec4<f32>(-1410f, -566f, -202f, 903f)) - vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_2 = var_1.b.e;
    var var_3 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_1.b.c, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_1.a.b, -16045i), vec3<i32>(-13695i, var_1.b.a.x, 1i)) << (u_input.b % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_i32(var_1.b.c ^ vec3<i32>(1i, -2147483647i, 1i), select(vec3<i32>(var_1.a.b, 2147483647i, var_1.a.b), var_1.b.c, true))), -891f, countOneBits(abs(~var_1.b.c)), global2[_wgslsmith_index_u32(25398u, 3u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(var_1.b.e), _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], vec3<u32>(76990u, u_input.b.x, u_input.a)), var_1.b.e, u_input.a >> (4294967295u % 32u)), vec4<u32>(select(14076u, 0u, true), u_input.b.x, ~21325u, 4294967295u)));
    var var_4 = _wgslsmith_sub_i32(reverseBits(var_1.b.c.x), var_3.c.x) << (var_3.e % 32u);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_i32(var_3.c.x, -58217i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, -35102i, -2147483647i, -18581i), vec4<i32>(var_3.c.x, -2147483647i, 16263i, -38471i))) << (1u % 32u)) | reverseBits(abs(firstTrailingBit(49270i))), vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_3.e, 0u, 0u, 52449u)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(93100u, 4294967295u, var_3.e, 20950u), vec4<u32>(1u, 1u, u_input.b.x, 8313u)), vec4<u32>(var_1.b.e, 13291u, 1u, var_1.a.d.x))), (~72752u | func_1(var_1.c.zw, var_3.d.x, Struct_3(var_1.a, Struct_1(var_1.b.a, 116f, var_3.c, global2[_wgslsmith_index_u32(3536u, 3u)], var_3.e), var_1.c))) << ((var_3.e << (94838u % 32u)) % 32u)), min(-(var_3.a.zz << (u_input.b.xy % vec2<u32>(32u))), var_3.a.xz));
}

