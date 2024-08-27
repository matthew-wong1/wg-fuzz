struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 38278i, 2681i));

var<private> global1: u32 = 36287u;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<bool>(true, true), 63797u, 45809u, vec3<bool>(false, true, false), 1u), Struct_2(vec2<bool>(true, true), 68616u, 1u, vec3<bool>(false, false, true), 80734u), Struct_2(vec2<bool>(false, false), 0u, 1u, vec3<bool>(true, false, false), 0u), Struct_2(vec2<bool>(true, false), 46550u, 0u, vec3<bool>(true, true, false), 4294967295u), Struct_2(vec2<bool>(false, false), 4294967295u, 60740u, vec3<bool>(true, false, false), 0u), Struct_2(vec2<bool>(false, true), 117596u, 1u, vec3<bool>(false, false, true), 30088u), Struct_2(vec2<bool>(true, false), 1u, 1u, vec3<bool>(false, false, false), 71469u), Struct_2(vec2<bool>(true, false), 32005u, 5364u, vec3<bool>(false, false, false), 37017u), Struct_2(vec2<bool>(false, true), 4294967295u, 4294967295u, vec3<bool>(true, false, true), 4294967295u), Struct_2(vec2<bool>(true, false), 0u, 0u, vec3<bool>(false, true, true), 15960u), Struct_2(vec2<bool>(false, false), 0u, 0u, vec3<bool>(false, false, true), 64925u), Struct_2(vec2<bool>(false, false), 41253u, 26998u, vec3<bool>(false, false, false), 31556u), Struct_2(vec2<bool>(true, false), 0u, 0u, vec3<bool>(false, true, false), 23527u), Struct_2(vec2<bool>(false, false), 4294967295u, 1u, vec3<bool>(true, true, false), 4294967295u), Struct_2(vec2<bool>(false, true), 1u, 0u, vec3<bool>(false, false, false), 1u), Struct_2(vec2<bool>(true, true), 12849u, 11800u, vec3<bool>(false, false, true), 0u), Struct_2(vec2<bool>(true, false), 1u, 0u, vec3<bool>(true, true, true), 47669u), Struct_2(vec2<bool>(true, true), 17637u, 11567u, vec3<bool>(false, false, true), 1u), Struct_2(vec2<bool>(true, false), 17644u, 54605u, vec3<bool>(true, true, true), 4294967295u), Struct_2(vec2<bool>(false, true), 123199u, 95558u, vec3<bool>(false, true, true), 4294967295u), Struct_2(vec2<bool>(false, false), 0u, 1u, vec3<bool>(true, true, true), 33137u), Struct_2(vec2<bool>(false, false), 1u, 23517u, vec3<bool>(false, true, false), 1u), Struct_2(vec2<bool>(true, true), 0u, 0u, vec3<bool>(true, true, true), 4749u), Struct_2(vec2<bool>(false, true), 1u, 6972u, vec3<bool>(false, true, true), 22911u), Struct_2(vec2<bool>(true, false), 0u, 0u, vec3<bool>(false, true, true), 1u), Struct_2(vec2<bool>(false, false), 4294967295u, 58999u, vec3<bool>(false, false, true), 4294967295u));

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_3(_wgslsmith_clamp_vec3_i32(~max(select(global0.a, vec3<i32>(u_input.d, 0i, 15911i), vec3<bool>(global4.b.x, global4.b.x, global4.b.x)), ~global0.a), ~(-min(vec3<i32>(u_input.a.x, -30060i, 6606i), vec3<i32>(2147483647i, global0.a.x, -1i))), vec3<i32>(max(global0.a.x, 1i), _wgslsmith_dot_vec2_i32(global0.a.zy, global0.a.xz), countOneBits(u_input.a.x)) & global0.a));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d.x, 2000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-648f, global4.d.x), vec2<f32>(180f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.d) - _wgslsmith_f_op_vec2_f32(-global4.d)), any(!vec4<bool>(global4.a, true, false, false)))) * vec2<f32>(global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)))));
    var var_0 = -32875i;
    let var_1 = vec2<u32>(1u & firstLeadingBit(_wgslsmith_mod_u32(0u << (u_input.b % 32u), 1u)), u_input.b);
    return !select(select(vec3<bool>(any(vec4<bool>(false, global4.b.x, global4.b.x, false)), global4.a | global4.a, global4.b.x & false), select(!global4.b, vec3<bool>(true, true, true), false), all(select(vec2<bool>(true, false), vec2<bool>(global4.a, global4.b.x), global4.b.yy))), !(!vec3<bool>(global4.b.x, global4.b.x, true)), global4.b);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    global4 = Struct_1(global4.a, select(!(!vec3<bool>(false, true, arg_0)), select(!vec3<bool>(global4.a, global4.b.x, global4.b.x), vec3<bool>(!arg_0, select(true, arg_0, true), u_input.d <= 1i), global4.a), !(global0.a.x > _wgslsmith_div_i32(1i, global0.a.x))), 0u, arg_1.ww);
    var var_0 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + -725f), global4.d.x)));
    let var_1 = Struct_1(any(!global4.b.xz), !(!select(!vec3<bool>(arg_0, global4.b.x, true), func_3(), vec3<bool>(false, true, true))), reverseBits(1u), global4.d);
    let var_2 = Struct_5(global4.d.x, !(!select(vec3<bool>(false, var_1.a, true), global4.b, true)), -1i, u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(global2.x, global4.d.x, var_1.d.x, var_0.x)), vec4<f32>(var_1.d.x, 920f, arg_1.x, 107f), true)) * _wgslsmith_f_op_vec4_f32(-arg_1)) * vec4<f32>(global2.x, _wgslsmith_f_op_f32(1000f * 1000f), -172f, _wgslsmith_f_op_f32(min(987f, _wgslsmith_f_op_f32(ceil(-1000f)))))));
    var var_3 = Struct_3(vec3<i32>(min(-43435i, var_2.c) & var_2.d, global0.a.x, var_2.d) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(42007u, global4.c, 62673u), vec3<u32>(28669u, 4294967295u, var_1.c)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(31947u, var_1.c, 1u), vec3<u32>(60617u, var_1.c, u_input.c)), vec3<u32>(var_1.c, 0u, 1u))) % vec3<u32>(32u)));
    return ~(~countOneBits(reverseBits(1u | u_input.c)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_5 {
    let var_0 = vec3<u32>(~func_2(arg_2.a, vec4<f32>(global2.x, -673f, -411f, _wgslsmith_f_op_f32(min(395f, global4.d.x)))), func_2(any(vec3<bool>(true, global4.a, global4.b.x)) == true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d.x, 288f, arg_2.d.x, 300f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d.x, global2.x, global4.d.x, -1664f)), vec4<f32>(global4.d.x, arg_2.d.x, global2.x, arg_2.d.x)))), u_input.c);
    global0 = arg_1;
    var var_1 = Struct_5(-870f, func_3(), ~(-2147483647i), abs(1966i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.d.x - -466f), _wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(sign(global4.d.x)), arg_2.d.x))));
    let var_2 = global4.d.x;
    let var_3 = Struct_4(arg_2, _wgslsmith_div_vec4_u32(countOneBits(max(min(vec4<u32>(18985u, var_0.x, 4294967295u, global4.c), vec4<u32>(44895u, global4.c, 46698u, u_input.c)), vec4<u32>(var_0.x, arg_2.c, arg_2.c, u_input.b) & vec4<u32>(var_0.x, 4294967295u, global4.c, var_0.x))), max(~firstLeadingBit(vec4<u32>(u_input.c, var_0.x, global4.c, 1u)), select(~vec4<u32>(arg_2.c, 4294967295u, 1u, 1u), vec4<u32>(arg_2.c, global4.c, 0u, arg_2.c) | vec4<u32>(39647u, global4.c, 24725u, arg_2.c), select(arg_0, arg_0, arg_0)))), -_wgslsmith_mult_i32(u_input.a.x, 1i), all(vec4<bool>(!(arg_2.b.x || arg_0.x), true, true, false)));
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.d.x)) - global2.x)) - arg_2.d.x), vec3<bool>(4294967295u < (var_0.x >> ((arg_2.c & 44799u) % 32u)), false, _wgslsmith_f_op_f32(-global4.d.x) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))), 19989i, -4686i, _wgslsmith_f_op_vec4_f32(-var_1.e));
}

fn func_1() -> i32 {
    global2 = global4.d;
    var var_0 = global4.c ^ 28389u;
    let var_1 = func_4(vec4<bool>(!global4.a, global4.a, !any(!vec4<bool>(global4.b.x, global4.b.x, global4.b.x, global4.b.x)), all(!select(global4.b.yx, vec2<bool>(true, global4.a), global4.b.xx))), Struct_3(vec3<i32>(_wgslsmith_clamp_i32(1i, -1i, global0.a.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x) << (func_2(global4.a, vec4<f32>(global2.x, global2.x, global4.d.x, 184f)) % 32u), abs(global0.a.x))), Struct_1(!global4.b.x || true, vec3<bool>(!any(global4.b.yx), select(true, !global4.b.x, true), false), global4.c, global4.d));
    var var_2 = vec4<u32>(reverseBits(abs(5287u)), global4.c, global4.c, global4.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - global4.d.x)))), global4.d.x), var_1.e.xz, !(!(~u_input.b > _wgslsmith_add_u32(1u, var_2.x)))));
    return ~(i32(-1i) * -(_wgslsmith_dot_vec3_i32(vec3<i32>(-18365i, 2147483647i, -1i), global0.a) & _wgslsmith_clamp_i32(-44383i, global0.a.x, 6171i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(vec2<bool>(any(vec2<bool>(true, global4.c <= global4.c)), false), max(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(global4.c, 62340u), vec2<u32>(u_input.b, 1u))), select(firstTrailingBit(vec2<u32>(36790u, u_input.c)), select(vec2<u32>(0u, 1u), vec2<u32>(global4.c, global4.c), vec2<bool>(global4.a, global4.b.x)), true)), global4.c >> (~_wgslsmith_sub_u32(global4.c, 71387u) % 32u)), min(max(u_input.c, 24072u >> (abs(u_input.c) % 32u)), countOneBits(global4.c)), func_4(select(vec4<bool>(any(global4.b), !global4.a, global4.a, -1000f <= global4.d.x), !vec4<bool>(false, global4.a, global4.b.x, true), !select(vec4<bool>(false, global4.a, false, global4.b.x), vec4<bool>(global4.b.x, true, false, true), true)), Struct_3(_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, u_input.a.x, global0.a.x), vec3<i32>(global0.a.x, global0.a.x, var_0))), Struct_1(func_3().x, global4.b, 51475u, global4.d)).b, 41229u);
    global1 = 0u;
    let var_2 = firstTrailingBit(select(_wgslsmith_mod_u32(_wgslsmith_add_u32(30710u, u_input.c), 1u), 1u, true)) != ~(~4294967295u);
    var var_3 = Struct_3(-global0.a);
    var var_4 = select(select(select(!vec4<bool>(var_1.d.x, var_1.a.x, global4.a, global4.b.x), !(!vec4<bool>(global4.b.x, false, var_1.a.x, false)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, var_2, true)), vec4<bool>(true, false, var_1.a.x, var_1.a.x), vec4<bool>(var_2, var_1.d.x, global4.b.x, true))), vec4<bool>(!var_2 & true, all(!vec3<bool>(false, var_1.a.x, true)), false, true), global4.b.x && ((var_1.a.x || true) && false)), select(!select(select(vec4<bool>(var_2, false, var_2, false), vec4<bool>(false, var_1.d.x, var_2, false), var_1.d.x), select(vec4<bool>(global4.a, true, var_1.d.x, false), vec4<bool>(var_2, false, var_2, true), true), vec4<bool>(var_2, var_1.d.x, true, false)), !(!(!vec4<bool>(var_2, false, var_2, global4.b.x))), vec4<bool>(true | var_2, var_1.a.x, func_4(!vec4<bool>(false, global4.b.x, false, var_2), Struct_3(vec3<i32>(-2147483647i, var_3.a.x, var_0)), Struct_1(var_1.d.x, var_1.d, global4.c, global4.d)).b.x, var_2)), select(!vec4<bool>(global0.a.x == global0.a.x, global4.a, true, true), !(!vec4<bool>(true, var_1.a.x, true, var_2)), !(!vec4<bool>(false, var_2, true, global4.a))));
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.d.x), 485f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) - _wgslsmith_f_op_f32(-523f + 1110f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1288f - -245f) * _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.x, global2.x, 1688f, global2.x) - vec4<f32>(-1130f, global4.d.x, 641f, global2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.x, -1535f, 114f, -2050f) * vec4<f32>(global2.x, -936f, 1243f, -266f))))), abs(_wgslsmith_div_i32(-u_input.d, (u_input.a.x & var_3.a.x) | global0.a.x)));
}

