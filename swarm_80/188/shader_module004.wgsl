struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-25207i, 2147483647i, -461f), Struct_1(i32(-2147483648), 0i, -1000f));

var<private> global1: bool;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: array<Struct_2, 8>;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(1i, -5940i, -240f), Struct_1(74230i, -19020i, 1313f), Struct_1(1i, 15900i, 156f), Struct_1(2147483647i, 2147483647i, -772f), Struct_1(6850i, -27321i, 1367f), Struct_1(2147483647i, -1i, -402f), Struct_1(2147483647i, -1i, 1361f), Struct_1(-16190i, 1i, -155f), Struct_1(-454i, 0i, -1000f), Struct_1(-1i, 2147483647i, 804f), Struct_1(0i, 31671i, -1847f), Struct_1(0i, 9781i, 1290f), Struct_1(61587i, -31382i, 149f), Struct_1(2147483647i, 11063i, 1367f), Struct_1(32295i, -44089i, 112f), Struct_1(-19963i, -38747i, 261f), Struct_1(-1i, -1i, 1461f), Struct_1(-19233i, 2799i, 212f), Struct_1(76591i, -1i, 1258f), Struct_1(0i, -1353i, 639f), Struct_1(-41871i, 2147483647i, 1000f), Struct_1(-34544i, 30384i, -723f), Struct_1(2147483647i, 16288i, 978f), Struct_1(i32(-2147483648), 0i, 1000f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    global4 = array<Struct_1, 24>();
    var var_0 = global3[_wgslsmith_index_u32(0u, 8u)];
    var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.c, var_0.e.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1385f + var_0.b.c) * var_0.b.c), -1290f))), var_0.e, vec2<bool>(!(global2.x & true), (_wgslsmith_add_u32(74086u, 563u) >= _wgslsmith_div_u32(u_input.a, 1u)) || global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-166f))), Struct_1(_wgslsmith_clamp_i32(-arg_0.x, arg_0.x, 45907i), -countOneBits(~(-2147483647i)), var_0.e.c));
    let var_1 = Struct_1(var_0.e.a, -firstLeadingBit(-2147483647i), var_0.a);
    var var_2 = global3[_wgslsmith_index_u32(abs(~4294967295u), 8u)];
    return select(_wgslsmith_div_vec3_u32(vec3<u32>(max(49620u, ~u_input.a), ~_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a), vec3<u32>(u_input.a, u_input.a, _wgslsmith_mult_u32(~1246u, 0u))), vec3<u32>(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(67166u, 48863u, u_input.a, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(5999u, 4294967295u, u_input.b, u_input.a), vec4<u32>(20435u, u_input.b, 4294967295u, 1u))), firstTrailingBit(_wgslsmith_sub_u32(u_input.b, 2935u) & u_input.a), min(_wgslsmith_clamp_u32(max(0u, 61611u), u_input.b, max(1u, u_input.b)), abs(select(1u, u_input.a, true)))), global2.ywx);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec3_u32(select(_wgslsmith_mod_vec3_u32(~max(vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(u_input.a, u_input.b, 1u)), vec3<u32>(u_input.a, u_input.a, 13438u) & ~vec3<u32>(4294967295u, 0u, u_input.b)), ~(~vec3<u32>(u_input.b, 1u, u_input.b)), global2.x), max(~vec3<u32>(u_input.b, 1u, 64146u), max(~func_3(vec4<i32>(arg_1.x, -56076i, -1i, arg_1.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(u_input.a, u_input.b, u_input.b)))));
    let var_1 = !select(vec4<bool>(global2.x, true, true, true), select(vec4<bool>(!global2.x, true, true, false), select(!vec4<bool>(false, global2.x, global2.x, global2.x), !vec4<bool>(false, global2.x, true, false), !vec4<bool>(false, true, global2.x, global2.x)), select(!vec4<bool>(global2.x, true, true, false), select(vec4<bool>(false, false, global2.x, false), vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(true, false, global2.x, global2.x)), all(global2.wyz))), !vec4<bool>(false, true, global2.x, all(vec2<bool>(global2.x, global2.x))));
    var var_2 = Struct_1(arg_1.x, u_input.c, 1000f);
    global2 = !vec4<bool>(global2.x, true, any(!vec4<bool>(var_1.x, var_1.x, false, global2.x)), global2.x);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(max(vec2<u32>(u_input.b, 16299u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 18103u), var_0.yx, var_0.xz)), var_0.xx, !var_1.wz), ~vec2<u32>(53049u, u_input.a)), 8u)];
    return ~vec3<u32>(u_input.b, _wgslsmith_mult_u32(firstLeadingBit(abs(68496u)), 12825u), 4294967295u);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.c;
    var var_1 = global3[_wgslsmith_index_u32(~(~min(_wgslsmith_sub_u32(4294967295u, 65563u), ~(arg_0 | 35447u))), 8u)];
    var var_2 = ~select(~arg_2, _wgslsmith_mod_vec2_u32(~min(arg_2, vec2<u32>(17582u, 27418u)), _wgslsmith_sub_vec2_u32(arg_2, vec2<u32>(78143u, 120315u)) & vec2<u32>(50419u, 18658u)), true);
    var var_3 = Struct_1(-1i >> (_wgslsmith_clamp_u32(33660u, ~min(u_input.a, arg_2.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, 26848u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 22590u), arg_2))) % 32u), arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1417f)) * 749f)));
    var var_4 = Struct_1(~53527i, ~1i, _wgslsmith_div_f32(var_3.c, 249f));
    return _wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(var_3.c + 1080f));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>(all(!select(select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(true, false, false, global2.x), true), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(false, true, global2.x, true))), global2.x);
    var var_1 = _wgslsmith_f_op_f32(func_4(u_input.b, _wgslsmith_add_vec3_u32(func_2(Struct_1(1i, ~u_input.c, _wgslsmith_f_op_f32(floor(-268f))), vec2<i32>(_wgslsmith_div_i32(-6888i, -17553i), 1i), countOneBits(vec2<i32>(61112i, u_input.c) & vec2<i32>(2147483647i, 1717i))), vec3<u32>(~(~u_input.b), 4294967295u, _wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(u_input.a, 6410u)))), ~select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 0u)), vec2<u32>(u_input.a, u_input.b), true) ^ ~func_2(Struct_1(u_input.c, u_input.c, -1025f), vec2<i32>(u_input.c, -2147483647i), ~vec2<i32>(u_input.c, 2147483647i)).xy, Struct_1(-19659i, ~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-888f * 1168f), -713f) * -612f))));
    let var_2 = ~(~(~(~vec3<u32>(29372u, 1u, u_input.a) << (_wgslsmith_mod_vec3_u32(vec3<u32>(69792u, u_input.b, u_input.b), vec3<u32>(35931u, u_input.b, u_input.a)) % vec3<u32>(32u)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-229f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1747f - -298f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1144f, 685f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_3 = 1u;
    return Struct_1(-9234i, ~u_input.c | -89589i, _wgslsmith_f_op_f32(-423f + 592f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-588f, -1763f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1093f, 1988f), vec2<f32>(1864f, -290f), global2.xy)))) + vec2<f32>(-763f, 1477f))));
    var var_1 = var_0.x;
    var var_2 = var_0.x;
    let var_3 = u_input.b >> (50041u % 32u);
    var var_4 = vec2<f32>(var_0.x, var_0.x);
    global1 = global2.x && select(true, !global2.x, !(!select(global2.x, global2.x, true)));
    let var_5 = ~(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 54367u, u_input.b, var_3), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3, var_3, u_input.b, 37019u), vec4<u32>(u_input.a, 1u, var_3, 13152u)), ~vec4<u32>(4294967295u, 20169u, 12016u, u_input.a))) ^ ~vec4<u32>(0u, _wgslsmith_add_u32(u_input.b, 1u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3, 23100u, var_3), vec4<u32>(40557u, u_input.b, u_input.b, 35658u))));
    var var_6 = vec2<u32>(var_5.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(countOneBits(34470u), u_input.b, ~var_3), ~u_input.a) & ~_wgslsmith_mult_u32(~var_3, u_input.b));
    let var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(19276i, 0i, u_input.c), vec3<i32>(var_7.a, u_input.c, var_7.a))), u_input.c, u_input.c), _wgslsmith_div_i32(~u_input.c, countOneBits(-46086i)) << ((0u | firstTrailingBit(var_5.x)) % 32u)), firstLeadingBit(reverseBits(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.c, 1i, 1i)), ~vec3<i32>(var_7.b, u_input.c, -5276i)))), ~(-(~func_1().b)), _wgslsmith_mod_i32(u_input.c, 72055i));
}

