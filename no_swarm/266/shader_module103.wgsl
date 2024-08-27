struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(13396u, 0u, 0u, 17774u), Struct_1(29338u, 1i, -1430f), Struct_1(0u, -70506i, -421f), vec4<f32>(-694f, 796f, -1534f, -1572f), vec2<bool>(false, false)), Struct_2(vec4<u32>(1u, 17837u, 21527u, 0u), Struct_1(1u, -17224i, -484f), Struct_1(34662u, 1i, -690f), vec4<f32>(137f, -1519f, -614f, -1714f), vec2<bool>(false, true)), Struct_2(vec4<u32>(14967u, 81163u, 36188u, 49011u), Struct_1(25132u, i32(-2147483648), -1127f), Struct_1(0u, 2147483647i, -182f), vec4<f32>(1397f, -1177f, 1762f, 2284f), vec2<bool>(true, true)), Struct_2(vec4<u32>(27011u, 51297u, 0u, 0u), Struct_1(1u, 93339i, 1000f), Struct_1(37241u, 27672i, -2221f), vec4<f32>(1143f, 1800f, -849f, -551f), vec2<bool>(true, true)));

var<private> global2: f32 = -383f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.e;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1360f, _wgslsmith_f_op_f32(f32(-1f) * -437f)))) + arg_2.c.c));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(arg_2.a.x, arg_2.a.x, arg_2.c.a, arg_2.b.a), arg_2.a, false)), arg_2.a), ~arg_2.b.b, arg_2.b.c);
    global2 = -880f;
    var var_2 = Struct_2(arg_2.a, Struct_1(~(1u << (var_1.a % 32u)) & (~arg_2.a.x << (_wgslsmith_mult_u32(12450u, arg_2.b.a) % 32u)), -33106i, _wgslsmith_f_op_f32(f32(-1f) * -367f)), Struct_1(~_wgslsmith_mult_u32(~arg_2.b.a, _wgslsmith_mod_u32(var_1.a, arg_2.b.a)), arg_2.c.b, _wgslsmith_f_op_f32(floor(var_1.c))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 1000f, -109f, 126f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-383f, 2587f, arg_2.d.x, arg_0.x), arg_2.d))))), select(vec2<bool>(true, true), !arg_2.e, arg_2.e.x));
    return 767f;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    var var_0 = 49743i & _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-2147483647i, 0i, -28900i, 0i)), arg_2);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 1000f, arg_3)), 961f, global1[_wgslsmith_index_u32(firstLeadingBit(arg_0), 4u)])) * -1944f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(arg_3 - -595f)) + arg_3))));
    let var_2 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(1u), 0u, arg_0 ^ arg_0, arg_0) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(43336u, arg_0, arg_0, 16190u), select(vec4<u32>(1u, 1u, 0u, 27503u), vec4<u32>(arg_0, arg_0, arg_0, 1u), vec4<bool>(true, true, true, false))) % vec4<u32>(32u)), vec4<u32>(92550u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 0u, 4294967295u, 0u), vec4<u32>(arg_0, arg_0, 0u, 81618u), vec4<u32>(arg_0, 98791u, arg_0, 26334u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 60833u, 4294967295u, arg_0), vec4<u32>(arg_0, arg_0, 85804u, arg_0))), max(select(0u, arg_0, false), 36888u), 35860u), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 20075u, 4294967295u, 17676u), vec4<u32>(arg_0, 4294967295u, 4294967295u, arg_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_0)))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_0, arg_0), max(49232u, 40718u), arg_0), abs(countOneBits(vec3<u32>(arg_0, arg_0, arg_0)))), -u_input.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_3))))), Struct_1(arg_0, _wgslsmith_mult_i32(arg_2.x >> ((arg_0 << (4294967295u % 32u)) % 32u), _wgslsmith_add_i32(1i, 0i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -572f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(abs(arg_3)), true)), arg_3))), select(vec2<bool>((i32(-1i) * -2147483647i) <= reverseBits(arg_2.x), (1i | arg_1) >= u_input.a.x), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), arg_3 >= arg_3), vec2<bool>(!all(vec2<bool>(false, false)), !select(false, false, true))));
    var_0 = 2147483647i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_2.d.zyy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-942f, -1594f, -1395f) * vec3<f32>(arg_3, var_2.c.c, -257f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -750f, -540f) * vec3<f32>(873f, arg_3, var_2.c.c)))), var_2.d.wyy)));
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 4>();
    var var_0 = arg_2.b.c;
    var_0 = 1289f;
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1463f))) * arg_1.c.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + -142f), _wgslsmith_f_op_f32(exp2(arg_2.b.c)))));
    let var_1 = vec4<u32>(arg_2.c.a, 4294967295u, func_2(13746u, ~(~(~arg_2.b.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(arg_1.c.b), -u_input.a.x, countOneBits(55i), reverseBits(7100i)), ~vec4<i32>(arg_2.c.b, 6281i, arg_1.c.b, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.b, 1i, arg_1.c.b, -1i), -vec4<i32>(arg_2.b.b, -47538i, arg_2.c.b, 0i))), 839f), arg_2.b.a);
    return arg_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = func_1(~(~arg_0.a), global1[_wgslsmith_index_u32(~1u, 4u)], global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0.a, ~(1u >> (arg_1.a.x % 32u))), 4u)]);
    let var_1 = arg_1.d;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(func_3(arg_1.d.wzw, _wgslsmith_div_f32(arg_0.c, arg_1.d.x), global1[_wgslsmith_index_u32(~var_0.a, 4u)]))))), 1f);
    let var_2 = Struct_2(countOneBits(abs(abs(~vec4<u32>(var_0.a, 72607u, var_0.a, var_0.a)))), arg_1.c, arg_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.d), _wgslsmith_f_op_vec4_f32(sign(arg_1.d)))))), select(!select(!arg_1.e, select(vec2<bool>(true, arg_1.e.x), vec2<bool>(arg_1.e.x, arg_1.e.x), vec2<bool>(true, false)), select(arg_1.e, arg_1.e, arg_1.e.x)), select(vec2<bool>(!arg_1.e.x, all(vec4<bool>(arg_1.e.x, true, arg_1.e.x, true))), arg_1.e, vec2<bool>(arg_1.e.x, false)), !(~arg_0.a <= select(4294967295u, 0u, arg_1.e.x))));
    let var_3 = 52201u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~select(_wgslsmith_div_i32(1i, u_input.a.x), 1720i, true));
    let var_0 = vec3<bool>(true, u_input.a.x != u_input.a.x, all(vec3<bool>(true, true, true)) & !func_4(func_1(0u, global1[_wgslsmith_index_u32(69643u, 4u)], Struct_2(vec4<u32>(1u, 30267u, 0u, 1121u), Struct_1(8286u, u_input.a.x, -1006f), Struct_1(30283u, u_input.a.x, 1112f), vec4<f32>(1000f, -502f, 229f, 137f), vec2<bool>(true, true))), global1[_wgslsmith_index_u32(1u, 4u)]));
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    let var_1 = -18081i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz, vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 12025i | -u_input.a.x, 2147483647i, -var_1));
}

