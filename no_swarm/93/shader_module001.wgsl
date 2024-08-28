struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 52601u);

var<private> global1: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(491f, -1000f), vec2<f32>(-137f, -866f), vec2<f32>(1626f, -1387f), vec2<f32>(799f, -182f), vec2<f32>(229f, 1226f), vec2<f32>(230f, -667f), vec2<f32>(-270f, 1452f), vec2<f32>(1775f, 151f), vec2<f32>(-871f, -240f), vec2<f32>(-507f, -1901f), vec2<f32>(1110f, -531f), vec2<f32>(216f, 1066f), vec2<f32>(-207f, -1384f), vec2<f32>(-1000f, -334f), vec2<f32>(434f, -1271f), vec2<f32>(266f, 110f));

var<private> global2: array<u32, 12> = array<u32, 12>(9759u, 0u, 1u, 48936u, 1u, 8951u, 0u, 4294967295u, 4294967295u, 1u, 7490u, 44215u);

var<private> global3: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(select(true, arg_0.x, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), true), vec3<bool>(any(select(vec4<bool>(arg_0.x, arg_0.x, true, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, false), vec4<bool>(true, true, arg_0.x, true)), true)), arg_0.x, any(select(arg_0.xx, select(arg_0.xz, vec2<bool>(true, true), vec2<bool>(arg_0.x, arg_0.x)), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(4294967295u, 16u)], vec2<f32>(262f, -392f), arg_0.x)), vec2<f32>(-575f, 1322f), true))) * vec2<f32>(1604f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-345f)), _wgslsmith_f_op_f32(-263f - 1137f)))), Struct_1(any(arg_0), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-585f)), -1000f), -1417f, 632f), all(select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !arg_0.x))), arg_0);
    let var_1 = var_0;
    global1 = array<vec2<f32>, 16>();
    let var_2 = max(~min(~vec4<u32>(global0.x, 23754u, global2[_wgslsmith_index_u32(4294967295u, 12u)], 50432u) << ((vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 4294967295u) >> (vec4<u32>(global2[_wgslsmith_index_u32(global0.x, 12u)], 0u, 18602u, global2[_wgslsmith_index_u32(global0.x, 12u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(select(global2[_wgslsmith_index_u32(1u, 12u)], u_input.a.x, false), 1u, 52552u, u_input.a.x)), select(vec4<u32>(~(~1u), ~abs(u_input.a.x), u_input.a.x ^ u_input.a.x, global0.x), abs(~vec4<u32>(global0.x, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 1u) << (vec4<u32>(10567u, global0.x, 46971u, 16419u) % vec4<u32>(32u))), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d.b.x))), var_0.a.b.x, -958f)));
    return !vec4<bool>(_wgslsmith_clamp_u32(4294967295u, 69941u, global0.x) >= u_input.a.x, !any(arg_0.yx), !all(!vec4<bool>(true, arg_0.x, var_1.d.c, arg_0.x)), var_0.d.a);
}

fn func_2(arg_0: f32) -> vec3<u32> {
    let var_0 = u_input.b.x;
    global3 = !any(select(select(vec4<bool>(true, true, true, true), func_3(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true))), vec4<bool>(true, any(vec2<bool>(false, false)), global0.x > 1u, false), vec4<bool>(true, any(vec2<bool>(true, true)), true, true)));
    let var_1 = 1i;
    global2 = array<u32, 12>();
    let var_2 = var_1;
    return min(_wgslsmith_add_vec3_u32(vec3<u32>(3162u & u_input.a.x, ~global0.x, global0.x << (global2[_wgslsmith_index_u32(global0.x, 12u)] % 32u)) << (~vec3<u32>(global0.x, u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 12u)]) % vec3<u32>(32u)), vec3<u32>(u_input.a.x & global2[_wgslsmith_index_u32(8434u, 12u)], 31237u, ~_wgslsmith_mod_u32(global0.x, u_input.a.x))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(24449u, 2908u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12973u, u_input.a.x), vec3<u32>(24276u, global2[_wgslsmith_index_u32(global0.x, 12u)], 6935u)) >> ((vec3<u32>(global0.x, 2672u, 1u) >> (vec3<u32>(1u, 0u, 27454u) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (~vec3<u32>(_wgslsmith_clamp_u32(1u, global0.x, global2[_wgslsmith_index_u32(1u, 12u)]), ~u_input.a.x, ~global0.x) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_5 {
    let var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(trunc(arg_0)), arg_0);
    return Struct_5(!arg_1, _wgslsmith_sub_vec3_u32(~(select(vec3<u32>(44896u, 65594u, global2[_wgslsmith_index_u32(60115u, 12u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 12u)], 1u, 7616u), vec3<bool>(arg_1.x, arg_1.x, true)) ^ func_2(161f)), abs(~abs(vec3<u32>(0u, global0.x, global2[_wgslsmith_index_u32(global0.x, 12u)])))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec3_u32(select(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, u_input.a.x, 4294967295u), arg_3), _wgslsmith_mod_vec3_u32(arg_3, _wgslsmith_mult_vec3_u32(arg_3, arg_3)), false) >> (arg_0.b % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(arg_3.x, _wgslsmith_div_u32(global0.x, reverseBits(arg_0.b.x)), global0.x), ~reverseBits(global0.x), min(~arg_3.x << (4294967295u % 32u), ~4294967295u)));
    let var_1 = Struct_1((~firstTrailingBit(u_input.c) < arg_2.x) || (~_wgslsmith_mod_u32(52414u, 1u) > arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(980f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, arg_1.x, -636f), _wgslsmith_f_op_vec3_f32(-arg_1))))), arg_0.a.x);
    global2 = array<u32, 12>();
    let var_2 = ~firstTrailingBit(~(u_input.a | _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 12u)]))));
    global1 = array<vec2<f32>, 16>();
    return vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), arg_1.x, _wgslsmith_f_op_f32(102f + var_1.b.x), _wgslsmith_f_op_f32(exp2(var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1013f * 365f), 326f, _wgslsmith_f_op_f32(min(530f, 850f)), _wgslsmith_f_op_f32(sign(2558f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-287f)), _wgslsmith_f_op_f32(-1086f + 545f), _wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(505f + -240f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-653f, 732f, -1615f, 1257f))) + vec4<f32>(-282f, 839f, -312f, -1236f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -886f, -336f, 1000f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(543f, 277f, -419f, 603f))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))))), (min(17981i, u_input.c) & -u_input.b.x) < -39202i)), _wgslsmith_f_op_vec4_f32(func_4(func_1(-211f, vec3<bool>(true, true, all(vec3<bool>(true, true, false))), u_input.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1039f, 220f, -183f))))), u_input.b.zx, _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 12u)], 39215u, 1u), vec3<u32>(61345u, 54819u, 28982u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.x, 1u), vec3<u32>(u_input.a.x, 0u, u_input.a.x)))))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-30273i, u_input.b.x >> (~(~u_input.a.x) % 32u), 2147483647i, -(_wgslsmith_add_i32(7538i, u_input.c) << (~global0.x % 32u))), ~firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -3415i, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.c)), ~vec4<i32>(2147483647i, u_input.c, u_input.c, 1i))));
    var var_2 = Struct_2(Struct_1(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - var_0.x), vec3<bool>(true, true, true), var_1.zzz).a.x, vec3<f32>(_wgslsmith_div_f32(655f, var_0.x), -1168f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1785f)))), true), select(func_3(vec3<bool>(false, all(vec2<bool>(true, false)), -1684f != var_0.x)).xxz, !vec3<bool>(true, func_3(vec3<bool>(true, true, true)).x, true), vec3<bool>(func_3(vec3<bool>(true, true, true)).x, true, true)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_0.x), Struct_1(var_1.x <= -1i, _wgslsmith_f_op_vec3_f32(var_0.zxx * _wgslsmith_f_op_vec3_f32(step(var_0.zyw, vec3<f32>(var_0.x, 2387f, var_0.x)))), !all(vec3<bool>(true, false, false)) || (false | (2337f < var_0.x))), vec3<bool>(true, true, false));
    let var_3 = Struct_2(var_2.a, vec3<bool>(var_2.b.x, true && any(vec2<bool>(var_2.d.c, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(888f)), _wgslsmith_f_op_f32(floor(1105f))))), var_2.a, var_2.e);
    global2 = array<u32, 12>();
    global3 = false;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(-u_input.b.xz)) << (vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(firstTrailingBit(global0.x), 12u)], 1u)) % vec2<u32>(32u)));
}

