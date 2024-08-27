struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-65592i, 1i, 39705i, 50458i, 14802i, 0i, i32(-2147483648), -13753i, -51927i, 21941i, 43162i, 0i, 40155i, 2147483647i, i32(-2147483648), 1i, -1i);

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<f32>(145f, 917f), 1112f, -1i), Struct_1(vec2<f32>(-471f, 1095f), 523f, -15188i), Struct_1(vec2<f32>(-688f, -749f), 1000f, 0i), Struct_1(vec2<f32>(539f, 376f), 191f, -53185i), Struct_1(vec2<f32>(677f, 475f), 1717f, 29063i), Struct_1(vec2<f32>(-1068f, 2433f), 667f, 0i), Struct_1(vec2<f32>(1797f, -1385f), 1287f, -8457i), Struct_1(vec2<f32>(-3017f, -386f), 736f, 2147483647i), Struct_1(vec2<f32>(-371f, -230f), -275f, 44089i), Struct_1(vec2<f32>(1001f, 1085f), 148f, 17134i), Struct_1(vec2<f32>(-1553f, 1019f), 1000f, -25060i), Struct_1(vec2<f32>(243f, 1292f), 339f, -4592i), Struct_1(vec2<f32>(629f, -314f), 968f, 2147483647i), Struct_1(vec2<f32>(-1071f, -499f), -1201f, -1i), Struct_1(vec2<f32>(539f, -242f), -795f, 10995i), Struct_1(vec2<f32>(1108f, 569f), -254f, -45335i), Struct_1(vec2<f32>(2573f, -877f), 2063f, 2147483647i), Struct_1(vec2<f32>(633f, -124f), -830f, 21602i), Struct_1(vec2<f32>(2024f, -348f), -1475f, i32(-2147483648)), Struct_1(vec2<f32>(-1492f, 839f), -1000f, -13296i), Struct_1(vec2<f32>(849f, -615f), 607f, -61841i), Struct_1(vec2<f32>(1000f, 1000f), 876f, 31206i), Struct_1(vec2<f32>(-579f, 377f), -1799f, 15080i), Struct_1(vec2<f32>(1132f, 437f), 672f, 8675i), Struct_1(vec2<f32>(205f, 393f), -253f, 1956i), Struct_1(vec2<f32>(366f, -657f), 564f, 2147483647i));

var<private> global3: Struct_4 = Struct_4(Struct_3(19386u), vec2<i32>(1i, i32(-2147483648)), true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_4(Struct_3(~_wgslsmith_sub_u32(max(arg_2.a.a, 4294967295u), _wgslsmith_add_u32(u_input.b.x, 1u))), arg_3.b, arg_2.c);
    var var_1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(arg_1))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - 1f), _wgslsmith_f_op_f32(ceil(1660f)) == _wgslsmith_f_op_f32(979f + _wgslsmith_f_op_f32(min(arg_1, 1108f))), arg_2.c), vec4<bool>(select(global3.c, global3.c, any(vec2<bool>(true, true))), !(!global3.c) & any(vec2<bool>(false, global3.c)), arg_3.c, any(select(select(vec3<bool>(var_0.c, false, false), vec3<bool>(arg_3.c, global3.c, true), false), vec3<bool>(false, false, arg_3.c), global3.c))), var_0.c);
    var var_2 = global2[_wgslsmith_index_u32(~(_wgslsmith_add_u32(~abs(arg_3.a.a), ~50285u << (arg_3.a.a % 32u)) ^ (54486u >> (arg_3.a.a % 32u))), 26u)];
    var var_3 = -_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-4620i, global3.b.x, -22703i, 2147483647i), ~vec4<i32>(var_0.b.x, -1i, 0i, arg_3.b.x)), ~(vec4<i32>(var_2.c, -1i, -1i, -2147483647i) << (vec4<u32>(arg_2.a.a, arg_3.a.a, 0u, 930u) % vec4<u32>(32u)))) ^ -_wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.c, 29946i, 1273i, arg_3.b.x), ~vec4<i32>(23200i, arg_2.b.x, global0[_wgslsmith_index_u32(var_0.a.a, 17u)], global0[_wgslsmith_index_u32(22530u, 17u)]) >> (reverseBits(vec4<u32>(global3.a.a, 40699u, 1u, 0u)) % vec4<u32>(32u)));
    var var_4 = any(!select(!var_1.zxz, select(var_1.xwx, vec3<bool>(true, true, arg_2.c), vec3<bool>(false, false, arg_2.c)), vec3<bool>(true, true, var_1.x))) == false;
    return -242f;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-478f, 773f, 1145f))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-1044f)), _wgslsmith_f_op_f32(func_3(vec3<f32>(444f, 656f, 443f), 749f, Struct_4(Struct_3(arg_0.a), global3.b, global3.c), Struct_4(Struct_3(1u), global3.b, true))), 2357f)))));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(4294967295u, 9140u, arg_2.a, global3.a.a) & vec4<u32>(4294967295u, 8511u, arg_0.a, 116898u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, arg_0.a, arg_0.a, arg_0.a)), ~vec4<u32>(87729u, 4294967295u, u_input.b.x, arg_2.a))) | reverseBits(~(vec4<u32>(4294967295u, 1u, u_input.a, 0u) >> (vec4<u32>(arg_0.a, 1u, arg_0.a, arg_1.a) % vec4<u32>(32u)))), firstLeadingBit(~(vec4<u32>(1u, u_input.b.x, 15891u, arg_0.a) | ~vec4<u32>(u_input.a, 5011u, global3.a.a, 24106u))));
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(0u, arg_1.a, 4294967295u)), ~(~u_input.b) ^ abs(abs(vec3<u32>(global3.a.a, u_input.a, arg_2.a)))), _wgslsmith_mod_i32(global3.b.x, global3.b.x), !select(vec4<bool>(all(vec4<bool>(false, global3.c, true, true)), global3.c, any(vec3<bool>(false, true, global3.c)), any(vec2<bool>(global3.c, true))), select(!vec4<bool>(global3.c, global3.c, true, true), !vec4<bool>(global3.c, global3.c, false, false), !vec4<bool>(false, true, true, global3.c)), global3.c), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx)), var_0.x, abs(global3.b.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.b, 1482f))));
    global3 = Struct_4(arg_2, global3.b, !var_2.c.x);
    return Struct_3(~max(_wgslsmith_dot_vec2_u32(var_2.a.xy, var_2.a.xx), firstTrailingBit(14407u)) | 1u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_1, 26u)];
    var var_1 = Struct_4(func_2(global3.a, Struct_3(_wgslsmith_sub_u32(u_input.b.x, global3.a.a)), global3.a), ~countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global3.b.x, 0i), vec4<i32>(var_0.c, 1i, 22223i, 0i)), 11200i)), arg_3.x);
    var var_2 = Struct_1(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1138f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) - -1614f), firstLeadingBit(var_1.b.x));
    global0 = array<i32, 17>();
    var var_3 = _wgslsmith_sub_u32(~18173u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, arg_1), global3.a.a));
    return 33228u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-802f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1382f, _wgslsmith_f_op_f32(min(635f, 997f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f - -525f) + -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-747f)), _wgslsmith_f_op_f32(514f + 418f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(396f, 1000f, 502f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1320f, -512f)))))));
    var var_2 = _wgslsmith_f_op_f32(sign(var_0));
    let var_3 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(global3.a.a, global3.a.a), select(29150u, 0u, all(vec4<bool>(false, global3.c, global3.c, false)))), 17u)] != 17912i, u_input.a, var_1.zz, select(vec4<bool>(!global3.c, any(select(vec4<bool>(global3.c, true, global3.c, true), vec4<bool>(false, true, true, true), vec4<bool>(global3.c, true, true, false))), true, global3.c), !vec4<bool>(any(vec2<bool>(true, false)), false | global3.c, !global3.c, all(vec4<bool>(global3.c, global3.c, false, global3.c))), select(!(!vec4<bool>(false, global3.c, global3.c, true)), !(!vec4<bool>(false, global3.c, true, global3.c)), select(select(false, global3.c, global3.c), !global3.c, false))));
    global1 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0[_wgslsmith_index_u32(global3.a.a, 17u)]), _wgslsmith_add_vec3_u32(~u_input.b, u_input.b), reverseBits(2147483647i), 0u >> (var_3 % 32u), 0u);
}

