struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 15>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(trunc(-850f))) != 1773f), false, false);
    let var_1 = Struct_3(vec2<u32>(~select(_wgslsmith_mult_u32(39534u, 28603u), ~14835u, !var_0.x), 4294967295u), u_input.a.x, Struct_2(Struct_1(vec3<u32>(1u, _wgslsmith_mult_u32(61471u, 1u), 1u))));
    var var_2 = Struct_4(var_1.c.a.a, 1984f, 1f, firstTrailingBit(~reverseBits(vec4<u32>(var_1.a.x, var_1.c.a.a.x, 0u, 4294967295u))), select(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_1.c.a.a.x, 15u)], global1[_wgslsmith_index_u32(var_1.c.a.a.x, 15u)], global1[_wgslsmith_index_u32(16045u, 15u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(22118u, 15u)], -global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a.x)), -select(vec4<i32>(1i, global1[_wgslsmith_index_u32(var_1.a.x, 15u)], var_1.b, -18255i), vec4<i32>(u_input.a.x, 15404i, var_1.b, -2147483647i), var_0.x) ^ _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(31237u, 15u)], u_input.a.x, var_1.b), vec4<i32>(global1[_wgslsmith_index_u32(0u, 15u)], var_1.b, u_input.a.x, -8937i)), _wgslsmith_sub_vec4_i32(vec4<i32>(19552i, -49604i, global1[_wgslsmith_index_u32(4252u, 15u)], u_input.a.x), vec4<i32>(u_input.a.x, -21666i, -1i, 1i))), vec4<bool>(any(var_0), var_0.x, false, !var_0.x)));
    let var_3 = u_input.a;
    let var_4 = !vec4<bool>(false, false, true, var_0.x);
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(min(u_input.a, var_3), vec2<i32>(1i, -20724i)), -15472i);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = ~countOneBits(select(arg_2.a.a.zy, _wgslsmith_add_vec2_u32(~arg_2.a.a.xy, vec2<u32>(1u, arg_1.x)), select(73851u, arg_1.x, arg_0) <= arg_2.a.a.x));
    global0 = all(vec2<bool>(true, true));
    var var_1 = u_input.a;
    global0 = arg_0;
    var var_2 = func_3();
    return Struct_3(reverseBits(~(~vec2<u32>(6267u, 76808u))), firstTrailingBit(global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(arg_2.a.a.x, 18042u)), 15u)]), Struct_2(arg_2.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = false == all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)));
    var var_1 = true;
    let var_2 = 36968u;
    var var_3 = any(!select(vec4<bool>(false, u_input.a.x != u_input.a.x, arg_1.x >= 27675u, any(vec4<bool>(false, true, false, true))), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(571f, 948f, -353f))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, _wgslsmith_div_f32(-895f, 1248f), -315f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-111f, -469f, _wgslsmith_f_op_f32(466f + -533f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -313f, 546f)))), (-11709i >= u_input.a.x) == true))));
    return Struct_2(func_2(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))), arg_0.c.a.a, arg_2).c.a);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> vec3<bool> {
    global0 = !(!arg_3);
    let var_0 = func_4(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(4315u, 1u), abs(vec2<u32>(36975u, arg_0))) == countOneBits(arg_0), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, 0u), max(vec3<u32>(4538u, arg_0, arg_0), vec3<u32>(30080u, 30846u, arg_0))), Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_0, 41681u), vec3<u32>(arg_0, 0u, 8646u))))), _wgslsmith_mod_vec2_u32(max(reverseBits(~vec2<u32>(arg_0, 22303u)), vec2<u32>(16028u, 4294967295u)), vec2<u32>(24715u, 0u) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0, 49060u)) >> (min(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u))) % vec2<u32>(32u))), func_2(false, ~abs(vec3<u32>(7424u, arg_0, arg_0) << (vec3<u32>(49945u, 16069u, arg_0) % vec3<u32>(32u))), Struct_2(func_2(arg_1 == 1000f, ~vec3<u32>(65137u, arg_0, 30506u), Struct_2(Struct_1(vec3<u32>(19903u, arg_0, 19048u)))).c.a)).c);
    var var_1 = Struct_1((var_0.a.a << (((var_0.a.a ^ vec3<u32>(var_0.a.a.x, var_0.a.a.x, 1u)) ^ abs(var_0.a.a)) % vec3<u32>(32u))) & var_0.a.a);
    global1 = array<i32, 15>();
    let var_2 = 2321u;
    return arg_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = ~(~vec4<i32>(1i, arg_1.x, 2147483647i, arg_3.b) ^ reverseBits(~(~vec4<i32>(-41937i, -12374i, 1149i, 51110i))));
    let var_1 = arg_3.c;
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(~(-18485i), abs(arg_1.x), -2147483647i), -select(-(~vec3<i32>(arg_1.x, global1[_wgslsmith_index_u32(var_1.a.a.x, 15u)], u_input.a.x)), vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 15u)], arg_1.x) << (~vec3<u32>(28801u, 1u, arg_2.x) % vec3<u32>(32u)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0, false)));
    global0 = select((!arg_0.x && !arg_0.x) || !arg_0.x, select(all(!vec3<bool>(false, false, arg_0.x)), true, arg_0.x), true) && any(!vec4<bool>(arg_0.x, !arg_0.x, arg_0.x, true));
    global1 = array<i32, 15>();
    return vec3<u32>(_wgslsmith_mult_u32(~arg_3.a.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(~0u, ~var_1.a.a.x), arg_3.a.x)), _wgslsmith_add_u32(arg_2.x, ~(~4294967295u >> (~4294967295u % 32u))), abs((var_1.a.a.x >> ((1u >> (arg_3.a.x % 32u)) % 32u)) << (reverseBits(~arg_3.a.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~func_5(!func_1(0u, 403f, vec3<bool>(true, false, true), false), _wgslsmith_add_vec2_i32(abs(u_input.a), reverseBits(vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 15u)]))), vec3<u32>(_wgslsmith_mult_u32(72023u, 13181u), _wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(22793u, 23240u)), Struct_3(abs(vec2<u32>(23373u, 0u)), global1[_wgslsmith_index_u32(6726u, 15u)], func_4(Struct_3(vec2<u32>(0u, 0u), global1[_wgslsmith_index_u32(8153u, 15u)], Struct_2(Struct_1(vec3<u32>(72816u, 0u, 0u)))), vec2<u32>(1u, 1u), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 1u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-511f, 982f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-574f - 206f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(181f, 1000f)) - _wgslsmith_f_op_f32(trunc(1041f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1069f, _wgslsmith_f_op_f32(f32(-1f) * -2127f), true))))), reverseBits(~select(vec4<u32>(25879u, 4294967295u, 21158u, 32590u), vec4<u32>(5279u, 1u, 23558u, 0u), true)) << (vec4<u32>(max(1u, min(9502u, 1u)), func_5(vec3<bool>(true, true, true), vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 15u)]) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), vec3<u32>(0u, 1u, 1u), Struct_3(vec2<u32>(68163u, 68830u), -1i, Struct_2(Struct_1(vec3<u32>(1u, 28765u, 0u))))).x, ~15648u, _wgslsmith_dot_vec2_u32(func_5(vec3<bool>(false, true, false), u_input.a, vec3<u32>(4294967295u, 1u, 25036u), Struct_3(vec2<u32>(15851u, 18728u), u_input.a.x, Struct_2(Struct_1(vec3<u32>(48842u, 106043u, 4294967295u))))).xz, ~vec2<u32>(4294967295u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, 55991i, global1[_wgslsmith_index_u32(19366u, 15u)], u_input.a.x) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(~global1[_wgslsmith_index_u32(1u, 15u)] | -1i, ~(-2147483647i), u_input.a.x | abs(-68881i), u_input.a.x), max((vec4<i32>(global1[_wgslsmith_index_u32(1u, 15u)], 2147483647i, u_input.a.x, global1[_wgslsmith_index_u32(1u, 15u)]) & vec4<i32>(-7151i, u_input.a.x, 1i, u_input.a.x)) & firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(19545u, 15u)], global1[_wgslsmith_index_u32(54313u, 15u)], 2147483647i, global1[_wgslsmith_index_u32(21539u, 15u)])), reverseBits(-vec4<i32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], 29606i, global1[_wgslsmith_index_u32(39385u, 15u)])))));
    let var_1 = Struct_3(~vec2<u32>(~_wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), 18156u), ~min(_wgslsmith_add_i32(_wgslsmith_div_i32(var_0.e.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), u_input.a.x), func_4(Struct_3(vec2<u32>(4294967295u, 1u), -2147483647i, func_4(Struct_3(var_0.d.yz, -1i, Struct_2(Struct_1(vec3<u32>(var_0.d.x, 1u, var_0.a.x)))), min(var_0.d.yw, var_0.a.xz), Struct_2(Struct_1(var_0.d.xyx)))), ~vec2<u32>(22468u, var_0.d.x) & _wgslsmith_div_vec2_u32(select(var_0.d.zw, var_0.d.ww, vec2<bool>(false, false)), max(vec2<u32>(87695u, var_0.d.x), var_0.a.zx)), func_4(func_2(false, ~vec3<u32>(1u, var_0.a.x, 20127u), func_4(Struct_3(vec2<u32>(4294967295u, 11164u), 0i, Struct_2(Struct_1(vec3<u32>(0u, 0u, var_0.a.x)))), var_0.d.wx, Struct_2(Struct_1(var_0.a)))), func_5(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec2<i32>(29542i, global1[_wgslsmith_index_u32(1u, 15u)]), var_0.d.xzz >> (var_0.d.xxx % vec3<u32>(32u)), func_2(true, vec3<u32>(30400u, 66272u, 30110u), Struct_2(Struct_1(vec3<u32>(var_0.d.x, var_0.a.x, var_0.a.x))))).zz, Struct_2(Struct_1(vec3<u32>(var_0.d.x, 4294967295u, 0u))))));
    var var_2 = 1u;
    var_0 = Struct_4(~(~(~var_0.a)), -686f, var_0.c, var_0.d, -(var_0.e >> (countOneBits(~vec4<u32>(var_1.c.a.a.x, var_0.a.x, 45864u, var_1.a.x)) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(ceil(1844f));
    var var_4 = Struct_2(Struct_1(var_0.a << (vec3<u32>(~var_0.d.x, _wgslsmith_mod_u32(37612u, 1u), 0u) % vec3<u32>(32u))));
    global1 = array<i32, 15>();
    var var_5 = Struct_4(~vec3<u32>(var_0.d.x >> (1u % 32u), var_0.a.x | 1u, var_0.a.x), -887f, _wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_mod_vec4_u32(reverseBits(var_0.d), var_0.d), var_0.e);
    let var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1491f))));
    let x = u_input.a;
    s_output = StorageBuffer(15107u ^ firstLeadingBit(func_5(vec3<bool>(false, true, true), vec2<i32>(var_0.e.x, var_1.b), vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x), func_2(true, var_1.c.a.a, var_1.c)).x));
}

