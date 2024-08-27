struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(22259u, 1567f), Struct_1(0u, 773f), Struct_1(11503u, -959f), 4294967295u), Struct_2(Struct_1(35204u, 641f), Struct_1(2343u, 1296f), Struct_1(0u, 373f), 4294967295u), Struct_2(Struct_1(4294967295u, -887f), Struct_1(4294967295u, 636f), Struct_1(1u, 180f), 32706u), Struct_2(Struct_1(84303u, 1428f), Struct_1(4294967295u, -758f), Struct_1(35816u, -1270f), 4294967295u), Struct_2(Struct_1(1u, 1000f), Struct_1(4294967295u, -1489f), Struct_1(18300u, -1326f), 58727u), Struct_2(Struct_1(1u, 205f), Struct_1(1810u, 112f), Struct_1(1u, 1724f), 0u), Struct_2(Struct_1(0u, -1995f), Struct_1(1u, -196f), Struct_1(0u, -1426f), 4162u), Struct_2(Struct_1(4294967295u, 115f), Struct_1(0u, 842f), Struct_1(94949u, 1282f), 35032u), Struct_2(Struct_1(10445u, 1050f), Struct_1(34777u, -102f), Struct_1(0u, -1433f), 99636u), Struct_2(Struct_1(15924u, 234f), Struct_1(0u, 947f), Struct_1(9018u, -140f), 1u), Struct_2(Struct_1(25494u, -825f), Struct_1(4294967295u, 1000f), Struct_1(4294967295u, -678f), 181u), Struct_2(Struct_1(19175u, -1000f), Struct_1(4294967295u, 1203f), Struct_1(34073u, -1269f), 0u));

var<private> global1: array<Struct_4, 4>;

var<private> global2: i32;

var<private> global3: vec4<i32>;

var<private> global4: array<vec3<i32>, 9>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<u32> {
    global4 = array<vec3<i32>, 9>();
    var var_0 = vec4<bool>(true, true, true, !(_wgslsmith_div_u32(arg_0.a >> (arg_2.b.d % 32u), ~10421u) < ~arg_2.b.d));
    return _wgslsmith_mod_vec3_u32(~(~select(vec3<u32>(10173u, arg_2.b.d, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.b.c.a, 60377u, 4294967295u), vec3<u32>(arg_2.b.d, arg_2.e.c.a, arg_0.a)), arg_2.a)), _wgslsmith_sub_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(54383u, 4294967295u, arg_0.a), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.e.c.a, arg_2.e.c.a, arg_0.a), vec3<u32>(70646u, arg_2.e.a.a, 19657u))), vec3<u32>(arg_2.d.d, ~arg_0.a, ~arg_0.a)), ~select(vec3<u32>(arg_2.e.b.a, arg_2.d.d, 29444u) | vec3<u32>(arg_0.a, arg_0.a, 65060u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, arg_2.e.c.a), vec3<u32>(arg_0.a, arg_2.d.c.a, arg_0.a)), select(var_0.yyy, vec3<bool>(false, arg_2.a.x, arg_2.a.x), arg_2.a))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_3(Struct_1(~select(1u, 0u, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f * -1059f))), !arg_0, Struct_3(!(!vec3<bool>(false, arg_0.x, true)), Struct_2(Struct_1(1u, 391f), Struct_1(4294967295u, 663f), Struct_1(1607u, 901f), 1u), ~_wgslsmith_div_i32(global3.x, u_input.b), global0[_wgslsmith_index_u32(~(~912u), 12u)], global0[_wgslsmith_index_u32(5545u & _wgslsmith_dot_vec2_u32(vec2<u32>(93193u, 69043u), vec2<u32>(21108u, 13034u)), 12u)])) & _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(63165u, 13884u), _wgslsmith_add_u32(1u, 0u), 0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 2640u, 50317u), vec3<u32>(27397u, 4294967295u, 1u), true), vec3<u32>(80260u, 1u, 4294967295u))));
    global3 = ~abs(-vec4<i32>(2147483647i, global3.x, u_input.b, 2147483647i) & select(vec4<i32>(global3.x, 1i, u_input.a, global3.x), vec4<i32>(-48082i, u_input.b, 8468i, global3.x), vec4<bool>(arg_0.x, true, arg_0.x, true))) ^ vec4<i32>(i32(-1i) * -(i32(-1i) * -21783i), _wgslsmith_clamp_i32(global3.x, _wgslsmith_add_i32(25352i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), global3.zw)), _wgslsmith_dot_vec2_i32(global3.zx | global3.xy, global3.ww & vec2<i32>(53510i, u_input.a))), 0i, u_input.b);
    let var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, firstTrailingBit(global3.x)) ^ global3.wz, vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -16060i, u_input.a), ~(~global3.x)) | global3.wz);
    let var_2 = global3.zx << (abs(firstLeadingBit(var_0.xy)) % vec2<u32>(32u));
    global1 = array<Struct_4, 4>();
    return Struct_1(44172u, -222f);
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~vec4<u32>(~(~0u), ~_wgslsmith_div_u32(45265u, 1u), ~min(24653u, 9121u), reverseBits(19515u)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -544f)));
    let var_2 = firstTrailingBit(reverseBits(firstLeadingBit(~var_0)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_u32(1u, var_2.x), _wgslsmith_f_op_f32(270f * _wgslsmith_f_op_f32(-var_1))), func_2(!vec2<bool>(true, 18904u >= var_2.x)), Struct_1(4294967295u >> (select(_wgslsmith_add_u32(var_0.x, 67066u), _wgslsmith_dot_vec3_u32(vec3<u32>(7014u, var_2.x, var_2.x), var_2.www), any(vec3<bool>(false, true, true))) % 32u), -145f), ~_wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(min(4294967295u, var_0.x), ~var_0.x)));
    var var_4 = _wgslsmith_f_op_f32(sign(1474f));
    return func_2(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), any(vec3<bool>(true, false, true))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(func_1().b));
    var var_1 = Struct_1(arg_1.a.a, 1f);
    global4 = array<vec3<i32>, 9>();
    let var_2 = _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(abs(4294967295u), firstLeadingBit(37953u), arg_1.d & 4294967295u)), vec3<u32>(~35523u, var_1.a & ~abs(arg_1.b.a), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(41904u, 1u, 1u, var_1.a), countOneBits(vec4<u32>(arg_1.c.a, var_1.a, arg_1.a.a, arg_1.d))), ~(~vec4<u32>(var_1.a, 15841u, 44405u, var_1.a)))));
    let var_3 = -(~(~(-_wgslsmith_add_i32(u_input.a, global3.x))));
    return _wgslsmith_add_vec2_i32(vec2<i32>(-(~_wgslsmith_sub_i32(global3.x, global3.x)), -40619i), vec2<i32>(global3.x, 31452i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(165f + 791f), Struct_2(func_1(), func_2(vec2<bool>(true, true)), Struct_1(1u, _wgslsmith_f_op_f32(floor(-642f))), _wgslsmith_div_u32(1u, 1u))) ^ vec2<i32>(-((global3.x ^ -2147483647i) | -41766i), 2147483647i);
    let var_1 = global1[_wgslsmith_index_u32(~4294967295u, 4u)];
    let var_2 = max(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 46718u, 59104u), vec4<u32>(4294967295u, 1u, 31935u, 4294967295u)), 22974u, ~382u, firstTrailingBit(14047u))), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(min(reverseBits(vec4<u32>(1u, 14350u, 4294967295u, 1u)), ~vec4<u32>(1u, 43668u, 27186u, 11687u)), ~firstTrailingBit(vec4<u32>(1u, 4294967295u, 53255u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u))));
    let var_3 = !select(vec3<bool>((var_0.x | 30557i) <= firstTrailingBit(-16883i), true, true), select(vec3<bool>(u_input.a >= -2147483647i, true, any(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), vec3<bool>(abs(var_2.x) > var_2.x, ~4294967295u == _wgslsmith_div_u32(var_2.x, 4294967295u), (4294967295u == var_2.x) & true));
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 2147483647i, firstTrailingBit(-1i));
}

