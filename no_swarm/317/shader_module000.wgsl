struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(-27320i, 1i), -1i, vec4<i32>(-1i, -28470i, 44846i, -1i), 0i), Struct_1(vec2<i32>(-30159i, i32(-2147483648)), 0i, vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), -18477i), Struct_1(vec2<i32>(3540i, -31950i), -52552i, vec4<i32>(-1i, 26810i, -24906i, 2147483647i), i32(-2147483648)), Struct_1(vec2<i32>(-5143i, -4312i), 1i, vec4<i32>(16946i, 3961i, 0i, -43188i), 0i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 8086i, vec4<i32>(2147483647i, 100902i, -9449i, i32(-2147483648)), 2147483647i), Struct_1(vec2<i32>(0i, 0i), 4759i, vec4<i32>(0i, 946i, -1i, i32(-2147483648)), 15159i), Struct_1(vec2<i32>(i32(-2147483648), -1i), -33937i, vec4<i32>(11088i, -11727i, i32(-2147483648), 1i), 1i), Struct_1(vec2<i32>(-69314i, -1i), -23982i, vec4<i32>(-25754i, 1i, 41353i, 2147483647i), -45873i), Struct_1(vec2<i32>(1i, 0i), 1i, vec4<i32>(1i, i32(-2147483648), -12772i, 1i), 1i), Struct_1(vec2<i32>(2147483647i, -43777i), 0i, vec4<i32>(-37951i, 11316i, -2904i, 0i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 39496i), -1i, vec4<i32>(12804i, -18832i, i32(-2147483648), 11347i), -58922i), Struct_1(vec2<i32>(2147483647i, -1i), -1847i, vec4<i32>(i32(-2147483648), 1i, 0i, 17508i), -1i), Struct_1(vec2<i32>(i32(-2147483648), -39193i), 52331i, vec4<i32>(-20051i, 2147483647i, -1i, -1i), 62378i), Struct_1(vec2<i32>(-1i, 34905i), 7018i, vec4<i32>(1i, 22096i, -12105i, -45240i), 9404i), Struct_1(vec2<i32>(0i, -51234i), -1i, vec4<i32>(17102i, -1i, -37747i, 1i), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), -1i, vec4<i32>(-2692i, 38977i, 1i, i32(-2147483648)), 2147483647i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), -17873i, vec4<i32>(65583i, 0i, 18143i, 1i), 29661i), Struct_1(vec2<i32>(-18493i, -11289i), 0i, vec4<i32>(2147483647i, i32(-2147483648), 23315i, -2915i), 2147483647i), Struct_1(vec2<i32>(-30623i, -8772i), 39666i, vec4<i32>(2147483647i, -27983i, -37335i, -1183i), -35067i), Struct_1(vec2<i32>(4484i, -40270i), 2147483647i, vec4<i32>(i32(-2147483648), -3731i, -10647i, 26126i), -31337i));

var<private> global1: vec2<u32>;

var<private> global2: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + -1252f);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) - var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -582f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))));
    global2 = !select(vec3<bool>(global2.x, any(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, global2.x, true, true), true)), true), vec3<bool>(!global2.x, global2.x, (global1.x >> (53741u % 32u)) == 41326u), true);
    return reverseBits(57478u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = 12622i;
    let var_1 = vec3<i32>(i32(-1i) * -30350i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, -39224i ^ min(2147483647i, arg_1.a.x)), arg_1.d, ~(~2147483647i)), _wgslsmith_sub_i32(max(arg_1.b, arg_1.d), arg_1.d) >> (65705u % 32u));
    var var_2 = -_wgslsmith_dot_vec4_i32(arg_1.c, _wgslsmith_clamp_vec4_i32(arg_1.c, arg_1.c, vec4<i32>(firstLeadingBit(var_1.x), -var_1.x, ~arg_1.d, 1i)));
    var var_3 = (~(~min(vec4<u32>(4294967295u, arg_2.x, 98074u, 0u), vec4<u32>(u_input.a, global1.x, 4294967295u, 4294967295u))) >> ((~vec4<u32>(31483u, u_input.a, u_input.a, global1.x) << (_wgslsmith_div_vec4_u32(~vec4<u32>(33687u, u_input.a, 1u, 39011u), vec4<u32>(arg_2.x, 19993u, arg_2.x, global1.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<u32>(1u, 1u, firstLeadingBit(1u), 0u);
    var var_4 = _wgslsmith_mult_u32(~(~global1.x), abs(u_input.a));
    return firstTrailingBit(~40484i);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<Struct_1, 20>();
    let var_0 = arg_0;
    var var_1 = -vec4<i32>(arg_0.c.x, arg_0.b, abs(reverseBits(~var_0.a.x)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~var_0.b, abs(arg_0.a.x), 0i), var_0.d));
    var var_2 = Struct_1(abs(vec2<i32>(select(-82224i, -1i, true), min(var_0.b, arg_0.a.x))) ^ (~(var_1.wy | var_0.a) | -_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(var_0.b, -19625i))), reverseBits(~reverseBits(i32(-1i) * -2147483647i)), vec4<i32>(-1i, -arg_0.a.x, _wgslsmith_mult_i32(-17977i, ~(-53686i & var_0.b)), _wgslsmith_sub_i32(4737i, _wgslsmith_clamp_i32(-1i & var_1.x, var_0.c.x, _wgslsmith_sub_i32(0i, 2147483647i)))), ~_wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(12300i, var_1.x)), arg_0.c.xx));
    var var_3 = arg_0;
    return select(!select(!vec3<bool>(global2.x, global2.x, global2.x), select(select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, true, true)), vec3<bool>(global2.x, global2.x, false), global2.x), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, false, false)))), select(vec3<bool>(global2.x, global2.x, false), !select(!vec3<bool>(true, false, global2.x), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, true, false), true), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, global2.x))), !(!select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, false), vec3<bool>(true, true, false)))), !vec3<bool>(all(!vec4<bool>(true, global2.x, global2.x, global2.x)), !all(global2.xx), true));
}

fn func_2() -> f32 {
    global2 = vec3<bool>(!global2.x, true, true);
    global2 = select(vec3<bool>(global2.x, true, true), select(vec3<bool>(!global2.x, true, false), func_4(Struct_1(abs(vec2<i32>(2147483647i, -2147483647i)), func_3(vec4<bool>(global2.x, global2.x, global2.x, global2.x), Struct_1(vec2<i32>(2147483647i, 21344i), 32106i, vec4<i32>(-2147483647i, -10866i, 14244i, 35883i), 0i), vec2<u32>(global1.x, 65033u)), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 31112i), vec3<i32>(1i, 11671i, 0i)))), true), !global2.x);
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-18530i, 1i, -2147483647i), vec3<i32>(17163i, -7341i, 1i)) & (i32(-1i) * -29608i), _wgslsmith_add_i32(min(~56009i, 1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -30170i), vec3<i32>(0i, 10097i, -6701i)))), 1593i, vec4<i32>(1i, 1i, 1i, 1i) << (~(~vec4<u32>(u_input.a, global1.x, global1.x, 1u) | (vec4<u32>(global1.x, 78369u, global1.x, 22366u) | vec4<u32>(1u, u_input.a, u_input.a, 1u))) % vec4<u32>(32u)), i32(-1i) * -(~(~50576i)));
    let var_1 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(u_input.a)), 20u)];
    global1 = vec2<u32>(global1.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), select(vec2<u32>(global1.x, global1.x), vec2<u32>(u_input.a, u_input.a), global2.x))) >> (firstLeadingBit(select(~(~vec2<u32>(1u, global1.x)), ~vec2<u32>(15337u, 2026u) | (vec2<u32>(u_input.a, global1.x) >> (vec2<u32>(36106u, 0u) % vec2<u32>(32u))), vec2<bool>(!global2.x, true))) % vec2<u32>(32u));
    return 796f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~1u), 20u)];
    let var_1 = !global2.x;
    let var_2 = Struct_1(vec2<i32>(var_0.d, var_0.c.x), var_0.b, vec4<i32>(_wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 1i), -2147483647i)), 16235i, -(-1i ^ var_0.c.x) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(global1.x, global1.x), 50074u) % 32u), ~reverseBits(-var_0.a.x)), 47129i);
    let var_3 = vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_sub_u32(func_1(-reverseBits(vec2<i32>(0i, 1i)), Struct_1(vec2<i32>(-4584i, 0i), ~var_0.b, _wgslsmith_div_vec4_i32(var_0.c, vec4<i32>(-28051i, -2147483647i, -109i, var_2.a.x)), -33124i), u_input.a), abs(abs(~54069u))), abs(_wgslsmith_clamp_u32(12245u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, u_input.a, 18252u), min(vec4<u32>(u_input.a, u_input.a, 4294967295u, global1.x), vec4<u32>(0u, global1.x, 4294967295u, u_input.a))), _wgslsmith_div_u32(6997u, global1.x))), 1u);
    global2 = !select(!(!select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, false, global2.x))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_1), all(select(global2.xz, vec2<bool>(var_1, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(240f, -2091f, _wgslsmith_f_op_f32(trunc(1189f)), _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, 1198f, 1000f, 1305f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, -141f, -541f, _wgslsmith_f_op_f32(trunc(-293f))))), ~2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(select(513f, -936f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * 984f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1447f))))));
}

