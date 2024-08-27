struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 48980u;

var<private> global1: array<vec3<u32>, 1>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(794f, -590f, -319f, -1268f))))), any(vec4<bool>(any(vec2<bool>(true, true)), true, true, true)));
    global1 = array<vec3<u32>, 1>();
    let var_1 = ~((firstLeadingBit(-22118i | u_input.a) >> (_wgslsmith_add_u32(min(0u, u_input.b), ~17613u) % 32u)) >> (select(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 50205u), vec2<u32>(38409u, 87902u))), 887u, var_0.b) % 32u));
    var var_2 = Struct_4(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(max(840f, var_0.a.x)), -1439f, _wgslsmith_f_op_f32(exp2(var_0.a.x))))), !(true || all(select(vec4<bool>(var_0.b, false, var_0.b, true), vec4<bool>(true, true, true, false), vec4<bool>(var_0.b, var_0.b, true, false)))));
    var var_3 = Struct_1(countOneBits(vec4<i32>(-1i) * -abs(vec4<i32>(var_1, -77802i, u_input.a, 31745i))), vec2<i32>(39307i, ~(var_1 << (firstLeadingBit(0u) % 32u))));
    return select(!select(!vec2<bool>(var_0.b, true), select(vec2<bool>(var_2.b, true), select(vec2<bool>(true, var_2.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.b)), all(vec3<bool>(var_2.b, var_0.b, var_0.b))), vec2<bool>(!var_2.b, any(vec2<bool>(var_0.b, true)))), vec2<bool>(!(!var_2.b), select(true, select(all(vec3<bool>(false, true, true)), var_0.b, var_2.b), var_2.b)), !select(select(vec2<bool>(var_0.b, var_2.b), !vec2<bool>(false, var_0.b), false), select(!vec2<bool>(var_2.b, var_2.b), select(vec2<bool>(var_0.b, false), vec2<bool>(true, true), true), !vec2<bool>(false, var_2.b)), all(vec4<bool>(var_2.b, false, true, var_2.b))));
}

fn func_2() -> Struct_3 {
    let var_0 = ~(~u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = select(select(vec2<bool>(true, false), vec2<bool>(_wgslsmith_f_op_f32(-var_1) > _wgslsmith_f_op_f32(step(166f, -1000f)), (2201f <= var_1) | select(false, false, false)), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<bool>(select(any(vec4<bool>(true, true, true, true)), any(func_3()), false), true), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_3()), vec2<bool>(!(-150f < var_1), select(true, -1i != u_input.a, true)), !(false || all(vec2<bool>(false, false)))));
    let var_3 = (i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-19368i, 0i, -7479i), u_input.a >> (var_0 % 32u))) | (u_input.a ^ _wgslsmith_div_i32(~(-u_input.a), -u_input.a));
    let var_4 = !(!(!vec3<bool>(!var_2.x, var_2.x, var_2.x)));
    return Struct_3(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(29633u, 14643u, u_input.b, 0u) & vec4<u32>(var_0, u_input.b, 1u, u_input.b), vec4<u32>(1u, u_input.b, 1u, 18550u) & vec4<u32>(var_0, 44041u, 14665u, var_0))) ^ min(vec4<u32>(abs(4294967295u), ~u_input.b, _wgslsmith_mod_u32(18675u, var_0), firstTrailingBit(3747u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.b, 1u, u_input.b) << (vec4<u32>(32589u, var_0, 65195u, var_0) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 109031u, 18787u, 4294967295u), vec4<u32>(33655u, 0u, var_0, u_input.b), vec4<u32>(var_0, var_0, 0u, 15657u)))), !var_4, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, ~(-2147483647i)) | _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_3, var_3, u_input.a), vec3<i32>(-12152i, 26184i, -2147483647i)), vec3<i32>(u_input.a, u_input.a, 987i), vec3<i32>(-6293i, var_3, var_3)), vec3<i32>(countOneBits(~(-2147483647i)), u_input.a, ~min(1i, var_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-516f, var_1))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, var_1))), vec2<f32>(-597f, -1083f))))), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(u_input.a, var_3)), u_input.a), -3744i));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = _wgslsmith_clamp_vec4_u32(select(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 26162u), vec4<u32>(0u, 59349u, 25979u, var_0.a.x))), abs(abs(var_0.a)), var_0.b.x != true), var_0.a, var_0.a);
    var var_2 = func_2();
    var_2 = Struct_3(var_2.a, !vec3<bool>(_wgslsmith_f_op_f32(sign(var_2.d.x)) > -105f, any(func_2().b), !func_3().x), var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.d.x)) * vec2<f32>(-1496f, _wgslsmith_f_op_f32(step(var_2.d.x, 1377f))))), countOneBits(-var_0.e) & ~(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.e.x, 2147483647i), vec2<i32>(u_input.a, 1i)) | countOneBits(var_0.e)));
    return Struct_1(abs(-_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.a, 82455i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-22419i, -1i, 1i, -47668i), vec4<i32>(var_2.c.x, var_0.e.x, 0i, -33329i), vec4<i32>(-1i, var_2.e.x, 0i, u_input.a)))), var_2.e);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> Struct_5 {
    var var_0 = 0i;
    var var_1 = -1i;
    global1 = array<vec3<u32>, 1>();
    let var_2 = 0u;
    var var_3 = Struct_5(arg_3.b, arg_3, vec3<u32>(arg_2, 0u, ~firstTrailingBit(arg_3.c)), func_2(), vec2<i32>(func_2().e.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-4205i), u_input.a, u_input.a), arg_0)));
    return Struct_5(func_1(), Struct_2(_wgslsmith_mod_i32(arg_1.a.x, _wgslsmith_add_i32(arg_1.a.x, u_input.a)) & 1i, arg_3.b, _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_2, u_input.b) << (arg_2 % 32u), _wgslsmith_add_u32(~41960u, 1u)), Struct_1(vec4<i32>(1i, _wgslsmith_div_i32(5248i, arg_1.a.x), var_3.b.d.a.x, -1i), abs(vec2<i32>(49979i, -1i)))), vec3<u32>(1u, arg_2, 15491u) & var_3.c, var_3.d, _wgslsmith_mod_vec2_i32(var_3.e, vec2<i32>(u_input.a, -(~(-2147483647i)))));
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.d.d.x, arg_0.d.d.x))))) * -1174f), 879f);
    global0 = ~(~arg_0.d.a.x);
    return func_4(-2147483647i, func_1(), arg_0.b.c, arg_0.b).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 1>();
    global0 = select(_wgslsmith_add_u32(41822u, ~firstLeadingBit(u_input.b) & _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 20198u, 10599u, 68623u), vec4<u32>(u_input.b, u_input.b, 0u, 43756u), vec4<u32>(33938u, u_input.b, 4294967295u, 4402u)))), _wgslsmith_clamp_u32(func_5(func_4(~(-6349i), func_1(), ~u_input.b, Struct_2(50437i, Struct_1(vec4<i32>(-1i, u_input.a, u_input.a, 2147483647i), vec2<i32>(0i, u_input.a)), 1u, Struct_1(vec4<i32>(u_input.a, -1i, u_input.a, 1i), vec2<i32>(-12515i, 4210i)))), false), 2142u >> (_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(32046u, u_input.b)) % 32u), ~firstLeadingBit(u_input.b)), countOneBits(u_input.a) == -1i);
    global1 = array<vec3<u32>, 1>();
    let var_0 = Struct_5(func_4(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i)), firstLeadingBit(-1i) << (u_input.b % 32u), func_4(-2147483647i, func_1(), ~u_input.b, Struct_2(u_input.a, Struct_1(vec4<i32>(0i, -19813i, 0i, 8277i), vec2<i32>(-2147483647i, -53712i)), u_input.b, Struct_1(vec4<i32>(u_input.a, 1i, u_input.a, 19234i), vec2<i32>(2147483647i, 1i)))).d.b.x), func_4(0i, Struct_1(reverseBits(vec4<i32>(u_input.a, -14634i, u_input.a, u_input.a)), ~vec2<i32>(-1i, -1i)), 1u, func_4(u_input.a, func_1(), func_2().a.x, Struct_2(u_input.a, Struct_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec2<i32>(-488i, u_input.a)), u_input.b, Struct_1(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec2<i32>(-13410i, u_input.a)))).b).b.d, ~_wgslsmith_clamp_u32(4294967295u, ~5953u, u_input.b), Struct_2(u_input.a, func_1(), 42267u, func_1())).a, Struct_2(u_input.a, func_1(), u_input.b, func_1()), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 1u)), ~vec3<u32>(1u, 0u, u_input.b), ~(~global1[_wgslsmith_index_u32(u_input.b, 1u)])), global1[_wgslsmith_index_u32(~(47230u << (1u % 32u)), 1u)] >> (global1[_wgslsmith_index_u32(countOneBits(~35386u), 1u)] % vec3<u32>(32u))), Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 12519u), vec4<u32>(1u, 4294967295u, u_input.b, 0u)), ~vec4<u32>(54361u, u_input.b, u_input.b, u_input.b)) & ((vec4<u32>(u_input.b, 61246u, u_input.b, 1u) ^ vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b)) << (_wgslsmith_add_vec4_u32(vec4<u32>(14137u, u_input.b, u_input.b, 46161u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), select(!func_4(u_input.a, Struct_1(vec4<i32>(42576i, u_input.a, 2147483647i, 54119i), vec2<i32>(0i, -1i)), 52401u, Struct_2(-8270i, Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec2<i32>(11150i, u_input.a)), u_input.b, Struct_1(vec4<i32>(u_input.a, 1i, 0i, 310i), vec2<i32>(u_input.a, 2147483647i)))).d.b, vec3<bool>(true, true, func_3().x), vec3<bool>(u_input.a > -2147483647i, false, all(vec4<bool>(true, true, false, false)))), func_2().c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1029f) - vec2<f32>(-496f, -1560f)), vec2<f32>(1000f, 2258f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(962f, 933f) + vec2<f32>(-1192f, -1116f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-795f, 1000f) - vec2<f32>(-117f, -831f)))), -vec2<i32>(u_input.a, func_4(u_input.a, Struct_1(vec4<i32>(-33218i, u_input.a, u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)), 4294967295u, Struct_2(u_input.a, Struct_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i), vec2<i32>(u_input.a, -1i)), 23884u, Struct_1(vec4<i32>(49361i, u_input.a, 12332i, u_input.a), vec2<i32>(20743i, u_input.a)))).e.x)), _wgslsmith_sub_vec2_i32(-func_4(_wgslsmith_add_i32(24758i, u_input.a), func_4(u_input.a, Struct_1(vec4<i32>(-18593i, 1i, 6292i, 0i), vec2<i32>(u_input.a, u_input.a)), 0u, Struct_2(u_input.a, Struct_1(vec4<i32>(-7032i, u_input.a, u_input.a, -8466i), vec2<i32>(28347i, -2147483647i)), u_input.b, Struct_1(vec4<i32>(2147483647i, u_input.a, -16774i, -1i), vec2<i32>(-9846i, 2147483647i)))).b.d, u_input.b, func_4(2147483647i, Struct_1(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec2<i32>(-2530i, -1i)), u_input.b, Struct_2(62875i, Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), 0u, Struct_1(vec4<i32>(0i, 2147483647i, 1i, u_input.a), vec2<i32>(70408i, u_input.a)))).b).e, vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(46430i, u_input.a, u_input.a, u_input.a)), ~(~(-31876i)))));
    global1 = array<vec3<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_0.b.c, _wgslsmith_div_u32(reverseBits(0u), firstLeadingBit(u_input.b))), abs(~4294967295u), _wgslsmith_dot_vec3_i32(var_0.b.b.a.yxx, firstTrailingBit(~(~var_0.b.b.a.wyx))), var_0.d.d, _wgslsmith_f_op_f32(171f + var_0.d.d.x));
}

