struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_2(Struct_1(0i, vec4<f32>(-1097f, 693f, -1020f, -723f), -1i), -1000f, vec2<f32>(-732f, 1497f))), Struct_4(Struct_2(Struct_1(-393i, vec4<f32>(392f, 605f, -710f, 683f), 3010i), -2824f, vec2<f32>(205f, -144f))), Struct_4(Struct_2(Struct_1(43282i, vec4<f32>(-169f, 964f, 1015f, -773f), -1i), 1000f, vec2<f32>(-519f, 104f))), Struct_4(Struct_2(Struct_1(0i, vec4<f32>(-398f, -895f, -1535f, 725f), -5569i), -288f, vec2<f32>(1000f, -1000f))), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec4<f32>(-1000f, 616f, 749f, 773f), i32(-2147483648)), 1000f, vec2<f32>(909f, -416f))), Struct_4(Struct_2(Struct_1(-52951i, vec4<f32>(1000f, 123f, 1225f, 422f), 70470i), 918f, vec2<f32>(-836f, 861f))), Struct_4(Struct_2(Struct_1(1i, vec4<f32>(579f, 1041f, -1257f, -273f), -1i), -202f, vec2<f32>(-945f, 186f))), Struct_4(Struct_2(Struct_1(-1i, vec4<f32>(-2766f, 1295f, -1257f, 106f), 34636i), 409f, vec2<f32>(327f, 913f))), Struct_4(Struct_2(Struct_1(58212i, vec4<f32>(1022f, 1304f, -1536f, 1000f), 25642i), 773f, vec2<f32>(-1000f, -452f))), Struct_4(Struct_2(Struct_1(-59064i, vec4<f32>(-473f, 1740f, 179f, 159f), 32728i), 1000f, vec2<f32>(-484f, -1736f))), Struct_4(Struct_2(Struct_1(-50996i, vec4<f32>(-1449f, 461f, -551f, 688f), 33404i), -1026f, vec2<f32>(-115f, 371f))), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec4<f32>(-806f, 212f, -443f, 1000f), 0i), -1728f, vec2<f32>(544f, 632f))), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec4<f32>(1116f, 1402f, -300f, -253f), 1i), -725f, vec2<f32>(199f, -493f))), Struct_4(Struct_2(Struct_1(2802i, vec4<f32>(1447f, 1411f, 1037f, 140f), 1i), 478f, vec2<f32>(1000f, 832f))), Struct_4(Struct_2(Struct_1(-43456i, vec4<f32>(663f, -646f, -1000f, 1557f), -24315i), 247f, vec2<f32>(-1861f, 1569f))), Struct_4(Struct_2(Struct_1(0i, vec4<f32>(459f, 1556f, 716f, 1438f), -9955i), 1207f, vec2<f32>(424f, 307f))), Struct_4(Struct_2(Struct_1(4292i, vec4<f32>(408f, -389f, 862f, 481f), 3980i), 1237f, vec2<f32>(-810f, -520f))));

var<private> global1: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-41681i, 13828i, -29635i), vec3<i32>(-40762i, i32(-2147483648), 14081i), vec3<i32>(19356i, 13752i, 0i), vec3<i32>(-1i, 5956i, -1i), vec3<i32>(13429i, -35968i, 2147483647i));

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<i32>(-1591i, -13095i, -16748i)), Struct_3(vec3<i32>(52809i, -27241i, -59290i)), Struct_3(vec3<i32>(i32(-2147483648), 0i, -9801i)), Struct_3(vec3<i32>(-2504i, 25316i, -19474i)), Struct_3(vec3<i32>(-59493i, 0i, -46659i)), Struct_3(vec3<i32>(2147483647i, -17767i, -18382i)), Struct_3(vec3<i32>(8937i, -1i, 1i)), Struct_3(vec3<i32>(i32(-2147483648), 34192i, 11942i)), Struct_3(vec3<i32>(3853i, -11226i, i32(-2147483648))), Struct_3(vec3<i32>(-2246i, 1i, 1i)), Struct_3(vec3<i32>(69248i, 769i, 2147483647i)));

var<private> global3: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(max(reverseBits(vec4<u32>(1u, u_input.b, 1u, u_input.e.x) & u_input.e), vec4<u32>(u_input.b, u_input.e.x, ~u_input.e.x, 4294967295u)), ~vec4<u32>(~0u, 132835u, countOneBits(u_input.e.x), u_input.e.x)), u_input.b), 11u)];
    let var_1 = arg_0;
    global0 = array<Struct_4, 17>();
    let var_2 = Struct_3(vec3<i32>(1i, arg_2, arg_0.a.a));
    let var_3 = false;
    return u_input.e.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.a, 0i)), abs(2147483647i)), vec4<f32>(-462f, -248f, -869f, _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_mult_i32(-countOneBits(3884i), min(~1i, 12889i))), arg_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<Struct_4, 17>();
    let var_1 = vec4<u32>(func_3(Struct_2(Struct_1(-2147483647i, var_0.a.b, 1756i), _wgslsmith_f_op_f32(f32(-1f) * -439f), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(420f, -444f), arg_0)), abs(u_input.d.x)), u_input.b, u_input.b >> (u_input.e.x % 32u), 103920u) | vec4<u32>(u_input.e.x, firstLeadingBit(~(~11331u)), 52583u, 66236u);
    let var_2 = max(_wgslsmith_mult_vec3_u32(u_input.e.wzy, select(abs(u_input.e.wzx), vec3<u32>(u_input.e.x, _wgslsmith_div_u32(var_1.x, var_1.x), var_1.x ^ u_input.e.x), !(-6676i <= u_input.d.x))), u_input.e.xzw);
    let var_3 = var_0.a.b;
    return global0[_wgslsmith_index_u32(func_3(Struct_2(var_0.a, _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(f32(-1f) * -403f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(178f, -885f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(132f, arg_1)))))))), _wgslsmith_f_op_vec2_f32(-var_3.wz), -6759i), 17u)];
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = Struct_4(Struct_2(arg_1.a.a, _wgslsmith_f_op_f32(floor(arg_1.a.a.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.a.b.x, _wgslsmith_f_op_f32(-arg_1.a.c.x)))));
    var var_1 = arg_1.a.c;
    var var_2 = var_0.a.a.b.zx;
    var var_3 = vec2<f32>(arg_1.a.c.x, var_0.a.c.x);
    global1 = array<vec3<i32>, 6>();
    return ~reverseBits(vec4<i32>(u_input.a, 1i, -(u_input.a << (arg_0 % 32u)), _wgslsmith_div_i32(-arg_1.a.a.a, ~6618i)));
}

fn func_1() -> u32 {
    let var_0 = vec2<u32>(0u, ~u_input.b) ^ (~u_input.e.zw << (vec2<u32>(4294967295u, ~31603u) % vec2<u32>(32u)));
    let var_1 = Struct_1(~(-u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1089f, -648f, -1000f, -906f), vec4<f32>(599f, 2287f, -510f, 393f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 587f, -1658f, 866f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(521f, -1000f, 955f, -1720f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-528f, -123f, 111f, 1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-654f, 1223f, -967f, 242f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(337f, 677f, 106f, 409f), vec4<f32>(-796f, 382f, -815f, -894f), vec4<bool>(false, false, true, true)))))), 1i);
    global1 = array<vec3<i32>, 6>();
    var var_2 = true;
    var var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(abs(u_input.a), _wgslsmith_add_i32(u_input.d.x, -1i), countOneBits(var_1.a), var_1.c), -vec4<i32>(u_input.c, -var_1.a, firstTrailingBit(1i), ~var_1.a)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d.x, -29812i, u_input.d.x, 1i)), max(vec4<i32>(u_input.d.x, u_input.c, 6877i, var_1.a), vec4<i32>(u_input.d.x, var_1.a, 2147483647i, u_input.a))) >> (~(~vec4<u32>(var_0.x, u_input.e.x, u_input.b, u_input.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(var_1.c, var_1.c, var_1.c, 30631i)), func_4(~u_input.b, func_2(vec2<f32>(var_1.b.x, var_1.b.x), -365f))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, -10305i, var_1.c, var_1.a)), ~(-vec4<i32>(u_input.d.x, 2147483647i, -1i, -16296i)))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec3<bool>(false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), vec3<bool>(true, true, true), true));
    var var_1 = 47756u;
    var var_2 = global2[_wgslsmith_index_u32(~max(func_1(), _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.e.x), 38184u)), 11u)];
    let var_3 = u_input.e;
    var var_4 = Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1035f, 1000f, 1237f) + vec4<f32>(-2247f, 198f, 293f, 570f)) - vec4<f32>(-413f, 966f, -797f, 336f)))), var_2.a.x >> (~(~var_3.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, var_4.c, 0i), vec4<i32>(-21928i, -2147483647i, u_input.a, var_4.a)) ^ vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.a)) & abs(vec4<i32>(var_4.a, ~(-1i), -var_2.a.x, _wgslsmith_add_i32(u_input.a, -27227i))), vec3<i32>(~((i32(-1i) * -50583i) | _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-2147483647i, var_2.a.x, var_4.c))), ~(-firstTrailingBit(2147483647i)), _wgslsmith_mult_i32(-_wgslsmith_div_i32(var_4.a, var_2.a.x), firstLeadingBit(~0i))), var_4.b.x);
}

