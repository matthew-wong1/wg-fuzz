struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1136f;

var<private> global1: array<Struct_2, 8>;

var<private> global2: vec4<i32> = vec4<i32>(-1i, -15194i, -10253i, 1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_i32(-2147483647i, select(1i << (arg_0 % 32u), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(global2.x, -2147483647i, 2147483647i), global2.xxw), _wgslsmith_mod_vec3_i32(~global2.zzw, _wgslsmith_mult_vec3_i32(global2.zwx, vec3<i32>(26217i, global2.x, 1i)))), ~_wgslsmith_clamp_i32(global2.x, -2147483647i, -1i) == global2.x));
    let var_1 = any(select(vec2<bool>(true && any(vec3<bool>(true, false, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), all(vec3<bool>(false, true, true)) & true));
    global2 = firstTrailingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(~global2.x, global2.x, -global2.x, _wgslsmith_dot_vec2_i32(global2.ww, global2.yw)), select(vec4<i32>(global2.x, global2.x, global2.x, global2.x), vec4<i32>(global2.x, 1i, global2.x, 32887i), !var_1)));
    global2 = firstTrailingBit(abs(-vec4<i32>(-2147483647i, 6663i, -60889i, global2.x))) | (select(-vec4<i32>(-2147483647i, global2.x, global2.x, global2.x), vec4<i32>(select(global2.x, 10706i, var_1), -global2.x, global2.x, _wgslsmith_sub_i32(global2.x, -40864i)), !select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, false, var_1, true), var_1)) >> ((firstTrailingBit(vec4<u32>(1u, 5458u, u_input.a.x, u_input.a.x)) << ((vec4<u32>(4294967295u, u_input.a.x, 1u, 1u) | reverseBits(vec4<u32>(4466u, 1u, 0u, u_input.a.x))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(15320u, 70591u & ~(arg_0 ^ 47804u)), u_input.a.x);
    return !vec2<bool>(var_1, !var_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    let var_0 = (vec3<u32>(~u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 56408u, 1658u), vec3<u32>(0u, 4294967295u, 4294967295u)) % 32u), 46642u, ~103982u) | select(vec3<u32>(abs(58600u), 26615u, reverseBits(31440u)), max(~vec3<u32>(arg_0.c.x, u_input.a.x, 0u), ~arg_0.c), select(!vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, arg_0.d.a, false), true))) ^ arg_0.c;
    var var_1 = ~(~min(~select(u_input.a.x, 0u, arg_1.x), 8656u));
    global2 = ~_wgslsmith_sub_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, -2147483647i, 49714i, arg_0.b.b.x), vec4<i32>(36394i, -5187i, global2.x, 0i), vec4<i32>(global2.x, 16958i, global2.x, 0i))), ~vec4<i32>(global2.x, -28573i, arg_0.b.c, 26238i)) | max(select(-vec4<i32>(14078i, arg_0.b.b.x, -13127i, global2.x), -vec4<i32>(-45260i, 18917i, global2.x, -24041i), false) ^ (vec4<i32>(-1i) * -vec4<i32>(global2.x, global2.x, global2.x, 1i)), -max(~vec4<i32>(33618i, 11146i, 0i, 54484i), vec4<i32>(arg_0.d.c, arg_0.d.b.x, global2.x, 2147483647i)));
    global0 = 1193f;
    var_1 = ~u_input.a.x;
    return select(global2.x, arg_0.b.b.x, select(!(!func_3(var_0.x).x), !arg_0.b.a, all(!select(vec4<bool>(arg_0.d.a, arg_1.x, true, false), vec4<bool>(arg_1.x, arg_1.x, arg_0.b.a, arg_1.x), vec4<bool>(arg_1.x, arg_0.b.a, false, arg_0.d.a)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: f32) -> vec2<bool> {
    var var_0 = any(select(vec2<bool>(true, false), !vec2<bool>(any(vec2<bool>(false, false)), 7160u >= u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24868u) | u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a)) < _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 47384u), ~4294967295u)));
    let var_1 = Struct_1(false, reverseBits(arg_0.zzx), func_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, min(~36416u, u_input.a.x)), 8u)], select(vec2<bool>(true, true), select(func_3(u_input.a.x), func_3(10737u), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true))));
    let var_2 = !(!(abs(_wgslsmith_add_u32(u_input.a.x, 1u)) <= _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 57511u)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2435f) + arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-181f, arg_2, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-408f)) + -491f)))));
    var_0 = all(!select(!vec4<bool>(var_2, var_1.a, true, true), select(select(vec4<bool>(true, true, false, var_1.a), vec4<bool>(true, true, true, var_2), vec4<bool>(true, var_1.a, false, false)), vec4<bool>(true, var_1.a, false, false), var_2 || var_1.a), true));
    return !select(!select(vec2<bool>(true, var_2), vec2<bool>(false, var_2), !var_1.a), vec2<bool>(true, true), true);
}

fn func_1(arg_0: vec2<u32>) -> vec4<f32> {
    let var_0 = ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(101194u, arg_0.x) << (_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(u_input.a.x, arg_0.x)) % 32u), 79914u), select(_wgslsmith_sub_u32(arg_0.x & 16270u, 1u), u_input.a.x, !all(vec2<bool>(true, false))), 83029u);
    let var_1 = Struct_2(!all(!func_2(vec4<i32>(2147483647i, 81382i, -1i, global2.x), global2.ww, -441f)), Struct_1(false, vec3<i32>(global2.x, -_wgslsmith_sub_i32(52905i, 2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(20126i, -1i, 71127i, -2147483647i), vec4<i32>(-1i, global2.x, -2147483647i, global2.x))), 20819i << (~4294967295u % 32u)), max(vec3<u32>(_wgslsmith_dot_vec3_u32(~var_0, var_0), 1u, 43204u), firstLeadingBit(vec3<u32>(arg_0.x, 61789u, 21173u) >> (vec3<u32>(arg_0.x, 81264u, 12625u) % vec3<u32>(32u)))), Struct_1(select(true, any(vec3<bool>(true, true, true)), false), vec3<i32>(-1i) * -(~global2.wzw), global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, -458f, -254f, 305f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-849f)), -506f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-511f, 1551f))), _wgslsmith_f_op_f32(-815f - -903f))));
    let var_2 = Struct_2(u_input.a.x < 31480u, var_1.b, var_0, Struct_1(all(select(!vec2<bool>(var_1.d.a, true), vec2<bool>(false, false), false)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-10840i, global2.x, -53054i), vec3<i32>(global2.x, global2.x, 1i), global2.wzx), min(select(vec3<i32>(15811i, global2.x, -49448i), vec3<i32>(-2147483647i, 59960i, 0i), vec3<bool>(false, false, false)), reverseBits(vec3<i32>(var_1.d.b.x, var_1.b.c, -54520i)))), global2.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.e.x, var_1.e.x, _wgslsmith_f_op_f32(step(-318f, var_1.e.x)), var_1.e.x))))));
    let var_3 = Struct_1(var_2.a, var_2.b.b << (var_1.c % vec3<u32>(32u)), min(1i, global2.x));
    global2 = ~vec4<i32>(-1i, -var_1.b.c, -(i32(-1i) * -var_3.c), global2.x);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(select(1000f, var_1.e.x, false)), _wgslsmith_f_op_f32(ceil(var_1.e.x)), _wgslsmith_f_op_f32(1183f + 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(204f, 291f, -1128f, var_2.e.x) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.e.x, -193f, var_1.e.x, var_2.e.x), var_1.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1(~u_input.a));
    var var_1 = Struct_1(!(_wgslsmith_clamp_u32(u_input.a.x, ~125882u, ~u_input.a.x) > 1u), -global2.yxx, global2.x);
    global2 = abs(vec4<i32>(var_1.c, ~var_1.b.x, -17474i, global2.x) >> (~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 20183u)) % vec4<u32>(32u))) >> (vec4<u32>(~4294967295u, ~1u, u_input.a.x, ~(~0u)) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(min(-917f, -853f));
    global1 = array<Struct_2, 8>();
    var var_2 = Struct_1(var_1.a, ~var_1.b, -1i);
    let var_3 = var_1.c;
    let var_4 = var_1.a;
    var var_5 = Struct_2(true, Struct_1(true, vec3<i32>(global2.x, ~(~global2.x), func_4(Struct_2(var_1.a, Struct_1(false, var_1.b, var_1.b.x), vec3<u32>(1u, 1u, 41546u), Struct_1(var_2.a, vec3<i32>(var_1.b.x, global2.x, -33851i), global2.x), vec4<f32>(295f, var_0.x, -1000f, 2597f)), select(vec2<bool>(var_2.a, true), vec2<bool>(var_2.a, var_2.a), var_2.a))), var_2.c), vec3<u32>(~37269u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 24580u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) | abs(firstLeadingBit(~vec3<u32>(u_input.a.x, 5837u, u_input.a.x))), Struct_1(true, vec3<i32>(-20387i, 1i, -1i), -var_2.c), vec4<f32>(_wgslsmith_div_f32(679f, -478f), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(640f, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_5.d.b.x, -20908i) | _wgslsmith_sub_i32(-1i, var_1.b.x), reverseBits(0i) << (u_input.a.x % 32u)), global2.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(var_5.d.b.yx, var_2.b.xz), var_5.d.c, _wgslsmith_mod_i32(abs(var_5.d.b.x), var_1.c), -var_2.b.x << (44152u % 32u)), vec4<i32>(_wgslsmith_clamp_i32(0i, 28685i, var_2.c >> (u_input.a.x % 32u)), -1i, i32(-1i) * -var_1.c, 1i), vec4<i32>(_wgslsmith_div_i32(3337i, -53060i) ^ ~var_5.b.c, ~_wgslsmith_mod_i32(17861i, var_2.b.x), -6158i, var_2.b.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1000f, var_5.e.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1165f, var_0.x)), var_0.xyz, !vec3<bool>(var_5.b.a, true, var_2.a))))))), ~max(vec3<i32>(global2.x, ~(-2147483647i), global2.x ^ global2.x), _wgslsmith_add_vec3_i32(vec3<i32>(-58861i, 2147483647i, var_1.c) >> (var_5.c % vec3<u32>(32u)), abs(vec3<i32>(0i, var_1.c, var_5.b.b.x)))));
}

