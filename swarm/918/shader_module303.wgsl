struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(4294967295u, vec4<u32>(1u, 2174u, 115125u, 39228u), vec2<i32>(-1i, 0i)), Struct_4(652u, vec4<u32>(1u, 57566u, 4935u, 35496u), vec2<i32>(4903i, 41647i)), Struct_4(4294967295u, vec4<u32>(0u, 1u, 60480u, 4294967295u), vec2<i32>(2147483647i, -1i)), Struct_4(33833u, vec4<u32>(1u, 2450u, 44386u, 47684u), vec2<i32>(1i, 44680i)), Struct_4(4294967295u, vec4<u32>(4294967295u, 4294967295u, 2231u, 12626u), vec2<i32>(-1i, 19221i)), Struct_4(0u, vec4<u32>(47687u, 16320u, 65836u, 33707u), vec2<i32>(2147483647i, 2147483647i)), Struct_4(249u, vec4<u32>(27958u, 43917u, 38001u, 0u), vec2<i32>(-1i, -1i)), Struct_4(76452u, vec4<u32>(0u, 0u, 4648u, 7081u), vec2<i32>(-1i, -34530i)), Struct_4(35432u, vec4<u32>(0u, 32958u, 1u, 45636u), vec2<i32>(11314i, 30021i)), Struct_4(27486u, vec4<u32>(51691u, 1u, 4294967295u, 10913u), vec2<i32>(0i, 2759i)), Struct_4(1u, vec4<u32>(30444u, 18722u, 70633u, 18766u), vec2<i32>(1i, i32(-2147483648))), Struct_4(14738u, vec4<u32>(90429u, 68461u, 4294967295u, 91839u), vec2<i32>(26756i, -1i)), Struct_4(0u, vec4<u32>(30772u, 48345u, 1u, 16625u), vec2<i32>(0i, 38468i)), Struct_4(0u, vec4<u32>(28329u, 58772u, 80727u, 0u), vec2<i32>(-23692i, -33020i)), Struct_4(0u, vec4<u32>(9030u, 0u, 86414u, 0u), vec2<i32>(2147483647i, -34698i)), Struct_4(31243u, vec4<u32>(4294967295u, 4294967295u, 77597u, 1u), vec2<i32>(0i, -43704i)), Struct_4(0u, vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec2<i32>(i32(-2147483648), 1i)), Struct_4(33545u, vec4<u32>(0u, 4294967295u, 21623u, 33928u), vec2<i32>(-44103i, -21333i)), Struct_4(14238u, vec4<u32>(27018u, 94879u, 18519u, 1u), vec2<i32>(-7176i, 3542i)), Struct_4(0u, vec4<u32>(4294967295u, 36371u, 25590u, 0u), vec2<i32>(2147483647i, 0i)), Struct_4(51706u, vec4<u32>(0u, 4294967295u, 0u, 0u), vec2<i32>(9804i, 0i)), Struct_4(0u, vec4<u32>(0u, 27896u, 30895u, 9415u), vec2<i32>(-25916i, -12051i)));

var<private> global3: array<bool, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = ~vec3<u32>(~40333u, ~_wgslsmith_mod_u32(max(3333u, 0u), ~1u), 0u);
    let var_1 = ~(vec3<i32>(_wgslsmith_div_i32(~25775i, 53885i), u_input.a, 1i) >> (var_0 % vec3<u32>(32u)));
    return var_0.x;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> Struct_5 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_div_f32(990f, arg_0)))), vec3<f32>(-447f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(307f + -452f), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(ceil(arg_0))), arg_0, true & global3[_wgslsmith_index_u32(countOneBits(118067u), 18u)]))));
    global2 = array<Struct_4, 22>();
    let var_1 = reverseBits(_wgslsmith_mult_u32(func_3(), ~(~84893u)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0)))) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) - _wgslsmith_f_op_f32(-arg_0))))));
    global0 = -519f;
    return Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))))), vec2<bool>(any(!vec4<bool>(true, global3[_wgslsmith_index_u32(var_1, 18u)], global3[_wgslsmith_index_u32(var_1, 18u)], global3[_wgslsmith_index_u32(var_1, 18u)])) && (arg_2 >= 1i), false));
}

fn func_1() -> bool {
    let var_0 = 1i;
    var var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-921f, -1623f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-388f * 269f) - 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) + _wgslsmith_f_op_f32(201f + -125f))), _wgslsmith_mult_vec3_i32(~vec3<i32>(abs(var_0), -1i, 0i), select(-select(vec3<i32>(1i, u_input.a, -25278i), vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 18u)], true)), vec3<i32>(~(-20302i), 1i, ~(-2147483647i)), !global3[_wgslsmith_index_u32(1u, 18u)])), -1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-488f, var_1.a, var_1.a, -145f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, var_1.a, -1225f, -1389f) * vec4<f32>(629f, var_1.a, 203f, var_1.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, -1042f, -942f, -1000f)))))), vec4<f32>(667f, _wgslsmith_f_op_f32(ceil(-606f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a)), 2011f), 376f), any(select(select(select(vec3<bool>(var_1.b.x, global3[_wgslsmith_index_u32(0u, 18u)], true), vec3<bool>(global3[_wgslsmith_index_u32(31672u, 18u)], global3[_wgslsmith_index_u32(7075u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), false), select(vec3<bool>(false, var_1.b.x, global3[_wgslsmith_index_u32(55117u, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(15647u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]), vec3<bool>(var_1.b.x, true, false)), global3[_wgslsmith_index_u32(38274u, 18u)] && false), select(vec3<bool>(true, var_1.b.x, global3[_wgslsmith_index_u32(70880u, 18u)]), !vec3<bool>(global3[_wgslsmith_index_u32(24582u, 18u)], false, global3[_wgslsmith_index_u32(19733u, 18u)]), select(vec3<bool>(false, false, false), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(7967u, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(39563u, 18u)], false, false))), !vec3<bool>(false, var_1.b.x, var_1.b.x)))));
    var var_3 = select(vec4<bool>(10418i <= ~select(var_0, 18193i, global3[_wgslsmith_index_u32(0u, 18u)]), !any(select(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), vec3<bool>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]), vec3<bool>(false, true, false))), select(true, global3[_wgslsmith_index_u32(reverseBits(~17690u), 18u)], any(vec3<bool>(false, var_1.b.x, var_1.b.x))), true), !vec4<bool>(false & global3[_wgslsmith_index_u32(~75976u, 18u)], all(vec2<bool>(false, true)), true, any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], false, false, var_1.b.x))), select(vec4<bool>(any(select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(4622u, 18u)], global3[_wgslsmith_index_u32(39042u, 18u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], var_1.b.x, var_1.b.x, false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 18u)], true))), (var_1.b.x || true) & (var_1.b.x || false), ~u_input.a < (var_0 >> (0u % 32u)), true), select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], var_1.b.x, true, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, true, false, var_1.b.x)), select(vec4<bool>(var_1.b.x, var_1.b.x, true, false), vec4<bool>(false, var_1.b.x, var_1.b.x, false), true), all(vec2<bool>(var_1.b.x, false))), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 18u)], true, false)), vec4<bool>(any(vec4<bool>(true, var_1.b.x, global3[_wgslsmith_index_u32(10786u, 18u)], var_1.b.x)), !var_1.b.x, true, true)), true));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), ~vec2<u32>(72545u, 0u)), ~firstTrailingBit(vec2<u32>(4294967295u, 0u))) << (reverseBits(_wgslsmith_sub_u32(min(4294967295u, 80241u), 1u)) % 32u), 64044u);
    return !(reverseBits(var_4) >= 31818u);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: u32) -> Struct_4 {
    let var_0 = vec2<u32>(select(arg_3, abs(24388u), arg_1.x), ~arg_3);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(step(arg_2.a, arg_2.a)), arg_2.b);
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-u_input.a, -42442i) << (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~var_0, var_0), var_0) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-668i << (~arg_3 % 32u), firstTrailingBit(i32(-1i) * -2147483647i)), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a & 0i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -1i), firstTrailingBit(vec3<i32>(-20174i, 8297i, -3584i))))));
    var var_3 = ~0u;
    let var_4 = -vec3<i32>(-2147483647i, u_input.a, -20028i);
    return Struct_4(~_wgslsmith_div_u32(var_0.x, var_0.x), ~vec4<u32>(~var_0.x, max(arg_3, firstTrailingBit(var_0.x)), var_0.x, var_0.x), countOneBits(var_4.zy ^ -min(vec2<i32>(u_input.a, var_2.x), var_4.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1487f;
    let var_0 = func_4(vec4<bool>((global3[_wgslsmith_index_u32(1u, 18u)] & true) | true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(51755u, 71620u), 18u)], !(all(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)])) | func_1()), global3[_wgslsmith_index_u32(28457u, 18u)]), select(select(!select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(66488u, 18u)], false, false), vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(23548u, 18u)]), false), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 18u)], true), vec4<bool>(global3[_wgslsmith_index_u32(10078u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)]), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], false, global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)])), !vec4<bool>(global3[_wgslsmith_index_u32(89102u, 18u)], false, global3[_wgslsmith_index_u32(0u, 18u)], false)), vec4<bool>(true, true, true, any(vec4<bool>(global3[_wgslsmith_index_u32(25757u, 18u)], true, global3[_wgslsmith_index_u32(22193u, 18u)], false))), vec4<bool>(true, !(8684i < u_input.a), true, global3[_wgslsmith_index_u32(1u, 18u)])), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-859f))), ~(~(-vec3<i32>(u_input.a, -2147483647i, 1i))), abs(u_input.a & u_input.a)), ~(~(~1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1021f, 197f), vec2<f32>(-423f, -1967f))), vec2<f32>(-518f, -1044f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-893f, 1027f) * vec2<f32>(-2179f, -866f)), vec2<f32>(266f, 667f), vec2<bool>(true, global3[_wgslsmith_index_u32(var_0.a, 18u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-323f, 1472f), vec2<f32>(1079f, -2261f))) * vec2<f32>(-517f, -2079f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-367f, 672f) - vec2<f32>(-1124f, -1825f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, -1000f)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 310f)) - _wgslsmith_f_op_f32(ceil(-451f))), 27413u, _wgslsmith_clamp_vec4_u32(var_0.b, var_0.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, var_0.b.x, 3207u, var_0.a), vec4<u32>(49134u, 4294967295u, 22956u, var_0.a), vec4<u32>(var_0.b.x, var_0.a, var_0.b.x, 57567u))), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(var_0.a, var_0.a, 1u, var_0.b.x), var_0.b, true), var_0.b), _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(u_input.a, var_0.c.x, u_input.a, -2147483647i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.c.x, -56092i, -2147483647i, u_input.a), vec4<i32>(u_input.a, var_0.c.x, -400i, var_0.c.x), vec4<bool>(global3[_wgslsmith_index_u32(var_0.a, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], false, false)), max(vec4<i32>(2147483647i, u_input.a, 2147483647i, -2147483647i), vec4<i32>(var_0.c.x, var_0.c.x, -1i, 38582i))))), u_input.a);
    global3 = array<bool, 18>();
    let var_3 = var_0.c;
    let var_4 = firstTrailingBit(var_2.a.c.zy);
    global3 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(var_0.b & vec4<u32>(var_0.a, var_4.x, var_2.a.d.x, var_2.a.d.x))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~var_0.b.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(var_4.x, 22410u), vec2<u32>(var_2.a.b, var_4.x)) | abs(vec2<u32>(49346u, 0u))), abs(abs(select(vec2<u32>(var_2.a.d.x, 52489u), vec2<u32>(var_0.b.x, 80352u), true))), ~select(var_0.b.wx ^ var_4, vec2<u32>(var_4.x, 21840u), !vec2<bool>(global3[_wgslsmith_index_u32(26583u, 18u)], global3[_wgslsmith_index_u32(var_4.x, 18u)]))), _wgslsmith_div_vec2_u32(var_2.a.d.wy ^ vec2<u32>(_wgslsmith_div_u32(var_4.x, var_2.a.b), 7885u | var_0.a), vec2<u32>(~1u, var_4.x)));
}

