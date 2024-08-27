struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(17068i, -1i, -1i, -33507i, 39935i, 0i, 0i);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-8134i, vec2<i32>(1i, i32(-2147483648))), Struct_1(1i, vec2<i32>(-8131i, 19285i)), Struct_1(2147483647i, vec2<i32>(1i, i32(-2147483648))), Struct_1(35511i, vec2<i32>(1i, -1i)), Struct_1(-1i, vec2<i32>(-49131i, -5049i)), Struct_1(11851i, vec2<i32>(2147483647i, 2147483647i)), Struct_1(-2152i, vec2<i32>(i32(-2147483648), 0i)), Struct_1(-63404i, vec2<i32>(-25651i, 1i)), Struct_1(-14905i, vec2<i32>(0i, 15977i)), Struct_1(1i, vec2<i32>(-33671i, 2147483647i)), Struct_1(-1i, vec2<i32>(31897i, -24300i)), Struct_1(76998i, vec2<i32>(2147483647i, 1i)), Struct_1(0i, vec2<i32>(i32(-2147483648), 22408i)), Struct_1(-1i, vec2<i32>(i32(-2147483648), -1i)), Struct_1(0i, vec2<i32>(2730i, 1i)), Struct_1(1i, vec2<i32>(-1i, 2147483647i)), Struct_1(2147483647i, vec2<i32>(-26359i, 2147483647i)), Struct_1(64298i, vec2<i32>(-6349i, -1i)), Struct_1(23822i, vec2<i32>(26309i, 2147483647i)), Struct_1(i32(-2147483648), vec2<i32>(57923i, 0i)));

var<private> global2: f32;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<i32>(47808i, 2147483647i, 548i, 1i), 1u, Struct_1(-1i, vec2<i32>(i32(-2147483648), -18944i))), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, -2616i, 0i), 62783u, Struct_1(48492i, vec2<i32>(-1i, 22716i))), Struct_2(vec4<i32>(i32(-2147483648), 0i, 1i, 0i), 0u, Struct_1(2147483647i, vec2<i32>(-5558i, 10552i))), Struct_2(vec4<i32>(2147483647i, 49848i, -43399i, -18692i), 97789u, Struct_1(16854i, vec2<i32>(80607i, -14987i))), Struct_2(vec4<i32>(17176i, i32(-2147483648), 1i, 22976i), 1u, Struct_1(0i, vec2<i32>(-21361i, 10413i))), Struct_2(vec4<i32>(0i, -17033i, 30268i, -10424i), 0u, Struct_1(i32(-2147483648), vec2<i32>(1i, 2147483647i))), Struct_2(vec4<i32>(8601i, -1i, 0i, 2147483647i), 1u, Struct_1(20527i, vec2<i32>(2147483647i, -12215i))), Struct_2(vec4<i32>(0i, -11577i, -44349i, -37000i), 27805u, Struct_1(1535i, vec2<i32>(50619i, -1i))), Struct_2(vec4<i32>(-45394i, 28315i, -1821i, 0i), 71909u, Struct_1(-27586i, vec2<i32>(1i, 64631i))), Struct_2(vec4<i32>(-11180i, 2147483647i, 39647i, 1i), 4294967295u, Struct_1(62283i, vec2<i32>(-19623i, -19241i))), Struct_2(vec4<i32>(5735i, 1i, -36564i, 0i), 36629u, Struct_1(1i, vec2<i32>(-49702i, 12226i))), Struct_2(vec4<i32>(0i, 5295i, -31745i, -8373i), 28455u, Struct_1(39237i, vec2<i32>(2147483647i, 1i))), Struct_2(vec4<i32>(10304i, 36848i, 46589i, 1i), 9299u, Struct_1(52239i, vec2<i32>(1i, 2147483647i))), Struct_2(vec4<i32>(-18980i, 1i, -25338i, -4034i), 0u, Struct_1(-2322i, vec2<i32>(i32(-2147483648), 4694i))), Struct_2(vec4<i32>(-19730i, 24202i, 26465i, 16535i), 7480u, Struct_1(-28322i, vec2<i32>(31226i, i32(-2147483648)))), Struct_2(vec4<i32>(1i, 2147483647i, i32(-2147483648), 0i), 21826u, Struct_1(0i, vec2<i32>(-35057i, -1i))), Struct_2(vec4<i32>(0i, 2147483647i, 2147483647i, -16458i), 42450u, Struct_1(2147483647i, vec2<i32>(21870i, -72590i))), Struct_2(vec4<i32>(2147483647i, -8644i, 27281i, -31097i), 1u, Struct_1(27515i, vec2<i32>(-26630i, -1i))), Struct_2(vec4<i32>(-25350i, -9610i, 2147483647i, 42745i), 45511u, Struct_1(688i, vec2<i32>(30798i, 2147483647i))), Struct_2(vec4<i32>(16864i, -10530i, 0i, 0i), 1u, Struct_1(-55425i, vec2<i32>(11691i, 16527i))), Struct_2(vec4<i32>(-35914i, -7714i, i32(-2147483648), 20228i), 1u, Struct_1(i32(-2147483648), vec2<i32>(1i, 0i))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    global1 = array<Struct_1, 20>();
    var var_0 = false;
    let var_1 = !vec4<bool>((_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 40936u) < countOneBits(49113u)) || true, false, 1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -996f))), false || (_wgslsmith_add_i32(1i, 45757i) < _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yx)));
    var var_2 = global0[_wgslsmith_index_u32(~(~(u_input.c.x << ((select(u_input.c.x, 0u, var_1.x) | 0u) % 32u))), 7u)];
    var_0 = !(!(-43430i == -max(u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 7u)])));
    return 1057f;
}

fn func_4(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = abs(~(~vec3<i32>(max(19165i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), 1478i << (u_input.c.x % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1000f, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 1065f, arg_0, arg_1), vec4<f32>(-923f, arg_0, 329f, -565f)))) * vec4<f32>(arg_1, 1f, _wgslsmith_f_op_f32(max(arg_0, -738f)), _wgslsmith_f_op_f32(min(arg_1, 623f))))));
    let var_2 = arg_0;
    let var_3 = u_input.c.x;
    var var_4 = var_1;
    return abs(0u);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = func_4(386f, _wgslsmith_f_op_f32(func_3()));
    var var_2 = firstLeadingBit(arg_0.a.ywz);
    var var_3 = select(!vec3<bool>(true, var_0, !(false | var_0)), vec3<bool>((~1u >= func_4(-546f, -216f)) || var_0, true, any(select(!vec2<bool>(var_0, true), vec2<bool>(var_0, true), any(vec2<bool>(var_0, false))))), var_0);
    var var_4 = var_0;
    return Struct_1(~(-2147483647i), var_2.yz);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(0i, u_input.a.x, 0i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec4<i32>(-2147483647i, 7484i, 0i, 3740i), vec4<bool>(true, true, true, true)), vec4<i32>(2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], 44661i)) << (~vec4<u32>(1u, 1u, 4294967295u, 56396u) % vec4<u32>(32u)), min(-vec4<i32>(global0[_wgslsmith_index_u32(1u, 7u)], u_input.a.x, -2147483647i, 56832i), -vec4<i32>(1i, 1i, 1i, 1i))), 23976u, func_2(global3[_wgslsmith_index_u32((min(u_input.c.x, u_input.c.x) << (~u_input.c.x % 32u)) >> ((54799u >> (_wgslsmith_div_u32(u_input.c.x, 1u) % 32u)) % 32u), 21u)]));
    var_0 = global3[_wgslsmith_index_u32(4294967295u ^ ~u_input.c.x, 21u)];
    var var_1 = !select(vec3<bool>(!all(vec3<bool>(true, true, true)), select(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), true), _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xx) != (global0[_wgslsmith_index_u32(13022u, 7u)] << (var_0.b % 32u))), vec3<bool>(true, false, global0[_wgslsmith_index_u32(~var_0.b, 7u)] <= select(-1i, global0[_wgslsmith_index_u32(22874u, 7u)], true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), any(vec2<bool>(false, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -439f) != _wgslsmith_f_op_f32(trunc(476f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(f32(-1f) * -947f), -2885f, _wgslsmith_f_op_f32(floor(-507f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(326f, 671f, -715f, -269f) - vec4<f32>(1217f, -1574f, -1342f, -416f)))))));
    return func_2(Struct_2(vec4<i32>(-(~(-1i)), global0[_wgslsmith_index_u32(u_input.c.x, 7u)] ^ (i32(-1i) * -15089i), _wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(var_0.b, 7u)], _wgslsmith_sub_i32(var_0.c.b.x, u_input.b)), ~(-4687i) << (~var_0.b % 32u)), _wgslsmith_add_u32(0u, ~25570u) << (0u % 32u), global1[_wgslsmith_index_u32(73095u, 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    global0 = array<i32, 7>();
    var var_0 = func_1();
    var var_1 = select(u_input.c.x, ~_wgslsmith_mod_u32(~(~u_input.c.x), _wgslsmith_add_u32(reverseBits(u_input.c.x), 16516u)), true);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -613f);
    global0 = array<i32, 7>();
    var var_2 = Struct_2(vec4<i32>(func_2(global3[_wgslsmith_index_u32(u_input.c.x, 21u)]).b.x, 2147483647i, ((1i >> (u_input.c.x % 32u)) ^ ~(-20154i)) << (countOneBits(~4294967295u) % 32u), -33641i), ~61398u, global1[_wgslsmith_index_u32(abs(~15474u), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(17857i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -109f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f))), _wgslsmith_f_op_f32(round(-1351f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))));
}

