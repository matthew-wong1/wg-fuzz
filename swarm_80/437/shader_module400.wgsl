struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<i32>(15030i, 85611i, i32(-2147483648)), 91893u, vec2<bool>(false, false)), Struct_2(vec3<i32>(0i, i32(-2147483648), 14191i), 1u, vec2<bool>(true, true)), Struct_2(vec3<i32>(1i, -781i, 11377i), 4294967295u, vec2<bool>(true, true)), Struct_2(vec3<i32>(0i, -1i, -14771i), 69010u, vec2<bool>(true, true)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 69997i), 15139u, vec2<bool>(true, false)), Struct_2(vec3<i32>(i32(-2147483648), -4598i, 1i), 1u, vec2<bool>(true, true)), Struct_2(vec3<i32>(-427i, i32(-2147483648), 2147483647i), 58263u, vec2<bool>(true, false)), Struct_2(vec3<i32>(22366i, i32(-2147483648), i32(-2147483648)), 49986u, vec2<bool>(false, false)), Struct_2(vec3<i32>(-37628i, 1i, 1465i), 42254u, vec2<bool>(true, true)), Struct_2(vec3<i32>(0i, 17095i, -53566i), 24124u, vec2<bool>(false, false)), Struct_2(vec3<i32>(2147483647i, 0i, 0i), 4294967295u, vec2<bool>(false, true)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 0i), 43237u, vec2<bool>(true, false)));

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<vec2<bool>, 16>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_5, arg_3: Struct_5) -> u32 {
    global1 = Struct_1(true && all(!vec4<bool>(false, global1.a, true, global1.a)));
    global0 = array<Struct_2, 12>();
    return arg_1;
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec4<bool>(!global1.a, all(global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), all(vec3<bool>(true, true, true)), false);
    let var_1 = -u_input.b ^ vec3<i32>(firstTrailingBit(u_input.b.x), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(12219i, 1i, u_input.b.x), 0i, ~u_input.b.x, u_input.b.x ^ 0i), vec4<i32>(~0i, 1i, 6734i, -19648i)));
    var_0 = !vec4<bool>(false, global1.a, var_0.x, var_0.x);
    global1 = Struct_1(true);
    let var_2 = -1000f;
    return u_input.b.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> Struct_2 {
    global2 = array<vec2<bool>, 16>();
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(arg_1, 34434i, -1i, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(22200i, 20089i, arg_1, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -11704i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)))), select(arg_1, max(func_3(-710f), -2147483647i), !global1.a), 54215i), arg_2, vec2<bool>(global1.a, true));
    let var_1 = Struct_3(false, vec3<i32>(22638i, 2147483647i, -func_3(_wgslsmith_f_op_f32(trunc(-2490f)))), Struct_2(-reverseBits(u_input.b), 4294967295u, select(var_0.c, vec2<bool>(global1.a, global1.a), !vec2<bool>(var_0.c.x, false))), Struct_2(-u_input.b, ~42350u, select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(var_0.a, arg_2, Struct_5(Struct_2(var_0.a, arg_0.x, global2[_wgslsmith_index_u32(1u, 16u)]), vec2<f32>(-1978f, -1000f)), Struct_5(Struct_2(var_0.a, u_input.a, var_0.c), vec2<f32>(-253f, 2112f))), u_input.a | 19202u), 16u)], vec2<bool>(all(vec2<bool>(true, false)), select(true, false, false)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.x, var_0.b), 1u), 16u)])));
    let var_2 = vec4<i32>(u_input.b.x, -var_1.c.a.x, -1i, ~0i) | vec4<i32>(var_1.b.x ^ firstTrailingBit(arg_1 ^ u_input.b.x), abs(arg_1), _wgslsmith_mult_i32(-var_0.a.x, var_0.a.x << (1u % 32u)) >> (~abs(var_0.b) % 32u), arg_1);
    global0 = array<Struct_2, 12>();
    return var_1.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_2 {
    global1 = Struct_1(arg_0.d.c.x);
    global2 = array<vec2<bool>, 16>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_1.x | 1u, 26613u), 12u)];
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = Struct_1(var_0.a.c.x);
    let var_2 = arg_2.a.a.xz;
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, -545f, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, -2129f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, var_0.b.x, arg_2.b.x, arg_2.b.x))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, arg_0.a), !any(vec4<bool>(global1.a, arg_2.a.c.x, false, var_1.a))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.b.x, var_0.b.x, 503f), vec4<f32>(var_0.b.x, var_0.b.x, -1984f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b.x, 1155f, arg_2.b.x, 1460f))))))))));
    var var_4 = func_2(arg_3.zxz, ~(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -21044i), vec2<i32>(u_input.b.x, u_input.b.x)), 9741i)), abs(~_wgslsmith_add_u32(4294967295u, 0u ^ arg_2.a.b)));
    return Struct_1(all(select(vec2<bool>(true, false), !func_4(arg_0, arg_3.wxz, vec4<f32>(-441f, -1115f, 461f, -194f)).c, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(reverseBits(u_input.c.x) | u_input.a, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(func_1(u_input.b, u_input.a, Struct_5(global0[_wgslsmith_index_u32(1u, 12u)], vec2<f32>(-1806f, 332f)), Struct_5(global0[_wgslsmith_index_u32(u_input.a, 12u)], vec2<f32>(-141f, 1357f))), 1u, 43477u & u_input.c.x), _wgslsmith_mult_u32(~(4294967295u >> (u_input.a % 32u)), countOneBits(abs(u_input.a)))));
    global1 = func_5(Struct_3(!global1.a, u_input.b, global0[_wgslsmith_index_u32(var_0.x << (0u % 32u), 12u)], func_4(Struct_3(global1.a, vec3<i32>(u_input.b.x, -2147483647i, 1i), global0[_wgslsmith_index_u32(~u_input.c.x, 12u)], func_2(u_input.c.xxw, u_input.b.x, u_input.c.x)), abs(vec3<u32>(28473u, 0u, 36705u) >> (u_input.c.ywz % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(858f - 224f), _wgslsmith_f_op_f32(step(1038f, -1337f)), _wgslsmith_f_op_f32(f32(-1f) * -209f), 158f))), u_input.b.x, Struct_5(global0[_wgslsmith_index_u32(~abs(12491u), 12u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-427f, 1057f)))))))), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, var_0.x), abs(vec4<u32>(60761u, 18194u, u_input.a, u_input.a))), vec4<u32>(min(var_0.x, var_0.x), ~4294967295u, ~69301u, 1u)));
    var var_1 = Struct_5(func_2(min(_wgslsmith_mult_vec3_u32(~u_input.c.yww, u_input.c.wzw), u_input.c.xxy), select(select(u_input.b.x, 1245i, global1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -519i, u_input.b.x), vec4<i32>(u_input.b.x, -35420i, u_input.b.x, 2147483647i)), any(vec2<bool>(false, global1.a))) ^ select(u_input.b.x, 2147483647i, any(vec2<bool>(false, global1.a))), ~func_4(Struct_3(true, u_input.b, global0[_wgslsmith_index_u32(var_0.x, 12u)], Struct_2(vec3<i32>(0i, -60087i, 1i), u_input.a, vec2<bool>(true, global1.a))), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec4<f32>(-1481f, 878f, 142f, -743f)).b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(944f, -1120f), vec2<f32>(535f, -1000f), false)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(811f + 1297f), -1000f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1400f, 861f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, 1111f)), all(vec4<bool>(false, true, true, true)))))));
    var_1 = Struct_5(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1405f, _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x - 1377f))))));
    global2 = array<vec2<bool>, 16>();
    var_1 = Struct_5(global0[_wgslsmith_index_u32(45604u, 12u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b.x, 234f)))));
    let var_2 = min(_wgslsmith_div_vec3_i32(abs(firstLeadingBit(vec3<i32>(-3606i, u_input.b.x, u_input.b.x))), func_4(Struct_3(false, vec3<i32>(-12839i, -5757i, var_1.a.a.x), func_2(vec3<u32>(u_input.c.x, 16357u, 880u), u_input.b.x, var_0.x), func_4(Struct_3(global1.a, var_1.a.a, Struct_2(var_1.a.a, 29137u, vec2<bool>(global1.a, false)), var_1.a), vec3<u32>(var_0.x, 33101u, 23083u), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, 1945f))), vec3<u32>(~9399u, firstLeadingBit(var_1.a.b), 35022u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, var_1.b.x, var_1.b.x, 141f))))).a), u_input.b);
    var_1 = Struct_5(Struct_2(u_input.b, var_1.a.b, vec2<bool>(select(all(vec4<bool>(true, false, true, global1.a)), global1.a, true), _wgslsmith_f_op_f32(var_1.b.x - -916f) == var_1.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(var_1.b.x, var_1.b.x)) * _wgslsmith_f_op_vec2_f32(ceil(var_1.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2513f, -1330f))) - vec2<f32>(var_1.b.x, 986f)))) * _wgslsmith_f_op_vec2_f32(sign(var_1.b))));
    let var_3 = Struct_3(!var_1.a.c.x, ~(max(var_1.a.a, abs(vec3<i32>(var_1.a.a.x, 2147483647i, var_2.x))) << (vec3<u32>(select(8820u, 0u, global1.a), var_1.a.b, ~1u) % vec3<u32>(32u))), func_4(Struct_3(var_1.a.c.x, u_input.b, func_2(vec3<u32>(47511u, var_1.a.b, u_input.c.x), -19690i >> (var_0.x % 32u), 69408u), func_4(Struct_3(true, vec3<i32>(var_2.x, u_input.b.x, -13698i), global0[_wgslsmith_index_u32(48373u, 12u)], Struct_2(vec3<i32>(0i, 74856i, var_1.a.a.x), var_1.a.b, global2[_wgslsmith_index_u32(0u, 16u)])), vec3<u32>(7283u, 4996u, var_1.a.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-332f, -1115f, var_1.b.x, 1073f))))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.yzw, u_input.c.xyy, firstTrailingBit(u_input.c.xwz)), countOneBits(min(u_input.c.zxz, vec3<u32>(64722u, var_1.a.b, var_1.a.b)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1018f, var_1.b.x, 594f, 1456f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 718f, var_1.b.x, 2112f))), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x))))), func_2(u_input.c.xxz, ~(~0i) & u_input.b.x, _wgslsmith_clamp_u32(0u, u_input.c.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(var_1.a.b), var_0.x, 4294967295u >> (_wgslsmith_div_u32(~var_1.a.b, u_input.c.x << (1u % 32u)) % 32u)));
}

