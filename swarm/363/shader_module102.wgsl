struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, vec4<i32>(-1i, 66488i, 45702i, -36257i), 845f), Struct_1(true, vec4<i32>(-1i, 78677i, 52488i, 1i), 127f), Struct_1(true, vec4<i32>(-14238i, -31583i, -27673i, 2147483647i), 145f), Struct_1(true, vec4<i32>(-1653i, 0i, -10847i, -36675i), 662f), Struct_1(true, vec4<i32>(17774i, 28651i, 2147483647i, 2147483647i), -1689f), Struct_1(true, vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), 1826f), Struct_1(false, vec4<i32>(-23938i, 2147483647i, -14635i, -1i), 815f), Struct_1(true, vec4<i32>(2147483647i, 1i, 1i, 1i), -578f), Struct_1(false, vec4<i32>(-2475i, -11633i, 55559i, 0i), 1000f), Struct_1(true, vec4<i32>(2437i, 1i, 22751i, -1i), -997f), Struct_1(true, vec4<i32>(34991i, 34686i, i32(-2147483648), 2147483647i), -459f), Struct_1(false, vec4<i32>(i32(-2147483648), 2910i, 42085i, 0i), -740f), Struct_1(true, vec4<i32>(-70155i, 1i, 1i, -32609i), 1438f), Struct_1(true, vec4<i32>(1i, 12158i, -11052i, -1i), 1000f), Struct_1(true, vec4<i32>(-28548i, -7658i, i32(-2147483648), 29595i), -993f), Struct_1(false, vec4<i32>(-24703i, 20653i, i32(-2147483648), 0i), -670f), Struct_1(true, vec4<i32>(0i, i32(-2147483648), -4768i, 28527i), 484f), Struct_1(true, vec4<i32>(-19129i, 19093i, -11262i, -1243i), 1780f), Struct_1(false, vec4<i32>(9100i, -1i, -39517i, 2147483647i), -385f), Struct_1(true, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -57554i), -1116f), Struct_1(true, vec4<i32>(1i, 66184i, -45523i, -16400i), 652f), Struct_1(false, vec4<i32>(-1i, 108174i, i32(-2147483648), 1i), 401f), Struct_1(false, vec4<i32>(1i, 25206i, i32(-2147483648), 2147483647i), 1634f), Struct_1(false, vec4<i32>(-9476i, 2147483647i, -1440i, i32(-2147483648)), -157f), Struct_1(false, vec4<i32>(-3583i, 25087i, 2147483647i, -38932i), -1000f), Struct_1(false, vec4<i32>(-46640i, i32(-2147483648), 3622i, 1i), -426f), Struct_1(false, vec4<i32>(-894i, -1i, 0i, -1923i), 864f), Struct_1(false, vec4<i32>(0i, 55087i, 1i, -4447i), 194f), Struct_1(false, vec4<i32>(2147483647i, 0i, 0i, 0i), -1040f), Struct_1(false, vec4<i32>(1i, -25242i, 29730i, -25605i), -826f), Struct_1(true, vec4<i32>(1i, -13327i, i32(-2147483648), i32(-2147483648)), -1104f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> bool {
    var var_0 = (11549i & -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.b.yzx, vec3<i32>(2147483647i, -1i, arg_0.b.x)), 1i)) == arg_0.b.x;
    global1 = array<Struct_1, 31>();
    var var_1 = 2147483647i;
    global0 = any(arg_1);
    return arg_0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 30438u, u_input.a, 4294967295u), vec4<u32>(~u_input.a, _wgslsmith_mult_u32(1u, u_input.a), 78940u, firstTrailingBit(36439u))), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(select(vec4<u32>(46312u, u_input.a, u_input.a, 0u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), arg_0.x), abs(vec4<u32>(u_input.a, 10918u, u_input.a, u_input.a)))), ~max(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) | vec4<u32>(45840u, 0u, 43616u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 26884u, u_input.a)))));
    var var_1 = -1395f;
    return -1i;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = !select(arg_2, arg_2, select(vec2<bool>(true, arg_2.x), vec2<bool>(any(vec4<bool>(false, false, true, arg_2.x)), false), select(!vec2<bool>(false, arg_2.x), !arg_2, arg_2)));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(func_4(vec2<bool>(false, func_3(global1[_wgslsmith_index_u32(arg_1, 31u)], vec4<bool>(arg_2.x, var_0.x, var_0.x, var_0.x), vec4<u32>(arg_1, 372u, 0u, 0u))), vec4<bool>(any(vec3<bool>(var_0.x, arg_2.x, var_0.x)), var_0.x, true, var_0.x)), 11365i), _wgslsmith_sub_vec2_i32(vec2<i32>(max(reverseBits(38659i), _wgslsmith_clamp_i32(-7534i, 0i, -1i)), _wgslsmith_mult_i32(-1i, -17744i)), firstLeadingBit(-max(vec2<i32>(51017i, 2147483647i), vec2<i32>(7648i, -19727i)))));
    let var_3 = i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_div_i32(min(var_2.x, 20389i), -60682i), reverseBits(-20424i));
    var var_4 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~(~(0u << (arg_1 % 32u))), 1u)), 31u)];
    return _wgslsmith_sub_vec2_u32(~(vec2<u32>(~0u, _wgslsmith_div_u32(arg_1, 84112u)) << (vec2<u32>(u_input.a, ~arg_1) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~min(vec2<u32>(34539u, u_input.a), vec2<u32>(75304u, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, arg_1) >> (vec2<u32>(4294967295u, arg_1) % vec2<u32>(32u)), vec2<u32>(36873u, arg_1) >> (vec2<u32>(38092u, arg_1) % vec2<u32>(32u)))) << (select(~countOneBits(vec2<u32>(u_input.a, arg_1)), vec2<u32>(~u_input.a, 31144u), true) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_add_i32((_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -1i, -36352i, 1i), vec4<i32>(1i, -20989i, 1i, 29167i), false), select(vec4<i32>(32481i, 1i, -7474i, -2147483647i), vec4<i32>(-32553i, -15378i, -2147483647i, 6526i), true)) << (select(~u_input.a, reverseBits(1u), arg_0) % 32u)) & 2147483647i, abs(1i) ^ _wgslsmith_div_i32(firstTrailingBit(~(-41051i)), 18920i));
    let var_1 = ~(vec2<u32>(1u << (1u % 32u), 1u) | ~func_2(1000f, u_input.a, vec2<bool>(false, true))) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 31167u), vec3<u32>(u_input.a, 32353u, 0u) << (vec3<u32>(37101u, 0u, 1u) % vec3<u32>(32u))) | _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 7294u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 90082u), vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a))), _wgslsmith_div_u32(~min(30356u, 1u), 1u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1171f, -636f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2272f, 562f), vec2<f32>(551f, 996f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1754f, 172f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-726f, -1306f)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, _wgslsmith_f_op_f32(abs(181f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1732f, -866f))))), arg_0)));
    let var_3 = global1[_wgslsmith_index_u32(~(~(~4294967295u)), 31u)];
    let var_4 = Struct_1(!any(select(select(vec4<bool>(var_3.a, true, arg_0, false), vec4<bool>(false, true, false, true), arg_0), vec4<bool>(arg_0, var_3.a, true, true), vec4<bool>(true, true, true, true))), vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(i32(-1i) * -58715i, -37334i >> (u_input.a % 32u))), -var_0, 2147483647i, 806i), 541f);
    return var_3.b.xyw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 31>();
    global0 = true;
    var var_0 = Struct_1(true, vec4<i32>(min(1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -1464i), ~56411i)), ~(~(2147483647i << (0u % 32u))), -1i, -_wgslsmith_dot_vec3_i32(func_1(false), vec3<i32>(-48972i, 4474i, -2147483647i))), _wgslsmith_f_op_f32(-392f * _wgslsmith_f_op_f32(min(1010f, _wgslsmith_f_op_f32(min(-604f, -120f))))));
    var var_1 = ~(~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(80177u, 66342u, 19811u)) << ((vec3<u32>(72702u, 22643u, 0u) >> (vec3<u32>(u_input.a, 31056u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)))) ^ vec3<u32>(~1u, abs(~(~u_input.a)), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, var_0.c))), ~0u, vec2<bool>(!var_0.a, true)).x);
    let var_2 = global1[_wgslsmith_index_u32(var_1.x, 31u)];
    global1 = array<Struct_1, 31>();
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))));
}

