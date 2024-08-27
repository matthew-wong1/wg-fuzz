struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(142f, -643f, -2316f, -1288f, 821f, -333f, -104f, -1662f, -590f, 706f, 456f, 103f, -431f, -803f, -1000f, 1591f, -189f, 838f, -1128f, 906f, 1640f, -1476f);

var<private> global1: array<Struct_4, 4>;

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: vec3<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_5(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 49452u), vec2<u32>(u_input.a, 0u)) & (4294967295u | u_input.a))), ~reverseBits(7811i));
    var var_1 = 1i;
    var var_2 = ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.a, var_0.a, 0u) ^ vec4<u32>(1u, 25772u, var_0.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0, arg_0), vec4<u32>(var_0.a, u_input.a, arg_0, 20107u)), abs(vec4<u32>(u_input.a, u_input.a, 50247u, var_0.a)))) ^ select(vec4<u32>(var_0.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(53871u, 2492u, arg_0), abs(vec3<u32>(arg_0, u_input.a, var_0.a))), u_input.a, 0u), ~(~min(vec4<u32>(4101u, arg_0, var_0.a, 1u), vec4<u32>(u_input.a, 4294967295u, arg_0, var_0.a))), vec4<bool>(true, global3.x, false, global3.x));
    var var_3 = global1[_wgslsmith_index_u32(1u, 4u)];
    global3 = !(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, arg_1.x, false)), select(vec3<bool>(global3.x, true, false), vec3<bool>(true, false, false), vec3<bool>(arg_1.x, true, false)), true), !select(vec3<bool>(arg_1.x, true, true), vec3<bool>(true, arg_1.x, false), vec3<bool>(false, global3.x, true)), select(select(vec3<bool>(arg_1.x, global3.x, true), vec3<bool>(false, true, false), vec3<bool>(arg_1.x, false, arg_1.x)), !vec3<bool>(false, false, global3.x), !vec3<bool>(false, arg_1.x, arg_1.x))));
    return ~firstLeadingBit(min(select(vec4<u32>(53974u, var_3.e.a.x, var_2.x, 24728u), vec4<u32>(0u, 6000u, 1u, 0u), true) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_0, 72931u, var_3.d.a.x), vec4<u32>(4507u, var_0.a, 0u, u_input.a)), ~vec4<u32>(1u, 1u, var_2.x, var_3.d.a.x)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: f32) -> vec4<u32> {
    let var_0 = ~func_3(35813u, vec2<bool>(any(!global3.zz), all(vec2<bool>(global3.x, global3.x))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(arg_1.x), 22u)] + _wgslsmith_f_op_f32(arg_3 - -1171f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.x, 22u)]), 108f));
    global2 = array<vec3<u32>, 7>();
    global3 = vec3<bool>(global3.x, global3.x, true);
    global0 = array<f32, 22>();
    var var_1 = vec3<bool>(true, !any(vec2<bool>(true, true)), global3.x);
    return abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x & 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_2.a, 24241u, var_0.x), vec4<u32>(551u, 7152u, arg_2.a, 27010u))), vec2<u32>(min(var_0.x, arg_2.a), var_0.x)), ~func_3(4294967295u, select(var_1.yz, vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(58932u, 22u)], -1153f, arg_3)))).x, ~12128u, u_input.a));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(~abs(arg_1.x >> (0u % 32u)), 22u)], 1507f)));
    global2 = array<vec3<u32>, 7>();
    let var_1 = func_2(u_input.b.x, arg_1.xy, Struct_5(~(~_wgslsmith_mod_u32(arg_0, 21740u)), u_input.b.x), -973f).x;
    let var_2 = Struct_5(~firstLeadingBit(~115787u) ^ arg_0, _wgslsmith_mod_i32(firstTrailingBit(2147483647i), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b.x, -20240i, 0i), u_input.b.x))));
    global3 = vec3<bool>(arg_2, all(!(!select(vec3<bool>(true, arg_2, global3.x), vec3<bool>(arg_2, true, false), false))), (_wgslsmith_div_u32(firstLeadingBit(1u), abs(u_input.a)) << (var_1 % 32u)) == ((~15116u | firstLeadingBit(arg_0)) << (1u % 32u)));
    return Struct_1(select(!(!select(vec4<bool>(false, true, true, arg_2), vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(false, arg_2, false, true))), !vec4<bool>(select(global3.x, arg_2, arg_2), true, true, !global3.x), select(!(!vec4<bool>(global3.x, true, false, true)), vec4<bool>(true, true, true, true), !(false != global3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(571f, _wgslsmith_f_op_f32(-var_0.x), global0[_wgslsmith_index_u32(~39456u, 22u)]) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, var_0.x) + vec3<f32>(var_0.x, -1437f, -191f))))), vec4<f32>(-422f, 1126f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1613f, -1034f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f - -1261f))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(arg_1.x, global3.zz, vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 22u)], -1693f, -1607f)).x, ~u_input.a, ~arg_1.x), 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_2.a, 22u)])) - -1923f), any(!global3.yy)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4) -> i32 {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-764f, arg_1.c.x)) - global0[_wgslsmith_index_u32(~(~u_input.a), 22u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 22u)] - arg_1.c.x)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 22u)] * -500f))))));
    var var_2 = Struct_3(_wgslsmith_add_vec2_i32(arg_1.b, u_input.b.yw), arg_1.b.x, _wgslsmith_f_op_vec2_f32(arg_1.c.yw - vec2<f32>(_wgslsmith_f_op_f32(step(-736f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 22u)] + arg_1.c.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 22u)], 104f), _wgslsmith_f_op_f32(arg_1.c.x + global0[_wgslsmith_index_u32(21541u, 22u)])))), func_4(reverseBits(~(~91848u)), func_2(u_input.b.x, firstTrailingBit(vec2<u32>(62060u, 1u)), Struct_5(select(u_input.a, 26226u, false), -u_input.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.d.a.x, 22u)]), -289f)), global3.x), arg_1.e);
    var var_3 = ~(u_input.b.xzx << (global2[_wgslsmith_index_u32(29314u, 7u)] % vec3<u32>(32u)));
    let var_4 = arg_1.a.wxx << ((arg_1.d.a ^ vec3<u32>(arg_1.d.a.x & var_2.e.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(7227u, var_2.e.a.x, 47285u, 59272u), vec4<u32>(u_input.a, arg_1.d.a.x, 21040u, u_input.a)), 25860u)) % vec3<u32>(32u));
    return _wgslsmith_mult_i32(~(-1i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 4>();
    let var_0 = Struct_4(vec4<i32>(u_input.b.x | abs(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), min(u_input.b.x, abs(func_1(vec3<f32>(-678f, global0[_wgslsmith_index_u32(4294967295u, 22u)], -256f), Struct_4(u_input.b, u_input.b.yy, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 577f, 2536f, global0[_wgslsmith_index_u32(0u, 22u)]), Struct_2(vec3<u32>(11300u, u_input.a, 21324u), u_input.b.x), Struct_2(vec3<u32>(4294967295u, u_input.a, 0u), u_input.b.x))))), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(-2147483647i, 1i)), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), i32(-1i) * -1i), select(u_input.b.x, -u_input.b.x, global3.x)), u_input.b.x), -u_input.b.wy, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(997f, global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(34545u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1823f, global0[_wgslsmith_index_u32(1301u, 22u)], -1307f, global0[_wgslsmith_index_u32(77923u, 22u)]))))))))), Struct_2(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), -(~u_input.b.x)), Struct_2(reverseBits(~global2[_wgslsmith_index_u32(firstLeadingBit(51642u), 7u)]), _wgslsmith_add_i32(abs(1i), u_input.b.x >> (u_input.a % 32u)) >> (func_2(_wgslsmith_add_i32(32485i, u_input.b.x), ~vec2<u32>(0u, 4816u), Struct_5(u_input.a, 10182i), 702f).x % 32u)));
    let var_1 = ~vec2<u32>(var_0.e.a.x, ~(~max(13242u, u_input.a)));
    var var_2 = global0[_wgslsmith_index_u32(~0u, 22u)];
    let var_3 = vec2<bool>(global3.x, false);
    global3 = !vec3<bool>(func_2(firstLeadingBit(var_0.b.x), countOneBits(vec2<u32>(13829u, 20910u)), Struct_5(var_1.x, var_0.e.b), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.d.a.x, 22u)], var_0.c.x)).x <= ~var_0.e.a.x, true, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.wz * var_0.c.xz) - _wgslsmith_f_op_vec2_f32(step(var_0.c.yy, vec2<f32>(1085f, var_0.c.x)))) + _wgslsmith_f_op_vec2_f32(-var_0.c.yw)) + var_0.c.zy), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(abs(var_0.a.wxy), ~u_input.b.ywx, select(false, var_3.x, var_3.x)), u_input.b.wyz), u_input.b.yyz), u_input.b.x, 1u);
}

