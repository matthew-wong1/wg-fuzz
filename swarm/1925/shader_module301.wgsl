struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<i32>(i32(-2147483648), 40467i, -50105i, 0i), 84248u, true, 0i), Struct_2(vec4<i32>(2147483647i, -1i, -1i, -1i), 1u, false, 0i), Struct_2(vec4<i32>(98888i, -7958i, -1i, i32(-2147483648)), 0u, false, 19760i), Struct_2(vec4<i32>(-30903i, 62220i, 5399i, 38788i), 4294967295u, false, -26625i), Struct_2(vec4<i32>(-1i, 5555i, 0i, -73905i), 4294967295u, false, 1i), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -59268i, 33759i), 2381u, true, 2147483647i), Struct_2(vec4<i32>(2147483647i, 2147483647i, 44617i, i32(-2147483648)), 78857u, true, i32(-2147483648)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 0i, 118325i), 54368u, true, -1i), Struct_2(vec4<i32>(38999i, 55071i, 40300i, 0i), 69565u, true, 1i), Struct_2(vec4<i32>(-1i, -39618i, i32(-2147483648), i32(-2147483648)), 19425u, false, 39076i), Struct_2(vec4<i32>(i32(-2147483648), -9017i, i32(-2147483648), 0i), 25408u, true, -1i), Struct_2(vec4<i32>(8352i, 19930i, -46149i, 0i), 4294967295u, false, -5525i), Struct_2(vec4<i32>(-3820i, 11405i, 1i, -1i), 12120u, true, 1i), Struct_2(vec4<i32>(1404i, -53791i, -33065i, -30031i), 56907u, false, 16816i), Struct_2(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i), 0u, true, 42367i));

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 5001i, -7116i);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(~(-13706i), 34221i), countOneBits(u_input.c)), -42695i, arg_2.b | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, global1.x), abs(u_input.a))) ^ vec3<i32>(1i, arg_2.b, arg_2.b);
    let var_1 = _wgslsmith_dot_vec2_i32(~countOneBits(_wgslsmith_clamp_vec2_i32(~global1.zy, reverseBits(vec2<i32>(arg_2.b, u_input.b)), abs(vec2<i32>(62959i, -49960i)))), global1.zz);
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_2.e, 0u, 4294967295u, u_input.d)), min(vec4<u32>(30617u, u_input.d, 25192u, 25277u), vec4<u32>(4294967295u, arg_2.a.x, 64602u, 66763u)) ^ ~vec4<u32>(arg_2.e, arg_2.a.x, 4294967295u, 7709u)), vec4<u32>(~(u_input.d | arg_2.a.x), 49879u, ~u_input.d, ~(arg_2.a.x >> (14811u % 32u)))) & ~0u;
    global1 = vec3<i32>(firstLeadingBit(2853i), 1i, -1i);
    let var_3 = arg_2.a;
    return ~var_2;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    var var_0 = Struct_2(vec4<i32>(u_input.c, _wgslsmith_div_i32(~1i, global1.x), select(-26749i, 1i >> (1u % 32u), true), min(min(-2147483647i, 1i), _wgslsmith_mult_i32(u_input.c, u_input.a.x))), func_3(u_input.a.x, select(!vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, true, arg_0.x, true), select(vec4<bool>(arg_1, arg_1, arg_1, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x))), Struct_1(firstLeadingBit(vec2<u32>(u_input.d, 24188u)), global1.x, false, !arg_1, _wgslsmith_mod_u32(1u, u_input.d))) >> (u_input.d % 32u), arg_1, u_input.a.x >> (~u_input.d % 32u));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(step(1583f, -1798f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1074f, 893f), vec2<f32>(573f, 1025f))) - vec2<f32>(-1987f, 1000f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(-2120f, -1039f)), 466f))));
    global1 = var_0.a.xxz;
    let var_2 = ~(~9958u);
    var var_3 = global0[_wgslsmith_index_u32(~select(~(~0u), min(~36070u, ~0u), true), 15u)];
    return 1i;
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<u32> {
    global1 = vec3<i32>(2147483647i, func_2(vec3<bool>(true, !any(vec2<bool>(false, true)), true), true), -arg_1 >> (~arg_0 % 32u));
    let var_0 = Struct_1(vec2<u32>(u_input.d, u_input.d), u_input.b << (~(arg_0 ^ arg_0) % 32u), all(vec4<bool>(true, ~6710i <= firstLeadingBit(arg_1), true, true)), true, ~(u_input.d | _wgslsmith_mult_u32(arg_0, 4294967295u)) ^ 65381u);
    let var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(reverseBits(firstTrailingBit(~vec2<u32>(49911u, 24871u))), reverseBits(var_0.a)), 2147483647i, !var_0.d, all(vec2<bool>(var_1.c, true)) || var_1.c, ~_wgslsmith_add_u32(6364u, 38526u));
    let var_3 = vec4<i32>(var_2.b, 0i, u_input.c, var_2.b);
    return ~min(min(~(var_0.a << (var_2.a % vec2<u32>(32u))), vec2<u32>(~1u, _wgslsmith_mult_u32(var_1.e, var_2.e))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.d;
    var var_0 = Struct_1(vec2<u32>(abs(1u), u_input.d) | ~func_1(~2624u, _wgslsmith_mult_i32(24258i, 41225i)), u_input.b, all(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)))), ~_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(max(4294967295u, u_input.d), abs(57776u))));
    let var_1 = vec3<bool>(true, false, false);
    let var_2 = Struct_1(abs(func_1(~u_input.d, var_0.b)), global1.x, any(var_1), var_1.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.a, func_1(41904u, 1i)), _wgslsmith_sub_u32(firstTrailingBit(var_0.a.x), ~49257u)));
    var var_3 = max(_wgslsmith_add_i32(2147483647i, var_2.b), ~reverseBits(_wgslsmith_mult_i32(-53190i, 9447i) >> (_wgslsmith_add_u32(1u, u_input.d) % 32u)));
    let var_4 = Struct_1(var_2.a ^ ~var_0.a, ~global1.x, var_2.c & (!all(var_1.zy) && var_2.d), all(!(!select(vec4<bool>(var_0.c, true, var_1.x, var_2.c), vec4<bool>(var_2.d, var_0.c, true, false), var_0.c))), 10816u);
    let var_5 = Struct_1(~(~min(vec2<u32>(u_input.d, 4294967295u), firstLeadingBit(vec2<u32>(112413u, u_input.d)))), ~(var_2.b << (var_2.a.x % 32u)), ((all(vec2<bool>(false, var_4.c)) && true) && any(var_1.zy)) | var_0.d, any(var_1.xy), reverseBits(firstTrailingBit(var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, _wgslsmith_f_op_f32(806f - -592f), 284f)))), vec2<f32>(_wgslsmith_div_f32(247f, _wgslsmith_f_op_f32(f32(-1f) * -843f)), -1498f), var_5.b);
}

