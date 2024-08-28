struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: f32;

var<private> global3: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), Struct_1(vec4<i32>(-46407i, 2147483647i, -1i, -22210i), vec4<u32>(0u, 26658u, 30277u, 40618u), vec2<u32>(35402u, 10851u))), Struct_3(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), Struct_1(vec4<i32>(18052i, -9315i, 1236i, i32(-2147483648)), vec4<u32>(2487u, 43918u, 6638u, 4294967295u), vec2<u32>(47085u, 4294967295u))), Struct_3(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), Struct_1(vec4<i32>(i32(-2147483648), -1i, 4862i, -5108i), vec4<u32>(4480u, 1u, 64975u, 47076u), vec2<u32>(44732u, 0u))), Struct_3(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), Struct_1(vec4<i32>(1i, -4678i, 39864i, -1i), vec4<u32>(29018u, 17239u, 4294967295u, 4294967295u), vec2<u32>(0u, 0u))), Struct_3(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), Struct_1(vec4<i32>(-1i, -1i, -11206i, 2147483647i), vec4<u32>(4294967295u, 1u, 4294967295u, 40167u), vec2<u32>(35483u, 51941u))), Struct_3(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), Struct_1(vec4<i32>(-1i, 1i, -1985i, 0i), vec4<u32>(4294967295u, 78519u, 4294967295u, 36501u), vec2<u32>(36782u, 30859u))), Struct_3(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), Struct_1(vec4<i32>(-9229i, 2147483647i, -13376i, i32(-2147483648)), vec4<u32>(65547u, 21946u, 1u, 1u), vec2<u32>(56885u, 4294967295u))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -843f))), -287f), _wgslsmith_div_f32(285f, _wgslsmith_f_op_f32(1f + 110f)));
    let var_1 = vec3<bool>(true, true, arg_0 > u_input.a);
    let var_2 = _wgslsmith_f_op_f32(trunc(1f));
    var var_3 = Struct_2(!select(vec4<bool>(select(var_1.x, false, true), all(vec3<bool>(false, var_1.x, false)), true, var_1.x), !vec4<bool>(false, true, var_1.x, true), !vec4<bool>(var_1.x, false, var_1.x, false)));
    var var_4 = Struct_1(~vec4<i32>(0i, firstTrailingBit(arg_1), u_input.c.x, ~0i ^ _wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(arg_1, u_input.c.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, arg_0, ~0u, u_input.a << (~arg_0 % 32u)), u_input.b, vec4<u32>(firstLeadingBit(arg_0), 0u, _wgslsmith_mult_u32(1u, arg_0), _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.a, 6063u))) | firstLeadingBit(u_input.b ^ u_input.b)), _wgslsmith_add_vec2_u32(u_input.b.zz, countOneBits(abs(~vec2<u32>(arg_0, 0u)))));
    return var_2 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = Struct_3(select(vec4<bool>(arg_0.a.x, arg_1, false, true), !vec4<bool>(true, arg_1, u_input.b.x == u_input.b.x, all(arg_0.a.wx)), select(select(!arg_0.a, arg_0.a, func_3(97873u, 1i)), select(!arg_0.a, vec4<bool>(arg_1, arg_1, arg_0.a.x, arg_1), true), arg_0.a.x)), !arg_0.a, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]);
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(min(vec4<i32>(var_0.c.a.x, var_0.c.a.x, u_input.d.x, 7736i) & u_input.d, vec4<i32>(var_0.c.a.x, var_0.c.a.x, 0i, _wgslsmith_div_i32(u_input.d.x, var_0.c.a.x))), ~firstTrailingBit(-vec4<i32>(var_0.c.a.x, 2147483647i, 2147483647i, -16836i))), var_0.c.b, u_input.b.zx);
    global2 = _wgslsmith_f_op_f32(-1254f * -298f);
    let var_2 = ~(var_1.b.x >> (var_0.c.b.x % 32u));
    global1 = array<Struct_1, 4>();
    return _wgslsmith_div_u32(4294967295u, 4294967295u);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-1351f * -2517f);
    global2 = var_0;
    global1 = array<Struct_1, 4>();
    let var_1 = Struct_2(select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false)), vec4<bool>(-1i < (2147483647i ^ u_input.c.x), true, true, _wgslsmith_f_op_f32(var_0 * var_0) == -2312f), any(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true))));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, reverseBits(vec4<u32>(131454u, 5067u, 4294967295u, 4294967295u))), vec4<u32>(max(0u, _wgslsmith_mult_u32(20538u, u_input.a)), func_2(Struct_2(var_1.a), false), firstTrailingBit(select(41555u, u_input.a, true)), 4294967295u)), reverseBits(u_input.b));
    return Struct_3(var_1.a, vec4<bool>(u_input.d.x <= _wgslsmith_mod_i32(1i, -12088i), !var_1.a.x, false, any(var_1.a)), Struct_1(firstLeadingBit(vec4<i32>(u_input.c.x, 0i, -14640i, -1i) | ~global0[_wgslsmith_index_u32(var_2.x, 15u)]), u_input.b, ~var_2.wy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f), -627f))));
}

