struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-1835f, 510f), vec2<f32>(1000f, -275f), vec2<f32>(-1155f, -1000f), vec2<f32>(649f, -807f), vec2<f32>(491f, 649f), vec2<f32>(516f, 623f), vec2<f32>(-990f, 2096f), vec2<f32>(-1262f, 836f), vec2<f32>(1318f, 216f), vec2<f32>(-1417f, 441f), vec2<f32>(795f, -310f), vec2<f32>(-3191f, 1000f));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(15743i, abs(u_input.a), u_input.c), vec3<i32>(countOneBits(u_input.a) ^ u_input.a, u_input.a, 1i)), -vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), 52782i, 60200i << (1u % 32u)), ~(-(~(vec3<i32>(1i, u_input.a, 2147483647i) >> (vec3<u32>(u_input.d.x, 4336u, u_input.b.x) % vec3<u32>(32u))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1446f, -429f, 496f) - vec3<f32>(1685f, -298f, 1737f))))));
    let var_2 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(max(var_1.a.x, 830f))), 914f)), var_1);
    global0 = array<vec2<f32>, 12>();
    let var_3 = var_1;
    return true;
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = vec2<i32>(u_input.c, reverseBits(select(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, -695i, u_input.c, u_input.c), vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c)), firstTrailingBit(vec4<i32>(u_input.c, 0i, u_input.a, u_input.c))), u_input.c, all(select(vec4<bool>(true, false, arg_0.c.x, arg_1), vec4<bool>(false, arg_1, true, true), arg_1)))));
    let var_1 = var_0;
    global1 = !(!vec4<bool>(arg_1, !arg_0.c.x, !(arg_2.b.a.x <= arg_3.b.a.x), false));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.a.x)) + -2877f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b - 1292f)))), 915f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.b.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-529f, arg_3.a.a.x, 174f), _wgslsmith_f_op_vec3_f32(-arg_3.b.a)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1993f * 146f), -569f, -2753f)))));
    return (vec4<u32>(u_input.d.x, u_input.d.x, ~u_input.d.x | firstTrailingBit(12239u), 1u) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.b.x, 1u) >> (vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.d.x) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 2049u, 77491u, 2429u))) >> (_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(u_input.d.x, 0u, 0u, u_input.d.x) >> (~vec4<u32>(u_input.b.x, u_input.d.x, 8057u, u_input.d.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(max(0u, 97757u), ~4294967295u, 4294967295u << (0u % 32u), u_input.b.x), ~vec4<u32>(0u, 0u, 42502u, 71236u)), vec4<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x, 1u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(425f, _wgslsmith_f_op_f32(abs(-384f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1612f)) * -1000f));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1761f, -332f, 239f, -177f) * vec4<f32>(632f, -1710f, -337f, -921f)))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-685f - _wgslsmith_f_op_f32(abs(172f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1702f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-539f, 1353f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + 1f)), false));
    let var_2 = Struct_1(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(982f - _wgslsmith_f_op_f32(step(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -794f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) * _wgslsmith_f_op_f32(sign(-1872f))))));
    var var_3 = min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(38471i, u_input.c, 2147483647i), vec3<i32>(-15370i, 0i, u_input.a)) & select(u_input.a, 1i, global1.x), -1i, 2147483647i) ^ vec3<i32>(u_input.a >> (u_input.b.x % 32u), 44801i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 0i), select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-12044i, u_input.a), vec2<bool>(arg_0.x, arg_0.x)))), ~vec3<i32>(abs(u_input.a), -1i, -39331i));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x - 228f)), global1.xzx);
    return 241f;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = func_2(arg_0.x);
    var_0 = global1.x;
    let var_1 = -reverseBits(2147483647i);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 580f, 464f), vec3<f32>(-1656f, -283f, 541f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1128f, 918f, 205f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, -1000f, 217f) * vec3<f32>(878f, -1249f, 415f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 638f, _wgslsmith_f_op_f32(f32(-1f) * -401f)))), vec3<f32>(148f, _wgslsmith_f_op_f32(func_4(select(!vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(global1.x, false, false, false), arg_0), select(func_3(Struct_4(vec3<f32>(-1000f, 786f, 923f), 1000f, vec3<bool>(arg_0.x, global1.x, global1.x)), false, Struct_3(Struct_1(vec3<f32>(2114f, -1111f, 594f)), Struct_1(vec3<f32>(-596f, -438f, -260f))), Struct_3(Struct_1(vec3<f32>(1000f, 1656f, 543f)), Struct_1(vec3<f32>(480f, -1738f, -770f)))), ~vec4<u32>(u_input.b.x, 0u, 1u, u_input.d.x), arg_0), ~(u_input.d.x << (56155u % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -670f))));
    let var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(var_1, u_input.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(-44472i, var_1))), _wgslsmith_sub_i32(~0i, var_1)), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -25278i, u_input.a, var_1)), -vec4<i32>(var_1, 7227i, u_input.c, var_1)), _wgslsmith_sub_i32(-u_input.c, ~(-2147483647i)))), select(firstLeadingBit(~vec2<i32>(var_1, var_1)) ^ select(vec2<i32>(u_input.a, 14644i) >> (vec2<u32>(25484u, 4294967295u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(var_1, 23853i)), !global1.yx), vec2<i32>(~(-1i >> (u_input.d.x % 32u)), -11604i), select(select(select(arg_0.zz, global1.wy, vec2<bool>(false, false)), arg_0.wy, false), vec2<bool>(true, true), global1.yy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, -1594f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1391f - var_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -264f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(global1.x, global1.x, true, false))), -1193f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f + _wgslsmith_f_op_f32(614f + -109f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(~19828u | _wgslsmith_div_u32(0u, u_input.b.x), 12u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.d.x, 12u)] - vec2<f32>(787f, 554f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, -711f) * global0[_wgslsmith_index_u32(0u, 12u)]))))), 1u);
}

