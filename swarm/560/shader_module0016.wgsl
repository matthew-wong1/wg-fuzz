struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(151f, 736f, 2241f, 398f, -963f, -914f, 1111f, 1000f, 334f, 521f, 243f, -106f, 1000f, 516f, -230f, 347f, -646f, 1000f);

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(true, 1000f, true);

var<private> global3: array<Struct_2, 28>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    global0 = array<f32, 18>();
    global2 = Struct_1(global2.c, _wgslsmith_f_op_f32(ceil(-370f)), any(!select(select(vec3<bool>(true, true, arg_1.d), vec3<bool>(arg_0.b.a, false, true), false), vec3<bool>(arg_0.b.a, true, false), select(vec3<bool>(global2.a, false, false), vec3<bool>(false, global2.c, true), vec3<bool>(true, global2.c, false)))));
    var var_0 = abs(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 47582u, 1u, u_input.a)), u_input.b ^ u_input.b, select(0u, u_input.a, true))) << (_wgslsmith_div_vec3_u32(vec3<u32>(31615u, ~(~u_input.b), ~(~0u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 44098u, u_input.a) << (vec3<u32>(33071u, u_input.b, 60211u) % vec3<u32>(32u)), select(vec3<u32>(4789u, u_input.b, u_input.a), vec3<u32>(u_input.b, 9621u, 4294967295u), vec3<bool>(global2.c, true, false)))) % vec3<u32>(32u));
    var var_1 = arg_2.x;
    var var_2 = true;
    return 1i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> u32 {
    global2 = Struct_1(arg_0.b.c, _wgslsmith_f_op_f32(-1283f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), all(!(!(!vec4<bool>(false, true, false, arg_0.b.a)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)) * _wgslsmith_f_op_f32(max(arg_1.b, -998f)))) + _wgslsmith_f_op_f32(sign(arg_0.a.x)));
    var var_1 = vec4<bool>(!all(select(!vec3<bool>(true, global2.a, arg_0.d), select(vec3<bool>(global2.a, arg_0.b.a, false), vec3<bool>(arg_1.a, false, arg_1.c), false), select(false, false, true))), false && arg_0.d, !(!arg_0.d), min(29928u, 1u) <= _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(21888u, u_input.b, u_input.b, 1u), vec4<u32>(arg_2, 1u, 1u, 4294967295u)), 1u));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-112f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))), all(vec4<bool>(false, global2.a, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-529f)), 1f, true == arg_0.b.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_2, 18u)])), _wgslsmith_div_f32(arg_1.b, arg_0.c.x))))))));
    let var_2 = _wgslsmith_div_i32(abs(1i >> (~select(14588u, 0u, arg_1.c) % 32u)), ~((2147483647i << (arg_2 % 32u)) & ~arg_3) & ~0i);
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(13305u, arg_2)), vec2<u32>(~40630u, _wgslsmith_add_u32(arg_2, 4294967295u))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), vec2<u32>(4294967295u, 1u)));
}

fn func_2() -> u32 {
    var var_0 = vec4<u32>(~abs(13345u), reverseBits(~1u), u_input.b, func_4(global3[_wgslsmith_index_u32(u_input.b, 28u)], Struct_1(false != (false | global2.c), global2.b, true), 44231u, ~_wgslsmith_mod_i32(-15395i, 8733i) ^ func_3(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(35100u, 69116u), 28u)], vec4<i32>(10912i, -9124i, 43418i, 29993i))));
    var var_1 = _wgslsmith_div_i32(-2147483647i, 2147483647i >> (_wgslsmith_sub_u32(~1u, ~select(var_0.x, var_0.x, false)) % 32u));
    var var_2 = global2.b;
    global2 = Struct_1(true, 210f, true);
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(-abs(-2147483647i), _wgslsmith_mod_i32(~(-2147483647i), i32(-1i) * -6157i))));
    return ~(~0u);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: i32) -> bool {
    global0 = array<f32, 18>();
    let var_0 = global3[_wgslsmith_index_u32(~min(~(arg_1 >> (21732u % 32u)), ~(arg_2 << (13805u % 32u)) ^ func_2()), 28u)];
    global0 = array<f32, 18>();
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(3332f, arg_0.x, true))), arg_0.x)), _wgslsmith_f_op_f32(trunc(847f))), var_0.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 18u)], global2.b, -1174f), vec3<f32>(global0[_wgslsmith_index_u32(84745u, 18u)], -2440f, global2.b)))))), arg_0)), var_0.b.a != any(!(!vec3<bool>(global2.c, true, global2.c))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.b, var_1.a.x) + var_0.c.zx)), var_1.c.yz))), Struct_1(var_1.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.x, 740f), global2.b, any(vec3<bool>(false, false, var_1.b.a)))))), true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.x, -235f))), var_1.c)))), all(!vec4<bool>(!global2.a, true, global2.c, true)));
    return all(vec3<bool>(!var_2.b.c, true, !var_0.b.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, global2.b) + vec2<f32>(440f, 594f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(625f, 824f))) * vec2<f32>(arg_0.b, 1000f))))));
    let var_1 = Struct_1(_wgslsmith_div_i32(arg_1.x, (arg_1.x | -58067i) & _wgslsmith_mult_i32(-10857i, -1i)) >= 21976i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1633f))), true);
    let var_2 = arg_0;
    global2 = arg_0;
    global0 = array<f32, 18>();
    return Struct_1((2147483647i ^ abs(~arg_1.x)) >= (arg_1.x ^ (_wgslsmith_add_i32(19103i, -1i) ^ arg_1.x)), -168f, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, global2.b, 900f, -1000f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b, -287f, 1013f, global2.b), vec4<f32>(global2.b, global0[_wgslsmith_index_u32(u_input.b, 18u)], -1494f, global2.b))), vec4<f32>(global2.b, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(17344u, 18u)], -162f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.b, global0[_wgslsmith_index_u32(u_input.b, 18u)], 2064f, global0[_wgslsmith_index_u32(0u, 18u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(275f, global2.b, global0[_wgslsmith_index_u32(1u, 18u)], 1101f), vec4<f32>(1908f, global2.b, global2.b, -318f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, 1394f, 791f, global0[_wgslsmith_index_u32(46746u, 18u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, 100f, 1000f, global2.b))))))));
    global2 = func_5(Struct_1(all(vec2<bool>(global2.a, false)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b, 315f, global2.c)))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1611f, global2.b) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2.b, var_0.x))), 70148u, abs(u_input.b), -1i)), vec2<i32>(1i, 1i));
    var var_1 = !any(!vec3<bool>(!global2.c, false, all(vec4<bool>(true, global2.c, true, global2.a))));
    var var_2 = vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~(vec4<u32>(14661u, u_input.b, u_input.b, u_input.a) >> (vec4<u32>(u_input.a, 5148u, 4294967295u, 0u) % vec4<u32>(32u))), abs(~(~vec4<u32>(129104u, u_input.a, u_input.a, 0u)))), ~0u);
    let var_3 = global3[_wgslsmith_index_u32(~u_input.b, 28u)];
    var_1 = !(!global2.a);
    var var_4 = ~_wgslsmith_mult_i32(reverseBits(min(-2020i, 11384i)), firstTrailingBit(1i)) >> (129u % 32u);
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<u32>(33026u, 4294967295u, var_2.x) >> (vec3<u32>(var_2.x, var_2.x, 4294967295u) % vec3<u32>(32u)))), ~(~var_2.xx), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 18u)], global2.b)))) * _wgslsmith_f_op_f32(-835f * 1000f)) * global0[_wgslsmith_index_u32(u_input.b, 18u)]));
}

