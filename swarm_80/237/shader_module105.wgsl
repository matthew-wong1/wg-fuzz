struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<i32>(1i, 0i, 19885i, 2147483647i), 1000f, Struct_1(vec3<bool>(false, false, false), 0u, true)), Struct_2(vec4<i32>(-1i, -1i, -10917i, 2791i), -829f, Struct_1(vec3<bool>(true, false, true), 4294967295u, true)), Struct_2(vec4<i32>(-41358i, i32(-2147483648), 2147483647i, 2147483647i), -1000f, Struct_1(vec3<bool>(false, true, false), 32011u, true)), Struct_2(vec4<i32>(7998i, -1i, 1i, 18902i), 2057f, Struct_1(vec3<bool>(true, false, true), 34984u, true)), Struct_2(vec4<i32>(2147483647i, 20244i, -35623i, 273i), 1610f, Struct_1(vec3<bool>(true, false, false), 4294967295u, true)), Struct_2(vec4<i32>(-37333i, -1i, i32(-2147483648), -5701i), -787f, Struct_1(vec3<bool>(true, true, true), 0u, true)), Struct_2(vec4<i32>(2147483647i, 0i, 2147483647i, 20270i), 2140f, Struct_1(vec3<bool>(true, true, false), 16471u, true)), Struct_2(vec4<i32>(17997i, -9833i, -20382i, 2147483647i), 157f, Struct_1(vec3<bool>(true, true, false), 4294967295u, true)), Struct_2(vec4<i32>(0i, 1i, 0i, -1i), -497f, Struct_1(vec3<bool>(true, true, true), 2346u, false)), Struct_2(vec4<i32>(-23826i, i32(-2147483648), i32(-2147483648), 18561i), -2262f, Struct_1(vec3<bool>(true, true, true), 27837u, true)), Struct_2(vec4<i32>(-20099i, 2147483647i, 1i, 0i), -816f, Struct_1(vec3<bool>(true, true, true), 4294967295u, false)), Struct_2(vec4<i32>(2147483647i, 1i, 56009i, 2147483647i), 642f, Struct_1(vec3<bool>(true, true, true), 24566u, false)), Struct_2(vec4<i32>(19703i, 43162i, 2147483647i, i32(-2147483648)), 1000f, Struct_1(vec3<bool>(true, false, false), 0u, true)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 2840i, 45242i), -667f, Struct_1(vec3<bool>(true, false, true), 4294967295u, true)), Struct_2(vec4<i32>(-31834i, 2147483647i, 1i, 2147483647i), -866f, Struct_1(vec3<bool>(true, false, true), 1u, false)), Struct_2(vec4<i32>(i32(-2147483648), 0i, -52486i, 36335i), -685f, Struct_1(vec3<bool>(true, true, false), 4294967295u, true)), Struct_2(vec4<i32>(-23936i, 0i, 6281i, 30876i), 404f, Struct_1(vec3<bool>(false, false, false), 1u, true)), Struct_2(vec4<i32>(-8735i, 29856i, 14503i, -1i), 1242f, Struct_1(vec3<bool>(false, true, true), 62542u, false)), Struct_2(vec4<i32>(31096i, 56125i, -12119i, 55908i), 1387f, Struct_1(vec3<bool>(false, true, true), 4294967295u, false)), Struct_2(vec4<i32>(i32(-2147483648), 1i, 0i, -40231i), -602f, Struct_1(vec3<bool>(false, false, false), 32057u, false)), Struct_2(vec4<i32>(2147483647i, -11645i, -1i, -35493i), 131f, Struct_1(vec3<bool>(true, false, false), 0u, false)), Struct_2(vec4<i32>(-68689i, 21394i, 0i, -1i), -1703f, Struct_1(vec3<bool>(false, false, false), 30944u, true)), Struct_2(vec4<i32>(-60795i, 0i, i32(-2147483648), -22488i), 1825f, Struct_1(vec3<bool>(false, true, true), 81091u, false)), Struct_2(vec4<i32>(i32(-2147483648), 54826i, -28072i, 42580i), -443f, Struct_1(vec3<bool>(true, true, true), 15907u, false)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -10232i, i32(-2147483648)), -1000f, Struct_1(vec3<bool>(false, false, true), 4294967295u, false)), Struct_2(vec4<i32>(1i, -3502i, -1i, 1i), -149f, Struct_1(vec3<bool>(true, false, false), 0u, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b), arg_0.b), 1598f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-616f - _wgslsmith_f_op_f32(ceil(arg_0.b)))))), 1f);
    let var_1 = arg_0.c;
    global0 = array<Struct_2, 26>();
    let var_2 = true;
    var var_3 = 1i;
    return ~(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 52114u), vec4<u32>(var_1.b, 8656u, var_1.b, 12762u)), _wgslsmith_add_vec4_u32(vec4<u32>(37262u, var_1.b, 0u, 1u), vec4<u32>(0u, 70839u, var_1.b, 4294967295u))), vec4<u32>(~39089u, ~4294967295u, var_1.b | 1u, abs(0u))) << (arg_0.c.b % 32u));
}

fn func_2(arg_0: f32) -> u32 {
    return func_3(Struct_2(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -15375i, u_input.a, 12294i), vec4<i32>(36664i, -5146i, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-23093i, -26893i, 1i, 5254i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, 60633i, 1i, -4871i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(606f, arg_0, false)), _wgslsmith_f_op_f32(-arg_0), 1i == u_input.a))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true))), 4294967295u, true)));
}

fn func_1() -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(func_2(-1116f) << (func_3(global0[_wgslsmith_index_u32(6103u, 26u)]) % 32u), 26u)];
    let var_1 = -var_0.a.x;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~select(95915u, var_0.c.b, var_0.c.c) ^ max(4294967295u, _wgslsmith_sub_u32(27964u, var_0.c.b))), _wgslsmith_mult_u32(var_0.c.b, 4294967295u)), 26u)];
    var_0 = Struct_2(vec4<i32>(56557i, 0i ^ _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, 16911i)), ~var_0.a.xw), ~(-firstTrailingBit(2147483647i)), -8562i), _wgslsmith_f_op_f32(f32(-1f) * -818f), Struct_1(vec3<bool>(false, all(vec4<bool>(var_0.c.a.x, var_0.c.c, var_0.c.c, false)), any(vec3<bool>(var_0.c.c, true, true))), 44857u, all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(var_0.c.c, true, var_0.c.a.x, var_0.c.a.x)))));
    let var_2 = !(abs(0u) <= (var_0.c.b << (var_0.c.b % 32u)));
    return vec3<i32>(0i, _wgslsmith_clamp_i32(select(29195i, ~(~6196i), all(!vec4<bool>(var_0.c.a.x, var_0.c.a.x, false, true))), (_wgslsmith_mod_i32(var_0.a.x, var_0.a.x) << (37813u % 32u)) & u_input.a, countOneBits(min(-2147483647i, u_input.a) >> (firstLeadingBit(var_0.c.b) % 32u))), 1i);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true));
    var_0 = vec4<bool>(true, all(var_0.zxy), all(!(!(!var_0.xy))), var_0.x);
    let var_1 = _wgslsmith_sub_i32(arg_3.x, ~u_input.a);
    let var_2 = global0[_wgslsmith_index_u32(~21705u, 26u)];
    let var_3 = var_2.c;
    return Struct_1(var_3.a, 19568u << (_wgslsmith_mult_u32(max(var_3.b ^ var_3.b, reverseBits(var_3.b)), ~var_3.b) % 32u), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(false, true, _wgslsmith_f_op_f32(ceil(238f)) > _wgslsmith_f_op_f32(-943f * -1522f), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)))));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1865f * 1912f), -492f, all(var_0.wy))), _wgslsmith_div_f32(641f, -1157f), !var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -465f) * -419f))));
    let var_3 = func_4(func_1(), u_input.a, u_input.a, -vec4<i32>(u_input.a, u_input.a, i32(-1i) * -u_input.a, ~_wgslsmith_sub_i32(1i, 0i)));
    let var_4 = var_3;
    let var_5 = func_4(min(vec3<i32>(37036i, _wgslsmith_mult_i32(25610i, u_input.a), i32(-1i) * -3761i), ~vec3<i32>(u_input.a, -5337i, u_input.a) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, 0u, 61024u), vec3<u32>(var_3.b, var_4.b, 4294967295u)), 93726u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.b, var_4.b, var_3.b), vec4<u32>(var_4.b, var_3.b, var_4.b, 7372u))) % vec3<u32>(32u))), -29685i, ~_wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<bool>(var_3.c, var_3.c, true, true)), vec4<i32>(u_input.a, u_input.a, -82723i, 1232i)), u_input.a), (vec4<i32>(-1i) * -max(vec4<i32>(76892i, -1i, 2147483647i, u_input.a), vec4<i32>(-1i, -2147483647i, u_input.a, u_input.a))) << (countOneBits(vec4<u32>(4294967295u | var_4.b, var_3.b, ~0u, 0u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f) + var_2.x)), ((min(u_input.a, 25462i) >> (var_3.b % 32u)) >> (~3444u % 32u)) & _wgslsmith_sub_i32(48533i, _wgslsmith_mod_i32(u_input.a, -1i) ^ u_input.a), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(696f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f)))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1000f) - _wgslsmith_div_f32(var_2.x, -425f)) - var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-564f, 122f)), _wgslsmith_div_f32(var_2.x, var_2.x))))), _wgslsmith_mult_vec4_u32(~vec4<u32>(15548u, var_5.b >> (4294967295u % 32u), func_3(global0[_wgslsmith_index_u32(var_3.b, 26u)]), var_5.b), vec4<u32>(0u, func_4(abs(vec3<i32>(u_input.a, -23751i, u_input.a)), i32(-1i) * -2147483647i, -2147483647i, max(vec4<i32>(u_input.a, u_input.a, 15951i, -1i), vec4<i32>(-2147483647i, u_input.a, 51586i, 2147483647i))).b, var_3.b, var_4.b << (var_4.b % 32u))), ~vec3<i32>(2147483647i, ~_wgslsmith_mult_i32(-17263i, u_input.a), u_input.a));
}

