struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = Struct_3(vec2<bool>(arg_0.x, select(true, true, any(vec2<bool>(arg_0.x, true)) && all(arg_0.ww))), global0[_wgslsmith_index_u32(63315u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_0, vec2<bool>(true, arg_0.x));
    let var_1 = Struct_1(vec3<u32>(~u_input.b, select(11126u, countOneBits(u_input.b) >> (u_input.b % 32u), arg_0.x), ~u_input.b), 7830i);
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return all(select(vec4<bool>(!arg_0.x, arg_0.x && false, var_0.c.a.x, false), vec4<bool>(var_0.e.x, arg_0.x != true, true == arg_0.x, arg_0.x), var_0.d));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(!vec2<bool>(select(all(vec2<bool>(true, true)), true, any(vec4<bool>(arg_0, true, arg_0, false))), arg_0), global0[_wgslsmith_index_u32(4294967295u, 17u)], Struct_2(vec2<bool>(arg_0, arg_0)), select(select(vec4<bool>(func_3(vec4<bool>(true, arg_0, arg_0, false)), true, true, all(vec2<bool>(arg_0, true))), select(vec4<bool>(false, true, false, arg_0), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0), false), select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, false, false, arg_0), arg_0)), true && (arg_1.x > 0u)), select(vec4<bool>(all(vec3<bool>(true, true, false)), arg_0, any(vec4<bool>(false, false, arg_0, false)), false), !vec4<bool>(arg_0, arg_0, arg_0, true), true), all(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, false), arg_0))), select(select(select(!vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), vec2<bool>(true, true), !any(vec3<bool>(arg_0, true, false))), select(vec2<bool>(true, all(vec2<bool>(arg_0, arg_0))), vec2<bool>(!arg_0, true), func_3(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), false))), !(false & arg_0) & all(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), false))));
    var var_1 = -select(-_wgslsmith_sub_vec4_i32(vec4<i32>(23127i, 35161i, 18639i, 25538i) ^ vec4<i32>(-2147483647i, u_input.a.x, -30728i, -27008i), vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.c)), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(18870i, u_input.c, u_input.a.x), vec3<i32>(u_input.c, u_input.a.x, -2147483647i)), -11090i, reverseBits(reverseBits(u_input.c))), true);
    var var_2 = select(vec2<u32>(1u, 861u), vec2<u32>(u_input.b, 52263u), true);
    var_2 = arg_1;
    var_2 = _wgslsmith_add_vec2_u32(arg_1, max(vec2<u32>(24607u, 65700u), arg_1));
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<u32> {
    global0 = array<Struct_2, 17>();
    var var_0 = func_2((all(vec4<bool>(arg_2.a.x, false, true, arg_2.a.x)) || arg_2.a.x) & true, ~(~(~min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)))));
    var_0 = func_2((reverseBits(~u_input.b) | select(_wgslsmith_clamp_u32(40998u, 1u, u_input.b), firstLeadingBit(4294967295u), all(arg_1.zwx))) <= ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 21964u, 10144u), vec4<u32>(3887u, 0u, u_input.b, u_input.b)), ~1u), countOneBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(max(vec2<u32>(31476u, 4294967295u), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.b, 33944u)), ~vec2<u32>(18117u, u_input.b)))));
    var_0 = global0[_wgslsmith_index_u32(~(~u_input.b) | max(u_input.b, 32413u), 17u)];
    global0 = array<Struct_2, 17>();
    return (vec2<u32>(_wgslsmith_mod_u32(u_input.b << (u_input.b % 32u), u_input.b), 0u) << (~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 47813u)), abs(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u))) % vec2<u32>(32u))) ^ ~(~vec2<u32>(~1u, 47090u));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    var var_0 = -u_input.a ^ ~(min(~u_input.a, vec2<i32>(24141i, 2147483647i)) ^ _wgslsmith_mult_vec2_i32(-u_input.a, u_input.a));
    let var_1 = global0[_wgslsmith_index_u32(~(~abs(arg_1.x)), 17u)];
    var_0 = ~u_input.a;
    let var_2 = !(arg_2.x != -1529f);
    global0 = array<Struct_2, 17>();
    return max(_wgslsmith_mult_u32(u_input.b, u_input.b), 96591u);
}

fn func_1() -> vec2<bool> {
    global0 = array<Struct_2, 17>();
    var var_0 = select(u_input.b, func_5(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<u32>(0u, u_input.b) & func_4(_wgslsmith_f_op_f32(-1000f - 580f), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), func_2(false, vec2<u32>(0u, u_input.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1172f, -228f, 748f), vec3<f32>(-1149f, -1013f, -1864f)), vec3<f32>(359f, -1636f, 651f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1431f)) + _wgslsmith_div_f32(-410f, 552f)) < _wgslsmith_f_op_f32(f32(-1f) * -1299f)), false);
    let var_1 = firstLeadingBit(countOneBits(abs(-_wgslsmith_add_i32(2147483647i, u_input.c))));
    return vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), true)), !(!select(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_add_vec3_i32(-(~(-vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), vec3<i32>(37381i, 2147483647i, ~u_input.c)));
    var var_1 = -61514i;
    let var_2 = Struct_3(func_1(), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), global0[_wgslsmith_index_u32((u_input.b >> (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)) << (1u % 32u), 17u)], vec4<bool>(true, true, select(select(false, true, true), true, true), (var_0.x > _wgslsmith_mult_i32(var_0.x, var_0.x)) == false), !vec2<bool>(any(func_2(false, vec2<u32>(18219u, u_input.b)).a), !any(vec4<bool>(true, false, false, true))));
    let var_3 = select(abs(u_input.b), ~func_4(_wgslsmith_f_op_f32(-866f * -1035f), vec4<bool>(var_2.c.a.x, any(vec4<bool>(var_2.c.a.x, var_2.b.a.x, var_2.a.x, var_2.e.x)), true, !var_2.e.x), func_2(true, vec2<u32>(66190u, 1u))).x, var_2.c.a.x);
    let var_4 = Struct_1(~countOneBits(vec3<u32>(_wgslsmith_sub_u32(3776u, var_3), u_input.b ^ u_input.b, ~var_3)), 28043i);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~1u, func_5(func_1(), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(var_3, u_input.b), vec2<u32>(u_input.b, 1u)), var_4.a.zx), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, 143f, -1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-3053f, -1085f, -1647f)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-2417f)), _wgslsmith_f_op_f32(min(-1718f, 704f)), _wgslsmith_f_op_f32(f32(-1f) * -615f))), var_2.c.a.x), vec4<u32>(_wgslsmith_mod_u32(~(u_input.b ^ 0u), 24963u), u_input.b, _wgslsmith_sub_u32(16317u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), _wgslsmith_mod_u32(21966u, 1u))), ~1u), vec2<u32>(u_input.b, u_input.b));
}

