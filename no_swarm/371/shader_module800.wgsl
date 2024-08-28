struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<f32, 25> = array<f32, 25>(1000f, -330f, -625f, 960f, -1000f, -1879f, 1324f, 486f, -1390f, -1527f, -714f, -157f, 537f, -1164f, 1331f, 127f, 888f, -1145f, 1798f, -1000f, -288f, 108f, 735f, -1534f, -430f);

var<private> global3: u32 = 52910u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = ~_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(40276u, 67951u, 1u, 40703u), vec4<u32>(u_input.d, u_input.d, 3803u, u_input.d))) & u_input.d;
    return max(u_input.a, i32(-1i) * -38776i);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = select(_wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_mod_i32(-945i, u_input.a)), arg_1.d.a, arg_1.d.a, -1i), ~vec4<i32>(~(-2147483647i), ~u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(arg_1.d.a, u_input.b.x)), u_input.c)), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_1.d.a, 0i, arg_1.e.a), vec4<i32>(0i, -2147483647i, arg_1.a.a, 1i)), -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_mult_i32(~(-9760i), u_input.c), max(i32(-1i) * -2147483647i, func_3(Struct_3(vec4<f32>(arg_1.a.b.x, arg_1.d.b.x, -563f, 797f), true, arg_1.a)))), true);
    global0 = ~112393u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, 958f, 123f)) + vec3<f32>(arg_1.a.b.x, global2[_wgslsmith_index_u32(4294967295u, 25u)], -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-488f, arg_1.a.b.x, arg_1.d.b.x))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 25u)], 1770f, global2[_wgslsmith_index_u32(4294967295u, 25u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 25u)], global2[_wgslsmith_index_u32(76258u, 25u)], arg_1.e.b.x) + vec3<f32>(global2[_wgslsmith_index_u32(1u, 25u)], -423f, 1495f))))) + vec3<f32>(-220f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9505u ^ min(1u, u_input.d), 25u)]), _wgslsmith_f_op_f32(min(arg_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b.x))))));
    let var_2 = countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), u_input.d, _wgslsmith_mod_u32(u_input.d, u_input.d), u_input.d), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 63765u, 0u), vec4<u32>(u_input.d, u_input.d, 11317u, u_input.d)))), u_input.d, ~(~(~29109u)), u_input.d));
    global3 = ~u_input.d;
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.e.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -613f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(94519u, 25u)]) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d, 25u)]), _wgslsmith_f_op_f32(round(arg_1.a.b.x)), arg_0.x))) * arg_1.a.b.x));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(80100u, 25u)], -1133f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(arg_0.x, 25u)]) - vec2<f32>(876f, -833f)), _wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(true, false), Struct_2(Struct_1(u_input.a, vec2<f32>(165f, 1755f)), vec2<bool>(true, false), vec3<bool>(true, true, true), Struct_1(-1i, vec2<f32>(1743f, global2[_wgslsmith_index_u32(1u, 25u)])), Struct_1(u_input.c, vec2<f32>(global2[_wgslsmith_index_u32(44872u, 25u)], global2[_wgslsmith_index_u32(59345u, 25u)])))))))))) + vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 25u)]), 156f));
    let var_1 = any(vec2<bool>(true, all(vec3<bool>(true, true, true))));
    let var_2 = Struct_2(Struct_1(~0i, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-364f, -1000f)))), vec2<bool>((var_1 || true) || false, !var_1 | all(vec2<bool>(true, true))), select(select(!select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, var_1, var_1), true), !vec3<bool>(true, var_1, var_1), select(!vec3<bool>(var_1, var_1, var_1), !vec3<bool>(var_1, var_1, var_1), !var_1)), !vec3<bool>(true, var_1, select(var_1, var_1, true)), false), Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(sign(var_0)))), Struct_1(-u_input.c, vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(-384f)))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(min(abs(vec3<u32>(u_input.d, 4294967295u, u_input.d)), vec3<u32>(0u, u_input.d, u_input.d) << (vec3<u32>(88271u, u_input.d, 1u) % vec3<u32>(32u))) >> (select(~vec3<u32>(1u, u_input.d, arg_0.x), max(vec3<u32>(arg_0.x, u_input.d, 4294967295u), vec3<u32>(arg_0.x, 4294967295u, arg_0.x)), var_2.c) % vec3<u32>(32u))), vec3<u32>(arg_0.x, select(~u_input.d >> (1u % 32u), u_input.d, false), abs(4294967295u) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 65840u, arg_0.x), vec3<u32>(u_input.d, arg_0.x, u_input.d))) % 32u))), 20u)];
    let var_4 = u_input.d;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.d;
    global1 = array<Struct_3, 20>();
    var var_0 = min(-10118i, _wgslsmith_mult_i32(min(_wgslsmith_mult_i32(7318i, u_input.b.x), _wgslsmith_mult_i32(110199i, -219i)) >> (reverseBits(~56795u) % 32u), func_1(firstTrailingBit(vec2<u32>(47638u, 11627u) << (vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u))))));
    var var_1 = !vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), global2[_wgslsmith_index_u32(0u, 25u)] <= 1537f)));
    let var_2 = ~u_input.d;
    let var_3 = Struct_1(max(~(-(~(-49307i))), -44654i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(var_2, 25u)]), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(23063u, 25u)])) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-586f, global2[_wgslsmith_index_u32(4294967295u, 25u)]))))))));
    var var_4 = _wgslsmith_dot_vec2_u32(abs(((vec2<u32>(1u, 44695u) >> (vec2<u32>(u_input.d, var_2) % vec2<u32>(32u))) << (~vec2<u32>(0u, var_2) % vec2<u32>(32u))) << (select(~vec2<u32>(var_2, 0u), ~vec2<u32>(u_input.d, 4294967295u), !var_1.x) % vec2<u32>(32u))), max(vec2<u32>(u_input.d, 49835u), vec2<u32>(~abs(46866u), reverseBits(max(u_input.d, 4294967295u)))));
    var var_5 = Struct_2(var_3, vec2<bool>((func_1(vec2<u32>(31033u, 1u)) << (u_input.d % 32u)) != -1i, !(!(!var_1.x))), select(select(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, true), vec3<bool>(var_1.x, true, var_1.x)), !vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(!var_1.x, !var_1.x, false)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(var_1.x, false, false)), !vec3<bool>(true, false, var_1.x), !var_1.x), !(!vec3<bool>(false, false, var_1.x)), vec3<bool>(global2[_wgslsmith_index_u32(15680u, 25u)] > -552f, var_1.x, var_1.x)), select(!select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, false, var_1.x), false), select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(true, var_1.x, false), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.x)), 1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, var_2), vec3<u32>(var_2, 0u, 13538u)))), var_3, Struct_1(~(-(var_3.a | u_input.b.x)), _wgslsmith_div_vec2_f32(var_3.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(16949u, 25u)], 363f) * _wgslsmith_f_op_vec2_f32(var_3.b + var_3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(-(vec4<i32>(var_3.a, u_input.c, -12906i, 1i) << (vec4<u32>(var_2, 4294967295u, 28469u, 51125u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a, var_3.a, u_input.b.x, var_3.a), vec4<i32>(-8440i, var_5.a.a, var_3.a, var_5.e.a)) | max(u_input.b.x, -65649i), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), ~(-2147483647i), 28217i)), ~31862u, 0u << (abs(var_2) % 32u));
}

