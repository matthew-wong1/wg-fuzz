struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(790f, 1998f);

var<private> global1: Struct_3;

var<private> global2: bool;

var<private> global3: bool = false;

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(1u, 4294967295u, false, vec3<bool>(false, true, true)), -1000f, -36929i), Struct_2(Struct_1(0u, 4294967295u, true, vec3<bool>(true, false, false)), -894f, i32(-2147483648)), Struct_2(Struct_1(10036u, 117991u, false, vec3<bool>(false, false, false)), -1260f, 1i), Struct_2(Struct_1(79652u, 0u, true, vec3<bool>(true, false, true)), -335f, 1i), Struct_2(Struct_1(4294967295u, 26708u, false, vec3<bool>(false, false, true)), -1024f, -8865i), Struct_2(Struct_1(15763u, 4294967295u, false, vec3<bool>(true, true, false)), 375f, -1i), Struct_2(Struct_1(1u, 1u, true, vec3<bool>(true, true, true)), -1225f, 0i), Struct_2(Struct_1(62686u, 0u, true, vec3<bool>(true, true, false)), 1134f, 2147483647i), Struct_2(Struct_1(46979u, 1u, true, vec3<bool>(false, false, false)), 628f, -1118i), Struct_2(Struct_1(35378u, 4294967295u, false, vec3<bool>(true, false, true)), 199f, 28095i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = -25247i;
    let var_1 = ~21177u >> ((1u & u_input.a.x) % 32u);
    var_0 = -54204i;
    let var_2 = ~(i32(-1i) * -25660i);
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(101672u, var_1), _wgslsmith_mod_u32(7091u, u_input.a.x)), ~(~0u)), _wgslsmith_mod_u32(abs(u_input.a.x), ~abs(u_input.a.x)), true, !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-368f))))), 1i);
    return select(!vec3<bool>(-54161i >= global1.b, false, !(var_3.a.c | true)), vec3<bool>(!var_3.a.d.x, any(vec4<bool>(true, var_3.a.d.x, true, var_3.a.c)) || true, false), true);
}

fn func_2() -> vec3<bool> {
    var var_0 = u_input.b.x;
    let var_1 = reverseBits(firstLeadingBit(u_input.b.x));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(-1000f + -1280f)) * vec2<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-908f + global0.x) - global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(780f + -1345f))) + 485f)));
    global0 = vec2<f32>(653f, _wgslsmith_f_op_f32(ceil(106f)));
    var var_2 = max(u_input.b, u_input.b);
    return select(select(!vec3<bool>(true, global1.b > -5298i, all(vec2<bool>(true, true))), select(!func_3(36468i), vec3<bool>(true, global1.a < -2514f, any(vec4<bool>(true, false, true, false))), true), !(!(-420f >= global0.x))), select(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.b), -vec2<i32>(var_1, -2147483647i))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(false, true, all(vec4<bool>(true, true, true, true)))), true);
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global3 = !all(select(func_2(), vec3<bool>(true, true, true), true));
    let var_0 = 1u;
    let var_1 = Struct_4(u_input.b.x, u_input.b.yxw, Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a) ^ _wgslsmith_add_u32(u_input.a.x, var_0), 1u), var_0, true, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-408f, global1.a), vec2<f32>(-1161f, global1.a)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-268f, -174f)))) + vec2<f32>(197f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1242f, global0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-395f, -294f), vec2<f32>(-1884f, 833f))), vec2<f32>(global1.a, 482f)), select(vec2<bool>(true, false), func_3(-1i).yx, vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(3112f, global1.a)))), true))));
    global2 = true;
    let var_2 = ~_wgslsmith_div_vec2_i32(-(~u_input.b.yz), var_1.b.xz | max(firstLeadingBit(vec2<i32>(var_1.a, u_input.b.x)), vec2<i32>(-10583i, 1i)));
    return -_wgslsmith_mult_i32(var_1.b.x, _wgslsmith_add_i32(var_1.b.x, ~(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i, func_1(max(vec4<u32>(u_input.a.x, 5792u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 36987u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~4294967295u), firstTrailingBit(vec4<u32>(19296u, 7419u, 16819u, u_input.a.x)) ^ vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x))));
    var var_1 = global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 10u)];
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(360f, 367f) - vec2<f32>(global0.x, -1127f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -1319f)) + vec2<f32>(1812f, global1.a))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1234f, -838f), vec2<f32>(1000f, 304f)))), !var_1.a.d.yx))));
    var var_2 = Struct_4(global1.b, -(~min(~u_input.b.wzw, u_input.b.xxw << (vec3<u32>(var_1.a.a, 0u, u_input.a.x) % vec3<u32>(32u)))), Struct_1(5355u, 0u ^ var_1.a.b, true, select(vec3<bool>(all(vec3<bool>(var_1.a.d.x, true, false)), all(vec3<bool>(true, false, var_1.a.d.x)), true), vec3<bool>(false, true, var_1.a.d.x), all(var_1.a.d.zz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_1.b)), var_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1600f, -175f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1697f), _wgslsmith_f_op_f32(round(var_1.b))), vec2<bool>(var_1.c <= 6045i, func_2().x)))));
    var var_3 = vec4<bool>(true, !(4294967295u != countOneBits(u_input.a.x >> (var_2.c.a % 32u))), false, (28365i > ~_wgslsmith_dot_vec3_i32(u_input.b.ywz, vec3<i32>(u_input.b.x, var_1.c, 2147483647i))) | (~var_1.a.a >= _wgslsmith_mult_u32(0u, 93167u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-233f, global1.a), global0.x, global1.a, _wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.b, 984f)), -895f, var_1.b, -731f), vec4<f32>(global0.x, _wgslsmith_f_op_f32(var_1.b + global1.a), _wgslsmith_div_f32(1000f, -143f), _wgslsmith_f_op_f32(-global0.x))))), ~_wgslsmith_clamp_vec4_u32(min(abs(vec4<u32>(u_input.a.x, 73584u, u_input.a.x, 138610u)), max(vec4<u32>(var_2.c.a, u_input.a.x, 0u, 4294967295u), vec4<u32>(var_1.a.b, 45272u, 1u, var_1.a.b))), vec4<u32>(_wgslsmith_add_u32(var_1.a.a, 67834u), 1u, firstTrailingBit(0u), 0u), _wgslsmith_add_vec4_u32(max(vec4<u32>(var_2.c.a, var_2.c.b, 73805u, var_1.a.a), vec4<u32>(var_1.a.b, 1u, 0u, var_1.a.b)), min(vec4<u32>(4294967295u, 26362u, var_1.a.b, 7582u), vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)))), global1.b);
}

