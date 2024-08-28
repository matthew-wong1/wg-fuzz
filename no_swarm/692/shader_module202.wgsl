struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(-50365i), 64860u, false, Struct_1(0i), Struct_1(2147483647i)), Struct_2(Struct_1(1i), 4294967295u, true, Struct_1(2147483647i), Struct_1(1i)), Struct_2(Struct_1(-25948i), 1342u, false, Struct_1(1i), Struct_1(-1i)), Struct_2(Struct_1(-11461i), 33558u, true, Struct_1(-1i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(2147483647i), 1u, false, Struct_1(4157i), Struct_1(-38132i)), Struct_2(Struct_1(1i), 4294967295u, true, Struct_1(2147483647i), Struct_1(0i)), Struct_2(Struct_1(2147483647i), 0u, false, Struct_1(0i), Struct_1(-54152i)), Struct_2(Struct_1(9814i), 0u, false, Struct_1(46915i), Struct_1(2147483647i)), Struct_2(Struct_1(i32(-2147483648)), 4294967295u, true, Struct_1(-4494i), Struct_1(-23703i)), Struct_2(Struct_1(3327i), 0u, false, Struct_1(-4629i), Struct_1(-11993i)), Struct_2(Struct_1(0i), 47070u, true, Struct_1(1i), Struct_1(0i)), Struct_2(Struct_1(1i), 4294967295u, true, Struct_1(-13627i), Struct_1(-1i)), Struct_2(Struct_1(25412i), 35275u, false, Struct_1(-31029i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-41197i), 15603u, true, Struct_1(0i), Struct_1(-1i)), Struct_2(Struct_1(i32(-2147483648)), 0u, true, Struct_1(-3093i), Struct_1(0i)), Struct_2(Struct_1(1i), 0u, false, Struct_1(i32(-2147483648)), Struct_1(-6033i)), Struct_2(Struct_1(22716i), 60550u, false, Struct_1(54264i), Struct_1(-19160i)), Struct_2(Struct_1(21245i), 9224u, true, Struct_1(20228i), Struct_1(3520i)), Struct_2(Struct_1(-23047i), 1u, false, Struct_1(1i), Struct_1(-1i)), Struct_2(Struct_1(1i), 38937u, false, Struct_1(2147483647i), Struct_1(38929i)), Struct_2(Struct_1(0i), 34633u, true, Struct_1(40321i), Struct_1(-11473i)), Struct_2(Struct_1(0i), 4294967295u, true, Struct_1(-17272i), Struct_1(-8628i)), Struct_2(Struct_1(1i), 147557u, false, Struct_1(2453i), Struct_1(2147483647i)), Struct_2(Struct_1(-7131i), 4294967295u, false, Struct_1(-45240i), Struct_1(-4580i)), Struct_2(Struct_1(i32(-2147483648)), 0u, false, Struct_1(-31213i), Struct_1(0i)));

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32) -> f32 {
    global2 = array<Struct_2, 25>();
    let var_0 = vec2<f32>(-424f, 492f);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42305u, ~u_input.a.x, u_input.a.x & 4294967295u), vec3<u32>(u_input.a.x, 102453u, _wgslsmith_sub_u32(1u, 1u))) & u_input.a.x, 9u)], select(max(u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, 15862u)), ~(~10764u ^ u_input.a.x), true), true, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(13767u, 0u, u_input.a.x), u_input.a, vec3<bool>(global4.x, global4.x, global4.x)), u_input.a)), 9u)], Struct_1(0i));
    let var_2 = Struct_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0, -1i), vec3<i32>(-29218i, global3.a, 0i)) >> (_wgslsmith_mult_u32(85708u, var_1.b) % 32u)) & _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, arg_0, u_input.c.x), vec4<i32>(56089i, -48929i, -2298i, 2147483647i))), vec4<i32>(-global1.a, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-7997i, global1.a)), min(global1.a, var_1.a.a), var_1.a.a)));
    let var_3 = Struct_2(Struct_1(-max(u_input.c.x >> (u_input.a.x % 32u), ~u_input.c.x)), 61440u >> (var_1.b % 32u), var_1.c, global0[_wgslsmith_index_u32(max(1u, firstLeadingBit(1u | var_1.b)), 9u)], Struct_1(global3.a));
    return 1621f;
}

fn func_1() -> Struct_2 {
    global3 = Struct_1(~(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global3.a, 1i, global1.a)), -vec3<i32>(9616i, 35317i, u_input.c.x))));
    global4 = !vec4<bool>(global4.x, !global4.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global3.a)), _wgslsmith_f_op_f32(sign(276f)))) >= _wgslsmith_f_op_f32(func_2(9064i)), true);
    global0 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_f32(-889f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 403f)))) * _wgslsmith_f_op_f32(447f + 1f)));
    let var_1 = vec2<bool>(global4.x, true);
    return global2[_wgslsmith_index_u32(~(u_input.a.x << (23523u % 32u)) | (0u & u_input.a.x), 25u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, abs(~global1.a) < abs(global3.a)), !global4.xx);
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_mod_i32(-(global3.a ^ global1.a), 13263i)));
    var var_2 = vec2<u32>(abs(u_input.a.x), arg_1);
    let var_3 = _wgslsmith_mod_u32(select(var_2.x, 0u, true), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_1, 4294967295u), ~1u), 29590u));
    let var_4 = func_1();
    return Struct_1(min(max(select(firstLeadingBit(u_input.c.x), i32(-1i) * -1i, true), countOneBits(0i)), global3.a ^ _wgslsmith_sub_i32(-var_1.a, -34394i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -400f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-989f, -465f)), -464f))));
    global1 = Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global3.a, 13496i, global1.a), vec4<i32>(0i, 1i, 0i, 0i))), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(global1.a, -2147483647i, var_0.a.a, u_input.c.x), vec4<i32>(-46531i, -17410i, -48693i, 62810i))));
    var var_2 = func_3(var_1.wx, ~(36254u & var_0.b));
    global4 = !select(vec4<bool>(u_input.a.x < u_input.a.x, var_0.c, select(any(global4.wy), global4.x | false, var_0.c), true), vec4<bool>(true, var_1.x < _wgslsmith_f_op_f32(ceil(var_1.x)), true, all(vec3<bool>(global4.x, global4.x, true))), global4.x);
    let var_3 = vec3<u32>(1u, ~1u, 63186u);
    var_2 = Struct_1(-2147483647i);
    global0 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(var_3.x, 0u)), ~vec2<u32>(26632u, var_3.x)), ~(vec2<u32>(var_3.x, var_0.b) ^ vec2<u32>(u_input.a.x, var_3.x))), ~(u_input.a.x | 1u) >> (~1u % 32u)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -613f)))), _wgslsmith_div_u32(max(_wgslsmith_mod_u32(1u, var_0.b), 8632u), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), var_3.x)), countOneBits(~(~0u)));
}

