struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(99596u, vec4<i32>(i32(-2147483648), 1i, 1i, -9608i), true), Struct_1(0u, vec4<i32>(89076i, i32(-2147483648), -83434i, 45405i), true), Struct_1(5177u, vec4<i32>(i32(-2147483648), 35835i, i32(-2147483648), 0i), true), Struct_1(1u, vec4<i32>(-1i, -16179i, -23416i, 1i), true), Struct_1(21397u, vec4<i32>(1i, -59948i, 2147483647i, i32(-2147483648)), false), Struct_1(93555u, vec4<i32>(-1i, i32(-2147483648), 5998i, 65026i), false), Struct_1(0u, vec4<i32>(24565i, 2147483647i, 41378i, 14870i), true), Struct_1(4294967295u, vec4<i32>(0i, i32(-2147483648), -59046i, -50652i), true), Struct_1(4294967295u, vec4<i32>(-27598i, 27222i, -10167i, 1729i), true), Struct_1(12096u, vec4<i32>(0i, -1i, 30860i, 506i), true), Struct_1(1u, vec4<i32>(-23916i, 0i, 1i, 1i), true), Struct_1(15199u, vec4<i32>(-9269i, 5841i, 39105i, -53148i), true), Struct_1(2964u, vec4<i32>(0i, -21744i, 0i, 14122i), true), Struct_1(102308u, vec4<i32>(9310i, -19415i, 0i, -33291i), true), Struct_1(26123u, vec4<i32>(0i, 1i, -22662i, 13725i), false), Struct_1(4294967295u, vec4<i32>(-1i, -1i, 2425i, -8252i), false));

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(4294967295u, 69969u), vec2<u32>(0u, 4294967295u), vec2<u32>(28613u, 54277u), vec2<u32>(0u, 10026u), vec2<u32>(40513u, 5795u), vec2<u32>(57484u, 26734u), vec2<u32>(1u, 4294967295u), vec2<u32>(11132u, 15826u), vec2<u32>(3326u, 3210u), vec2<u32>(4294967295u, 40011u), vec2<u32>(1u, 61444u), vec2<u32>(0u, 60920u), vec2<u32>(30836u, 0u), vec2<u32>(238u, 12087u), vec2<u32>(62365u, 16954u), vec2<u32>(29071u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 66166u), vec2<u32>(20114u, 0u), vec2<u32>(25282u, 52447u), vec2<u32>(35636u, 0u), vec2<u32>(1u, 1185u));

var<private> global2: vec2<i32> = vec2<i32>(-9118i, -17256i);

var<private> global3: array<vec3<f32>, 5>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~_wgslsmith_sub_vec4_i32(-vec4<i32>(global2.x, 2147483647i, u_input.a.x, global2.x) & ~vec4<i32>(1i, 2147483647i, u_input.a.x, 15873i), vec4<i32>(global2.x, _wgslsmith_sub_i32(-2147483647i, 1i), global2.x ^ 2147483647i, global2.x)));
    let var_1 = ~(~1u);
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global3 = array<vec3<f32>, 5>();
    return global0[_wgslsmith_index_u32(24264u | var_1, 16u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global0 = array<Struct_1, 16>();
    var var_0 = -838i << (_wgslsmith_div_u32(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(0u, 58636u), true), ~u_input.b), u_input.b.x >> (arg_1.a % 32u))) % 32u);
    let var_1 = Struct_2(Struct_1(~(~firstLeadingBit(arg_1.a)), vec4<i32>(max(-1i, 27672i), reverseBits(-26390i), reverseBits(abs(1i)), -arg_1.b.x), true), ~arg_1.a << (0u % 32u), true, global0[_wgslsmith_index_u32(1u, 16u)], ~select(~vec3<u32>(arg_1.a, arg_1.a, u_input.b.x), vec3<u32>(0u, func_1().a, 1u), true || arg_1.c));
    var var_2 = -vec4<i32>(firstLeadingBit(-1i) ^ abs(-var_1.a.b.x), -1i, 84858i, _wgslsmith_clamp_i32(~var_1.d.b.x, firstTrailingBit(20571i), firstLeadingBit(-7035i)));
    let var_3 = select(select(vec2<bool>((u_input.d.x < var_2.x) && false, !(!var_1.c)), vec2<bool>(true, true), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, arg_1.c))), arg_1.c)), select(select(vec2<bool>(true, arg_0.x < arg_0.x), select(select(vec2<bool>(true, var_1.c), vec2<bool>(arg_1.c, arg_1.c), true), vec2<bool>(var_1.d.c, arg_1.c), arg_1.c), any(select(vec4<bool>(arg_1.c, true, arg_1.c, false), vec4<bool>(true, false, var_1.a.c, arg_1.c), vec4<bool>(false, false, var_1.a.c, false)))), !(!select(vec2<bool>(false, var_1.c), vec2<bool>(true, arg_1.c), true)), !select(!vec2<bool>(arg_1.c, false), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(var_1.c, arg_1.c), vec2<bool>(arg_1.c, var_1.c)), false)), _wgslsmith_f_op_f32(sign(-1000f)) > arg_0.x);
    return arg_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    global3 = array<vec3<f32>, 5>();
    var var_0 = vec3<u32>(~select(arg_1.a, 0u, !func_3(vec3<f32>(-1765f, 783f, -739f), arg_1)), _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.a, 3382u), vec4<u32>(arg_1.a, 50255u, 4294967295u, 19312u)))), ~vec4<u32>(~4294967295u, _wgslsmith_mod_u32(0u, 4294967295u), arg_1.a, ~33660u)), 0u);
    let var_1 = func_1();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x);
    var_0 = _wgslsmith_add_vec3_u32(select(~vec3<u32>(6434u, _wgslsmith_clamp_u32(var_0.x, var_1.a, var_0.x), 16077u), vec3<u32>(~countOneBits(4294967295u), ~arg_1.a >> (~1u % 32u), 23066u), !((var_0.x < 4294967295u) & true)), ~vec3<u32>(~(~arg_0.a), 0u, ~23561u >> (abs(var_0.x) % 32u)));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~72549u, 16u)];
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(global2.x << ((var_0.a << (var_0.a % 32u)) % 32u), -2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b.zx, vec2<i32>(var_0.b.x, -17228i)), vec2<i32>(-32644i, global2.x))) & _wgslsmith_sub_i32(reverseBits(abs(var_0.b.x)), func_2(func_1(), func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1009f, 263f, 242f, 1565f)))), countOneBits(_wgslsmith_div_i32(global2.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b.xw, vec2<i32>(-2229i, u_input.c)), _wgslsmith_sub_vec2_i32(var_0.b.ww, u_input.d.zy)))), _wgslsmith_sub_i32(reverseBits(~var_0.b.x), 13385i), -2147483647i & -(~_wgslsmith_dot_vec2_i32(var_0.b.xy, var_0.b.wx)));
    var var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(_wgslsmith_sub_u32(select(u_input.b.x, 40528u, var_0.c), var_0.a >> (var_0.a % 32u))), func_1().a, 4294967295u, ~u_input.b.x), var_0.a);
}

