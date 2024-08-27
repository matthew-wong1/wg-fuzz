struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(-114f, vec2<i32>(-52625i, 1i), true), Struct_4(204f, vec2<i32>(-34134i, i32(-2147483648)), false), Struct_4(-1012f, vec2<i32>(0i, 62271i), false), Struct_4(-982f, vec2<i32>(i32(-2147483648), 12117i), true), Struct_4(-956f, vec2<i32>(-15359i, -443i), true), Struct_4(-374f, vec2<i32>(i32(-2147483648), 2147483647i), false), Struct_4(-946f, vec2<i32>(2147483647i, 2147483647i), true), Struct_4(992f, vec2<i32>(-5405i, 53596i), true), Struct_4(722f, vec2<i32>(1i, 40532i), true), Struct_4(962f, vec2<i32>(35028i, -2089i), true), Struct_4(-757f, vec2<i32>(8614i, 0i), false), Struct_4(1451f, vec2<i32>(11329i, 1i), true), Struct_4(-689f, vec2<i32>(1i, 26125i), false), Struct_4(-389f, vec2<i32>(-1i, 2147483647i), false), Struct_4(-1016f, vec2<i32>(-12291i, -23704i), false), Struct_4(-1000f, vec2<i32>(31780i, -23989i), false), Struct_4(-2002f, vec2<i32>(1i, 1i), true), Struct_4(-1402f, vec2<i32>(19545i, 16924i), true), Struct_4(355f, vec2<i32>(-3331i, -6944i), false), Struct_4(435f, vec2<i32>(1i, 41496i), true));

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(0u), Struct_1(1u)), Struct_2(Struct_1(4363u), Struct_1(4294967295u)), Struct_2(Struct_1(20253u), Struct_1(39891u)), Struct_2(Struct_1(39150u), Struct_1(45891u)), Struct_2(Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(Struct_1(31776u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(Struct_1(0u), Struct_1(1u)), Struct_2(Struct_1(62263u), Struct_1(46621u)), Struct_2(Struct_1(20692u), Struct_1(0u)), Struct_2(Struct_1(38491u), Struct_1(1u)), Struct_2(Struct_1(70614u), Struct_1(19083u)), Struct_2(Struct_1(7595u), Struct_1(64531u)), Struct_2(Struct_1(68806u), Struct_1(39868u)), Struct_2(Struct_1(4294967295u), Struct_1(31222u)), Struct_2(Struct_1(1u), Struct_1(1u)), Struct_2(Struct_1(4294967295u), Struct_1(77073u)), Struct_2(Struct_1(32613u), Struct_1(51336u)), Struct_2(Struct_1(13111u), Struct_1(1u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = _wgslsmith_clamp_u32(4294967295u, global2.x, firstTrailingBit(u_input.b));
    let var_1 = select(vec2<bool>(true, arg_0.c), vec2<bool>(true, arg_0.c), !vec2<bool>(any(select(vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), vec4<bool>(true, false, true, false), vec4<bool>(arg_0.c, true, true, false))), -233f > _wgslsmith_div_f32(arg_0.a, arg_0.a)));
    global1 = array<Struct_4, 20>();
    let var_2 = vec4<bool>(arg_0.c, false, any(var_1), true);
    var var_3 = Struct_1(min(4294967295u, 0u));
    return countOneBits(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.b.x, -arg_0.b.x), 23927i));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-firstLeadingBit(u_input.a), u_input.a & u_input.a), func_3(Struct_4(_wgslsmith_f_op_f32(trunc(arg_3)), vec2<i32>(-2147483647i, -1i), any(vec3<bool>(true, arg_0, false)))));
    let var_1 = Struct_2(Struct_1(~(~1u)), Struct_1(abs(~(global2.x << (0u % 32u)))));
    var var_2 = 4294967295u;
    let var_3 = max(0u >> (arg_1 % 32u), firstLeadingBit(_wgslsmith_div_u32(u_input.c, ~(26416u | arg_1))));
    global3 = array<Struct_2, 19>();
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(arg_2.x)))) < arg_2.x;
    global0 = array<vec3<bool>, 7>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-arg_2.x), select(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), ~vec2<i32>(2147483647i, -2147483647i))), vec2<i32>((u_input.a | u_input.a) | ~u_input.a, firstLeadingBit(u_input.a)), select(true, !all(vec2<bool>(true, true)), false)), all(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, u_input.b == arg_1.x), vec4<bool>(49790i > u_input.a, arg_2.x >= arg_2.x, arg_2.x <= arg_2.x, select(false, true, true)))));
    var var_2 = ~(_wgslsmith_clamp_vec2_u32(arg_1, arg_1, global2.wz) << (~(~global2.yz << (vec2<u32>(arg_0.a.a, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = arg_2;
    return arg_0.a;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(462f));
    let var_1 = Struct_2(Struct_1(u_input.b), func_4(Struct_3(func_2(!arg_2.x, u_input.c << (u_input.c % 32u), false, -931f)), ~global2.wy, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1, arg_1), -707f, _wgslsmith_div_f32(var_0, arg_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-777f, arg_0.a, -426f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_0, -1134f), vec3<f32>(arg_1, var_0, -1373f)))))));
    return _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1563f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.xxw;
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(685f * -982f), 843f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(223f, vec2<i32>(u_input.a, u_input.a), true), _wgslsmith_f_op_f32(f32(-1f) * -1292f), vec2<bool>(false, false))))), reverseBits(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -219f), -1000f)))));
}

