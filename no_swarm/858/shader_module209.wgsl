struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    global1 = arg_0;
    global1 = arg_0;
    global0 = array<Struct_1, 12>();
    let var_0 = vec4<u32>(_wgslsmith_div_u32(arg_0.x, 7135u) & ((~global1.x | global1.x) << (abs(~32056u) % 32u)), global1.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(1u, 1u)), ~arg_0.x), abs(_wgslsmith_div_u32(~arg_0.x >> (~30727u % 32u), abs(23714u))));
    let var_1 = select(arg_1.zx, select(vec2<bool>(false, -1147i <= (u_input.c.x | 42200i)), !vec2<bool>(false, false != arg_1.x), arg_1.x), select(arg_1.wy, select(!(!vec2<bool>(arg_1.x, arg_1.x)), vec2<bool>(!arg_1.x, false), true), vec2<bool>(true, arg_1.x)));
    return 10554u;
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(93848u | _wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(4294967295u, 0u)), u_input.d, 4077u), 12u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)), -526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1402f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-468f, -1000f)), 1161f, -1841f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2355f, -1346f, 196f))), var_0.a)))));
    global1 = vec4<u32>(max(global1.x, ~(~4294967295u)) >> (global1.x % 32u), countOneBits(~global1.x & _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 27868u), vec2<u32>(48739u, 1u))), abs(1u << (_wgslsmith_clamp_u32(49294u, u_input.a.x, global1.x) % 32u)), u_input.a.x);
    global0 = array<Struct_1, 12>();
    let var_2 = vec3<u32>(11810u, u_input.a.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.a.x, ~0u), 1u) ^ 0u);
    return -1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_1((true & (_wgslsmith_dot_vec2_u32(global1.zw, vec2<u32>(global1.x, 19891u)) <= global1.x)) && any(!vec4<bool>(arg_2.x, arg_2.x, true, true)));
    var var_1 = select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(arg_1.zx, arg_0), vec2<i32>(arg_0.x, u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(vec4<bool>(false, var_0.a, false, arg_2.x)), _wgslsmith_add_i32(1i, ~2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, arg_0.x, -39984i), vec3<i32>(arg_1.x, -2147483647i, u_input.c.x))), vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(9828i, u_input.c.x))), u_input.c.x, -(~arg_0.x))), select(true, true, !(var_0.a || false)) & true);
    let var_2 = 692f;
    var var_3 = Struct_1(arg_2.x);
    global1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, min(4294967295u, ~30431u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), firstLeadingBit(23496u)), vec3<u32>(u_input.d | u_input.a.x, 1u, _wgslsmith_div_u32(global1.x, global1.x)))), _wgslsmith_add_u32(u_input.d, 29604u ^ u_input.a.x) & 1u, _wgslsmith_add_u32(select(4294967295u, global1.x, false), 8705u), ~func_1((vec4<u32>(1u, 49972u, 4294967295u, 4078u) & vec4<u32>(0u, 38276u, global1.x, 62516u)) >> (select(vec4<u32>(u_input.d, global1.x, u_input.d, global1.x), vec4<u32>(u_input.a.x, global1.x, 14164u, global1.x), var_0.a) % vec4<u32>(32u)), select(vec4<bool>(true, false, var_0.a, true), select(vec4<bool>(var_0.a, true, arg_2.x, false), vec4<bool>(true, arg_2.x, arg_2.x, var_0.a), var_3.a), false & arg_2.x), _wgslsmith_clamp_i32(1i, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 44613i, 2147483647i), arg_1))));
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, ~(~u_input.a.x), 1u, global1.x), _wgslsmith_clamp_vec4_u32(select(firstLeadingBit(vec4<u32>(28685u, 36712u, u_input.d, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, global1.x), vec4<u32>(global1.x, 17200u, 4294967295u, global1.x)), any(vec3<bool>(arg_2.x, arg_2.x, true))) & (~vec4<u32>(22495u, global1.x, u_input.d, global1.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(3090u, global1.x, u_input.a.x, global1.x), vec4<u32>(0u, u_input.a.x, u_input.d, u_input.a.x))), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(25316u, global1.x, 4294967295u, 1u), vec4<u32>(87542u, u_input.d, 0u, 1u)), vec4<u32>(1u, u_input.d, 45998u, u_input.a.x)), abs(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.x, 60467u, 44398u), vec4<u32>(0u, 1u, global1.x, u_input.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1466f;
    let var_1 = Struct_1(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true)))));
    var var_2 = global1.yzz;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-525f, _wgslsmith_f_op_f32(f32(-1f) * -2693f))));
    global1 = ~vec4<u32>(func_1(vec4<u32>(15748u, u_input.a.x ^ 0u, select(0u, global1.x, true), 84860u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.a, false, true), select(vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(true, true, var_1.a, var_1.a), var_1.a)), u_input.c.x), global1.x, _wgslsmith_div_u32(~global1.x, 34841u), 1u);
    var var_3 = var_1;
    global1 = _wgslsmith_div_vec4_u32(vec4<u32>(36392u, _wgslsmith_dot_vec4_u32((vec4<u32>(5644u, 49088u, u_input.a.x, 1u) >> (vec4<u32>(4294967295u, u_input.d, 0u, 0u) % vec4<u32>(32u))) << (func_2(u_input.c, vec3<i32>(u_input.c.x, u_input.b, u_input.c.x), vec2<bool>(false, false)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 50624u, var_2.x), vec4<u32>(u_input.a.x, var_2.x, 0u, 24469u)) & (vec4<u32>(0u, 0u, u_input.d, 0u) << (vec4<u32>(13686u, global1.x, var_2.x, global1.x) % vec4<u32>(32u)))), 20807u, select(~global1.x, min(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(1u, global1.x))), var_3.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(u_input.d), 4294967295u, _wgslsmith_add_u32(22576u, _wgslsmith_mod_u32(u_input.a.x, var_2.x)), u_input.d), max(~vec4<u32>(1u, u_input.d, global1.x, u_input.a.x) | firstLeadingBit(vec4<u32>(44330u, 59919u, 6771u, 17213u)), ~abs(vec4<u32>(global1.x, u_input.a.x, 43140u, 4294967295u)))));
    var var_4 = 1026f;
    var var_5 = _wgslsmith_mod_i32(2147483647i, ~_wgslsmith_div_i32(-(~u_input.b), firstLeadingBit(-53766i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mult_vec4_u32(countOneBits(~(~vec4<u32>(global1.x, global1.x, var_2.x, 0u))), vec4<u32>(~_wgslsmith_mod_u32(global1.x, 19823u), ~var_2.x, ~48770u, max(_wgslsmith_mod_u32(52413u, global1.x), u_input.a.x >> (u_input.d % 32u)))), vec4<i32>(41832i, 0i, 14676i, u_input.b) | vec4<i32>(u_input.b, -select(u_input.c.x, u_input.b, var_1.a), u_input.b, 2147483647i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-791f, -139f)), -921f, _wgslsmith_f_op_f32(2123f * 910f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1105f, -615f, 885f), vec3<f32>(-2392f, -2319f, -249f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1459f, -105f, -405f) - vec3<f32>(1196f, 294f, -910f)))));
}

