struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 1382f, 1u, vec3<bool>(true, true, false), false);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(39470u, -1847f, 75078u, vec3<bool>(true, false, true), true), Struct_1(4294967295u, 1471f, 5156u, vec3<bool>(true, false, false), false), Struct_1(4294967295u, -160f, 9336u, vec3<bool>(false, true, true), false), Struct_1(0u, 565f, 20373u, vec3<bool>(true, true, false), true), Struct_1(0u, 899f, 10241u, vec3<bool>(false, false, true), true), Struct_1(0u, -1541f, 4294967295u, vec3<bool>(true, false, false), false), Struct_1(823u, -1479f, 0u, vec3<bool>(true, false, true), false), Struct_1(0u, -746f, 20565u, vec3<bool>(true, true, true), true), Struct_1(12397u, 698f, 1u, vec3<bool>(false, true, true), false), Struct_1(1108u, 857f, 1u, vec3<bool>(false, true, false), false), Struct_1(44303u, 1200f, 0u, vec3<bool>(false, true, false), false), Struct_1(73326u, -1000f, 47672u, vec3<bool>(true, false, true), false), Struct_1(4885u, 355f, 1u, vec3<bool>(true, false, true), true), Struct_1(20338u, -1666f, 16358u, vec3<bool>(true, true, true), true), Struct_1(0u, -474f, 4294967295u, vec3<bool>(false, false, false), false), Struct_1(68857u, 178f, 29908u, vec3<bool>(true, true, true), false), Struct_1(81323u, -1316f, 16892u, vec3<bool>(true, true, false), false), Struct_1(0u, 965f, 46547u, vec3<bool>(false, false, true), true), Struct_1(42315u, 112f, 1u, vec3<bool>(false, true, false), false), Struct_1(0u, 1400f, 4294967295u, vec3<bool>(false, false, false), true), Struct_1(0u, 782f, 0u, vec3<bool>(false, false, true), false), Struct_1(67424u, 867f, 0u, vec3<bool>(false, true, true), true), Struct_1(4294967295u, -1000f, 30201u, vec3<bool>(true, false, true), false), Struct_1(2855u, -1065f, 1u, vec3<bool>(true, false, false), false), Struct_1(25512u, 376f, 0u, vec3<bool>(true, false, true), true), Struct_1(4294967295u, 1314f, 4294967295u, vec3<bool>(true, false, true), false), Struct_1(0u, 111f, 3134u, vec3<bool>(false, true, true), true), Struct_1(32423u, -1000f, 4294967295u, vec3<bool>(false, false, false), true), Struct_1(58629u, 1144f, 4294967295u, vec3<bool>(false, true, false), false), Struct_1(18861u, 2732f, 1u, vec3<bool>(true, true, false), true), Struct_1(4294967295u, 373f, 3154u, vec3<bool>(false, false, false), false));

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1u, 230f, 0u, vec3<bool>(false, true, true), false), Struct_1(0u, -357f, 1u, vec3<bool>(false, false, true), true), Struct_1(23013u, -1187f, 4294967295u, vec3<bool>(false, false, false), false), Struct_1(0u, 1689f, 32088u, vec3<bool>(true, true, false), false), Struct_1(96619u, 364f, 87006u, vec3<bool>(true, false, false), false), Struct_1(1u, 1533f, 27992u, vec3<bool>(true, false, true), true), Struct_1(55183u, -1009f, 1u, vec3<bool>(true, false, false), false), Struct_1(8307u, 656f, 4294967295u, vec3<bool>(false, true, false), false), Struct_1(0u, 255f, 4294967295u, vec3<bool>(false, false, true), true), Struct_1(4921u, 1681f, 13086u, vec3<bool>(true, false, true), false), Struct_1(18774u, -928f, 1u, vec3<bool>(false, false, true), true), Struct_1(1u, 883f, 1u, vec3<bool>(true, true, true), false), Struct_1(1u, 1081f, 3479u, vec3<bool>(true, true, false), false), Struct_1(44568u, 386f, 65039u, vec3<bool>(false, true, true), false), Struct_1(4294967295u, -717f, 18938u, vec3<bool>(false, false, true), false), Struct_1(3562u, -246f, 0u, vec3<bool>(true, false, true), false), Struct_1(0u, -866f, 24176u, vec3<bool>(true, false, false), false), Struct_1(4294967295u, 934f, 17417u, vec3<bool>(false, false, false), false));

var<private> global3: bool = false;

var<private> global4: array<vec4<u32>, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(121f, _wgslsmith_f_op_f32(trunc(-1115f))) + vec2<f32>(_wgslsmith_f_op_f32(arg_1.b - global0.b), arg_0.b))));
    global4 = array<vec4<u32>, 7>();
    var var_1 = global1[_wgslsmith_index_u32(global0.c, 31u)];
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b - arg_1.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(278f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), -117f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, global0.b) - vec2<f32>(global0.b, arg_3.b)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-218f, arg_3.b)))))));
    var_1 = arg_1;
    return Struct_1(~(~_wgslsmith_mult_u32(44837u, global0.a)), _wgslsmith_f_op_f32(-var_0.x), abs(~_wgslsmith_mod_u32(4294967295u, 0u & arg_1.c)), select(!select(arg_1.d, vec3<bool>(true, true, false), true), global0.d, arg_3.d), true);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = select(vec4<bool>(false, true, true, any(vec3<bool>(!arg_0.e, arg_0.e, true & arg_0.e))), select(!select(vec4<bool>(false, arg_0.e, arg_0.d.x, false), !vec4<bool>(global0.d.x, true, arg_0.e, global0.d.x), func_2(global2[_wgslsmith_index_u32(13798u, 18u)], global1[_wgslsmith_index_u32(global0.c, 31u)], arg_0.d, Struct_1(1u, arg_0.b, 1u, arg_0.d, global0.e)).e), vec4<bool>(true, global0.e, global0.d.x, arg_0.d.x), select(vec4<bool>(u_input.a < 1i, select(true, global0.e, global0.d.x), arg_0.b > -1511f, func_2(arg_0, Struct_1(arg_1.x, 111f, arg_0.c, arg_0.d, true), vec3<bool>(global0.d.x, true, true), Struct_1(0u, -983f, 51749u, arg_0.d, arg_0.e)).e), !(!vec4<bool>(arg_0.e, global0.e, global0.d.x, global0.e)), vec4<bool>(arg_0.c != 25916u, false, global0.e || arg_0.d.x, true))), !(~global0.c != ~min(global0.c, 15312u)));
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(1u | arg_1.x) & (_wgslsmith_add_u32(firstTrailingBit(~1u), ~global0.c) >> (28590u % 32u)), 31u)];
    var var_1 = _wgslsmith_clamp_i32(-u_input.b | u_input.b, 1i, u_input.a >> (global0.a % 32u)) >> (firstLeadingBit(arg_1.x) % 32u);
    var var_2 = arg_1.ywx;
    let var_3 = ~_wgslsmith_clamp_u32(9572u, ~_wgslsmith_mult_u32(0u, 4294967295u), max(arg_0.c, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.c, 14254u), _wgslsmith_mod_u32(78035u, 1633u))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 31u)];
    var var_1 = func_3(func_2(arg_0, global2[_wgslsmith_index_u32(global0.c, 18u)], vec3<bool>(false & !arg_0.e, global0.d.x, true), Struct_1(global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b))), 1u, select(vec3<bool>(arg_2.d.x, false, false), arg_2.d, var_0.d.x), false)), abs(reverseBits(vec4<u32>(~arg_2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(44704u, global0.a, arg_0.a), vec3<u32>(var_0.c, 16771u, 10181u)), global0.c, global0.c))));
    var_1 = global2[_wgslsmith_index_u32(global0.c, 18u)];
    global3 = -_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 16982i, -58093i, u_input.b), vec4<i32>(u_input.b, -2147483647i, -30166i, u_input.b)), -_wgslsmith_mod_vec4_i32(vec4<i32>(488i, -2147483647i, 0i, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.a, 2147483647i))) < _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, -29086i), (-14776i << (~global0.a % 32u)) ^ max(1i, 40892i));
    let var_2 = global2[_wgslsmith_index_u32(~max(_wgslsmith_add_u32(~_wgslsmith_add_u32(22920u, var_0.c), arg_0.a & 0u), max(~global0.c, 4294967295u & arg_0.a) << (arg_2.c % 32u)), 18u)];
    return max(u_input.a, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 18>();
    global4 = array<vec4<u32>, 7>();
    let var_0 = _wgslsmith_mult_i32(max(_wgslsmith_mult_i32(firstTrailingBit(-24419i), func_1(Struct_1(0u, global0.b, global0.c, global0.d, false), global0.e, global1[_wgslsmith_index_u32(0u, 31u)])), u_input.b) | u_input.a, 1i);
    global0 = global2[_wgslsmith_index_u32(global0.a, 18u)];
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.a, 0u) << (~abs(1u) % 32u), max(1u, ~15509u));
    var var_2 = vec2<bool>(global0.d.x, !(!(!global0.d.x)));
    global4 = array<vec4<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-6921i));
}

