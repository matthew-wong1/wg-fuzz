struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-871f);

var<private> global1: array<bool, 20>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-512f + -1554f)))))));
    var var_1 = _wgslsmith_sub_i32(13777i, _wgslsmith_dot_vec4_i32(~select(vec4<i32>(-1i, u_input.a.x, u_input.b, u_input.a.x), abs(vec4<i32>(2924i, u_input.e.x, -24160i, 51849i)), global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), -(vec4<i32>(16447i, -2147483647i, u_input.e.x, u_input.b) >> (vec4<u32>(u_input.c.x, 37664u, u_input.c.x, 49089u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), countOneBits(vec4<u32>(u_input.c.x, 3610u, u_input.c.x, 21101u))) % vec4<u32>(32u))));
    let var_2 = ~(~vec4<u32>(firstLeadingBit(u_input.c.x), 4294967295u, u_input.c.x & _wgslsmith_add_u32(u_input.c.x, 7039u), ~(~u_input.c.x)));
    var var_3 = !(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]));
    var_3 = select(!(!(!select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<bool>(var_3.x, global1[_wgslsmith_index_u32(31352u, 20u)], false), global1[_wgslsmith_index_u32(u_input.c.x, 20u)]))), vec3<bool>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-95288i, 1i), vec2<i32>(u_input.e.x, u_input.b)), u_input.a.yy) > max(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.a.x, u_input.e.x))), var_3.x & global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(49310u, 91669u)), 20u)], false), !select(!(!vec3<bool>(var_3.x, false, false)), vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(67668u, 20u)], false, var_3.x)), all(vec3<bool>(var_3.x, var_3.x, global1[_wgslsmith_index_u32(1u, 20u)])), !global1[_wgslsmith_index_u32(var_2.x, 20u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(19089u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<bool>(var_3.x, true, global1[_wgslsmith_index_u32(4294967295u, 20u)]), global1[_wgslsmith_index_u32(62187u, 20u)])));
    return Struct_1(global0.a);
}

fn func_3() -> vec3<bool> {
    let var_0 = all(select(!(!(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]))), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], !global1[_wgslsmith_index_u32(29458u, 20u)], !global1[_wgslsmith_index_u32(47439u, 20u)]), _wgslsmith_mult_u32(max(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.zz)) == 0u));
    let var_1 = -41861i;
    return !select(vec3<bool>(var_0, true, !var_0), vec3<bool>(!global1[_wgslsmith_index_u32(0u, 20u)], (global0.a == global0.a) && select(true, false, false), !(!var_0)), any(!select(vec4<bool>(var_0, true, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], var_0), vec4<bool>(false, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], false, var_0, global1[_wgslsmith_index_u32(35753u, 20u)]))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-898f, _wgslsmith_div_f32(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1696f))))) + _wgslsmith_f_op_f32(arg_2.a.a + 2585f));
    var var_1 = Struct_2(Struct_1(1272f), arg_2.a, max(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(37615u, arg_2.d.x), ~vec2<u32>(63717u, arg_1)), vec2<u32>(arg_1, 25976u)), u_input.c.zz), vec3<u32>(arg_2.c.x, 0u, u_input.c.x), arg_2.e);
    let var_2 = arg_2;
    let var_3 = !all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, all(vec2<bool>(arg_3.x, false))), true));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f * var_0) - _wgslsmith_f_op_f32(trunc(var_1.b.a))) * 768f)), Struct_1(var_1.b.a), _wgslsmith_clamp_vec2_u32(var_1.d.xx, ~vec2<u32>(abs(57472u), ~u_input.c.x), ~_wgslsmith_mult_vec2_u32(min(var_2.c, arg_2.d.zx), var_2.d.xy & vec2<u32>(1u, 42888u))), ~var_2.d, var_1.e);
    return Struct_1(_wgslsmith_f_op_f32(arg_2.a.a - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-587f, var_0))))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)])), all(vec2<bool>(true, false)))), max(_wgslsmith_div_u32(u_input.c.x, firstTrailingBit(_wgslsmith_add_u32(u_input.c.x, 1u))), 1u), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(612f, global0.a, global0.a, global0.a) + vec4<f32>(-887f, -1249f, 307f, global0.a))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-647f, global0.a, global0.a, 132f))), vec2<u32>(reverseBits(21695u), reverseBits(u_input.c.x)) << ((~u_input.c.xy ^ select(vec2<u32>(u_input.c.x, 20848u), vec2<u32>(u_input.c.x, 0u), vec2<bool>(global1[_wgslsmith_index_u32(57076u, 20u)], global1[_wgslsmith_index_u32(2878u, 20u)]))) % vec2<u32>(32u)), u_input.c, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1198f, global0.a, global0.a, global0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(596f, global0.a, global0.a, 1000f) * vec4<f32>(1228f, -908f, -581f, 1982f))))), !vec2<bool>(select(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)])), true || global1[_wgslsmith_index_u32(3710u, 20u)], false == global1[_wgslsmith_index_u32(30839u, 20u)]), any(func_3())));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-1885f);
    var var_0 = select(vec2<bool>(true, !all(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(10241u, 20u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(25827u, 20u)])))), !func_1(), any(vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 20u)], !func_3().x)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f - func_4(vec2<bool>(false, true), 20u, Struct_2(Struct_1(global0.a), Struct_1(577f), vec2<u32>(1u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 11460u), Struct_1(global0.a)), vec2<bool>(var_0.x, true)).a) * -219f)), func_4(func_1(), 4294967295u, Struct_2(func_2(vec4<f32>(-822f, global0.a, global0.a, global0.a)), func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a, -336f, global0.a, 961f), vec4<f32>(141f, -850f, -174f, global0.a)))), u_input.c.yz, select(u_input.c, firstTrailingBit(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), select(vec3<bool>(true, var_0.x, global1[_wgslsmith_index_u32(4294u, 20u)]), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], true), var_0.x)), func_4(vec2<bool>(false, var_0.x), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), Struct_2(Struct_1(-1000f), Struct_1(global0.a), vec2<u32>(u_input.c.x, 42416u), u_input.c, Struct_1(1139f)), vec2<bool>(global1[_wgslsmith_index_u32(31300u, 20u)], global1[_wgslsmith_index_u32(28497u, 20u)]))), select(func_1(), !vec2<bool>(var_0.x, false), true)), u_input.c.zx, abs(vec3<u32>(~u_input.c.x, ~(1u >> (u_input.c.x % 32u)), 5401u)), func_4(select(select(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), func_1(), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], false), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], true))), vec2<bool>(true, true), true), ~4294967295u, Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.a - global0.a)), Struct_1(_wgslsmith_f_op_f32(trunc(global0.a))), vec2<u32>(u_input.c.x, 38586u), ~vec3<u32>(1u, u_input.c.x, 48800u) << (~u_input.c % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(462f + -263f))), select(!func_3().xy, vec2<bool>(true, global1[_wgslsmith_index_u32(~u_input.c.x, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(~37420u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]))));
    var var_2 = ~u_input.e;
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, 260f, 397f, global0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, -112f, -564f, global0.a), vec4<f32>(global0.a, -1108f, var_1.a.a, -1000f)))))) * vec4<f32>(_wgslsmith_f_op_f32(round(var_1.e.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(853f, 1476f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), -538f)));
    global0 = Struct_1(global0.a);
    global1 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~vec4<i32>(var_2.x, firstLeadingBit(-u_input.a.x), var_2.x, 1i), u_input.e.x, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(2430u, 52138u, var_1.c.x, 16644u), max(vec4<u32>(var_1.c.x, 4294967295u, 0u, u_input.c.x), vec4<u32>(17966u, var_1.c.x, u_input.c.x, 4294967295u)) >> (~vec4<u32>(95556u, 0u, 1u, var_1.c.x) % vec4<u32>(32u)), ~max(vec4<u32>(u_input.c.x, var_1.d.x, u_input.c.x, u_input.c.x), vec4<u32>(42231u, var_1.c.x, 4552u, var_1.c.x))));
}

