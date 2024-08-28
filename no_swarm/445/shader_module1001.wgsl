struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(4294967295u), Struct_3(17834u), Struct_3(4294967295u), Struct_3(1u), Struct_3(31698u), Struct_3(16731u), Struct_3(68604u), Struct_3(1u), Struct_3(1u), Struct_3(22275u), Struct_3(91787u), Struct_3(0u));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-493f, 1761f, -1019f, 1371f), vec4<u32>(7038u, 38877u, 0u, 20833u), true, Struct_1(vec3<bool>(false, false, true), false, vec2<f32>(-189f, -2623f), i32(-2147483648)), Struct_1(vec3<bool>(false, false, false), true, vec2<f32>(-509f, -657f), -41725i));

var<private> global3: array<f32, 32>;

var<private> global4: array<bool, 18> = array<bool, 18>(false, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    global3 = array<f32, 32>();
    let var_0 = -1192f;
    return all(vec4<bool>(any(arg_2.a), all(vec4<bool>(arg_2.b, arg_0.b, true, all(vec2<bool>(global4[_wgslsmith_index_u32(global2.b.x, 18u)], arg_2.b)))), select(all(select(vec4<bool>(arg_2.b, true, true, false), vec4<bool>(arg_0.b, true, true, arg_2.b), vec4<bool>(false, true, arg_0.b, global2.c))), any(vec2<bool>(true, true)) && false, select(!arg_2.a.x, arg_0.a.x, global2.d.b)), true));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = select(vec4<bool>(!(43082u <= (arg_0.a | 4294967295u)), any(select(!vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 18u)], true, true), select(vec4<bool>(global2.e.a.x, false, true, false), vec4<bool>(global2.e.a.x, global2.d.a.x, true, true), vec4<bool>(global4[_wgslsmith_index_u32(13491u, 18u)], false, false, global4[_wgslsmith_index_u32(56055u, 18u)])), any(vec4<bool>(false, global4[_wgslsmith_index_u32(6680u, 18u)], global4[_wgslsmith_index_u32(arg_0.a, 18u)], false)))), func_3(global2.d, arg_0, global2.d), any(!vec4<bool>(true, global4[_wgslsmith_index_u32(arg_1.a, 18u)], global2.c, global4[_wgslsmith_index_u32(18116u, 18u)]))), !select(select(select(vec4<bool>(false, global2.e.a.x, global2.d.a.x, true), vec4<bool>(global2.d.b, global2.d.a.x, false, global4[_wgslsmith_index_u32(arg_1.a, 18u)]), true), !vec4<bool>(global2.c, global2.c, false, false), select(vec4<bool>(true, global2.d.b, global4[_wgslsmith_index_u32(23771u, 18u)], false), vec4<bool>(global4[_wgslsmith_index_u32(19773u, 18u)], global4[_wgslsmith_index_u32(106197u, 18u)], true, true), vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(arg_0.a, 18u)], false))), select(!vec4<bool>(false, true, true, global2.d.b), !vec4<bool>(true, global2.e.a.x, false, false), any(global2.e.a.zy)), true), global2.d.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.e.c.x, _wgslsmith_f_op_f32(416f + global2.e.c.x), global2.c)) - _wgslsmith_f_op_f32(f32(-1f) * -434f)), 791f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14154u, global2.b.x, arg_1.a, 0u), ~global2.b) ^ _wgslsmith_add_u32(arg_1.a, 4364u), 32u)]));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-923f - _wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(51213u, 32u)]) + _wgslsmith_f_op_f32(-global2.a.x)))) * global2.d.c.x);
    let var_3 = global2.e.a;
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.c.x, var_1.x, -2077f, global2.e.c.x)))))), _wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(global2.b, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 1u, 0u), global2.b)), ~(~global2.b), select(var_0, !vec4<bool>(true, global4[_wgslsmith_index_u32(arg_1.a, 18u)], var_3.x, true), true)), vec4<u32>(1u, 4294967295u, global2.b.x, ~_wgslsmith_add_u32(arg_0.a, global2.b.x))), !var_3.x, global2.e, Struct_1(select(vec3<bool>(!global2.e.b, arg_0.a > arg_0.a, any(var_0)), var_0.xyx, all(!vec4<bool>(false, false, var_0.x, true))), var_0.x, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(global2.d.c.x, global3[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1826f, global2.a.x) * vec2<f32>(1090f, global2.a.x)) + var_1.yz))), min(-u_input.a, -2147483647i)));
    return global2.d;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> vec4<u32> {
    var var_0 = func_2(Struct_3(max(arg_1.a, ~global2.b.x)), Struct_3(global2.b.x));
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-981f, -655f, arg_2, global2.e.c.x) - global2.a)), _wgslsmith_f_op_vec4_f32(-global2.a), !global2.c)), vec4<f32>(_wgslsmith_f_op_f32(2389f - func_2(Struct_3(4294967295u), global1[_wgslsmith_index_u32(4294967295u, 12u)]).c.x), 184f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(global2.e.c.x + global3[_wgslsmith_index_u32(4294967295u, 32u)]), global4[_wgslsmith_index_u32(arg_1.a, 18u)] && global4[_wgslsmith_index_u32(0u, 18u)])))), vec4<u32>(~9131u, firstTrailingBit(arg_1.a), countOneBits(0u), arg_1.a), true, global2.d, Struct_1(var_0.a, all(vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 28731u), 18u)], all(vec4<bool>(global2.c, false, true, true)), global2.d.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_1.a, 32u)], -165f)) * _wgslsmith_f_op_vec2_f32(-var_0.c)))), ~(-2147483647i)));
    let var_2 = func_2(Struct_3(reverseBits(~35490u)), Struct_3(_wgslsmith_sub_u32(firstLeadingBit(var_1.b.x), 31234u)));
    let var_3 = arg_1;
    global4 = array<bool, 18>();
    return vec4<u32>(~0u, ~(~_wgslsmith_dot_vec3_u32(global2.b.wzx, global2.b.yzy)), var_3.a, _wgslsmith_mult_u32(arg_1.a, 4294967295u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.b.x, var_3.a, var_3.a) << (vec4<u32>(var_1.b.x, var_1.b.x, var_3.a, 10541u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(27739u, 0u, var_1.b.x, var_1.b.x)), var_1.b)), 0u, ~_wgslsmith_clamp_u32(reverseBits(global2.b.x), 8477u, arg_1.a ^ 66740u), var_1.b.x) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 32>();
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.c.x, 521f, 964f, global3[_wgslsmith_index_u32(4294967295u, 32u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], global2.d.c.x, -1000f, global2.a.x))))), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.b.x, abs(62453u), _wgslsmith_clamp_u32(global2.b.x, global2.b.x, 52796u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 18279u, 5464u), vec3<u32>(global2.b.x, 112425u, global2.b.x))) ^ ~(~vec4<u32>(8900u, global2.b.x, 5182u, 24346u)), ~func_1(-412f, global1[_wgslsmith_index_u32(global2.b.x, 12u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.b.x, 32u)] - 108f))), func_2(Struct_3(global2.b.x), global1[_wgslsmith_index_u32(4294967295u, 12u)]).b && select(true, false, all(select(vec3<bool>(true, false, false), global2.e.a, global2.e.b))), Struct_1(!(!select(global2.d.a, global2.d.a, global2.e.a)), true, vec2<f32>(global2.d.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.c.x), _wgslsmith_f_op_f32(f32(-1f) * -563f))), _wgslsmith_div_i32((global2.d.d | 20948i) << (26700u % 32u), ~firstLeadingBit(1i))), Struct_1(vec3<bool>(true, !global4[_wgslsmith_index_u32(global2.b.x, 18u)] || !global4[_wgslsmith_index_u32(global2.b.x, 18u)], select(func_2(global1[_wgslsmith_index_u32(0u, 12u)], Struct_3(global2.b.x)).a.x, global2.e.b, true)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.c.x, global3[_wgslsmith_index_u32(1u, 32u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.d.c) - vec2<f32>(-488f, global2.a.x))), u_input.a));
    global2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2243f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b.x, 32u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global2.a.x, global2.e.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(min(555f, _wgslsmith_div_f32(func_2(global1[_wgslsmith_index_u32(global2.b.x, 12u)], global1[_wgslsmith_index_u32(global2.b.x, 12u)]).c.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(26466u, 32u)] - -1153f))))), vec4<u32>(reverseBits(~4294967295u), func_1(-188f, Struct_3(_wgslsmith_dot_vec4_u32(global2.b, vec4<u32>(global2.b.x, 4294967295u, global2.b.x, 4294967295u))), 415f).x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 46609u), global2.b.zx) | countOneBits(4294967295u), 61270u), any(!(!(!global2.e.a.yz))), Struct_1(global2.e.a, true, global2.e.c, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, 1i) & u_input.b.yzz, u_input.b.yzz & u_input.b.yyx))), global2.e);
    global3 = array<f32, 32>();
    global3 = array<f32, 32>();
    let var_0 = 11062u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zxz);
}

