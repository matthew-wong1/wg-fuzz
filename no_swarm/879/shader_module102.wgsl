struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(false, false, 11897i, true), Struct_3(false, true, 2147483647i, false), Struct_3(true, false, 16490i, true), Struct_3(true, true, i32(-2147483648), true), Struct_3(true, true, 25431i, false), Struct_3(true, true, 2585i, true), Struct_3(true, true, -11716i, true), Struct_3(true, false, 30131i, true), Struct_3(false, true, 2147483647i, false), Struct_3(true, true, 2147483647i, true), Struct_3(true, true, -35866i, false), Struct_3(false, true, 2147483647i, false), Struct_3(false, false, 0i, false), Struct_3(false, true, 50158i, true), Struct_3(true, false, 2147483647i, false), Struct_3(true, true, i32(-2147483648), true), Struct_3(false, false, 1i, false), Struct_3(false, false, i32(-2147483648), false), Struct_3(false, true, -6309i, true), Struct_3(true, true, -19349i, true), Struct_3(false, true, 15307i, true), Struct_3(true, true, 2147483647i, true), Struct_3(false, false, 2147483647i, false), Struct_3(false, false, 1i, true), Struct_3(false, true, 8555i, true), Struct_3(true, false, 7711i, true), Struct_3(true, true, -1i, true), Struct_3(false, false, 0i, true), Struct_3(false, false, 0i, true), Struct_3(false, false, 1i, false));

var<private> global1: array<Struct_3, 27>;

var<private> global2: Struct_4 = Struct_4(-1i, vec2<u32>(1u, 1u), vec2<i32>(-1i, 0i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    global1 = array<Struct_3, 27>();
    let var_0 = global1[_wgslsmith_index_u32(arg_3.x, 27u)];
    global1 = array<Struct_3, 27>();
    let var_1 = Struct_2(arg_2.b.x, vec3<i32>(_wgslsmith_div_i32(~arg_1.x, (i32(-1i) * -1i) | (-1i ^ global2.c.x)), firstTrailingBit(_wgslsmith_add_i32(-48265i, global2.c.x)) & (_wgslsmith_clamp_i32(arg_2.e.x, arg_2.d, 1i) & -9634i), var_0.c), ~(vec3<i32>(-1i) * -vec3<i32>(-1685i, arg_2.e.x, arg_1.x)));
    var var_2 = arg_2;
    return vec2<bool>(var_2.c, (any(arg_0.wyz) || var_0.b) & true);
}

fn func_2(arg_0: i32, arg_1: f32) -> vec2<u32> {
    global1 = array<Struct_3, 27>();
    let var_0 = !select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_3(vec4<bool>(false, true, false, true), vec2<i32>(u_input.b, -4344i), Struct_1(u_input.c, vec3<f32>(218f, arg_1, arg_1), false, 0i, vec3<i32>(global2.c.x, 15333i, -51556i)), vec4<u32>(1u, 4294967295u, 4294967295u, 1u))), vec2<bool>(4294967295u >= u_input.a, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_3(vec4<bool>(false, true, false, false), u_input.c, Struct_1(global2.c, vec3<f32>(-496f, arg_1, -1958f), true, global2.c.x, vec3<i32>(0i, -1i, 2147483647i)), vec4<u32>(1u, u_input.a, 0u, global2.b.x)).x, true)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))) || true);
    let var_1 = !func_3(vec4<bool>(!var_0.x, all(var_0), !(var_0.x && true), var_0.x), _wgslsmith_div_vec2_i32(~vec2<i32>(0i, -23562i), abs(_wgslsmith_mult_vec2_i32(global2.c, vec2<i32>(11578i, u_input.b)))), Struct_1(global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(336f, arg_1, 790f), vec3<f32>(arg_1, arg_1, 927f)))), true, global2.a, _wgslsmith_mult_vec3_i32(vec3<i32>(global2.a, global2.c.x, arg_0), vec3<i32>(1454i, -36104i, global2.c.x)) & -vec3<i32>(-32863i, u_input.c.x, -1i)), select(~vec4<u32>(4294967295u, 16392u, u_input.a, global2.b.x), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 69363u, u_input.a, global2.b.x), ~vec4<u32>(u_input.a, 0u, u_input.a, 33085u)), true));
    let var_2 = ~global2.c;
    global1 = array<Struct_3, 27>();
    return select(vec2<u32>(29774u, global2.b.x), ~((~global2.b & ~global2.b) << (vec2<u32>(1u, ~u_input.a) % vec2<u32>(32u))), var_1);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, -arg_1.x, u_input.c.x), _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.c.x, arg_1.x, 1427i, -74995i) & vec4<i32>(2147483647i, -40899i, -69474i, -14905i), -vec4<i32>(-20025i, -29338i, global2.a, u_input.c.x))), _wgslsmith_mult_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, global2.a, arg_3.c.x), vec4<i32>(-13118i, 6419i, u_input.c.x, 2147483647i)), vec4<i32>(-3319i, 0i, global2.c.x, 0i), !vec4<bool>(arg_0, false, false, false)), ~(~vec4<i32>(global2.c.x, -2147483647i, 32522i, global2.c.x)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1600f, -1939f))), -1085f, false)), ~vec3<i32>(_wgslsmith_mult_i32(~arg_1.x, 56192i), -u_input.b, arg_1.x), _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, var_0.x, global2.a)), abs(vec3<i32>(0i, 0i, -2147483647i)))), arg_1));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(21898i, var_0.x, arg_3.a, 0i) | vec4<i32>(1i, 2147483647i, -2147483647i, var_1.c.x)), -countOneBits(vec4<i32>(var_0.x, 21012i, -1i, u_input.c.x))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(56492u, arg_3.b.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 58802u) >> (vec3<u32>(4294967295u, 4294967295u, global2.b.x) % vec3<u32>(32u)), ~vec3<u32>(0u, 27747u, 34958u))) % 32u), var_1.c.x, max(select(firstLeadingBit(countOneBits(0i)), _wgslsmith_add_i32(i32(-1i) * -1i, 14993i), false), ~firstLeadingBit(0i) & (i32(-1i) * -u_input.c.x)), -var_0.x);
    let var_3 = Struct_3(true, arg_0, ~max(i32(-1i) * -arg_3.c.x, -(~global2.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-627f)))) != _wgslsmith_f_op_f32(f32(-1f) * -2585f));
    var var_4 = 1i;
    return vec2<i32>(_wgslsmith_add_i32(global2.a >> (1u % 32u), 1i), (i32(-1i) * -_wgslsmith_clamp_i32(0i, u_input.b, -1i)) >> (9170u % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: i32) -> Struct_4 {
    global0 = array<Struct_3, 30>();
    var var_0 = Struct_4(firstTrailingBit(-5002i), vec2<u32>(global2.b.x, ~((1u & u_input.a) << (firstLeadingBit(28927u) % 32u))), abs(func_4(false, vec3<i32>(max(arg_1, -48953i), i32(-1i) * -472i, arg_0.c), global2.b.x, Struct_4(global2.c.x, func_2(arg_2, -165f), firstLeadingBit(u_input.c)))));
    return Struct_4(abs(_wgslsmith_sub_i32(-1i, 1i)), func_2((arg_1 ^ arg_0.c) << (countOneBits(max(61448u, var_0.b.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1053f)))))), -_wgslsmith_mod_vec2_i32(global2.c & _wgslsmith_mult_vec2_i32(var_0.c, vec2<i32>(arg_2, 0i)), max(global2.c & var_0.c, vec2<i32>(arg_0.c, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(565f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f * 1225f) * _wgslsmith_div_f32(1012f, -784f))) * 1f), vec3<i32>(global2.a, global2.c.x, u_input.b), _wgslsmith_add_vec3_i32(~vec3<i32>(-1i, -global2.c.x, global2.c.x), vec3<i32>(1i, u_input.c.x, 2147483647i)));
    global1 = array<Struct_3, 27>();
    global2 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 27u)], _wgslsmith_add_i32(-((-31556i << (global2.b.x % 32u)) & var_0.b.x), select(_wgslsmith_add_i32(global2.a, -53595i), ~0i, false)), (-42466i >> (select(u_input.a ^ 1u, ~u_input.a, false) % 32u)) & _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_div_i32(~var_0.c.x, u_input.b & -49541i), ~firstLeadingBit(var_0.b.x)));
    global2 = func_1(Struct_3(true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), false)), ~min(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, global2.c.x, -2147483647i, -32626i), vec4<i32>(global2.c.x, -2147483647i, -1i, var_0.b.x))), var_0.a <= _wgslsmith_f_op_f32(round(-102f))), ~(i32(-1i) * -33796i), ~_wgslsmith_mult_i32(countOneBits(2147483647i), -global2.c.x));
    let var_1 = Struct_2(var_0.a, var_0.c, var_0.b);
    let var_2 = !(!vec4<bool>(!(var_1.c.x >= var_1.b.x), true, true || (var_0.b.x == 58346i), false));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~global2.b >> (global2.b % vec2<u32>(32u)))), var_1.a, _wgslsmith_f_op_f32(select(-401f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-157f - 513f)) + var_1.a), any(!var_2))), ~abs(~(vec3<u32>(13310u, 0u, 4294967295u) & vec3<u32>(u_input.a, global2.b.x, 1u))), countOneBits(-(~vec3<i32>(var_0.c.x, u_input.b, u_input.c.x))));
}

