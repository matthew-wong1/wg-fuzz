struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 2>;

var<private> global3: array<vec3<f32>, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = (countOneBits(_wgslsmith_sub_vec3_u32(u_input.b | u_input.b, vec3<u32>(u_input.a, 4294967295u, 46279u))) | (vec3<u32>(4294967295u, min(3480u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), u_input.b)) ^ (vec3<u32>(1u, 55555u, u_input.a) << (~vec3<u32>(u_input.b.x, 0u, u_input.b.x) % vec3<u32>(32u))))) << (reverseBits(u_input.b) % vec3<u32>(32u));
    let var_1 = max(u_input.b, countOneBits(u_input.b));
    let var_2 = min(~(~(~abs(vec4<u32>(102367u, 4473u, u_input.a, var_1.x)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(min(var_0.x, 13315u), 1u, u_input.a, ~u_input.b.x), vec4<u32>(max(16848u, _wgslsmith_sub_u32(22398u, var_0.x)), _wgslsmith_dot_vec3_u32(~var_1, u_input.b), var_1.x, 1u)));
    global1 = ~(_wgslsmith_div_u32(_wgslsmith_sub_u32(34833u, ~var_2.x), ~4294967295u) << ((4294967295u | _wgslsmith_dot_vec2_u32(~var_0.yx, vec2<u32>(u_input.b.x, var_0.x) & vec2<u32>(var_2.x, 0u))) % 32u));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2197f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -428f))), global0.b), !(!vec4<bool>(arg_2.a | false, false, false, arg_2.a)), _wgslsmith_clamp_i32(u_input.c.x, global0.c.x, ~(-global0.c.x) ^ ~global0.c.x), vec3<bool>(global0.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(623f, global2[_wgslsmith_index_u32(var_2.x, 2u)], global0.d.x))), any(!(!vec4<bool>(arg_2.a, arg_2.a, global0.d.x, true))), _wgslsmith_add_u32(~u_input.b.x, _wgslsmith_mod_u32(0u, var_1.x)) >= ~(var_1.x & u_input.b.x)));
    return vec4<i32>(arg_1, -(~(-global0.c.x)), _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_3.c), _wgslsmith_add_vec2_i32(u_input.c, global0.c.zy), vec2<i32>(global0.a.x, global0.c.x)), select(vec2<i32>(abs(-22431i), 1i), select(vec2<i32>(2147483647i, u_input.c.x) >> (vec2<u32>(var_2.x, 4294967295u) % vec2<u32>(32u)), vec2<i32>(1i, 2147483647i), !var_3.b.zy), vec2<bool>(global0.d.x & true, !global0.d.x))), reverseBits(-global0.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0.b.c;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1422f);
    var_0 = -4608i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2.a, vec3<f32>(_wgslsmith_div_f32(-588f, global0.b), -719f, arg_2.a.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1043f, arg_0.b.a.x, global0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global2[_wgslsmith_index_u32(arg_0.c.x, 2u)], global0.b))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-var_1)), global0.b, 1000f)));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(294f)))), _wgslsmith_f_op_f32(var_1 - -377f), _wgslsmith_f_op_f32(trunc(arg_2.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) - arg_1.x)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-622f, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec2<f32>(373f, global2[_wgslsmith_index_u32(u_input.a, 2u)])), Struct_1(global3[_wgslsmith_index_u32(u_input.a, 14u)], vec4<bool>(global0.d.x, false, global0.d.x, true), u_input.c.x, vec3<bool>(true, false, global0.d.x)), vec3<u32>(36765u, u_input.b.x, 30659u), func_3(vec3<f32>(global0.b, 337f, 646f), -30369i, Struct_4(global0.d.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(0u, 14u)], vec3<f32>(global0.b, -1002f, global0.b)), vec3<f32>(685f, -1372f, 2422f), !vec3<bool>(false, false, global0.d.x))), Struct_1(vec3<f32>(1f, 1f, 1f), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false), firstLeadingBit(global0.a.x), select(vec3<bool>(true, global0.d.x, global0.d.x), vec3<bool>(false, false, global0.d.x), global0.d.x)))), _wgslsmith_f_op_f32(ceil(global0.b))), Struct_1(global3[_wgslsmith_index_u32(0u, 14u)], vec4<bool>(any(global0.d), !global0.d.x, true, any(vec2<bool>(false, false))), 1i, select(!(!vec3<bool>(global0.d.x, global0.d.x, true)), !select(vec3<bool>(global0.d.x, true, global0.d.x), vec3<bool>(true, false, true), false), false)), _wgslsmith_sub_vec3_u32(u_input.b, max(_wgslsmith_mod_vec3_u32(vec3<u32>(45057u, u_input.b.x, 0u), ~u_input.b), max(~vec3<u32>(19073u, 1u, 1u), u_input.b))), -global0.c);
    let var_1 = var_0.b.a.zy;
    global0 = Struct_3(vec2<i32>(-2147483647i, _wgslsmith_div_i32(var_0.d.x, -select(-9508i, var_0.d.x, false))), _wgslsmith_f_op_f32(-var_1.x), vec4<i32>(-4534i, 2147483647i, min(~_wgslsmith_sub_i32(0i, global0.c.x), _wgslsmith_div_i32(-47771i, -2147483647i)), var_0.d.x), vec2<bool>(((135527u >> (u_input.a % 32u)) <= 4294967295u) && false, any(vec3<bool>(var_0.b.d.x, any(vec4<bool>(global0.d.x, false, var_0.b.b.x, false)), any(var_0.b.b)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f * 980f)), _wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(125f * _wgslsmith_f_op_f32(global0.b - var_1.x)), _wgslsmith_f_op_f32(floor(-1141f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global2[_wgslsmith_index_u32(825u, 2u)], var_1.x, 1000f) + vec4<f32>(232f, var_0.b.a.x, 1000f, -313f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-586f, var_1.x, 654f, 2630f), vec4<f32>(-436f, global2[_wgslsmith_index_u32(35876u, 2u)], global0.b, 608f), false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(1u, 2u)], 554f, var_1.x, -1355f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, 157f, 768f, var_0.a.x)))) - vec4<f32>(-369f, 584f, _wgslsmith_f_op_f32(620f - var_0.a.x), 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global2[_wgslsmith_index_u32(4294967295u, 2u)], -403f, var_0.b.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 407f, global0.b, var_0.a.x))))));
    global3 = array<vec3<f32>, 14>();
    return Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, global0.c.x | -1i), u_input.c), ~vec2<i32>(min(global0.a.x, var_0.b.c), var_0.b.c), vec2<i32>(-u_input.c.x, firstTrailingBit(45978i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1103f, -382f, 30453u != _wgslsmith_dot_vec3_u32(vec3<u32>(16462u, 4294967295u, u_input.b.x), vec3<u32>(1u, 1u, var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1394f)) + _wgslsmith_f_op_f32(func_4(Struct_2(vec2<f32>(-1102f, global0.b), Struct_1(vec3<f32>(var_2.x, 1000f, var_2.x), vec4<bool>(false, var_0.b.d.x, global0.d.x, true), 31825i, vec3<bool>(true, var_0.b.d.x, false)), u_input.b, vec4<i32>(u_input.c.x, 59258i, 2147483647i, u_input.c.x)), _wgslsmith_f_op_vec3_f32(min(global3[_wgslsmith_index_u32(u_input.a, 14u)], vec3<f32>(1137f, -951f, -310f))), Struct_1(var_0.b.a, var_0.b.b, u_input.c.x, var_0.b.b.xxw))))), var_0.d, !(!select(!vec2<bool>(var_0.b.d.x, false), !var_0.b.b.yw, 4294967295u > var_0.c.x)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.b.x;
    let var_1 = func_2();
    var_0 = ~1u;
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(global0.b * 1021f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, global0.b)) - 529f))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(50895u, 2u)], -1462f, global2[_wgslsmith_index_u32(u_input.a, 2u)]))) + vec3<f32>(-621f, _wgslsmith_f_op_f32(round(var_1.b)), 104f)), select(select(vec4<bool>(true, true, true, global0.d.x), !vec4<bool>(global0.d.x, var_1.d.x, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(any(vec4<bool>(global0.d.x, var_1.d.x, false, true)), true, true, u_input.a >= u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 2u)] < global0.b), u_input.c.x, select(!vec3<bool>(global0.d.x, var_1.d.x, global0.d.x), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, global0.d.x, global0.d.x)), vec3<bool>(var_1.d.x, global0.d.x, var_1.d.x), select(vec3<bool>(var_1.d.x, global0.d.x, false), vec3<bool>(false, true, global0.d.x), vec3<bool>(true, var_1.d.x, false))), !any(vec4<bool>(true, true, global0.d.x, true)))), vec3<u32>(~_wgslsmith_dot_vec2_u32(min(u_input.b.zz, u_input.b.xx), ~vec2<u32>(u_input.b.x, u_input.b.x)), 1u, 0u), vec4<i32>(~firstTrailingBit(1i) ^ select(_wgslsmith_mod_i32(global0.c.x, -1i), countOneBits(u_input.c.x), any(vec4<bool>(false, false, var_1.d.x, true))), 2147483647i, _wgslsmith_mult_i32(u_input.c.x, ~global0.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_1.c ^ var_1.c, vec4<i32>(var_1.c.x, u_input.c.x, 1i, -1i)), -global0.c ^ global0.c)));
    var var_3 = select(vec3<bool>(false, (false || var_2.b.b.x) & ((u_input.c.x & 0i) <= -u_input.c.x), all(vec3<bool>(select(var_1.d.x, false, var_1.d.x), false, func_2().d.x))), !vec3<bool>(!select(var_2.b.d.x, var_1.d.x, var_1.d.x), var_1.d.x, false), var_2.b.b.zww);
    return Struct_2(arg_0.zy, Struct_1(vec3<f32>(127f, _wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(func_4(Struct_2(arg_0.zx, var_2.b, u_input.b, vec4<i32>(1i, var_1.c.x, 1i, 1i)), vec3<f32>(-2210f, global0.b, global2[_wgslsmith_index_u32(4294967295u, 2u)]), Struct_1(vec3<f32>(arg_0.x, 936f, 125f), var_2.b.b, 1i, vec3<bool>(var_2.b.b.x, var_3.x, var_3.x))))), vec4<bool>(!var_2.b.d.x, global0.d.x, true && (global0.d.x != global0.d.x), all(vec3<bool>(var_2.b.d.x, true, true))), 0i, var_2.b.b.zwy), vec3<u32>(max(var_2.c.x, 1u), 44743u, 1u), vec4<i32>(countOneBits(-13065i), abs(abs(-56884i >> (u_input.a % 32u))), _wgslsmith_clamp_i32(var_1.c.x, _wgslsmith_clamp_i32(reverseBits(global0.a.x), firstLeadingBit(0i), -2147483647i), var_2.b.c), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.b.x;
    global2 = array<f32, 2>();
    global1 = max(43730u, ~(~(~u_input.b.x)));
    let var_0 = !global0.d.x;
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, global2[_wgslsmith_index_u32(39171u, 2u)], global0.b, global0.b) + vec4<f32>(global2[_wgslsmith_index_u32(26570u, 2u)], -136f, -642f, global0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(~var_1.c.x, ~4294967295u, 4294967295u, var_1.c.x >> (1547u % 32u))));
}

