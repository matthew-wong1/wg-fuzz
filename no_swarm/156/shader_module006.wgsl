struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

var<private> global1: Struct_1 = Struct_1(-1278f);

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> f32 {
    var var_0 = arg_0.a.yz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2008f - _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(188f, _wgslsmith_div_f32(arg_1.x, 157f)))));
    let var_2 = select(reverseBits(~vec2<u32>(~0u, abs(u_input.b.x))), vec2<u32>(~(~_wgslsmith_mod_u32(4294967295u, 14043u)), 9950u), arg_0.a.x);
    var var_3 = Struct_1(-430f);
    var_1 = 949f;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_div_f32(arg_1.x, var_3.a)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: u32) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_2.a, -31487i, arg_2.a, 1i)) & firstTrailingBit(vec4<i32>(arg_2.a, -2147483647i, -23204i, arg_2.a)), select(select(vec4<i32>(arg_2.a, 2147483647i, -2147483647i, arg_1.x), vec4<i32>(0i, arg_1.x, 1i, arg_2.a), true), vec4<i32>(arg_2.a, arg_1.x, arg_2.a, 0i), true))), Struct_3(select(arg_2.b.a, !select(vec4<bool>(arg_2.b.a.x, arg_2.b.a.x, arg_2.b.a.x, true), arg_2.b.a, false), arg_2.b.a.x), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(1514f - _wgslsmith_f_op_f32(floor(548f))))), -1574f, arg_0.c, arg_2.e);
    global1 = Struct_1(_wgslsmith_f_op_f32(func_3(arg_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.d.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(677f, -1871f)))) + _wgslsmith_f_op_vec2_f32(ceil(arg_2.d.xy))))));
    let var_1 = u_input.b.zxw;
    var_0 = Struct_4(1i, arg_2.b, _wgslsmith_f_op_f32(-arg_2.b.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(352f, _wgslsmith_f_op_f32(select(global1.a, arg_0.a, var_0.b.a.x)), _wgslsmith_f_op_f32(-172f - 1000f)))))), var_1.zz);
    var var_2 = -603f;
    return vec3<u32>(firstLeadingBit(select(~var_0.e.x, ~u_input.b.x, true)), 4294967295u, abs(arg_3 ^ var_1.x));
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<u32>, 9>();
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(round(1201f)), global2[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 969f, _wgslsmith_f_op_f32(-global1.a)) * vec3<f32>(_wgslsmith_f_op_f32(select(2393f, global1.a, true)), _wgslsmith_f_op_f32(min(-2246f, 651f)), global1.a)), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(false, true, false, false), global1.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a, global1.a), vec2<f32>(global1.a, global1.a))))))), select(_wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 1i), -vec2<i32>(81267i, 11846i)), -vec2<i32>(i32(-1i) * -2147483647i, 1i), false), Struct_4(_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-13474i, 2147483647i), -1i)), Struct_3(vec4<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, false)), true), 456f), 1966f, vec3<f32>(global1.a, _wgslsmith_div_f32(333f, _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -778f)), u_input.b.ww), u_input.b.x);
    var var_1 = Struct_3(select(vec4<bool>(false, select(true, select(true, false, true), all(vec2<bool>(true, true))), true, true), vec4<bool>(true, true, true, true), true), -1030f);
    let var_2 = abs(~(~_wgslsmith_mult_u32(43200u, u_input.b.x))) ^ abs(~(~u_input.b.x));
    let var_3 = vec4<bool>(any(select(var_1.a.xx, vec2<bool>(true, true), true)), var_1.a.x & var_1.a.x, select(any(select(vec2<bool>(var_1.a.x, true), select(vec2<bool>(true, true), var_1.a.wy, false), !var_1.a.x)), var_0.x >= _wgslsmith_sub_u32(~u_input.a, u_input.a), true), ((all(var_1.a.wyz) && (var_2 != 27148u)) || any(var_1.a.wx)) | true);
    return Struct_3(!select(vec4<bool>(all(vec4<bool>(var_3.x, false, var_3.x, var_1.a.x)), 968f <= var_1.b, !var_1.a.x, false), vec4<bool>(var_3.x, true, !var_1.a.x, !var_3.x), var_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(var_1.a.x, false, true, true), global1.a), vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.a)), var_1.b))), _wgslsmith_f_op_f32(650f - var_1.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    global0 = array<vec4<u32>, 9>();
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f + arg_1.b.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(global1.a - -672f)), _wgslsmith_f_op_f32(-1000f - arg_1.c))));
    global2 = array<Struct_1, 22>();
    global2 = array<Struct_1, 22>();
    global2 = array<Struct_1, 22>();
    return Struct_2(1085f, global2[_wgslsmith_index_u32(~u_input.b.x, 22u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1433f))) * _wgslsmith_f_op_f32(f32(-1f) * -1752f)), _wgslsmith_f_op_f32(func_3(arg_1.b, arg_1.d.xx)), 1280f), arg_0);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(1189f)));
    var var_0 = arg_1;
    var var_1 = u_input.a;
    var_0 = arg_1;
    let var_2 = u_input.b.x << (u_input.b.x % 32u);
    return func_5(var_0.b, Struct_4(1i, func_2(), func_2().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.a, global1.a, -874f))), _wgslsmith_f_op_vec3_f32(select(arg_1.c, vec3<f32>(-636f, 796f, -1502f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), func_2().a.x)) + vec3<f32>(1000f, global1.a, _wgslsmith_f_op_f32(round(var_0.d.a)))), ~vec2<u32>(reverseBits(5529u), var_2)), ~(i32(-1i) * -7552i), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), firstLeadingBit(u_input.b.xy & vec2<u32>(59012u, 60211u))), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, u_input.a), u_input.b.zx)), 10406u));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(-4776i, 2147483647i);
    var var_1 = arg_0;
    global2 = array<Struct_1, 22>();
    let var_2 = func_6(vec2<bool>(true, false), func_5(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1554f))))), Struct_4(~var_0, func_2(), -611f, var_1.zxw, max(vec2<u32>(1u, u_input.b.x), u_input.b.zw)), -12076i, u_input.b.zzx));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0), func_2().a))));
    return func_2();
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = func_6(!(!arg_1.a.xx), arg_2).b;
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(-4138i), countOneBits(0i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 66422u, 1u)) % 32u))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(-1i, -1i)) << (1u % 32u), -14578i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 22>();
    var var_0 = firstTrailingBit(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-49776i, ~(-30736i)), -firstTrailingBit(vec2<i32>(-1i, -20190i)), firstLeadingBit(-vec2<i32>(-1i, 1i))), vec2<i32>(~2147483647i, 18469i)));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(-_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_i32(func_7(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1207f, 1828f))), func_1(vec4<f32>(global1.a, global1.a, global1.a, 1151f)), Struct_2(global1.a, Struct_1(1184f), vec3<f32>(global1.a, -1529f, global1.a), global2[_wgslsmith_index_u32(55340u, 22u)]), _wgslsmith_f_op_f32(-global1.a)), -1016i), abs(-(~(-2147483647i)))), select((min(vec3<i32>(-58561i, var_0.x, var_0.x), vec3<i32>(var_0.x, -18797i, 31311i)) >> (u_input.b.xzw % vec3<u32>(32u))) >> (((u_input.b.wyz & u_input.b.wwx) >> (vec3<u32>(u_input.a, u_input.a, 83532u) % vec3<u32>(32u))) % vec3<u32>(32u)), countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -18873i, var_0.x), vec3<i32>(var_0.x, -19172i, 74260i))), !vec3<bool>(true, any(vec4<bool>(true, false, true, true)), func_1(vec4<f32>(global1.a, -1000f, global1.a, -1191f)).a.x)));
    let var_2 = !func_2().a.xyx;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - -1705f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2544f)))) * global1.a));
    var var_4 = var_0.x > var_1.x;
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))));
    var_4 = any(!func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1476f, global1.a, -1207f), vec4<f32>(-215f, -824f, var_3, var_3)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.a, 1000f, 945f, 572f), vec4<f32>(-460f, 533f, var_3, -633f)))).a);
    let var_5 = (u_input.b.x & func_4(func_6(vec2<bool>(var_2.x, false), Struct_2(var_3, global2[_wgslsmith_index_u32(u_input.b.x, 22u)], vec3<f32>(global1.a, global1.a, global1.a), Struct_1(1000f))), abs(vec2<i32>(var_0.x, var_0.x)) ^ (vec2<i32>(73516i, var_0.x) & var_1.xx), Struct_4(0i, Struct_3(vec4<bool>(true, true, var_2.x, false), var_3), 1238f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2169f, 1200f, global1.a) + vec3<f32>(-213f, var_3, global1.a)), ~u_input.b.yx), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 1u & u_input.b.x)).x) << (u_input.a % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<i32>(var_1.x, var_1.x) | var_1.zy, vec4<i32>(-1i) * -firstTrailingBit(select(vec4<i32>(9071i, 30527i, -2147483647i, var_0.x), vec4<i32>(var_0.x, var_1.x, var_0.x, var_0.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(vec4<f32>(var_3, global1.a, var_3, 1516f)).b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f - var_3) - _wgslsmith_f_op_f32(f32(-1f) * -260f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1778f, 1130f, global1.a) + vec3<f32>(global1.a, global1.a, 261f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-771f, var_3, -1000f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(172f, var_3, 1000f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 127f, 250f) - vec3<f32>(global1.a, global1.a, var_3))))), var_2)));
}

