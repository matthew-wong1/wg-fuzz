struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: array<vec2<bool>, 17>;

var<private> global2: Struct_4 = Struct_4(Struct_3(true), Struct_1(vec2<f32>(139f, 1000f)), Struct_3(true), 32129u, Struct_3(true));

var<private> global3: array<bool, 11> = array<bool, 11>(true, true, false, false, true, false, true, true, false, true, true);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_3(true);
    var var_1 = select(!vec3<bool>(false, all(vec3<bool>(var_0.a, global3[_wgslsmith_index_u32(global2.d, 11u)], var_0.a)) || global3[_wgslsmith_index_u32(reverseBits(1u), 11u)], false), !vec3<bool>(false, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), true), vec3<bool>(!(!(!global3[_wgslsmith_index_u32(arg_0.x, 11u)])), global3[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_f_op_f32(-1188f * global2.b.a.x) != _wgslsmith_f_op_f32(max(-867f, _wgslsmith_f_op_f32(-1702f + -776f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, _wgslsmith_div_f32(global2.b.a.x, global2.b.a.x))), global2.b.a, select(vec2<bool>(var_1.x | global3[_wgslsmith_index_u32(0u, 11u)], false), global1[_wgslsmith_index_u32(u_input.b, 17u)], any(vec2<bool>(var_1.x, var_0.a))))));
    global3 = array<bool, 11>();
    global1 = array<vec2<bool>, 17>();
    return !select(!vec3<bool>(true, false, arg_1 <= 0i), vec3<bool>(!global3[_wgslsmith_index_u32(0u, 11u)] == var_0.a, true, false), false);
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<bool>, 17>();
    global2 = Struct_4(global2.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global2.b.a))) + global2.b.a)), global2.c, firstTrailingBit(global2.d ^ ~2029u), global2.c);
    let var_0 = ~reverseBits(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.b, global2.d), vec2<u32>(5887u, global2.d), global3[_wgslsmith_index_u32(18856u, 11u)]), ~vec2<u32>(global2.d, u_input.a))) << (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.d, global2.d, 0u, 49826u) & vec4<u32>(1u, 88569u, global2.d, global2.d), vec4<u32>(48407u, 31078u, 18214u, 4294967295u)), (vec4<u32>(global2.d, global2.d, global2.d, global2.d) << (vec4<u32>(global2.d, global2.d, global2.d, 73420u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 1u, 14994u), vec4<u32>(57565u, 4294967295u, global2.d, u_input.b))), 4294967295u) % vec2<u32>(32u));
    var var_1 = -(_wgslsmith_clamp_i32(abs(abs(-2147483647i)), 28992i, -2147483647i) << (1u % 32u));
    let var_2 = !select(!select(vec3<bool>(global2.a.a, global2.e.a, false), vec3<bool>(global3[_wgslsmith_index_u32(global2.d, 11u)], false, true), select(vec3<bool>(false, false, global2.c.a), vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(1u, 11u)]))), select(func_3(vec3<u32>(38363u, var_0.x, 0u) << (vec3<u32>(45620u, 1u, 3485u) % vec3<u32>(32u)), -2147483647i), vec3<bool>(true, any(global1[_wgslsmith_index_u32(var_0.x, 17u)]), true), true), !(!(!vec3<bool>(global2.c.a, true, true))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.x, _wgslsmith_f_op_f32(-1763f * 1298f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-814f * global2.b.a.x), 2319f))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, max(~arg_2.c.x, ~_wgslsmith_div_u32(0u, arg_0.a))), min(~select(vec2<u32>(arg_2.c.x, 8898u) << (arg_0.b.c % vec2<u32>(32u)), arg_0.b.c, global2.e.a), arg_2.c));
    var var_1 = !(!(!select(vec4<bool>(global2.e.a, true, false, false), select(vec4<bool>(global2.e.a, false, global2.a.a, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_2.c.x, 11u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(99681u, 11u)], true, true, global3[_wgslsmith_index_u32(5968u, 11u)]), false))));
    var var_2 = 2107f;
    var var_3 = vec4<u32>(_wgslsmith_add_u32(u_input.a, select(~var_0.x, _wgslsmith_clamp_u32(91794u, 0u, global2.d), global2.a.a) ^ (~4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(9698u, 21241u), var_0) % 32u))), 22137u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(15420u, 47546u), vec2<u32>(global2.d, arg_2.c.x)), vec2<u32>(u_input.b, arg_0.b.c.x)), arg_0.b.c) ^ firstTrailingBit(firstLeadingBit(48352u)), 30504u);
    var var_4 = _wgslsmith_f_op_f32(ceil(279f));
    return 1u;
}

fn func_1(arg_0: Struct_5) -> Struct_3 {
    var var_0 = all(global1[_wgslsmith_index_u32(func_4(Struct_5(_wgslsmith_clamp_u32(arg_0.a, global2.d, global2.d) | arg_0.b.c.x, Struct_2(_wgslsmith_f_op_f32(arg_0.b.a * -318f), -10956i, arg_0.b.c << (vec2<u32>(global2.d, u_input.b) % vec2<u32>(32u)), arg_0.b.d), _wgslsmith_f_op_vec4_f32(-arg_0.c)), func_2(), Struct_2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(arg_0.b.a))), _wgslsmith_clamp_i32(0i, ~arg_0.b.b, arg_0.b.b), arg_0.b.c, func_2())), 17u)]);
    let var_1 = Struct_3(~(~(~global2.d)) < 114052u);
    global3 = array<bool, 11>();
    global1 = array<vec2<bool>, 17>();
    let var_2 = vec2<i32>(-1i) * -(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b.b, -2147483647i), select(vec2<i32>(-15305i, arg_0.b.b), vec2<i32>(-26442i, 0i), false)) & (countOneBits(vec2<i32>(arg_0.b.b, arg_0.b.b)) ^ (vec2<i32>(1i, arg_0.b.b) | vec2<i32>(-37085i, 28564i))));
    return Struct_3(!(!(!var_1.a)));
}

fn func_5(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_sub_u32(0u, ~arg_0.d) << (abs(4294967295u) % 32u);
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(func_2().a.x * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.a.x, func_2().a.x, global2.e.a)))));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global2.b.a * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b.a)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.a.x, func_2().a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(firstTrailingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global2.d, global2.d), vec3<u32>(4294967295u, global2.d, u_input.b)))) << (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(global2.d, global2.d, global2.d), ~vec3<u32>(11387u, u_input.a, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(global2.d, u_input.b, u_input.b), ~vec3<u32>(1u, global2.d, global2.d))) % vec3<u32>(32u)));
    global1 = array<vec2<bool>, 17>();
    var var_1 = ~(~(~vec4<u32>(global2.d | 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.d, var_0.x, global2.d), vec3<u32>(0u, 48361u, 1u)), 31921u, 112151u)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(Struct_4(func_1(Struct_5(0u, Struct_2(global2.b.a.x, -2147483647i, vec2<u32>(19577u, global2.d), global2.b), vec4<f32>(326f, -1641f, global2.b.a.x, global2.b.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.b.a)), func_1(Struct_5(var_1.x, Struct_2(953f, 0i, var_0.zz, global2.b), vec4<f32>(426f, global2.b.a.x, global2.b.a.x, 325f))), ~37733u, global2.e))), global2.b.a.x, (-222f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b.a.x, global2.b.a.x)))) && any(vec4<bool>(func_3(vec3<u32>(var_0.x, 1u, 0u), -2147483647i).x, all(vec4<bool>(global2.c.a, false, true, global3[_wgslsmith_index_u32(8958u, 11u)])), !global3[_wgslsmith_index_u32(var_1.x, 11u)], any(global1[_wgslsmith_index_u32(global2.d, 17u)])))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(610f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1025f * 246f)))))) - -1506f);
    var var_4 = all(select(!(!(!vec4<bool>(true, global2.a.a, false, true))), select(select(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(6921u, 11u)]), vec4<bool>(true, global2.a.a, global3[_wgslsmith_index_u32(global2.d, 11u)], true), !vec4<bool>(global3[_wgslsmith_index_u32(43310u, 11u)], false, false, true)), select(vec4<bool>(false, true, global2.e.a, global3[_wgslsmith_index_u32(4294967295u, 11u)]), select(vec4<bool>(global2.c.a, false, global2.e.a, global2.c.a), vec4<bool>(global2.c.a, true, global3[_wgslsmith_index_u32(var_1.x, 11u)], global3[_wgslsmith_index_u32(var_0.x, 11u)]), vec4<bool>(global2.c.a, global2.a.a, false, global2.e.a)), false), global2.c.a), global3[_wgslsmith_index_u32(~var_1.x << (reverseBits(var_0.x & 55075u) % 32u), 11u)]));
    let var_5 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(var_0.x, var_0.x, global2.d, u_input.a) << (vec4<u32>(0u, 129240u, 11062u, var_1.x) % vec4<u32>(32u))) ^ vec4<u32>(global2.d, 25619u, 45897u, global2.d), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, var_0.x, 58128u, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(global2.d, 1u, 65800u, var_0.x), vec4<u32>(4294967295u, var_1.x, 10383u, var_0.x)))), global2.d) & _wgslsmith_mod_u32(1u, ~(~global2.d << (0u % 32u)));
    var var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1220f, 922f, global3[_wgslsmith_index_u32(var_5, 11u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_6.a.x, global2.b.a.x)), var_6.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.a.x + global2.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1562f * 792f) - 1f) + var_2), false)), vec2<u32>(u_input.a, 1u));
}

