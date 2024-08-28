struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(28478u, 1u, 17924u), vec3<u32>(28523u, 1u, 0u), vec3<u32>(73879u, 1u, 0u), vec3<u32>(52683u, 4294967295u, 16944u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 7963u), vec3<u32>(4294967295u, 976u, 39396u), vec3<u32>(4294967295u, 7772u, 57389u), vec3<u32>(0u, 63450u, 1u), vec3<u32>(7783u, 0u, 37083u), vec3<u32>(74202u, 0u, 83239u), vec3<u32>(1u, 4294967295u, 28907u));

var<private> global1: Struct_2;

var<private> global2: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = arg_2;
    let var_2 = Struct_1(vec4<u32>(min(9885u, _wgslsmith_add_u32(var_0.c.a.x, ~var_1.a.x)), ~var_1.a.x, reverseBits(arg_0.e.x | ~var_1.a.x), 11314u));
    let var_3 = -3252i == _wgslsmith_clamp_i32(-arg_0.d, ~(global1.d >> (firstTrailingBit(1u) % 32u)), arg_0.d);
    var var_4 = var_1;
    return !vec3<bool>(select(var_4.a.x > 34211u, arg_0.d > 1i, all(vec2<bool>(false, global1.b))) & true, !var_0.b, !(!any(vec4<bool>(var_0.b, false, var_3, global1.b))));
}

fn func_2() -> Struct_2 {
    var var_0 = -27649i;
    var var_1 = Struct_4(global1.d, !(!func_3(Struct_2(697f, global1.b, global1.c, global1.d, global1.c.a), !global2.x, global1.c)), global1.b, global1.e.wyy);
    var var_2 = min(48802u, ~0u);
    var_0 = -select(_wgslsmith_clamp_i32(global1.d, abs(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(global1.d, global1.d))), _wgslsmith_add_i32(u_input.d.x, 7592i)), u_input.a, true);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))), global2.x, global1.c, 1i, ~vec4<u32>(global1.e.x, countOneBits(~global1.e.x), 1u, abs(37049u)));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-170f, _wgslsmith_f_op_f32(ceil(global1.a)))), arg_0.a)), _wgslsmith_f_op_f32(sign(2522f))), global1.a);
    global2 = select(vec2<bool>(all(!vec2<bool>(global1.b, global1.b)), false), select(vec2<bool>(~u_input.c > 11501i, (arg_0.b != global1.b) && global1.b), !select(vec2<bool>(global1.b, false), !vec2<bool>(global1.b, global2.x), !vec2<bool>(true, arg_0.b)), vec2<bool>(true, true)), !all(select(func_3(arg_0, true, Struct_1(global1.e)).zy, func_3(arg_0, global1.b, global1.c).zy, select(vec2<bool>(false, true), vec2<bool>(global1.b, arg_0.b), global2.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.a, global1.a), var_0.x, _wgslsmith_f_op_f32(select(345f, var_0.x, false)), _wgslsmith_f_op_f32(-global1.a))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1151f + var_0.x), var_0.x, _wgslsmith_f_op_f32(1486f - 607f), -677f), vec4<f32>(_wgslsmith_f_op_f32(select(1000f, global1.a, false)), -1909f, _wgslsmith_f_op_f32(1602f * 1000f), _wgslsmith_f_op_f32(-arg_0.a)))));
    global2 = vec2<bool>(any(!vec3<bool>(global2.x, global1.b, arg_0.a > 978f)), !(abs(_wgslsmith_sub_u32(global1.e.x, 74414u)) != 26766u));
    global1 = func_2();
    return Struct_4(-1i, select(vec3<bool>(arg_0.b, false && all(vec3<bool>(false, true, arg_0.b)), all(!vec4<bool>(global1.b, global1.b, false, true))), vec3<bool>(select(true, true, true), !any(vec4<bool>(global2.x, true, global1.b, false)), true), func_2().b == any(vec3<bool>(false, true, global1.b))), true, ~global1.c.a.xxx);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = vec2<u32>(~(global1.e.x & abs(func_4(Struct_2(global1.a, true, global1.c, 2147483647i, vec4<u32>(global1.e.x, arg_1.d.x, global1.c.a.x, 34930u))).d.x)), global1.c.a.x);
    global0 = array<vec3<u32>, 13>();
    let var_1 = ~vec4<u32>(arg_1.d.x ^ ~0u, ~89521u, global1.e.x, countOneBits(abs(_wgslsmith_div_u32(arg_1.d.x, 0u))));
    global1 = func_2();
    var var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(max(var_0.x, ~16772u), var_1.x)), var_0.x);
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.a, global1.a)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(154f, 1396f, global2.x)), _wgslsmith_f_op_f32(-130f - -1000f)))), _wgslsmith_f_op_f32(1000f * global1.a)), all(!select(!arg_1.b.zz, !vec2<bool>(true, global2.x), select(vec2<bool>(global2.x, true), vec2<bool>(arg_1.c, arg_1.b.x), global1.b))), Struct_1(var_1), 2147483647i, global1.e);
}

fn func_1() -> Struct_4 {
    var var_0 = 18876u;
    let var_1 = false;
    var var_2 = func_5(select(firstLeadingBit(~vec2<i32>(-25927i, 2147483647i) | firstTrailingBit(vec2<i32>(u_input.a, global1.d))), max(vec2<i32>(1i, 1i), u_input.d), false), func_4(func_2()));
    global1 = Struct_2(141f, global2.x, func_5(u_input.d, Struct_4(0i, !(!vec3<bool>(true, global1.b, false)), false, ~var_2.c.a.wxz)).c, global1.d, select(global1.e >> (vec4<u32>(var_2.c.a.x, _wgslsmith_dot_vec4_u32(var_2.e, vec4<u32>(34191u, global1.e.x, global1.c.a.x, 48058u)), ~global1.c.a.x, 27019u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.a.x, 1u, 32534u, 40112u), max(global1.e, vec4<u32>(var_2.c.a.x, 0u, 7338u, var_2.e.x))), func_4(func_5(u_input.d, Struct_4(2377i, vec3<bool>(var_2.b, global1.b, var_1), true, vec3<u32>(4294967295u, var_2.e.x, global1.c.a.x)))).d.x, ~global1.c.a.x, 34523u), false));
    var var_3 = var_2.c;
    return Struct_4(~global1.d, vec3<bool>(true, !any(vec4<bool>(var_1, false, var_1, true)), ((global1.d >= 11741i) && true) & all(func_4(Struct_2(-557f, true, Struct_1(vec4<u32>(var_2.e.x, 4294967295u, var_2.e.x, 10963u)), 1i, global1.e)).b)), false, countOneBits(vec3<u32>(0u >> (~var_3.a.x % 32u), 4294967295u, min(57600u, ~0u))));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = global1.e.wzw;
    var var_1 = arg_1.b;
    global0 = array<vec3<u32>, 13>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1065f * _wgslsmith_f_op_f32(f32(-1f) * -1045f)) + -870f));
    global2 = select(func_3(func_2(), global2.x, Struct_1(_wgslsmith_clamp_vec4_u32(global1.c.a, global1.c.a, ~global1.c.a))).yz, !(!func_1().b.xy), arg_1.a >= (abs(func_2().d) << (37835u % 32u)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(325f)) - _wgslsmith_f_op_f32(global1.a - -468f)))), !arg_1.c, global1.c, arg_1.a, _wgslsmith_clamp_vec4_u32(countOneBits(select(global1.e, global1.e, vec4<bool>(true, true, arg_1.c, false))), func_5(~u_input.d, arg_1).c.a, global1.c.a) & global1.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(!(true & global1.b), global2.x);
    global1 = func_6(_wgslsmith_sub_vec3_u32(vec3<u32>(0u & _wgslsmith_mod_u32(1u, global1.e.x), _wgslsmith_sub_u32(~global1.e.x, 1u), global1.e.x), vec3<u32>(_wgslsmith_add_u32(34045u, global1.c.a.x) & _wgslsmith_mod_u32(global1.c.a.x, 0u), global1.e.x, ~1u)), func_1());
    let var_0 = vec3<u32>(global1.e.x, 1u, select(func_5(u_input.d, func_4(func_5(vec2<i32>(43003i, 2147483647i), Struct_4(global1.d, vec3<bool>(global1.b, global1.b, global1.b), true, global1.c.a.wzy)))).e.x, select(reverseBits(global1.c.a.x), 24034u, global2.x), (all(vec3<bool>(false, false, false)) && true) && (-global1.d > min(21815i, -2147483647i))));
    global2 = func_1().b.xx;
    var var_1 = vec3<bool>(global1.b, (func_6(firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 13u)]), Struct_4(-2147483647i, vec3<bool>(global2.x, global2.x, true), global1.b, global0[_wgslsmith_index_u32(94673u, 13u)])).d & func_2().d) < abs(~(-1i)), func_5(u_input.d, Struct_4(37639i, vec3<bool>(true, !global2.x, global2.x), firstLeadingBit(u_input.a) == -22936i, vec3<u32>(min(var_0.x, var_0.x), var_0.x, ~81368u))).b);
    var var_2 = select(-49185i < u_input.b.x, false & (global1.c.a.x > func_1().d.x), func_4(func_5(vec2<i32>(-global1.d, global1.d), Struct_4(global1.d, !vec3<bool>(global2.x, false, var_1.x), any(vec4<bool>(true, false, var_1.x, false)), vec3<u32>(0u, var_0.x, 52318u)))).c);
    var_1 = !func_3(func_5(select(u_input.b.zx, reverseBits(vec2<i32>(23724i, global1.d)), true), func_4(Struct_2(global1.a, global2.x, Struct_1(global1.e), 1i, vec4<u32>(4294967295u, var_0.x, 90181u, var_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))) < _wgslsmith_f_op_f32(-global1.a), Struct_1(global1.e));
    let var_3 = -59195i;
    let var_4 = !select(select(!select(vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(global1.b, global2.x, true, false), var_1.x), vec4<bool>(false, true, !global1.b, !global2.x), true), select(vec4<bool>(true, func_3(Struct_2(global1.a, true, Struct_1(global1.e), global1.d, global1.e), global1.b, global1.c).x, true, func_4(Struct_2(-161f, global1.b, global1.c, -2147483647i, global1.e)).b.x), !select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(global2.x, true, true, global2.x)), func_6(vec3<u32>(var_0.x, 72231u, global1.c.a.x), Struct_4(-29932i, vec3<bool>(false, false, global2.x), var_1.x, var_0)).b != global2.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(~var_0.x & func_4(Struct_2(global1.a, var_4.x, Struct_1(vec4<u32>(38541u, var_0.x, 20372u, 4294967295u)), -2147483647i, global1.c.a)).d.x, abs(1u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, 0u), var_0.x))), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-623f, global1.a, global1.a) + vec3<f32>(global1.a, 708f, 1068f)))))), -3272i);
}

