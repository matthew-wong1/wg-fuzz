struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<vec4<i32>, 11>;

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1259f))))))));
    var var_1 = Struct_1(2147483647i, arg_1.x, -(firstLeadingBit(global0[_wgslsmith_index_u32(arg_1.x, 22u)]) >> ((arg_1.yxx ^ arg_1.wyx) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.c.x, 53738i), countOneBits(global0[_wgslsmith_index_u32(0u, 22u)])), reverseBits(vec3<i32>(-2147483647i, u_input.a, -14165i))), arg_0.b);
    global2 = array<vec4<i32>, 11>();
    var var_2 = Struct_2(vec3<i32>(firstTrailingBit(-47512i), min(-24551i | ~arg_0.c.x, u_input.a), -(~(-24849i))), false || any(vec3<bool>(global3.x, !global3.x, true)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(max(-1357f, -1000f)), -710f, _wgslsmith_f_op_f32(max(1200f, -1000f)))))), Struct_1(_wgslsmith_div_i32(~(~u_input.d.x), -30583i), 54907u, -select(~vec3<i32>(-14597i, 1i, 1i), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), global3.x && global3.x), min(0u, 4294967295u)));
    global1 = array<Struct_2, 29>();
    return vec3<bool>(any(!(!vec3<bool>(false, global3.x, true))), var_2.b, select(any(select(select(vec3<bool>(false, false, true), vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, false, global3.x)), !vec3<bool>(global3.x, global3.x, false), var_2.b | var_2.b)), true, true != (~arg_0.a > -16033i)));
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<bool>(u_input.a > -62664i, false, !(abs(u_input.b.x) <= u_input.c.x), false);
    let var_1 = Struct_3(func_3(Struct_1(u_input.d.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 4294967295u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.c.x)), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.c.x) << (vec4<u32>(4316u, 1u, u_input.b.x, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec3_i32(u_input.d, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]) | firstLeadingBit(vec3<i32>(-7567i, 51278i, u_input.a)), 1093u), ~(~(vec4<u32>(99198u, 4294967295u, 50326u, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.b.x, 71601u, u_input.b.x) % vec4<u32>(32u))))), Struct_2(firstTrailingBit(vec3<i32>(-28920i, u_input.a, i32(-1i) * -2147483647i)), true || !global3.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1623f, 1003f, 1053f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1393f, -2254f, 214f, -118f)))))), Struct_1(_wgslsmith_mod_i32(select(0i, -1i, var_0.x), u_input.d.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 8253u), vec3<u32>(4294967295u, u_input.b.x, u_input.c.x)), global0[_wgslsmith_index_u32(firstTrailingBit(46906u), 22u)], u_input.b.x & max(u_input.c.x, 0u))), !vec2<bool>(all(vec4<bool>(true, false, global3.x, global3.x)), var_0.x), 15003u, var_0.wxw);
    var_0 = select(select(select(!vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_1.e.x || true, any(vec4<bool>(true, true, true, true)), var_1.b.b || var_0.x, global3.x), var_0.x), select(select(select(vec4<bool>(var_0.x, var_0.x, var_1.c.x, global3.x), vec4<bool>(true, var_1.b.b, global3.x, true), true), vec4<bool>(true, global3.x, false, true), var_1.b.d.a > 2147483647i), vec4<bool>(var_0.x && var_0.x, false, var_1.b.d.b > 25875u, var_0.x), !var_1.c.x), !(!vec4<bool>(var_1.e.x, var_0.x, true, global3.x))), vec4<bool>(all(var_1.a), false, any(vec4<bool>(global3.x, !var_1.a.x, u_input.b.x < 0u, true)), true), any(!select(!vec4<bool>(var_1.b.b, true, true, var_0.x), select(vec4<bool>(var_1.b.b, false, var_1.c.x, var_1.e.x), vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, true, var_0.x)), 0i >= var_1.b.a.x)));
    var var_2 = var_1;
    var var_3 = 4294967295u;
    return Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1875f) + -3066f))), var_2.b, Struct_3(var_2.a, Struct_2(select(_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(54235i, 1i, var_1.b.d.a)), min(vec3<i32>(2147483647i, var_1.b.a.x, -1i), vec3<i32>(1i, 38226i, -10120i)), var_1.e.x), var_0.x, var_1.b.c, Struct_1(var_2.b.a.x << (4294967295u % 32u), var_1.b.d.d, vec3<i32>(-2147483647i, 1i, 2147483647i), var_1.b.d.b)), var_0.ww, _wgslsmith_clamp_u32(0u, ~var_1.b.d.b >> (_wgslsmith_sub_u32(var_2.b.d.d, 4294967295u) % 32u), u_input.c.x), select(!var_0.zww, !(!vec3<bool>(var_0.x, false, false)), !select(vec3<bool>(false, global3.x, var_0.x), var_2.e, true))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> Struct_4 {
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    var var_0 = Struct_4(433f, func_2().b, Struct_3(arg_0.c.e, arg_0.c.b, select(!vec2<bool>(true, global3.x), !func_2().c.e.yz, vec2<bool>(true, true)), ~_wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(5632u, 1u, u_input.c.x, u_input.b.x))), !vec3<bool>(global3.x, -43498i >= arg_3, all(vec2<bool>(false, false)))));
    var_0 = arg_0;
    let var_1 = Struct_1(arg_0.b.d.a, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, abs(var_0.c.b.d.d)), 1u), var_0.c.b.d.d), _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, _wgslsmith_add_i32(arg_3, 15497i), -18203i), u_input.d), ~0u);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = func_4(func_2(), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 27702u, 18957u, arg_0.d), vec4<u32>(var_0.b, var_0.b, var_0.b, 1u)) & ~vec4<u32>(arg_1, 1u, arg_0.d, u_input.c.x)), any(!select(!vec4<bool>(true, false, false, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(true, global3.x, true, false), vec4<bool>(true, global3.x, global3.x, false)))), _wgslsmith_div_i32(-(~(-19752i) >> (u_input.b.x % 32u)), 0i));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f + var_1.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(Struct_4(var_1.c.b.c.x, Struct_2(vec3<i32>(var_1.b.a.x, var_1.b.d.a, 1i), false, var_1.c.b.c, var_1.c.b.d), Struct_3(var_1.c.e, global1[_wgslsmith_index_u32(25390u, 29u)], global3.zz, arg_1, var_1.c.a)), vec4<u32>(var_0.b, 14244u, var_1.b.d.d, 30592u), true, -9247i).c.b.c.x) + _wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(-var_1.b.c.x)))), Struct_2(vec3<i32>(var_0.a, var_0.a, _wgslsmith_mod_i32(1i, ~var_0.a)), true, var_1.c.b.c, func_2().b.d), func_2().c);
    global2 = array<vec4<i32>, 11>();
    let var_3 = func_2().c.b;
    return func_2().b.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(arg_1.b.c.x, _wgslsmith_f_op_f32(arg_1.b.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-111f, arg_1.a, global3.x)) * _wgslsmith_f_op_f32(f32(-1f) * -430f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(578f)), 392f))));
    global2 = array<vec4<i32>, 11>();
    global1 = array<Struct_2, 29>();
    var var_1 = Struct_4(-1743f, Struct_2(arg_1.c.b.d.c, !(!arg_1.c.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(308f)), _wgslsmith_f_op_f32(-arg_1.c.b.c.x), func_2().b.c.x, -1352f)), arg_1.b.d), Struct_3(vec3<bool>(false || (1000f != arg_1.c.b.c.x), global3.x, true), Struct_2(~(vec3<i32>(0i, 16606i, arg_3.c.x) << (u_input.b % vec3<u32>(32u))), select(!arg_1.b.b, true, global3.x & false), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, arg_1.b.c.x, -1320f, arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b.c.x, arg_1.a, arg_1.b.c.x, -195f)))), arg_1.b.d), func_3(Struct_1(u_input.d.x ^ arg_1.b.a.x, _wgslsmith_sub_u32(arg_0.b, 4294967295u), -arg_0.c, firstLeadingBit(arg_3.d)), max(vec4<u32>(arg_2.b, 0u, arg_1.b.d.d, 71412u) ^ vec4<u32>(9185u, 1u, arg_2.b, arg_1.c.b.d.b), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b, 0u, 37626u, arg_0.d), vec4<u32>(arg_2.b, 68442u, 4294967295u, 0u)))).zy, u_input.b.x, arg_1.c.e));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(697f, 1000f)))) - var_1.c.b.c.x), arg_1.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + var_1.b.c.x)))));
    return abs(vec3<i32>(-_wgslsmith_mod_i32(4388i, 41571i), i32(-1i) * -_wgslsmith_mod_i32(-11187i, -11863i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<bool>(true, false, true), Struct_2(func_5(func_1(Struct_1(2147483647i, 4294967295u, vec3<i32>(63435i, 2147483647i, u_input.a), u_input.c.x), ~4294967295u), func_4(func_2(), vec4<u32>(u_input.b.x, 0u, 32407u, u_input.b.x), global3.x, select(-42875i, u_input.a, true)), Struct_1(u_input.d.x << (u_input.b.x % 32u), ~0u, vec3<i32>(2918i, u_input.d.x, u_input.a) & vec3<i32>(0i, -2147483647i, -1i), 7070u & u_input.b.x), Struct_1(u_input.d.x >> (u_input.c.x % 32u), u_input.c.x << (u_input.c.x % 32u), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(-2147483647i, u_input.a, u_input.a), 66086u)), false, _wgslsmith_f_op_vec4_f32(func_4(func_2(), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.b.x), 44201i < u_input.d.x, u_input.d.x).b.c * vec4<f32>(-108f, 329f, func_2().c.b.c.x, -2274f)), Struct_1(-abs(u_input.a), 11692u, ~min(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], u_input.d), _wgslsmith_div_u32(~u_input.b.x, min(1u, 4294967295u)))), !global3.xy, 1u, !func_2().c.a);
    var var_1 = vec2<bool>(true, var_0.b.b);
    let var_2 = var_0.b.d;
    var_1 = vec2<bool>(global3.x, all(!select(!var_0.e, vec3<bool>(global3.x, var_1.x, false), func_3(Struct_1(2147483647i, 1u, global0[_wgslsmith_index_u32(25607u, 22u)], 4294967295u), vec4<u32>(14453u, 29256u, var_0.d, var_0.d)).x)));
    var var_3 = var_0.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b, 9597u | ~(firstTrailingBit(0u) | func_4(Struct_4(var_0.b.c.x, var_0.b, var_0), vec4<u32>(u_input.b.x, var_2.d, 0u, 4294967295u), true, -8864i).c.d));
}

