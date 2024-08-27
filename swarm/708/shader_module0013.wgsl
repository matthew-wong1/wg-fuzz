struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<i32, 10> = array<i32, 10>(2147483647i, 31535i, 20984i, 4840i, 1i, i32(-2147483648), -14026i, 45071i, i32(-2147483648), 1i);

var<private> global1: array<i32, 30> = array<i32, 30>(-1i, 0i, -43199i, -45828i, i32(-2147483648), 21157i, 1i, 48977i, 1i, -1i, -20172i, -1i, 1i, 2147483647i, -21897i, 0i, i32(-2147483648), 1i, 1i, 1i, -1i, 0i, 1i, -27890i, 1i, 2147483647i, 49272i, -1i, -1i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_2(vec4<i32>(~(arg_1.a.x | arg_1.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_1.a.x, -2147483647i, 11794i), select(arg_1.a.yxy, -arg_1.a.ywz, arg_0.zyx)), 1i, ~select(min(-2147483647i, global1[_wgslsmith_index_u32(1u, 30u)]), -arg_1.a.x, arg_2.c.b)), u_input.b, Struct_1(_wgslsmith_add_u32(arg_2.b, 4294967295u), all(select(arg_0.xy, arg_0.yy, false))));
    let var_1 = arg_1.c.b;
    var var_2 = _wgslsmith_div_vec4_i32(firstTrailingBit(-_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_0.a.x, 0i, var_0.a.x, -2147483647i), var_0.a, arg_0.x), var_0.a, abs(vec4<i32>(15922i, var_0.a.x, -3044i, -45818i)))), vec4<i32>(-1i) * -(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a.x, global0[_wgslsmith_index_u32(1u, 10u)], arg_2.a.x, var_0.a.x), var_0.a) & _wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], arg_2.a.x, arg_1.a.x), vec4<i32>(arg_2.a.x, 0i, -1i, arg_1.a.x))));
    var var_3 = Struct_2(vec4<i32>(49287i << ((~u_input.b ^ select(u_input.b, var_0.b, var_0.c.b)) % 32u), select(~(-var_0.a.x), -14008i, true), i32(-1i) * -1i, var_2.x), min(38805u, u_input.c.x), Struct_1(~(~1u), all(select(arg_0.xxy, !vec3<bool>(true, var_0.c.b, false), true))));
    var var_4 = select(vec3<bool>(arg_0.x, !var_0.c.b, true), !arg_0.wxy, select(vec3<bool>(true, var_1, select(0u, u_input.b, var_3.c.b) == 41896u), vec3<bool>(true, all(arg_0.yy), true), all(!arg_0.wzw)));
    return 0u >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_2(vec4<i32>(6888i, global1[_wgslsmith_index_u32(~func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), Struct_2(arg_1, u_input.b, Struct_1(4294967295u, false)), Struct_2(arg_1, u_input.b, Struct_1(0u, false))), 30u)], _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, global1[_wgslsmith_index_u32(u_input.c.x, 30u)], -1i) | arg_1.zyy, vec3<i32>(19663i, 0i, arg_1.x)), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(max(50385u, 30930u), 30u)], 2147483647i)), 1i), ~(u_input.b ^ _wgslsmith_div_u32(90243u, 1u)), Struct_1(~(~firstTrailingBit(u_input.c.x)), firstTrailingBit(~global1[_wgslsmith_index_u32(46780u, 30u)]) > ~(~global0[_wgslsmith_index_u32(u_input.a.x, 10u)])));
    global0 = array<i32, 10>();
    var var_1 = var_0.c;
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = ((~(~arg_1) << (abs(46061u) % 32u)) > 61301u) & all(vec4<bool>(arg_2.x <= 143f, func_2(vec2<f32>(-481f, -644f), ~vec4<i32>(-1i, -1i, 16321i, 0i)), all(vec3<bool>(false, true, false)), true));
    return Struct_2(firstLeadingBit(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(29690i, global0[_wgslsmith_index_u32(13293u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], arg_3.x), vec4<i32>(-12812i, 32518i, 1i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)])))), ~1u, Struct_1(~arg_1 ^ ~1u, arg_0.x != _wgslsmith_sub_u32(abs(1u), ~4294967295u)));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = u_input.a.x;
    global0 = array<i32, 10>();
    var var_2 = Struct_1(~firstLeadingBit(~(~1u)), arg_0.c.b);
    var var_3 = func_1(~select(~vec3<u32>(var_1, var_2.a, 23620u), vec3<u32>(~0u, firstLeadingBit(var_2.a), ~arg_0.b), !vec3<bool>(true, false, var_2.b)), _wgslsmith_sub_u32(func_1(u_input.c >> (_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(0u, 0u, u_input.c.x)) % vec3<u32>(32u)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(879f, -1973f, -876f) * vec3<f32>(-1649f, 975f, -886f))), -(arg_0.a.xzz ^ arg_0.a.zxy)).b, ~_wgslsmith_mod_u32(~var_2.a, 1u)), vec3<f32>(1f, 1f, 1f), _wgslsmith_mult_vec3_i32(-(-arg_0.a.wyx << (~u_input.c % vec3<u32>(32u))), abs(~arg_0.a.xyy << (~u_input.c % vec3<u32>(32u))))).c;
    return ~_wgslsmith_div_vec4_u32(countOneBits(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, var_2.a), vec4<u32>(var_3.a, u_input.b, 4294967295u, var_1), vec4<u32>(arg_0.c.a, u_input.b, 64702u, 13167u)))), select(reverseBits(~vec4<u32>(84709u, var_1, 4294967295u, var_1)), vec4<u32>(arg_0.c.a, func_3(vec4<bool>(false, var_3.b, false, true), arg_0, Struct_2(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.c.a, 30u)], 4680i, -37504i), u_input.c.x, arg_0.c)), 14385u, u_input.b), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, ~u_input.a.x << (u_input.b % 32u), ~(~0u)) >> (func_4(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, 14002u), vec3<u32>(38728u, 65042u, 97625u)), 1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-805f, -733f, 1160f) + vec3<f32>(-2032f, 518f, 616f)), vec3<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(u_input.c.x, 30u)]))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 23849u, 4294967295u, min(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.b, 0u), vec4<u32>(1u, 23591u, u_input.a.x, u_input.c.x)))), _wgslsmith_mod_vec4_u32(func_4(func_1(vec3<u32>(64527u, 0u, u_input.a.x), 4294967295u, vec3<f32>(-891f, -700f, 200f), vec3<i32>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], -1i))), ~(~vec4<u32>(4294967295u, 14447u, 0u, 0u)))));
    var_0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 35292u), vec4<u32>(1u, u_input.a.x, var_0.x, var_0.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 5266u, u_input.a.x, u_input.c.x), vec4<u32>(44679u, 67824u, 1u, var_0.x))) | (firstLeadingBit(vec4<u32>(var_0.x, 42888u, 1u, var_0.x)) >> (vec4<u32>(17090u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) << (vec4<u32>(reverseBits(u_input.a.x), 1u, _wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, 1u), ~u_input.b)), u_input.b) % vec4<u32>(32u));
    var_0 = ~vec4<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), firstLeadingBit(var_0.x << (u_input.a.x % 32u)), 0u, u_input.a.x ^ (var_0.x ^ var_0.x)) | abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(func_4(Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 30u)], 15253i, global0[_wgslsmith_index_u32(1u, 10u)], -17612i), 14604u, Struct_1(u_input.b, false)))), vec4<u32>(var_0.x, 36748u, 64324u & u_input.a.x, ~35832u)));
    let x = u_input.a;
    s_output = StorageBuffer(359f);
}

