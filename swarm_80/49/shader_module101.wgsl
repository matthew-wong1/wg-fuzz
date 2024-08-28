struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_1 = global0[_wgslsmith_index_u32(~(~reverseBits(u_input.e)), 4u)];
    var var_2 = vec2<i32>(var_0.a.x, -2147483647i);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + -2693f), _wgslsmith_f_op_f32(-196f + arg_0), arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1590f) + vec3<f32>(arg_0, -1371f, -357f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) + vec3<f32>(arg_0, 1197f, arg_0)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(471f, arg_0, 1082f)))))))), select(arg_1.zzz, arg_1.xxy, vec3<bool>(_wgslsmith_f_op_f32(step(-300f, arg_0)) < _wgslsmith_f_op_f32(676f * 1072f), !(!arg_2), arg_2))));
    var_2 = ~vec2<i32>(-u_input.d.x, _wgslsmith_mod_i32(var_1.a.x, countOneBits(var_1.a.x)));
    return 1144u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = array<Struct_1, 4>();
    let var_0 = select((vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.c, u_input.a), func_3(564f, vec4<bool>(false, arg_0.x, true, arg_0.x), arg_0.x), _wgslsmith_sub_u32(u_input.c, 1u)) >> (vec4<u32>(~u_input.c, max(u_input.c, 116682u), u_input.c, ~u_input.c) % vec4<u32>(32u))) << (firstLeadingBit((vec4<u32>(u_input.c, 1u, 1u, 4294967295u) >> (vec4<u32>(u_input.c, u_input.a, u_input.e, 13587u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.c, u_input.e, u_input.a, 91635u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(0u, 2394u, u_input.c, ~func_3(198f, select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x)), arg_0.x)), select(!(!(!vec4<bool>(arg_0.x, true, arg_0.x, true))), select(select(!vec4<bool>(false, true, arg_0.x, arg_0.x), !vec4<bool>(true, arg_0.x, false, arg_0.x), u_input.e < u_input.a), !(!vec4<bool>(arg_0.x, true, false, arg_0.x)), abs(u_input.c) < _wgslsmith_div_u32(u_input.a, u_input.a)), select(!select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, false, arg_0.x, true)), vec4<bool>(any(vec4<bool>(true, true, arg_0.x, arg_0.x)), arg_0.x, 70771u != u_input.a, arg_0.x), true)));
    return select(vec2<bool>(arg_0.x, all(arg_0)), !vec2<bool>(arg_0.x, arg_0.x), any(vec4<bool>(true, any(select(vec3<bool>(false, true, false), arg_0, false)), all(arg_0), arg_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_1;
    global0 = array<Struct_1, 4>();
    let var_1 = u_input.c >> (~(~(~1u)) % 32u);
    let var_2 = select(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a << (~vec2<u32>(4294967295u, var_1) % vec2<u32>(32u)), max(vec2<i32>(-65432i, arg_1.a.x), -arg_0.a)), _wgslsmith_div_vec2_i32(var_0.a, ~(arg_1.a & vec2<i32>(-8181i, -9230i))), var_0.a), countOneBits(u_input.d), func_2(vec3<bool>(arg_2, true, _wgslsmith_f_op_f32(arg_3.x * arg_3.x) == _wgslsmith_f_op_f32(-751f + arg_3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(313f, arg_3.x) * _wgslsmith_f_op_vec2_f32(max(arg_3.yx, arg_3.xz)))), arg_1, reverseBits(vec4<i32>(-30624i, var_0.a.x, arg_0.a.x, -2147483647i) | vec4<i32>(var_0.a.x, -29004i, var_0.a.x, arg_1.a.x))));
    var var_3 = arg_1;
    return arg_3.x;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(1u, 4u)], Struct_1(abs(vec2<i32>(min(arg_0.a.x, -2147483647i), 0i))), all(func_2(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(759f, -1321f), vec2<f32>(-753f, 211f)))), global0[_wgslsmith_index_u32(u_input.e, 4u)], -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, -33863i), vec4<i32>(u_input.d.x, arg_0.a.x, 2147483647i, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(641f, -131f, 165f, -1105f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1496f, -936f, -394f, -1896f))))))));
    global0 = array<Struct_1, 4>();
    let var_1 = vec4<f32>(var_0, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-1942f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -396f))))), 722f, -291f);
    return vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(22581i, 6012i, arg_0.a.x)), ~vec3<i32>(arg_0.a.x, -36232i, 34379i))), vec3<i32>(_wgslsmith_sub_i32(u_input.b, ~1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-41069i, -28683i), _wgslsmith_mod_vec2_i32(arg_0.a, arg_0.a)), arg_0.a.x)), select(_wgslsmith_add_i32(1i >> (u_input.e % 32u), -1i), -2147483647i << (u_input.c % 32u), true) ^ _wgslsmith_mult_i32(~(i32(-1i) * -12622i), -71051i));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 336f)), select(arg_2, arg_2, ~select(u_input.e, 6261u, arg_2.x) >= 13643u), true && func_2(select(select(arg_2.xzx, arg_2.xyy, vec3<bool>(false, arg_2.x, true)), select(vec3<bool>(arg_2.x, true, false), arg_2.zyz, arg_2.x), any(vec3<bool>(false, arg_2.x, arg_2.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1.xx)), vec2<f32>(arg_1.x, arg_1.x)), Struct_1(vec2<i32>(u_input.b, u_input.d.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0.a.x, arg_0.a.x, -54735i), vec4<i32>(u_input.d.x, -2147483647i, 0i, -2147483647i))).x);
    let var_1 = Struct_1(-arg_0.a);
    var var_2 = u_input.e;
    var_0 = (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(7019u, u_input.c), vec2<u32>(46630u, 4294967295u))) ^ (u_input.a ^ min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.a, 4294967295u), vec3<u32>(u_input.e, u_input.e, u_input.c)), _wgslsmith_mult_u32(u_input.e, u_input.e)))) << (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(57217u, u_input.a, 1u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(13547u, 0u, 4294967295u, 31595u), vec4<u32>(u_input.c, u_input.c, 76547u, u_input.a)), true), abs(~(vec4<u32>(63824u, 54785u, 10665u, 30398u) | vec4<u32>(u_input.a, u_input.e, 39449u, u_input.e)))) % 32u);
    var_2 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, 1954u)), _wgslsmith_add_vec2_u32(vec2<u32>(51490u, u_input.a), vec2<u32>(1u, u_input.a))), u_input.a, ~_wgslsmith_mod_u32(1u, 529u), u_input.a), vec4<u32>(1u, ~52783u >> (u_input.a % 32u), 47892u, ~(~1u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - arg_1.x))), 1480f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    global0 = array<Struct_1, 4>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 4u)];
    var var_2 = _wgslsmith_f_op_f32(-368f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(func_1(Struct_1(var_1.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1116f, -974f, -1000f, 1149f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, -1140f, -1687f, 1401f))), vec4<bool>(true, true, true, true)))));
    let var_3 = Struct_1(max(abs(u_input.d), vec2<i32>(abs(8192i), 1i)));
    let var_4 = vec2<i32>(reverseBits(abs(1i)), var_1.a.x);
    var var_5 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.e, u_input.a)), vec3<u32>(17478u, 4294967295u, u_input.a))), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.c, u_input.a, u_input.e), vec3<u32>(u_input.c, 5339u, u_input.a)), ~(~vec3<u32>(u_input.e, u_input.a, 1u)))), (~(~u_input.c) & 33826u) << (~(~u_input.c) % 32u), 1u);
    var var_6 = Struct_1(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(var_0.a.x, var_4.x) | vec2<i32>(-39332i, u_input.d.x)), vec2<i32>(_wgslsmith_div_i32(-var_0.a.x, -1i), var_0.a.x), -vec2<i32>(countOneBits(4222i), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~(-vec2<i32>(1i, var_0.a.x)))), _wgslsmith_div_u32(4294967295u, 21925u), vec4<f32>(_wgslsmith_f_op_f32(func_5(var_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-471f, -818f, 552f, -251f), vec4<f32>(-415f, -2076f, 979f, -361f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, -348f, -1350f, -843f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(var_4), var_3, true, vec4<f32>(891f, -810f, 245f, -964f)))), _wgslsmith_f_op_f32(ceil(1661f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-430f)), 434f, true))))));
}

