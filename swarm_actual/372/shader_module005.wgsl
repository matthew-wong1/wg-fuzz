struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(23277u, vec3<u32>(47455u, 1u, 4294967295u), -767f, 1u), Struct_2(35042u, vec3<u32>(42554u, 95997u, 29618u), 556f, 58915u), Struct_2(29399u, vec3<u32>(6335u, 4294967295u, 901u), -836f, 67770u), Struct_2(1u, vec3<u32>(4371u, 49578u, 100549u), 338f, 4294967295u), Struct_2(52407u, vec3<u32>(4294967295u, 44542u, 52539u), -679f, 13009u), Struct_2(37584u, vec3<u32>(40532u, 6899u, 4294967295u), 482f, 0u), Struct_2(42377u, vec3<u32>(40807u, 26281u, 1u), -1981f, 1u), Struct_2(0u, vec3<u32>(1u, 0u, 4294967295u), 901f, 12294u), Struct_2(27095u, vec3<u32>(23902u, 34456u, 6603u), -1081f, 10416u));

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true));

var<private> global2: vec3<u32> = vec3<u32>(56461u, 4294967295u, 23443u);

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    global2 = global3.b;
    let var_0 = select(!(!(_wgslsmith_f_op_f32(abs(global3.c)) <= -2107f)), any(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.x, _wgslsmith_sub_u32(arg_0, 47017u)), 32u)]), true);
    let var_1 = Struct_1(!(true || var_0), _wgslsmith_mult_i32(min(_wgslsmith_add_i32(min(-9541i, 0i), u_input.a.x), u_input.a.x), -60075i), u_input.a, _wgslsmith_div_f32(1841f, _wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-global3.c))));
    let var_2 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(_wgslsmith_sub_u32(~1u, 33849u), arg_0, 0u, abs(~global3.d)), vec4<u32>(global2.x, global3.b.x, arg_0, 82459u >> (arg_0 % 32u)) & _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, global3.a, 0u, 90281u), vec4<u32>(32490u, arg_0, 46141u, arg_0)), min(vec4<u32>(arg_0, global3.a, 42686u, global2.x), vec4<u32>(global3.a, arg_0, arg_0, 17407u))), vec4<bool>(!all(vec4<bool>(false, false, true, var_1.a)), true, var_0, select(all(vec4<bool>(var_0, true, var_1.a, false)), u_input.a.x >= var_1.b, any(vec2<bool>(var_0, true))))), _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 141365u, 23143u), global2.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(26856u, global2.x, global3.b.x), vec3<u32>(global2.x, 13047u, global3.a)) % 32u), ~reverseBits(1u), _wgslsmith_mult_u32(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(global3.b.zz, global3.b.zz))), vec4<u32>(select(526u ^ global3.b.x, ~31016u, any(vec2<bool>(true, var_1.a))), min(arg_0, global3.b.x << (1u % 32u)), arg_0, arg_0)));
    let var_3 = global1[_wgslsmith_index_u32(~(~global3.a), 32u)];
    return (var_2.x & 0u) & (~min(~69357u, 0u | global3.d) >> (~15718u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(max(~0u, global2.x), 32u)];
    global2 = ~vec3<u32>(1u, _wgslsmith_mod_u32(global2.x, 1u | _wgslsmith_add_u32(1u, global2.x)), 1u);
    global2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(global3.b, vec3<u32>(1u, global3.d, 17214u)), _wgslsmith_mod_u32(global3.d, global2.x), firstLeadingBit(global2.x)) >> (_wgslsmith_mod_vec3_u32(global3.b, ~(~global3.b)) % vec3<u32>(32u)), vec3<u32>(func_3(1u), ~global2.x, global3.b.x >> (abs(~global3.a) % 32u)));
    var var_1 = false;
    global1 = array<vec4<bool>, 32>();
    return Struct_1(any(global1[_wgslsmith_index_u32(~(~15918u), 32u)]), arg_0.c.x, vec4<i32>(arg_0.c.x, arg_1, u_input.a.x, -12997i), _wgslsmith_f_op_f32(ceil(-1468f)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1212f, global3.c), vec2<f32>(-148f, 1427f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, 1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) - _wgslsmith_f_op_f32(-1913f - 598f)), _wgslsmith_f_op_f32(trunc(arg_0)))));
    let var_1 = func_2(Struct_1(false, ~(-10352i), min(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), u_input.a)), firstTrailingBit(vec4<i32>(u_input.a.x, -13953i, -5166i, u_input.a.x) >> (vec4<u32>(100954u, 1u, 6327u, global3.a) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.x, -798f, select(true, false, false)))))), u_input.a.x);
    let var_2 = Struct_2(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(92667u, 4294967295u) << (max(29907u, global3.b.x) % 32u), _wgslsmith_div_u32(1u, ~(global2.x & 15935u)), ~(~_wgslsmith_mult_u32(26504u, global3.d))), vec3<u32>(firstTrailingBit(4294967295u), firstTrailingBit(~global3.a), 53254u), _wgslsmith_f_op_f32(abs(-1189f)), global2.x ^ max(global3.d, firstTrailingBit(global3.d)));
    let var_3 = var_1;
    let var_4 = 20536u;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = vec2<bool>(all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(func_1(global3.c)) > _wgslsmith_f_op_f32(max(173f, _wgslsmith_f_op_f32(trunc(-165f)))));
    var_1 = select(select(select(select(vec2<bool>(false, true), !vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false)), !select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x)), select(vec2<bool>(true, var_1.x), !vec2<bool>(true, var_1.x), any(vec3<bool>(var_1.x, var_1.x, var_1.x)))), vec2<bool>(true, true), vec2<bool>(_wgslsmith_div_f32(global3.c, global3.c) > _wgslsmith_f_op_f32(-global3.c), true)), !vec2<bool>(true, var_1.x), select(!vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, !(var_1.x != var_1.x)), false));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2627f, 546f, global3.c))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.c, global3.c, global3.c))))), vec3<f32>(global3.c, global3.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1264f + -1564f), _wgslsmith_f_op_f32(sign(1328f))))), !(!vec3<bool>(select(var_1.x, var_1.x, var_1.x), any(vec3<bool>(var_1.x, true, var_1.x)), true))));
    let var_3 = Struct_2(30046u, vec3<u32>(func_3(_wgslsmith_mod_u32(~global2.x, 38102u)), var_0, _wgslsmith_div_u32(85235u, ~max(global2.x, 4294967295u))), global3.c, 27257u);
    global0 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 1f, firstLeadingBit(~(u_input.a.x >> (1u % 32u))));
}

