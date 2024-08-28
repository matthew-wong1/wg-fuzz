struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-322f);

var<private> global1: array<i32, 4> = array<i32, 4>(33623i, -29471i, i32(-2147483648), 41930i);

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, true, true, true, false, false, true, false, false, false, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = reverseBits(vec4<u32>(76679u, countOneBits(1u), 0u, firstLeadingBit(31083u)));
    var_0 = select(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(46057u, 0u, u_input.c, 21677u) ^ vec4<u32>(4784u, u_input.c, 57530u, 20215u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.a, 1u), vec4<u32>(var_0.x, 21076u, 4294967295u, 4294967295u)) >> (vec4<u32>(var_0.x, 31367u, u_input.c, u_input.a) % vec4<u32>(32u))), min(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 41913u, var_0.x, var_0.x), firstLeadingBit(vec4<u32>(1u, var_0.x, u_input.a, 0u)))), ~vec4<u32>(~2280u, u_input.c, u_input.a, u_input.c)), select(vec4<bool>(select(true, global2[_wgslsmith_index_u32(u_input.c, 13u)] | false, !global2[_wgslsmith_index_u32(u_input.a, 13u)]), any(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(29532u, 13u)])), !global2[_wgslsmith_index_u32(max(var_0.x, var_0.x), 13u)], any(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c, 13u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 13u)], global2[_wgslsmith_index_u32(u_input.c, 13u)]), true))), select(vec4<bool>(u_input.b <= global1[_wgslsmith_index_u32(var_0.x, 4u)], !global2[_wgslsmith_index_u32(0u, 13u)], true, true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)], false, global2[_wgslsmith_index_u32(var_0.x, 13u)]), 1i == u_input.b), global2[_wgslsmith_index_u32(firstTrailingBit(31898u), 13u)]));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 37013u), var_0.zz), 1u)], -187f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.a)))), _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.c, 9254u, 0u)), vec4<u32>(u_input.c, 0u, u_input.a & 1u, 1u) ^ ~vec4<u32>(1u, var_0.x, 4294967295u, u_input.a), firstLeadingBit(~vec4<u32>(var_0.x, 55284u, 23618u, 0u))), Struct_1(~vec3<i32>(9234i, 4417i, u_input.b), true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(109462u, 1u)]), true, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 13u)], firstTrailingBit(0u) > u_input.c)), Struct_1(firstLeadingBit(vec3<i32>(-2147483647i, -1i & global1[_wgslsmith_index_u32(var_0.x, 4u)], firstLeadingBit(6171i))), global2[_wgslsmith_index_u32(1u, 13u)], arg_0.a.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.xw, select(max(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(var_0.x, 1u)), max(var_0.wx, var_0.yw), false)), 13u)], vec3<bool>(false, true, global2[_wgslsmith_index_u32(~13233u, 13u)])), !all(vec4<bool>(-1116f == arg_0.a.x, -64724i >= arg_0.b.x, select(global2[_wgslsmith_index_u32(58255u, 13u)], true, true), false)));
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.d.c)))), var_1.c.c), _wgslsmith_sub_vec4_u32(var_1.b | ~(~var_1.b), min(var_1.b >> (vec4<u32>(10662u, u_input.c, var_1.b.x, 41234u) % vec4<u32>(32u)), max(var_1.b, var_1.b)) >> (vec4<u32>(firstTrailingBit(u_input.a), ~var_0.x, firstLeadingBit(var_1.b.x), ~var_1.b.x) % vec4<u32>(32u))), var_1.d, var_1.c, !global2[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(1u, u_input.a), var_0.x), 13u)]);
    var var_3 = max(-arg_0.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-29865i, 15730i, -2147483647i, 615i) & vec4<i32>(u_input.b, -29452i, var_2.c.a.x, -1i), firstTrailingBit(vec4<i32>(0i, -19883i, var_1.d.a.x, -5367i))))) << (0u % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f * arg_0.a.x) + -2246f) + -1175f), _wgslsmith_f_op_f32(f32(-1f) * -139f))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = ~_wgslsmith_div_u32(~(~u_input.a), 4294967295u);
    global0 = array<f32, 1>();
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(646f, 664f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]))), vec2<f32>(global0[_wgslsmith_index_u32(var_0, 1u)], 321f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(var_0, 1u)]))) - vec2<f32>(global0[_wgslsmith_index_u32(var_0, 1u)], global0[_wgslsmith_index_u32(23678u, 1u)]))), reverseBits(vec2<i32>(9479i, -2893i) | vec2<i32>(global1[_wgslsmith_index_u32(0u, 4u)], 45541i)) | reverseBits(countOneBits(vec2<i32>(28515i, 13349i))))));
    global1 = array<i32, 4>();
    var var_2 = u_input.b;
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 1u)] - global0[_wgslsmith_index_u32(4294967295u, 1u)])) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(829f, var_1)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(var_0, 1u)], 1874f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, var_1), _wgslsmith_div_vec2_f32(vec2<f32>(1586f, 258f), vec2<f32>(254f, var_1)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(731f, -290f)))), abs(reverseBits(vec2<i32>(1254i, max(u_input.b, 1i)))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global1 = array<i32, 4>();
    global2 = array<bool, 13>();
    var var_0 = func_2(arg_0.x & firstLeadingBit(46046u));
    var var_1 = -_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(~global1[_wgslsmith_index_u32(arg_0.x, 4u)], 0i)), var_0.b << (_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_0), arg_0) % vec2<u32>(32u)));
    global2 = array<bool, 13>();
    return Struct_2(var_0.a, _wgslsmith_clamp_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(6864u, 4294967295u, arg_0.x, arg_0.x), vec4<u32>(57582u, 38233u, 16829u, arg_0.x), vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x)) << ((vec4<u32>(26664u, 13776u, arg_0.x, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, arg_0.x, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), min(vec4<u32>(arg_0.x, arg_0.x, u_input.a, u_input.c), vec4<u32>(0u, u_input.c, 4294967295u, arg_0.x)) | select(vec4<u32>(u_input.a, u_input.a, arg_0.x, arg_0.x), vec4<u32>(u_input.c, 11202u, u_input.c, 52078u), global2[_wgslsmith_index_u32(arg_0.x, 13u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], true), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(arg_0.x, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], true), vec4<bool>(global2[_wgslsmith_index_u32(46975u, 13u)], false, global2[_wgslsmith_index_u32(3714u, 13u)], false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 13u)], false, false, false)), any(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(63151u, 13u)])))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(59950u, u_input.a, 42991u, arg_0.x), vec4<u32>(0u, arg_0.x, 62535u, arg_0.x) & vec4<u32>(83473u, 27499u, 1u, 17915u)), ~0u, _wgslsmith_clamp_u32(1u, arg_0.x, 0u), 14549u), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, 33958u, arg_0.x), vec4<u32>(u_input.a, 17763u, 16142u, arg_0.x)), ~vec4<u32>(arg_0.x, 1u, u_input.c, arg_0.x), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 13u)] || global2[_wgslsmith_index_u32(arg_0.x, 13u)], true, !global2[_wgslsmith_index_u32(u_input.c, 13u)], global2[_wgslsmith_index_u32(max(arg_0.x, 4868u), 13u)]))), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.b, var_0.b | vec2<i32>(0i, 2147483647i)), -13507i, ~2147483647i & min(40881i, var_0.b.x)), !global2[_wgslsmith_index_u32(1u ^ ~u_input.c, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1554f + 1526f), global0[_wgslsmith_index_u32(arg_0.x, 1u)])), global2[_wgslsmith_index_u32(~(u_input.a ^ u_input.a) << (~firstLeadingBit(28430u) % 32u), 13u)], !vec3<bool>(select(global2[_wgslsmith_index_u32(u_input.a, 13u)], true, global2[_wgslsmith_index_u32(4294967295u, 13u)]), any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 13u)])), true || global2[_wgslsmith_index_u32(0u, 13u)])), Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 4u)], var_0.b.x), vec3<i32>(u_input.b, var_0.b.x, 22238i)), _wgslsmith_mod_vec3_i32(vec3<i32>(29441i, u_input.b, global1[_wgslsmith_index_u32(u_input.c, 4u)]), vec3<i32>(2147483647i, u_input.b, u_input.b))), abs(vec3<i32>(-1i, var_1.x, -16586i))), false, _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(select(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 13u)], true, false), !vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(15549u, 13u)]), global2[_wgslsmith_index_u32(abs(arg_0.x), 13u)])), vec3<bool>(true, !any(vec3<bool>(global2[_wgslsmith_index_u32(33745u, 13u)], global2[_wgslsmith_index_u32(arg_0.x, 13u)], global2[_wgslsmith_index_u32(97460u, 13u)])), any(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(0u, 13u)])))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_1(~(~firstTrailingBit(~vec2<u32>(u_input.a, u_input.c))));
    var var_2 = func_1(var_1.b.zx).d;
    let var_3 = !global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, u_input.c), 13u)];
    let var_4 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, u_input.a), var_1.b.xy), 1u)])), vec2<f32>(-147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(19821u, 1u)], 857f, true))))), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(40585u, 60263u, _wgslsmith_mult_u32(60241u, u_input.c), _wgslsmith_clamp_u32(50581u, 0u, 4294967295u))), abs(var_1.b)), Struct_1(var_2.a, global2[_wgslsmith_index_u32(~var_1.b.x, 13u)], -427f, true, var_1.c.e), func_1(select(_wgslsmith_mult_vec2_u32(var_1.b.zw, ~vec2<u32>(var_1.b.x, var_1.b.x)), ~(var_1.b.xx ^ var_1.b.yx), select(var_1.c.e.x, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], var_2.b)), false))).c, true);
    let var_5 = !var_1.d.e.xy;
    global0 = array<f32, 1>();
    global1 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_mod_i32(var_4.d.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c.a.x, -1i, 33017i, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<i32>(-10606i, -37346i, -2147483647i, u_input.b))), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_4.b.x, ~0u)), 4u)], (var_1.c.a.x ^ -2620i) >> (1u % 32u), _wgslsmith_mult_i32(-93526i, (u_input.b | -1i) << (_wgslsmith_dot_vec2_u32(var_1.b.yw, vec2<u32>(var_1.b.x, 43204u)) % 32u))), _wgslsmith_div_u32(var_1.b.x, 42554u));
}

