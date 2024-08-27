struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(false, Struct_3(vec3<f32>(-267f, 977f, 777f), -7713i, vec3<i32>(1i, 17534i, 0i))), Struct_5(true, Struct_3(vec3<f32>(105f, -1000f, -2131f), 48577i, vec3<i32>(37996i, 57509i, 21503i))), Struct_5(false, Struct_3(vec3<f32>(1000f, 382f, -245f), 1i, vec3<i32>(0i, 0i, 2147483647i))), Struct_5(true, Struct_3(vec3<f32>(-640f, -1880f, -1162f), i32(-2147483648), vec3<i32>(-25831i, -13128i, 0i))), Struct_5(true, Struct_3(vec3<f32>(-690f, -344f, -839f), -15632i, vec3<i32>(-1i, -24624i, -6849i))), Struct_5(false, Struct_3(vec3<f32>(-226f, 671f, -858f), 21377i, vec3<i32>(-46866i, -1i, i32(-2147483648)))), Struct_5(true, Struct_3(vec3<f32>(620f, 155f, 2505f), 60794i, vec3<i32>(-24866i, -1i, -3426i))), Struct_5(false, Struct_3(vec3<f32>(1101f, -613f, 1455f), i32(-2147483648), vec3<i32>(-17752i, -1i, 2147483647i))), Struct_5(true, Struct_3(vec3<f32>(-1000f, 791f, 260f), 20211i, vec3<i32>(10111i, 2147483647i, 0i))), Struct_5(false, Struct_3(vec3<f32>(-448f, -458f, 298f), -14815i, vec3<i32>(-1i, 1i, 50341i))), Struct_5(true, Struct_3(vec3<f32>(234f, -1000f, 1000f), -1i, vec3<i32>(-1i, -20808i, -1i))), Struct_5(true, Struct_3(vec3<f32>(195f, -1370f, 430f), 1i, vec3<i32>(-13611i, 12965i, -8973i))), Struct_5(false, Struct_3(vec3<f32>(-1081f, 1507f, -1315f), 2147483647i, vec3<i32>(-40926i, 28588i, 0i))), Struct_5(true, Struct_3(vec3<f32>(148f, 2459f, -1767f), 4880i, vec3<i32>(36136i, i32(-2147483648), -15651i))), Struct_5(false, Struct_3(vec3<f32>(1000f, -1000f, -572f), 1i, vec3<i32>(-9184i, i32(-2147483648), i32(-2147483648)))));

var<private> global1: array<Struct_2, 25>;

var<private> global2: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -1000f, 313f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, -1000f, 4184f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2885f, 903f, 634f) - vec3<f32>(315f, -678f, -803f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-362f, 262f)), _wgslsmith_f_op_f32(994f + 576f), _wgslsmith_f_op_f32(exp2(1f))), all(vec2<bool>(true, true)))), -(~(-u_input.b)), ~(-vec3<i32>(0i, u_input.b, u_input.b) << (vec3<u32>(u_input.a.x, 81711u, 9087u) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(~global2.www, vec3<i32>(global2.x, -global2.x, _wgslsmith_add_i32(global2.x, u_input.b))));
    let var_1 = 43744u;
    global2 = -(_wgslsmith_add_vec4_i32(select(select(vec4<i32>(u_input.b, var_0.b, var_0.b, var_0.b), vec4<i32>(-30460i, 2147483647i, var_0.c.x, 29498i), false), vec4<i32>(global2.x, u_input.b, u_input.b, 21158i), true), ~vec4<i32>(var_0.b, u_input.b, 18292i, var_0.c.x)) >> (~firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a.x, 0u, 0u, var_1))) % vec4<u32>(32u)));
    global1 = array<Struct_2, 25>();
    var var_2 = 1058f;
    return 461f;
}

fn func_2() -> i32 {
    global0 = array<Struct_5, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-639f, _wgslsmith_f_op_f32(step(459f, 1069f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1019f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(302f)), _wgslsmith_f_op_f32(-276f * -573f))), _wgslsmith_div_f32(-1015f, -889f), _wgslsmith_div_f32(-1000f, -622f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -745f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1000f), -435f, -1295f))));
    let var_1 = global0[_wgslsmith_index_u32(abs(u_input.a.x) & u_input.a.x, 15u)];
    var var_2 = vec4<bool>(!(any(select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, var_1.a), true)) | true), all(select(select(vec4<bool>(var_1.a, true, var_1.a, true), !vec4<bool>(true, false, var_1.a, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, var_1.a, any(vec4<bool>(var_1.a, true, var_1.a, true)), any(vec4<bool>(false, var_1.a, var_1.a, var_1.a))), !(!vec4<bool>(var_1.a, var_1.a, false, var_1.a)))), true, all(vec3<bool>(true, var_1.a, !var_1.a)));
    var var_3 = Struct_4(global1[_wgslsmith_index_u32(firstTrailingBit(max(u_input.a.x, countOneBits(17610u))), 25u)]);
    return ~_wgslsmith_dot_vec3_i32(var_1.b.c, select(abs(var_1.b.c), var_1.b.c, true));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(u_input.a.x, countOneBits(~1u), ~abs(u_input.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1646f, _wgslsmith_div_f32(-1178f, _wgslsmith_f_op_f32(f32(-1f) * -350f)), 1f)), ~(-40015i));
    let var_1 = ~(~(abs(~vec3<u32>(var_0.a.a.x, u_input.a.x, u_input.a.x)) >> (u_input.a % vec3<u32>(32u))));
    let var_2 = -_wgslsmith_mult_i32(-(global2.x ^ _wgslsmith_mod_i32(-806i, -2498i)), 34349i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1762f + var_0.b.x));
    var var_4 = vec2<i32>(func_2(), u_input.b);
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, var_0.b.x, var_0.b.x)))) - vec3<f32>(-769f, var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x * -1761f))) + _wgslsmith_f_op_vec3_f32(step(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b)))))), u_input.b, ~((select(global2.wzx, global2.xyw, vec3<bool>(true, false, true)) ^ vec3<i32>(u_input.b, -1i, u_input.b)) >> (vec3<u32>(u_input.a.x ^ var_0.a.a.x, 1u << (var_1.x % 32u), _wgslsmith_mod_u32(1u, var_1.x)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<bool> {
    global2 = vec4<i32>(arg_0.c.x, countOneBits(arg_0.b), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global2.x, arg_0.b), _wgslsmith_mult_i32(-2147483647i, u_input.b)), ~(~(-1i))), -14923i));
    global0 = array<Struct_5, 15>();
    var var_0 = arg_0.a;
    var var_1 = Struct_1(select(vec4<u32>(~u_input.a.x, ~u_input.a.x, 26197u ^ arg_1, _wgslsmith_add_u32(arg_1, 41446u)) >> (reverseBits(~vec4<u32>(3342u, arg_1, arg_1, u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(~arg_1, abs(_wgslsmith_mult_u32(0u, 43034u)), countOneBits(_wgslsmith_mod_u32(arg_1, arg_1)), _wgslsmith_div_u32(min(arg_1, arg_1), min(9369u, 68534u))), select(true, !(0u <= u_input.a.x), all(vec4<bool>(true, false, false, true)) && true)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, arg_0.a.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -294f))) + 238f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1386f, arg_0.a.x) + 603f)));
    return select(vec4<bool>(select(select(true, true, true), false, true), true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)) || !(var_1.a.x < arg_1)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))), vec4<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false)), all(vec3<bool>(true, true, false)))), select(vec4<bool>(true, true, true, false), !vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), true), ~global2.x > _wgslsmith_mod_i32(2147483647i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 15>();
    global0 = array<Struct_5, 15>();
    global1 = array<Struct_2, 25>();
    var var_0 = func_4(func_1(), ~(1u >> (1u % 32u)));
    let var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(1i, var_1), var_1), 45242u, vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f * 343f)) - 1f)), 43848u);
}

