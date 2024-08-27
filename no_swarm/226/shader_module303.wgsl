struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(-1686f, 431f);

var<private> global2: array<i32, 18> = array<i32, 18>(-33755i, 47742i, -48168i, -19325i, 2147483647i, 3553i, 8767i, -52618i, -16684i, -936i, i32(-2147483648), 1i, -12665i, 17834i, 16773i, -27537i, i32(-2147483648), -1i);

var<private> global3: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> vec2<u32> {
    global0 = !arg_1;
    return ~arg_3.c.c;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(true, vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), ~firstTrailingBit(vec2<u32>(146554u, 32915u) << (vec2<u32>(u_input.b, 38003u) % vec2<u32>(32u))), vec2<bool>(all(vec4<bool>(true, true, true, true)), global1.x >= _wgslsmith_f_op_f32(trunc(global1.x)))), Struct_1(!all(vec2<bool>(true, true)), vec2<bool>(true, true), ~min(vec2<u32>(0u, u_input.b), ~vec2<u32>(u_input.b, u_input.b)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))));
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1770f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))) + global1.x), !var_0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1168f), Struct_3(Struct_1(var_0.b.a, vec2<bool>(!var_0.b.d.x, var_0.b.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.a.c.x) | var_0.a.c, vec2<u32>(u_input.b, 0u) >> (vec2<u32>(51300u, 17712u) % vec2<u32>(32u))), !vec2<bool>(var_0.a.d.x, true)), Struct_2(var_0.a, Struct_1(var_0.a.d.x, select(var_0.a.d, vec2<bool>(false, var_0.a.b.x), var_0.a.b), ~var_0.a.c, !vec2<bool>(var_0.a.b.x, true))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1184f * -2026f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-249f, global1.x)))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(false, select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>((global2[_wgslsmith_index_u32(u_input.b, 18u)] < -9042i) || false, all(vec3<bool>(true, false, true))), true), _wgslsmith_div_vec2_u32(vec2<u32>(1u | u_input.b, u_input.b << (u_input.b % 32u)), ~vec2<u32>(u_input.b, 1u)) | func_2(), vec2<bool>(true, true));
    var var_1 = select(!select(!select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(true, true, var_0.a), var_0.d.x), !(!vec3<bool>(var_0.d.x, var_0.d.x, true)), false), select(select(vec3<bool>(var_0.d.x, any(var_0.d), !var_0.b.x), vec3<bool>(var_0.d.x, true | var_0.d.x, all(vec3<bool>(false, true, var_0.b.x))), !select(vec3<bool>(true, var_0.d.x, var_0.a), vec3<bool>(var_0.d.x, true, var_0.b.x), vec3<bool>(false, true, var_0.a))), vec3<bool>(var_0.d.x, false, true), all(vec2<bool>(true, false))), global1.x <= _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, global1.x)))));
    var var_2 = Struct_3(var_0, Struct_2(Struct_1(true, vec2<bool>(true, var_0.a), firstLeadingBit(vec2<u32>(37512u, var_0.c.x)), vec2<bool>(true, var_1.x || false)), var_0), var_0, global1.x);
    var var_3 = Struct_3(var_0, Struct_2(var_0, var_0), var_0, var_2.d);
    var var_4 = abs(func_3(_wgslsmith_f_op_f32(-1055f + 489f), select(true, !var_2.b.b.b.x, false), 1474f, Struct_3(var_2.c, Struct_2(var_3.b.b, var_3.b.a), Struct_1(all(vec2<bool>(var_0.b.x, var_2.b.a.d.x)), select(var_1.zy, var_0.d, vec2<bool>(var_3.a.a, false)), ~vec2<u32>(3187u, var_0.c.x), select(vec2<bool>(var_2.a.a, false), vec2<bool>(var_3.b.a.a, false), var_0.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.d)))))).x);
    return -1175f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-1267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -998f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1654f * -192f))));
    let var_1 = !(all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)) | !all(vec2<bool>(false, false))) | any(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), any(vec3<bool>(true, false, true)) & (global1.x == 115f), (u_input.b > 622u) && true, ~4294967295u < u_input.b));
    var var_2 = abs(~(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(51381i, -37919i, u_input.a), vec3<i32>(23692i, -27259i, -37612i)), abs(vec3<i32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.b, 18u)]))) >> (reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_3 = true;
    var_2 = vec3<i32>(abs(_wgslsmith_sub_i32(2147483647i, max(~2147483647i, 0i))), -u_input.a, var_2.x);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f))), global1.x);
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(1408f)) < _wgslsmith_f_op_f32(f32(-1f) * -1151f), vec2<bool>(-var_2.x < (u_input.a << (535u % 32u)), any(vec4<bool>(var_1, true, var_3, false))), vec2<u32>(abs(~u_input.b), min(u_input.b << (u_input.b % 32u), ~24737u)), vec2<bool>(var_3, any(vec2<bool>(true, true)))), Struct_1(any(!select(vec2<bool>(false, var_1), vec2<bool>(var_3, var_1), vec2<bool>(false, true))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, var_1), true), select(vec2<bool>(var_1, var_3), vec2<bool>(false, var_3), vec2<bool>(var_3, var_3)), !vec2<bool>(var_1, var_1)), !(!vec2<bool>(var_3, var_1)), !(!vec2<bool>(true, var_3))), _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1652u), vec2<u32>(4294967295u, u_input.b), vec2<u32>(49941u, u_input.b)), select(_wgslsmith_div_vec2_u32(vec2<u32>(9000u, u_input.b), vec2<u32>(u_input.b, 4294967295u)), reverseBits(vec2<u32>(u_input.b, u_input.b)), vec2<bool>(var_3, var_1))), vec2<bool>(false || var_3, !(!var_3))));
    var var_6 = vec4<u32>(u_input.b, u_input.b, abs(u_input.b), u_input.b);
    var var_7 = var_2.xy & max(vec2<i32>(u_input.a, var_2.x), select((vec2<i32>(global2[_wgslsmith_index_u32(var_6.x, 18u)], 1i) << (var_5.a.c % vec2<u32>(32u))) << (min(vec2<u32>(4294967295u, var_5.a.c.x), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), vec2<i32>(1i, -2147483647i), !vec2<bool>(var_1, true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_u32(min(_wgslsmith_mod_u32(1u, var_6.x), ~4294967295u), var_6.x << (~u_input.b % 32u))), vec3<i32>(69068i, global2[_wgslsmith_index_u32(var_6.x, 18u)], -1807i), -vec3<i32>(~(-18005i), countOneBits(var_2.x), u_input.a) ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, _wgslsmith_add_i32(2147483647i, global2[_wgslsmith_index_u32(var_6.x, 18u)])), (vec3<i32>(var_2.x, global2[_wgslsmith_index_u32(var_5.a.c.x, 18u)], -25828i) >> (var_6.yyw % vec3<u32>(32u))) >> (vec3<u32>(var_6.x, var_6.x, var_6.x) % vec3<u32>(32u))), -1i);
}

