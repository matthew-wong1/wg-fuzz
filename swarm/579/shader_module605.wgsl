struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_2;

var<private> global3: bool;

var<private> global4: array<u32, 13> = array<u32, 13>(4294967295u, 0u, 70805u, 18809u, 6806u, 4294967295u, 0u, 19394u, 1u, 109849u, 47461u, 26698u, 23693u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = 0u;
    let var_1 = Struct_3(41661u, _wgslsmith_f_op_f32(round(arg_1)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec4<bool>(true, 1u > global1.x, true, any(vec4<bool>(true, true, true, false))))), Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 1690f) + _wgslsmith_f_op_f32(trunc(946f))), true)), vec2<i32>(i32(-1i) * -arg_3, _wgslsmith_sub_i32(arg_3, -16347i)), false), min(max(global1.zz, select(vec2<u32>(114957u, 0u), global1.zy, vec2<bool>(true, true))), vec2<u32>(u_input.a.x, 20665u) ^ global1.wz) ^ global1.xy);
    let var_2 = Struct_1(var_1.d.a, var_1.b, vec2<i32>(max(22721i, ~42213i), var_1.d.c.x), true);
    global3 = !(!(-815f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-330f * 1000f)))));
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-(-39752i >> (_wgslsmith_mult_u32(global1.x, 4294967295u) % 32u)), _wgslsmith_mod_i32(~2147483647i, 40014i), arg_3), _wgslsmith_mult_vec3_i32(~(~abs(vec3<i32>(16308i, var_2.c.x, arg_3))), firstLeadingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_3, -1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-16600i, -22594i, 3744i), vec3<i32>(-77244i, -3141i, 24328i))))));
    return var_1.d.c.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: i32) -> Struct_3 {
    global4 = array<u32, 13>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -667f);
    let var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(func_3(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -689f), 484f, arg_2), 2646i ^ arg_2, ~arg_2), _wgslsmith_add_vec3_i32(abs(select(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(arg_2, arg_2, arg_2), arg_1)), vec3<i32>(-1i, 3916i, 2147483647i) >> (global1.yxz % vec3<u32>(32u))));
    let var_2 = _wgslsmith_mult_i32(min(var_1, arg_2) | -(1i ^ min(var_1, -2147483647i)), 2147483647i);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-422f, -924f, -1173f, 596f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2.a)), global2.a), vec4<f32>(_wgslsmith_f_op_f32(global2.a.x + global2.a.x), 1026f, _wgslsmith_div_f32(630f, 1677f), _wgslsmith_f_op_f32(sign(-706f)))))), global1.zx);
    return Struct_3(0u, var_3.a.x, !select(!vec2<bool>(arg_1, false), vec2<bool>(all(vec3<bool>(arg_1, arg_1, true)), arg_1), arg_2 >= -1i), Struct_1(select(vec3<bool>(true, all(vec2<bool>(arg_1, arg_1)), true), !select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, true, false), vec3<bool>(arg_1, true, true)), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), var_3.a.x)), vec2<i32>(max(var_2, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(global2.b.x, 1u)], vec4<i32>(var_2, -76089i, var_2, var_2))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, arg_2), 1i)), false), arg_0);
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-986f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f) * 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, arg_0.b) * -776f)))), _wgslsmith_f_op_f32(-func_2(~(~vec2<u32>(0u, 1u)), any(vec4<bool>(arg_0.d.a.x, false, true, false)) & true, ~(-81448i)).b));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-417f)), arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, arg_0.b)))), global2.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(497f, global2.a.x), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(select(arg_0.b, -142f, arg_0.d.d)), arg_0.d.b))), arg_0.e);
    global4 = array<u32, 13>();
    let var_2 = _wgslsmith_sub_u32(4294967295u | _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 2929u);
    global0 = array<vec4<i32>, 1>();
    return max(vec3<u32>(~var_2, firstLeadingBit(1u), firstTrailingBit(firstLeadingBit(0u))), vec3<u32>(~countOneBits(4294967295u) | (~64454u | u_input.a.x), 57249u, _wgslsmith_mult_u32(countOneBits(4294967295u), 1u)));
}

fn func_1() -> f32 {
    var var_0 = true;
    var var_1 = abs(func_4(func_2(~(~vec2<u32>(34509u, 4294967295u)), true, abs(-2147483647i))));
    global4 = array<u32, 13>();
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.zz - _wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, global2.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-851f, 1314f), global2.a.xy)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -452f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.yx * global2.a.wy)))), _wgslsmith_f_op_vec2_f32(-global2.a.zw)));
    var var_3 = func_2(~var_1.yz, true, -(~min(22395i >> (1u % 32u), -10044i)));
    return _wgslsmith_f_op_f32(floor(func_2(~vec2<u32>(global1.x, ~global4[_wgslsmith_index_u32(1u, 13u)]), !(select(var_3.c.x, var_3.d.d, false) && var_3.d.a.x), -1i).b));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec4<i32>(-1i) * -abs(vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(global2.b.x, 1u)], vec4<i32>(35096i, arg_1, -15180i, arg_3.d.c.x)), _wgslsmith_dot_vec2_i32(arg_0.d.c, vec2<i32>(-16934i, 1i)), i32(-1i) * -2147483647i));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-725f - _wgslsmith_f_op_f32(sign(global2.a.x))), _wgslsmith_f_op_f32(1000f - -350f), -1461f, 135f), vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), -678f, 1318f, arg_3.b))), ~(~vec2<u32>(arg_3.e.x, _wgslsmith_mult_u32(4294967295u, global2.b.x))));
    return Struct_2(vec4<f32>(_wgslsmith_div_f32(417f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b, 1699f), _wgslsmith_f_op_f32(f32(-1f) * -1249f))), _wgslsmith_f_op_f32(-arg_0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1989f + _wgslsmith_f_op_f32(ceil(arg_0.b)))), arg_3.b), global1.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(1i);
    let var_1 = false;
    global0 = array<vec4<i32>, 1>();
    global0 = array<vec4<i32>, 1>();
    let var_2 = _wgslsmith_f_op_vec4_f32(global2.a + global2.a);
    global2 = func_5(Struct_3(abs(global1.x) & global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), vec2<bool>(func_2(_wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(global2.b.x, u_input.a.x)), var_1, var_0).d.d, !any(vec3<bool>(var_1, var_1, true))), func_2(vec2<u32>(73884u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, global2.b.x), global1.xwy)), any(select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, true, false, var_1))), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -20350i, -27790i, -1i), vec4<i32>(0i, 0i, var_0, 1170i))).d, global1.xw), ~(-(~_wgslsmith_mult_i32(-1i, 2147483647i))), -16309i, Struct_3(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~0u, 13u)], 13u)], _wgslsmith_f_op_f32(f32(-1f) * -384f), vec2<bool>((var_1 != false) && select(false, false, var_1), false), Struct_1(vec3<bool>(global2.a.x == 1239f, false, true | var_1), _wgslsmith_f_op_f32(2264f - _wgslsmith_f_op_f32(-var_2.x)), ~(~vec2<i32>(-42523i, 2147483647i)), false && all(vec4<bool>(var_1, true, true, var_1))), ~vec2<u32>(u_input.a.x | 10605u, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xzy, vec3<u32>(0u, global1.x, global1.x)), 13u)])));
    global1 = u_input.a >> (abs(abs(vec4<u32>(~4294967295u, ~u_input.a.x, 69392u, 0u & global2.b.x))) % vec4<u32>(32u));
    let var_3 = func_2(global2.b, true, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.a.zxz, ~u_input.a.xwx), var_3.d.b);
}

