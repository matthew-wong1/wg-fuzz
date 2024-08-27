struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(0i, -41042i, -38741i, -1i, 1i, 2147483647i, 0i, i32(-2147483648), 2147483647i, -44513i, 2147483647i, -11913i, 1i, 2147483647i, 3019i, -16159i, 2147483647i, -1i, 55921i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, 26086i, 1i, -43081i, 921i);

var<private> global1: array<u32, 18> = array<u32, 18>(1u, 69247u, 26178u, 1u, 28668u, 4294967295u, 4294967295u, 1u, 44695u, 0u, 4294967295u, 102985u, 1u, 1u, 0u, 36793u, 68847u, 4294967295u);

var<private> global2: Struct_3 = Struct_3(vec4<u32>(0u, 11499u, 89549u, 46371u), vec2<f32>(-289f, 1622f), true, Struct_1(39164i, vec2<i32>(43476i, 2147483647i)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    let var_0 = global2.b.x;
    global0 = array<i32, 27>();
    global1 = array<u32, 18>();
    global2 = Struct_3(vec4<u32>(global1[_wgslsmith_index_u32(~u_input.c.x, 18u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2.a.yw, global2.a.zz) & 43322u, ~global1[_wgslsmith_index_u32(u_input.c.x, 18u)]), u_input.e.x, firstLeadingBit(max(u_input.c.x, min(u_input.a.x, 1u)))), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.x))))), global2.c, global2.d);
    var var_1 = _wgslsmith_add_vec2_i32(~(~vec2<i32>(10826i, _wgslsmith_mod_i32(-29302i, global2.d.b.x))), u_input.b.xw);
    return global2.d;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_1.b));
    global0 = array<i32, 27>();
    let var_1 = true;
    var var_2 = arg_1.a;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(491f, 770f)));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f + _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) + _wgslsmith_f_op_f32(-global2.b.x)))) * _wgslsmith_f_op_f32(select(-926f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a)) + global2.b.x), select(true, global2.c, true)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b.x)) - _wgslsmith_f_op_f32(632f * 233f)), -1000f, arg_1.a, var_0.x);
    let var_2 = Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(472f, global2.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(751f, var_0.x))))))), all(select(vec2<bool>(false, !global2.c), vec2<bool>(true, global2.c), false)), Struct_1(-2147483647i, ~(-_wgslsmith_mult_vec2_i32(arg_0.b, arg_0.b))));
    global1 = array<u32, 18>();
    global2 = Struct_3(~_wgslsmith_mult_vec4_u32(~(u_input.a | global2.a), reverseBits(u_input.a)), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2581f - _wgslsmith_f_op_f32(-var_0.x)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(68483u, ~4294967295u), 5313u), 27u)] != select(max(1i, global2.d.a) & (0i ^ global2.d.a), _wgslsmith_sub_i32(arg_0.a & 0i, global2.d.b.x), true), func_3(58531u | _wgslsmith_div_u32(firstLeadingBit(1u), firstTrailingBit(global1[_wgslsmith_index_u32(971u, 18u)])), Struct_2(Struct_1(countOneBits(global2.d.a), var_2.d.b | arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-176f)), -414f), var_0.x, global2.c), Struct_1(max(-2147483647i, func_2().a), abs(vec2<i32>(u_input.d.x, global2.d.a))), _wgslsmith_f_op_vec2_f32(-global2.b)));
    return !(!((var_2.a.x << (~72042u % 32u)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 18u)], global2.a.x), global2.a.xw)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_2(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))) + arg_0.b.x), -156f, func_4(func_3(~4294967295u, Struct_2(global2.d, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * -183f), true), arg_0.d, vec2<f32>(_wgslsmith_f_op_f32(round(-2154f)), _wgslsmith_f_op_f32(global2.b.x + -835f))), Struct_4(-1038f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1555f, -967f, -1563f, 180f))))), _wgslsmith_mod_vec3_i32(u_input.b.xwz, ~u_input.b.zxy))));
    let var_1 = select(vec3<bool>(all(select(!vec3<bool>(var_0.d, true, var_0.d), select(vec3<bool>(false, arg_1, global2.c), vec3<bool>(arg_0.c, global2.c, false), vec3<bool>(var_0.d, global2.c, arg_0.c)), !vec3<bool>(true, false, global2.c))), arg_0.c, true), vec3<bool>(arg_0.c, true, global2.c), true);
    return Struct_2(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f + var_0.c) + _wgslsmith_f_op_f32(select(global2.b.x, 529f, false))) * arg_0.b.x)), true);
}

fn func_5(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = !vec2<bool>(global1[_wgslsmith_index_u32(28947u, 18u)] == 4294967295u, true);
    var var_1 = Struct_3(vec4<u32>(1u, 9743u, 21572u >> (u_input.e.x % 32u), ~(global2.a.x ^ global2.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_f_op_f32(1242f + arg_0.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), -818f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.b)))) - _wgslsmith_div_f32(func_1(Struct_3(vec4<u32>(u_input.a.x, global2.a.x, 27762u, global2.a.x), vec2<f32>(arg_0.b, global2.b.x), arg_0.d, arg_0.a), global2.c, 1i).b, -1118f)) == _wgslsmith_div_f32(1255f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, -640f, true)), _wgslsmith_f_op_f32(-global2.b.x)))), Struct_1(-(~(-global2.d.b.x)), _wgslsmith_mod_vec2_i32(~u_input.b.ww, -(~u_input.b.wy))));
    var_1 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(1u, 30421u) >> (_wgslsmith_add_u32(u_input.c.x, 11297u) % 32u), global1[_wgslsmith_index_u32(var_1.a.x, 18u)], _wgslsmith_sub_u32(94437u, 1u), 1u) >> (_wgslsmith_add_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(20416u, u_input.c.x, 54637u, 60242u), u_input.a), ~var_1.a), vec4<u32>(~var_1.a.x, min(var_1.a.x, global1[_wgslsmith_index_u32(global2.a.x, 18u)]), 4294967295u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(global2.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, arg_0.b)), _wgslsmith_f_op_vec2_f32(-global2.b), true)))))), 0i != var_1.d.a, func_1(Struct_3(~(~global2.a), global2.b, true, global2.d), !(true | all(vec4<bool>(true, global2.c, var_1.c, false))), 0i).a);
    let var_2 = Struct_2(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b.x, 864f))), -506f)), arg_0.c, !(!func_1(Struct_3(global2.a, vec2<f32>(global2.b.x, -539f), var_1.c, Struct_1(-38473i, global2.d.b)), any(vec3<bool>(false, true, true)), -41460i).d));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -897f, 941f, var_2.b)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -886f, -305f, -952f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1133f, global2.b.x, global2.b.x, arg_0.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, global2.b.x, var_1.b.x, -381f) * vec4<f32>(arg_0.c, var_1.b.x, arg_0.b, var_1.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c, -1433f, -1685f, arg_0.c)))))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.c, -487f, 249f, -1277f), var_3)) + vec4<f32>(1309f, _wgslsmith_f_op_f32(select(-789f, -424f, var_0.x)), arg_0.b, var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(max(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27378u, 18u)], 18u)]), 1u << (u_input.a.x % 32u)), global2.a.x)), 18u)] <= 1u;
    global2 = Struct_3(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(global2.b))))), u_input.d.x == u_input.b.x, Struct_1(-2147483647i, vec2<i32>(7409i, global0[_wgslsmith_index_u32(global2.a.x, 27u)])));
    global0 = array<i32, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.b.x, global2.b.x, 1282f, global2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-952f)) - _wgslsmith_f_op_f32(round(486f))), global2.b.x, 239f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.b.x, global2.b.x, 1282f, global2.b.x))), _wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_3(u_input.a, vec2<f32>(103f, -270f), global2.c, global2.d), true, global2.d.a))))));
    var var_2 = Struct_1(-37569i, vec2<i32>(-1i) * -abs(vec2<i32>(2147483647i, global2.d.b.x)));
    let var_3 = Struct_4(-256f, vec4<f32>(global2.b.x, 168f, global2.b.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(sign(var_1.x))))), select(u_input.b.wwz, ~u_input.b.yww, !(!(!vec3<bool>(global2.c, global2.c, global2.c)))));
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.xx, _wgslsmith_mod_u32(4789u, 15866u), vec3<i32>(-2147483647i, 5812i, global2.d.a & global2.d.a));
}

