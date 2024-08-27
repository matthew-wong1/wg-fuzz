struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<i32>(-16750i, 1i, -30445i, -72314i), -32447i, 68115u, vec3<bool>(true, true, true), 0i), Struct_1(vec4<i32>(0i, 44085i, 41111i, -9475i), 2147483647i, 1u, vec3<bool>(false, true, false), 34527i), Struct_1(vec4<i32>(23556i, -51066i, 2147483647i, 0i), -1i, 28365u, vec3<bool>(false, false, true), 1588i), Struct_1(vec4<i32>(3732i, 5053i, 0i, -1i), -1301i, 69771u, vec3<bool>(false, true, true), -37829i), Struct_1(vec4<i32>(1i, 0i, -1i, 2147483647i), 2147483647i, 19522u, vec3<bool>(false, false, true), 0i), Struct_1(vec4<i32>(-20423i, -25600i, 19840i, i32(-2147483648)), -34254i, 3677u, vec3<bool>(false, true, true), -31244i), Struct_1(vec4<i32>(10723i, 1i, -1i, 1i), 0i, 46572u, vec3<bool>(true, false, false), 1i), Struct_1(vec4<i32>(0i, i32(-2147483648), 13422i, -1i), i32(-2147483648), 32136u, vec3<bool>(true, false, false), -31772i), Struct_1(vec4<i32>(0i, -228i, 1i, 1i), 1i, 0u, vec3<bool>(true, false, true), 2147483647i), Struct_1(vec4<i32>(-48920i, 19085i, 15815i, -36491i), i32(-2147483648), 1u, vec3<bool>(false, true, true), -1i), Struct_1(vec4<i32>(0i, 3494i, 0i, -15035i), -1i, 0u, vec3<bool>(false, false, true), -56620i), Struct_1(vec4<i32>(-79i, 14788i, -1i, -42289i), -1i, 4294967295u, vec3<bool>(true, true, true), 0i), Struct_1(vec4<i32>(2147483647i, 60731i, i32(-2147483648), 2147483647i), 42547i, 24116u, vec3<bool>(true, false, true), 1i), Struct_1(vec4<i32>(13958i, 2147483647i, i32(-2147483648), 3815i), -45190i, 4294967295u, vec3<bool>(true, true, true), -6154i), Struct_1(vec4<i32>(-1i, -1i, -1i, -9279i), 2147483647i, 56338u, vec3<bool>(false, false, false), 0i), Struct_1(vec4<i32>(-31951i, 0i, i32(-2147483648), 0i), i32(-2147483648), 2017u, vec3<bool>(false, false, true), -1i), Struct_1(vec4<i32>(1i, 12167i, 39543i, 1i), -1i, 0u, vec3<bool>(true, false, false), 28074i), Struct_1(vec4<i32>(-29037i, i32(-2147483648), 8644i, 17886i), -5871i, 4294967295u, vec3<bool>(false, true, false), 1i), Struct_1(vec4<i32>(0i, 2147483647i, 47653i, 32169i), -21294i, 0u, vec3<bool>(false, false, true), 2147483647i), Struct_1(vec4<i32>(0i, 2147483647i, 1i, 0i), 56939i, 4294967295u, vec3<bool>(false, false, false), 0i), Struct_1(vec4<i32>(-11566i, -3530i, -6160i, i32(-2147483648)), 0i, 0u, vec3<bool>(true, true, false), -11716i), Struct_1(vec4<i32>(1i, 45719i, 69106i, 13661i), -1i, 17581u, vec3<bool>(true, false, true), -8847i), Struct_1(vec4<i32>(14329i, 4839i, 0i, 0i), -50512i, 0u, vec3<bool>(false, true, false), 34798i), Struct_1(vec4<i32>(80i, 1i, -68923i, -1i), 17762i, 0u, vec3<bool>(false, true, false), -90827i), Struct_1(vec4<i32>(-1i, i32(-2147483648), -14423i, 1i), 0i, 66734u, vec3<bool>(false, false, false), 0i));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-25113i), Struct_2(1i), Struct_2(-49238i), Struct_2(1i), Struct_2(0i), Struct_2(-7251i), Struct_2(1i), Struct_2(-67533i), Struct_2(-34283i), Struct_2(33886i), Struct_2(-1i), Struct_2(1i), Struct_2(2147483647i), Struct_2(50454i), Struct_2(-60592i), Struct_2(i32(-2147483648)), Struct_2(21509i), Struct_2(-53295i), Struct_2(-26878i), Struct_2(1i), Struct_2(0i), Struct_2(44105i), Struct_2(22228i), Struct_2(1i), Struct_2(-21679i), Struct_2(53874i), Struct_2(-1i), Struct_2(26925i), Struct_2(2147483647i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_4(global1.d.zz, global0[_wgslsmith_index_u32(countOneBits(select(global1.c << (62456u % 32u), _wgslsmith_mod_u32(50085u, 4294967295u), arg_0 <= u_input.b) & abs(~u_input.a.x)), 25u)], countOneBits(_wgslsmith_add_i32(-arg_1.a, 1i) >> (1u % 32u)), Struct_3(global2[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(51219u, arg_0), global1.c & 37757u), vec2<u32>(_wgslsmith_add_u32(8036u, arg_0), 60622u)), arg_1, Struct_1(min(~global1.a, global1.a), ~arg_1.a, arg_0, vec3<bool>(global1.d.x, false, true), arg_1.a), Struct_2(firstTrailingBit(2147483647i))), Struct_2(global1.a.x));
    global0 = array<Struct_1, 25>();
    var var_1 = 46974u;
    var var_2 = !vec4<bool>(true, var_0.d.d.d.x, all(!var_0.d.d.d), -14833i == _wgslsmith_add_i32(var_0.c, global1.b));
    var var_3 = arg_1;
    return 1175f;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    global2 = array<Struct_2, 29>();
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~65355u), 25u)];
    var_0 = Struct_1(global1.a, -arg_1.d.e.a, global1.c, select(!(!select(var_0.d, vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true), arg_1.d.d.d), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_2.a, 0i), ~global1.e, ~(~2900i)));
    global1 = Struct_1(abs(_wgslsmith_div_vec4_i32(-arg_1.b.a, var_0.a)) ^ -(~min(vec4<i32>(global1.b, arg_1.e.a, arg_0.x, -28101i), global1.a)), select(0i, firstTrailingBit(_wgslsmith_mod_i32(reverseBits(var_0.a.x), max(arg_0.x, var_0.e))), _wgslsmith_f_op_f32(func_2(arg_1.d.b.x, arg_1.d.a)) != 455f), _wgslsmith_sub_u32(arg_1.d.b.x, ~max(1u, ~u_input.a.x)), select(arg_1.d.d.d, vec3<bool>(_wgslsmith_f_op_f32(round(1230f)) >= _wgslsmith_f_op_f32(1000f - -544f), false, arg_1.b.d.x), (var_0.c >= _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) & ((var_0.c & 0u) < 1u)), -2147483647i);
    let var_1 = global1.d.x;
    return _wgslsmith_f_op_f32(func_2(4294967295u, arg_1.e));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-565f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(36602u, Struct_2(global1.e))), _wgslsmith_f_op_f32(step(-1000f, -1985f)))), 984f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(global1.b | global1.a.x, 1i), Struct_4(vec2<bool>(global1.d.x, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 43644u, u_input.b, u_input.a.x), u_input.a), 25u)], -global1.e, Struct_3(Struct_2(global1.b), vec2<u32>(u_input.a.x, 4294967295u), Struct_2(global1.a.x), Struct_1(vec4<i32>(-22716i, global1.b, global1.b, global1.b), global1.a.x, u_input.b, vec3<bool>(true, global1.d.x, global1.d.x), 1i), Struct_2(1i)), Struct_2(0i)), Struct_2(_wgslsmith_add_i32(-23547i, global1.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f - _wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_2(30428i)))))));
    global0 = array<Struct_1, 25>();
    var_0 = -511f;
    let var_1 = 14850u;
    return Struct_1(global1.a, _wgslsmith_add_i32(-(global1.e ^ 0i), -13615i), reverseBits(4294967295u), select(vec3<bool>(any(vec3<bool>(false, global1.d.x, true)), false, true), vec3<bool>(global1.d.x, true, global1.d.x), global1.d), -_wgslsmith_dot_vec3_i32(global1.a.yzz, firstTrailingBit(global1.a.yyx)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(922f, 497f) + vec2<f32>(-1673f, -702f)) - _wgslsmith_div_vec2_f32(vec2<f32>(547f, 211f), vec2<f32>(-1000f, -198f)))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1269f, 915f))), _wgslsmith_f_op_f32(f32(-1f) * -1144f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-495f, 1010f)))));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-362f, 977f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(385f, -638f))))) + vec2<f32>(-1420f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -133f)))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(arg_1.c, 29u)], _wgslsmith_mult_vec2_u32(~vec2<u32>(global1.c, 58013u >> (u_input.a.x % 32u)), abs(u_input.a.zy)), global2[_wgslsmith_index_u32(~(countOneBits(arg_1.c) & abs(1u)), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~global1.c, countOneBits(1u), ~(13275u | arg_1.c), _wgslsmith_clamp_u32(~arg_1.c, global1.c, reverseBits(u_input.b))), vec4<u32>(6180u, ~global1.c, u_input.a.x, ~0u ^ firstLeadingBit(global1.c))), 25u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(arg_1.c >> (4806u % 32u), _wgslsmith_clamp_u32(arg_1.c, 1678u, 0u), arg_1.c > global1.c), global1.c >> (firstTrailingBit(global1.c & 0u) % 32u)), 29u)]);
    var var_2 = _wgslsmith_mod_i32(8277i, ~arg_0);
    var var_3 = func_1().a.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -133f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -738f), -1831f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(508f, -1431f) * vec2<f32>(1000f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, 1295f)) * _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_sub_i32(0i, global1.a.x), func_1()))) + _wgslsmith_f_op_vec2_f32(func_4(reverseBits(global1.e ^ 1i), func_1())))));
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global2 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, 4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))))));
}

