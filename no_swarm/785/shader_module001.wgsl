struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 5>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, true));

var<private> global4: array<bool, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-162f, 1132f), -354f), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1020f)), _wgslsmith_div_f32(1126f, -805f))), _wgslsmith_f_op_f32(ceil(1781f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -369f) - _wgslsmith_f_op_f32(-437f - -112f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(step(434f, 1306f))))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(!arg_1, Struct_1(global3.a, global2[_wgslsmith_index_u32(abs(~4294967295u), 5u)]), ~31258i | (62958i << (select(0u, 1u, false) % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) * vec2<f32>(551f, arg_2))));
    let var_2 = arg_3;
    var var_3 = true;
    var var_4 = vec2<bool>(firstTrailingBit(~(~44423u)) <= ~(~(~0u)), global4[_wgslsmith_index_u32(~1u, 26u)]);
    return var_2;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = func_2(15031i, true, -135f, Struct_1(select(!arg_2.a, !global3.a, !(false && global3.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(25441u, reverseBits(1u)), 5u)]));
    global4 = array<bool, 26>();
    var_0 = func_2(1i, arg_2.b.x, _wgslsmith_f_op_f32(-arg_0), func_2(-((-2147483647i & u_input.a.x) >> (_wgslsmith_mult_u32(15119u, 1u) % 32u)), any(func_2(~(-32135i), var_0.b.x, -2504f, func_2(arg_1, global3.a.x, -1383f, arg_2)).a), arg_0, func_2(arg_1, false, _wgslsmith_f_op_f32(ceil(777f)), arg_2)));
    var var_1 = func_2(_wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(1i, -1i, arg_1, 6928i)), vec4<i32>(u_input.a.x, arg_1 | u_input.a.x, arg_1, ~u_input.a.x)) >> (24927u % 32u), all(vec4<bool>(!global3.a.x, all(var_0.b), any(select(vec3<bool>(var_0.b.x, false, false), arg_2.a.wwx, global2[_wgslsmith_index_u32(26912u, 5u)])), true)), _wgslsmith_f_op_f32(-arg_0), func_2(36592i, any(!(!arg_2.a)), _wgslsmith_f_op_vec2_f32(func_3(true, arg_2, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -arg_1))).x, Struct_1(!(!vec4<bool>(true, arg_2.b.x, global3.b.x, true)), func_2(_wgslsmith_add_i32(-46289i, 46130i), all(var_0.a.xz), -1278f, arg_2).b)));
    let var_2 = _wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~23558u, 0u), ~(~vec2<u32>(37742u, 8031u)))), ~4779u);
    return 474f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = -u_input.a.yx;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(-456f, var_0.x, func_2(var_0.x, global3.b.x, -1800f, Struct_1(vec4<bool>(arg_1.a.x, arg_0.a.x, arg_0.b.x, global3.b.x), global2[_wgslsmith_index_u32(46994u, 5u)]))))))))));
    let var_1 = arg_0;
    var var_2 = u_input.a.zz;
    let var_3 = -u_input.a;
    return global3.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(all(!(!vec4<bool>(global3.a.x, global4[_wgslsmith_index_u32(4294967295u, 26u)], true, global3.a.x))), true, any(func_1(Struct_1(global3.a, vec3<bool>(global3.b.x, global3.b.x, global3.b.x)), Struct_1(global3.a, global2[_wgslsmith_index_u32(67660u, 5u)]))), any(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 26u)] & global3.b.x, true))), vec3<bool>(!global4[_wgslsmith_index_u32(0u, 26u)], !(select(true, false, false) | global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42396u, 82067u, 6137u), vec3<u32>(4294967295u, 20961u, 66528u)), 26u)]), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(345f + -1642f), -u_input.a.x, func_2(u_input.a.x, global3.b.x, 1480f, Struct_1(global3.a, global3.a.wwx)))) < _wgslsmith_f_op_f32(ceil(-1350f))));
    global4 = array<bool, 26>();
    let var_1 = vec3<i32>(-1i, firstLeadingBit(~u_input.a.x) << (reverseBits(4294967295u) % 32u), u_input.a.x);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(153f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-153f)) - 355f)))))));
    let var_2 = 1u;
    var var_3 = ~vec2<u32>(countOneBits(1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(11964u, 26043u, 9301u, var_2) ^ vec4<u32>(4294967295u, 4294967295u, var_2, 10360u), ~vec4<u32>(4294967295u, var_2, var_2, 35552u)), var_2);
    var var_4 = countOneBits(~_wgslsmith_add_u32(~var_2 | _wgslsmith_mult_u32(23836u, var_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 40666u, var_2, 0u), vec4<u32>(4294967295u, var_3.x, var_3.x, var_2))));
    global0 = -272f;
    global3 = func_2(0i, abs(var_3.x) >= 113259u, 1000f, func_2(_wgslsmith_mod_i32(~27558i >> (~var_3.x % 32u), 2147483647i), any(select(vec2<bool>(true, global3.b.x), vec2<bool>(global3.a.x, global3.b.x), !vec2<bool>(global4[_wgslsmith_index_u32(1u, 26u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) - _wgslsmith_f_op_f32(step(588f, -503f)))), Struct_1(select(select(vec4<bool>(var_0.b.x, true, global4[_wgslsmith_index_u32(var_3.x, 26u)], global4[_wgslsmith_index_u32(6879u, 26u)]), var_0.a, var_0.a), select(vec4<bool>(false, global3.b.x, global3.a.x, global4[_wgslsmith_index_u32(var_2, 26u)]), vec4<bool>(var_0.b.x, var_0.b.x, false, false), var_0.a), global3.a), func_2(reverseBits(var_1.x), var_0.a.x, _wgslsmith_f_op_vec2_f32(func_3(global4[_wgslsmith_index_u32(var_2, 26u)], Struct_1(vec4<bool>(global3.b.x, true, false, global3.b.x), global2[_wgslsmith_index_u32(1u, 5u)]), var_1.x)).x, Struct_1(vec4<bool>(var_0.b.x, false, true, true), var_0.b)).a.yxw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-503f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(409f)) - _wgslsmith_f_op_f32(-1000f - -1276f))) - 1641f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 720f, -194f) + vec3<f32>(-467f, -260f, -457f)))))), (2147483647i | ~var_1.x) | (u_input.a.x | var_1.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)) - -135f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-158f * -1896f))))), (var_1.x ^ firstLeadingBit(_wgslsmith_sub_i32(-18614i, -1511i))) << ((_wgslsmith_mult_u32(~var_3.x, _wgslsmith_add_u32(var_2, var_2)) ^ max(_wgslsmith_dot_vec2_u32(vec2<u32>(55996u, 0u), vec2<u32>(0u, 18672u)), ~29199u)) % 32u));
}

