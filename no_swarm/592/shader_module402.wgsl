struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(1u, 33061u, vec3<u32>(0u, 4294967295u, 0u)), Struct_1(15592u, 1u, vec3<u32>(8981u, 1u, 1u)), Struct_1(4294967295u, 9360u, vec3<u32>(5451u, 4294967295u, 5327u)), 22118i, false), Struct_2(Struct_1(1u, 13853u, vec3<u32>(0u, 42761u, 56984u)), Struct_1(0u, 0u, vec3<u32>(0u, 32239u, 4294967295u)), Struct_1(4294967295u, 0u, vec3<u32>(1u, 31704u, 1u)), -37573i, true), Struct_2(Struct_1(0u, 4294967295u, vec3<u32>(23206u, 36666u, 17762u)), Struct_1(4294967295u, 6328u, vec3<u32>(18347u, 65309u, 1u)), Struct_1(39959u, 53650u, vec3<u32>(100017u, 4294967295u, 29903u)), -38428i, false), Struct_2(Struct_1(50773u, 56612u, vec3<u32>(1u, 31020u, 37087u)), Struct_1(32305u, 0u, vec3<u32>(19681u, 18523u, 1u)), Struct_1(35849u, 57634u, vec3<u32>(56013u, 69039u, 4294967295u)), 16664i, true), Struct_2(Struct_1(4294967295u, 4294967295u, vec3<u32>(49927u, 4294967295u, 9906u)), Struct_1(0u, 0u, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(10778u, 65537u, vec3<u32>(1u, 30554u, 0u)), 12907i, true), Struct_2(Struct_1(1u, 35157u, vec3<u32>(0u, 0u, 79702u)), Struct_1(4294967295u, 31773u, vec3<u32>(61894u, 46665u, 0u)), Struct_1(72293u, 1340u, vec3<u32>(4294967295u, 11832u, 0u)), -2792i, false), Struct_2(Struct_1(0u, 1u, vec3<u32>(45359u, 0u, 19505u)), Struct_1(0u, 69754u, vec3<u32>(24873u, 35405u, 27431u)), Struct_1(21569u, 0u, vec3<u32>(0u, 1u, 4294967295u)), 0i, true), Struct_2(Struct_1(56627u, 78u, vec3<u32>(4294967295u, 0u, 33061u)), Struct_1(4294967295u, 61242u, vec3<u32>(1u, 1u, 9551u)), Struct_1(49315u, 56681u, vec3<u32>(22065u, 41554u, 4294967295u)), -29911i, true), Struct_2(Struct_1(24720u, 1u, vec3<u32>(1u, 4294967295u, 51375u)), Struct_1(4294967295u, 31651u, vec3<u32>(8191u, 4294967295u, 44116u)), Struct_1(98033u, 1u, vec3<u32>(4294967295u, 44494u, 0u)), -6085i, true), Struct_2(Struct_1(16613u, 4294967295u, vec3<u32>(1u, 16325u, 4294967295u)), Struct_1(0u, 9089u, vec3<u32>(0u, 8471u, 30962u)), Struct_1(41849u, 18535u, vec3<u32>(0u, 77534u, 1u)), 2147483647i, true), Struct_2(Struct_1(6368u, 13389u, vec3<u32>(67959u, 27900u, 4294967295u)), Struct_1(0u, 55374u, vec3<u32>(1u, 1u, 21934u)), Struct_1(13158u, 14078u, vec3<u32>(0u, 49470u, 0u)), -1i, true), Struct_2(Struct_1(1u, 8314u, vec3<u32>(4294967295u, 14849u, 0u)), Struct_1(438u, 4294967295u, vec3<u32>(71061u, 0u, 0u)), Struct_1(4294967295u, 0u, vec3<u32>(4294967295u, 10166u, 52876u)), i32(-2147483648), false), Struct_2(Struct_1(4294967295u, 4294967295u, vec3<u32>(1u, 1u, 106985u)), Struct_1(4294967295u, 0u, vec3<u32>(61562u, 4294967295u, 58671u)), Struct_1(1u, 0u, vec3<u32>(40734u, 0u, 48622u)), -1i, false));

var<private> global1: Struct_1 = Struct_1(58031u, 31151u, vec3<u32>(4294967295u, 59117u, 0u));

var<private> global2: array<u32, 3>;

var<private> global3: array<Struct_2, 1>;

var<private> global4: f32 = -1006f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_1 {
    return Struct_1(global1.a, ~0u, ~vec3<u32>(max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], 4294967295u), 59337u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.c.yx, vec2<u32>(4294967295u, 32548u)), 3u)]) & countOneBits(global1.c));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0.x), true), arg_0.zy, true), select(select(vec2<bool>(arg_0.x, arg_0.x), select(select(vec2<bool>(true, true), arg_0.zz, arg_2), vec2<bool>(arg_2, arg_2), true), !(arg_0.x | arg_2)), arg_0.zx, select(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.x))), arg_2, select(u_input.b != 25374u, all(vec3<bool>(arg_2, true, true)), !arg_2))), select(select(arg_0.yz, select(arg_0.zz, arg_0.zz, true), select(arg_0.xx, vec2<bool>(false, arg_2), select(vec2<bool>(false, false), arg_0.yy, vec2<bool>(arg_2, true)))), arg_0.zx, !arg_0.zy));
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(549f)))))) * _wgslsmith_f_op_f32(max(1f, 1618f)));
    var var_3 = ~(~arg_1.wy);
    var var_4 = var_2;
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(-1411f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f - _wgslsmith_f_op_f32(f32(-1f) * -640f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), -230f))))), arg_0.c.x));
    global0 = array<Struct_2, 13>();
    var var_1 = -vec2<i32>(firstTrailingBit(u_input.a.x), u_input.a.x >> (abs(1u) % 32u)) | u_input.a.xz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(arg_0.d.yyx, !vec3<bool>(false, arg_0.c.x, arg_1), vec3<bool>(true, !arg_2.x, false)), vec4<u32>(59604u, u_input.b, 1u, ~_wgslsmith_clamp_u32(1u, u_input.b, 45089u)), true, Struct_3(firstLeadingBit(_wgslsmith_sub_u32(u_input.b, 22949u))))));
    var var_3 = Struct_2(Struct_1(min(_wgslsmith_div_u32(4294967295u, arg_0.b.x), _wgslsmith_mod_u32(firstTrailingBit(u_input.b), global2[_wgslsmith_index_u32(0u, 3u)])), abs(1u), global1.c), arg_0.a, func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1076f)) + -183f)), ~u_input.a.x), firstTrailingBit(u_input.a.x), true);
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-197f))), _wgslsmith_f_op_f32(f32(-1f) * -202f)), -309f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!(!(any(vec4<bool>(true, true, false, false)) & false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1086f * -311f))), u_input.a.x | (firstLeadingBit(firstTrailingBit(-33091i)) | u_input.a.x));
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], global1.c), vec2<u32>(1674u, 50224u), vec2<bool>(false, false), vec4<bool>(false, true, true, true)), false, vec4<bool>(true, false, true, true))) - _wgslsmith_f_op_f32(-501f + 202f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-418f, 1491f, false)), -719f, 11736i > u_input.a.x)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(461f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(f32(-1f) * -1123f)) - _wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(floor(-2814f))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1439f, -717f, 1269f, 104f), vec4<f32>(388f, -940f, -972f, -405f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(290f, -281f, 1984f, -393f), vec4<f32>(-767f, 193f, -205f, -3230f))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-960f, 560f, -579f, -877f), vec4<f32>(-1179f, -615f, 2000f, -119f)))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1176f, -971f, 1000f, -2026f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1033f, 1000f, -354f, -627f))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-996f, 215f), _wgslsmith_f_op_f32(530f + 277f), -1000f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), vec4<u32>(global1.a, global2[_wgslsmith_index_u32(global1.a, 3u)], global2[_wgslsmith_index_u32(1340u, 3u)], 0u), false, Struct_3(u_input.b))))))));
    let var_1 = global1.b;
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 13u)];
    let var_3 = max(4213u, _wgslsmith_clamp_u32(~0u, ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40831u, 3u)], 3u)]), global1.c.x)) >> (firstLeadingBit(7524u) % 32u);
    var var_4 = Struct_2(var_2.b, Struct_1(_wgslsmith_mult_u32(~(global2[_wgslsmith_index_u32(0u, 3u)] >> (global1.b % 32u)), 26331u | (global2[_wgslsmith_index_u32(var_2.a.a, 3u)] | 0u)), ~4294967295u, var_2.b.c), func_1(all(select(vec4<bool>(var_2.e, var_2.e, true, var_2.e), !vec4<bool>(var_2.e, true, true, true), !var_2.e)), 1000f, ~(~u_input.a.x)), ~abs(u_input.a.x), false);
    let var_5 = !all(vec3<bool>(true, var_2.e, all(vec2<bool>(true, true))));
    var var_6 = vec3<bool>(_wgslsmith_clamp_u32(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(20494u, 25964u), vec2<u32>(1u, 1u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16165u, 0u, u_input.b), vec3<u32>(39147u, 9741u, var_4.a.c.x)), global2[_wgslsmith_index_u32(reverseBits(var_3), 3u)]), _wgslsmith_mod_u32(func_1(var_4.e, var_0.x, var_4.d).c.x, var_2.b.a)) >= 1u, _wgslsmith_mult_u32(countOneBits(38239u), 1u) >= (firstLeadingBit(4294967295u) << (var_4.c.a % 32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(select(-var_4.d, _wgslsmith_dot_vec4_i32(vec4<i32>(19554i, var_2.d, var_2.d, 22468i), vec4<i32>(33556i, u_input.a.x, var_2.d, var_4.d)), any(vec4<bool>(true, var_2.e, false, true))) >> (~u_input.b % 32u), 0i), var_2.a.a ^ u_input.b, global1.b, ~select(u_input.a.x, ~(i32(-1i) * -1i), var_5));
}

