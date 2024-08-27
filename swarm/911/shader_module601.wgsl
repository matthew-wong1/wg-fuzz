struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(2214f, -1i, 80953u), Struct_1(1000f, 21830i, 28856u), Struct_1(616f, 2147483647i, 89539u), Struct_1(632f, 1712i, 424u), Struct_1(-1173f, 0i, 17343u), Struct_1(1478f, -1i, 608u), Struct_1(1711f, 1i, 52491u), Struct_1(-440f, -49233i, 25723u), Struct_1(-853f, -21171i, 4294967295u), Struct_1(777f, i32(-2147483648), 1u), Struct_1(882f, 0i, 1u), Struct_1(-126f, i32(-2147483648), 1u), Struct_1(-148f, 2147483647i, 0u), Struct_1(-894f, 17308i, 61022u), Struct_1(1769f, 7310i, 1u), Struct_1(218f, -1i, 4294967295u), Struct_1(403f, 0i, 4628u), Struct_1(-1541f, i32(-2147483648), 25022u), Struct_1(-933f, 0i, 27545u), Struct_1(1000f, 54236i, 1u), Struct_1(1986f, i32(-2147483648), 48010u), Struct_1(972f, 2147483647i, 33924u), Struct_1(-1000f, -1i, 62734u), Struct_1(1066f, -30047i, 0u), Struct_1(-262f, 0i, 1u), Struct_1(1000f, i32(-2147483648), 815u), Struct_1(-2816f, -22244i, 17072u), Struct_1(-1599f, -72846i, 95726u), Struct_1(773f, -1i, 0u), Struct_1(623f, -55252i, 4294967295u), Struct_1(1088f, 25336i, 14463u));

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1525f, 1i, 1u), Struct_1(236f, 29354i, 4294967295u), Struct_1(102f, 22340i, 0u), Struct_1(-782f, 1i, 1u), Struct_1(114f, 9674i, 36253u), Struct_1(-1143f, 19530i, 1u), Struct_1(810f, -40661i, 78927u), Struct_1(166f, -1i, 9633u), Struct_1(-1636f, -72213i, 4294967295u), Struct_1(-355f, 1i, 0u), Struct_1(-1000f, 1i, 116486u), Struct_1(789f, 0i, 1u), Struct_1(-481f, -2908i, 36378u), Struct_1(1195f, 15103i, 10612u), Struct_1(-859f, 0i, 1u), Struct_1(1150f, 0i, 0u));

var<private> global2: bool = false;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<u32>) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f * 1000f)), _wgslsmith_f_op_f32(-arg_0.x), -1094f);
    global2 = true;
    global2 = true;
    var var_1 = _wgslsmith_f_op_f32(-1000f + var_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1746f)), arg_0.x) - arg_0.x);
    return -(~(-4390i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0;
    global2 = arg_1.x;
    let var_1 = ~u_input.d.zyx;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), -327f), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) & u_input.b.x, countOneBits(1i | _wgslsmith_mod_i32(-13472i, var_0.b)), arg_2.b), max(abs(var_0.c), arg_0.c));
    let var_3 = _wgslsmith_dot_vec4_i32(u_input.b, -abs(u_input.b)) < -1i;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(690f))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = u_input.b.yx;
    var var_1 = Struct_1(arg_2.x, firstTrailingBit(var_0.x), 0u);
    global2 = arg_1;
    var var_2 = arg_3;
    let var_3 = arg_1;
    return arg_1 | false;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yw, u_input.b.xy), -vec2<i32>(u_input.b.x, -58401i), -vec2<i32>(0i, 25605i)), vec2<i32>(~func_2(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), 1367f, vec3<u32>(arg_0.c, arg_0.c, arg_0.c)), arg_0.b)), u_input.b.yz);
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), ~_wgslsmith_dot_vec3_i32(-(vec3<i32>(0i, arg_0.b, 0i) >> (vec3<u32>(1u, u_input.c, 76939u) % vec3<u32>(32u))), u_input.b.yyx), _wgslsmith_sub_u32((~u_input.d.x | arg_0.c) | 18095u, u_input.a.x));
    global2 = true && func_4(vec4<i32>(u_input.b.x, 56510i, _wgslsmith_mod_i32(firstLeadingBit(83762i), select(-37505i, 5490i, false)), 1i), arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), 1f, _wgslsmith_f_op_f32(func_3(Struct_1(-260f, 13931i, 0u), arg_2.zz, global0[_wgslsmith_index_u32(u_input.c, 31u)])), _wgslsmith_div_f32(-1000f, -1661f))), Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(exp2(var_1.a)))), -_wgslsmith_div_i32(-28132i, arg_0.b), 4562u));
    return ~firstTrailingBit(~max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, 65801u, arg_0.c), u_input.d), select(u_input.d, u_input.d, vec4<bool>(arg_2.x, false, arg_1, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-487f, ~countOneBits(i32(-1i) * -21249i), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.c, 1u, 4294967295u), func_1(Struct_1(1189f, u_input.b.x, u_input.c), false, vec3<bool>(true, false, true)))) & u_input.a.x);
    global1 = array<Struct_1, 16>();
    var var_1 = !(!(!(!all(vec2<bool>(false, true)))));
    var var_2 = var_0;
    var_2 = global1[_wgslsmith_index_u32(15006u, 16u)];
    global0 = array<Struct_1, 31>();
    let var_3 = min(~(~(-countOneBits(vec4<i32>(var_2.b, u_input.b.x, var_2.b, 1i)))), ~max(_wgslsmith_add_vec4_i32(vec4<i32>(-43194i, -2147483647i, var_0.b, 2554i), vec4<i32>(25223i, -2147483647i, u_input.b.x, u_input.b.x)), reverseBits(u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~71617u, _wgslsmith_mult_u32(u_input.c, 4294967295u) & u_input.d.x, abs(0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), var_0.a, _wgslsmith_f_op_f32(-207f + -924f), _wgslsmith_f_op_f32(318f - var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, var_0.a, 1000f, -366f))), select(func_4(vec4<i32>(u_input.b.x, var_3.x, -6516i, 0i), false, vec4<f32>(634f, var_2.a, 843f, 728f), Struct_1(var_0.a, 20998i, 14309u)), true, true)))));
}

