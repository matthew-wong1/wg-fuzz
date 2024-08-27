struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(157f, 408f, 826f), vec3<f32>(245f, 463f, 1614f), vec3<f32>(-896f, -135f, -627f), vec3<f32>(371f, 596f, -128f), vec3<f32>(-439f, -285f, -1354f), vec3<f32>(-284f, 2448f, 564f), vec3<f32>(767f, -1206f, -824f), vec3<f32>(-1748f, -439f, -1000f), vec3<f32>(380f, 296f, 203f), vec3<f32>(237f, -2556f, -1000f), vec3<f32>(-110f, 1263f, -299f));

var<private> global1: array<Struct_4, 32>;

var<private> global2: array<u32, 30>;

var<private> global3: Struct_1;

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global3 = Struct_1(!global3.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -123f))), _wgslsmith_f_op_f32(global3.c * global3.b), -103f);
    return _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(firstTrailingBit(countOneBits(1u)), 30u)], 66333u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(select(vec2<bool>(_wgslsmith_sub_u32(60187u, 0u) == ~global2[_wgslsmith_index_u32(arg_0.x, 30u)], any(vec3<bool>(true, true, true))), vec2<bool>(all(arg_1.a), global3.a), !vec2<bool>(true, arg_1.c.x)), Struct_1(any(arg_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1488f + _wgslsmith_f_op_f32(-arg_1.b.c)))), global3.b, -966f), vec3<bool>(!all(vec3<bool>(false, arg_1.b.a, global3.a)), select(true, arg_1.c.x, all(vec4<bool>(false, global3.a, true, global3.a))), false & arg_1.b.a));
    let var_1 = !select(vec2<bool>(any(vec4<bool>(true, var_0.a.x, true, true)) || arg_1.a.x, all(arg_1.c.zx)), vec2<bool>(true, select(arg_1.c.x, true | global3.a, global3.a)), var_0.c.x);
    global0 = array<vec3<f32>, 11>();
    var var_2 = min(-vec3<i32>(-63030i, u_input.a, u_input.a), vec3<i32>(-firstTrailingBit(u_input.b), firstTrailingBit(reverseBits(u_input.a << (1u % 32u))), ~reverseBits(min(u_input.a, -1i))));
    global1 = array<Struct_4, 32>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1782f) - 1763f) * _wgslsmith_f_op_f32(global3.b - var_0.b.b));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-722f, 340f))) + arg_2.zy);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(arg_2.xyz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, arg_1, 446f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, global3.d) + arg_2.xzy))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<u32>(func_3(arg_2.zy, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64992u, 30u)], 30u)], 30u)], 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 30u)], 30u)]), Struct_2(vec2<bool>(false, arg_3), Struct_1(true, 885f, var_1.x, var_0.x), vec3<bool>(global3.a, arg_3, false))))), -237f, arg_2.x);
    global0 = array<vec3<f32>, 11>();
    global4 = all(select(select(select(vec4<bool>(arg_3, global3.a, true, false), vec4<bool>(false, false, global3.a, false), false), vec4<bool>(true, true, true, true), !vec4<bool>(global3.a, true, arg_3, global3.a)), vec4<bool>(any(vec3<bool>(true, true, true)), arg_3, true, true), select(vec4<bool>(false, any(vec2<bool>(true, arg_3)), !global3.a, all(vec4<bool>(true, true, global3.a, false))), select(vec4<bool>(false, global3.a, global3.a, global3.a), vec4<bool>(true, true, arg_3, false), vec4<bool>(global3.a, false, arg_3, arg_3)), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(21279u, 30u)], 15061u), vec2<u32>(global2[_wgslsmith_index_u32(8218u, 30u)], 1u)) != global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11064u, 30u)], 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42773u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 11579u)), 30u)])));
    return Struct_5(Struct_3(Struct_2(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), Struct_1(true, global3.c, global3.b, _wgslsmith_f_op_f32(f32(-1f) * -1642f)), select(vec3<bool>(arg_3, arg_3, true), select(vec3<bool>(true, arg_3, global3.a), vec3<bool>(false, global3.a, false), vec3<bool>(true, false, arg_3)), vec3<bool>(false, arg_3, arg_3))), ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~103919u, 30u)], 30u)]), ~(-vec2<i32>(u_input.b, 12028i) & (vec2<i32>(1i, u_input.b) << (vec2<u32>(global2[_wgslsmith_index_u32(0u, 30u)], 17961u) % vec2<u32>(32u)))), Struct_2(!(!vec2<bool>(global3.a, false)), Struct_1(global3.a, -880f, -1207f, _wgslsmith_f_op_f32(global3.d - var_2.x)), select(vec3<bool>(global3.a, true, arg_3), select(vec3<bool>(false, true, true), vec3<bool>(global3.a, global3.a, arg_3), vec3<bool>(arg_3, false, false)), !vec3<bool>(true, false, global3.a))), Struct_2(select(select(vec2<bool>(false, global3.a), vec2<bool>(arg_3, global3.a), vec2<bool>(arg_3, true)), select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, false), global3.a), select(arg_3, true, global3.a)), Struct_1(true, global3.c, _wgslsmith_f_op_f32(max(var_2.x, 940f)), _wgslsmith_f_op_f32(f32(-1f) * -1187f)), vec3<bool>(arg_3, all(vec4<bool>(global3.a, false, false, global3.a)), all(vec3<bool>(global3.a, global3.a, false))))), Struct_2(vec2<bool>(global3.a, true), Struct_1(!global3.a, var_0.x, 574f, _wgslsmith_f_op_f32(func_4(reverseBits(vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)])), Struct_2(vec2<bool>(arg_3, global3.a), Struct_1(arg_3, 677f, arg_1, 1000f), vec3<bool>(false, false, false))))), !vec3<bool>(false, var_1.x <= 212f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(119u, 30u)], 30u)], 30u)] <= 1u)), true);
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-20632i, u_input.a, ~_wgslsmith_mod_i32(u_input.a, -19840i)), vec3<i32>(-(~u_input.a), abs(u_input.a), 9626i)), global3.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d, global3.d, _wgslsmith_f_op_f32(174f * -573f), global3.b) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f * global3.c)), 111f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global3.b)))), true);
    global2 = array<u32, 30>();
    var var_1 = Struct_4((_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, var_0.a.c.x, var_0.a.c.x, u_input.b), firstTrailingBit(vec4<i32>(var_0.a.c.x, 2147483647i, var_0.a.c.x, u_input.a))) | firstLeadingBit(vec4<i32>(u_input.b, 15360i, 1i, 16116i))) | abs(vec4<i32>(-1i) * -vec4<i32>(7486i, var_0.a.c.x, -1i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -758f), Struct_3(func_2(var_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-695f, 1000f, var_0.b.b.d, 147f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.d.b.b, 632f, -1000f, -848f)))), any(!vec4<bool>(var_0.c, global3.a, false, true))).a.a, ~var_0.a.b, var_0.a.c >> (vec2<u32>(countOneBits(global2[_wgslsmith_index_u32(var_0.a.b, 30u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, 4294967295u, 51424u), vec3<u32>(74231u, global2[_wgslsmith_index_u32(10834u, 30u)], 10343u))) % vec2<u32>(32u)), Struct_2(func_2(~(-26925i), var_0.b.b.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1267f, 1000f, -362f, var_0.b.b.c), vec4<f32>(2208f, var_0.a.e.b.c, 398f, 595f))), true).a.e.a, var_0.b.b, var_0.a.d.c), func_2(-17386i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.b.d))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, global3.b, var_0.a.a.b.d, -898f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, 2519f, global3.d, var_0.b.b.c)))), arg_0).a.d));
    let var_2 = ~select(-vec2<i32>(var_1.c.c.x, 0i), select(-var_1.c.c, var_1.c.c, vec2<bool>(true, true)), 1i > -_wgslsmith_mult_i32(-11415i, var_1.a.x));
    var var_3 = _wgslsmith_f_op_f32(global3.c - -1000f);
    return 25357u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global3.a;
    let var_0 = vec3<bool>(0u > _wgslsmith_div_u32(func_1(true), ~global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13357u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)]), 30u)]), true, false);
    global1 = array<Struct_4, 32>();
    let var_1 = vec2<i32>(-(~(~u_input.b)) ^ -(i32(-1i) * -1i), ~reverseBits(select(~u_input.a, u_input.b, true)));
    global4 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(303i, countOneBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 30u)], 1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4755u, 30u)], 30u)]) ^ vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 1u, 78234u), abs(vec4<u32>(global2[_wgslsmith_index_u32(46973u, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 44639u, 1u))), (vec4<u32>(46723u, 4294967295u, global2[_wgslsmith_index_u32(66314u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]) >> (vec4<u32>(15123u, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], 17749u) % vec4<u32>(32u))) >> (vec4<u32>(global2[_wgslsmith_index_u32(21167u, 30u)], 1u, 0u, global2[_wgslsmith_index_u32(43691u, 30u)]) % vec4<u32>(32u)), vec4<bool>(select(false, global3.a, false), !var_0.x, any(var_0.xz), global3.d >= global3.c))));
}

