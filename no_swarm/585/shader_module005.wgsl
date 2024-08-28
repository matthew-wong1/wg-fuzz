struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 21> = array<u32, 21>(92525u, 81213u, 4294967295u, 1u, 4294967295u, 71116u, 1u, 5883u, 4294967295u, 24139u, 14039u, 30463u, 0u, 0u, 5850u, 1u, 4294967295u, 49155u, 95442u, 37298u, 7859u);

var<private> global3: array<bool, 3> = array<bool, 3>(false, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.c.c.yx);
    global0 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(463f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(395f, var_0.x) - vec2<f32>(-497f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(global1.a, -1311f))))));
    let var_1 = Struct_3(global1.c.a, Struct_2(var_0.x, firstTrailingBit(~vec2<u32>(global2[_wgslsmith_index_u32(global1.b.x, 21u)], 17890u)), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(185739u, global1.b.x), _wgslsmith_div_vec2_u32(global1.b, vec2<u32>(1u, u_input.d))), _wgslsmith_mult_u32(~4294967295u, countOneBits(4294967295u)), global1.c.c)), _wgslsmith_f_op_f32(floor(var_0.x)));
    return ~10818u >> (u_input.d % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_2(-388f, max(~(~vec2<u32>(global1.b.x, 0u)), vec2<u32>(reverseBits(u_input.c.x), func_3())) ^ vec2<u32>(~select(1u, global2[_wgslsmith_index_u32(1u, 21u)], true), ~54564u), Struct_1(max(vec2<u32>(1u, u_input.b), ~_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(19923u, global1.c.a.x), vec2<u32>(global2[_wgslsmith_index_u32(1u, 21u)], global1.c.b))), _wgslsmith_mod_u32(~global1.c.a.x, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 2128f)))));
    return vec3<i32>(abs(arg_0.x), 1i, _wgslsmith_div_i32(1i, ~firstLeadingBit(min(arg_0.x, 0i))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_2(vec4<i32>(-1i) * -firstLeadingBit(abs(vec4<i32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2286f - 1f)))), global3[_wgslsmith_index_u32(abs(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzz, vec3<u32>(0u, global2[_wgslsmith_index_u32(92936u, 21u)], u_input.c.x) ^ u_input.a.wxx), 21u)]), 3u)]);
    global3 = array<bool, 3>();
    let var_1 = _wgslsmith_mod_vec2_u32(min(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.d), u_input.c), reverseBits(u_input.c)), vec2<u32>(countOneBits(~u_input.c.x), _wgslsmith_add_u32(global1.b.x, u_input.c.x))), abs(vec2<u32>(countOneBits(~global1.c.b), global2[_wgslsmith_index_u32(~0u, 21u)])));
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32(global1.c.a, _wgslsmith_sub_vec2_u32(vec2<u32>(global1.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), max(u_input.a.wz, var_1))) & ~var_1, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2[_wgslsmith_index_u32(1u, 21u)], 4294967295u, 17823u) ^ u_input.a.zzz, u_input.a.www, vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 3u)], global3[_wgslsmith_index_u32(var_1.x, 3u)])), vec3<u32>(1u, u_input.a.x, var_1.x) >> (u_input.a.xwz % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a - global1.c.c.x), global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f) - _wgslsmith_f_op_f32(-global1.c.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1000f), _wgslsmith_f_op_f32(-296f * 294f)));
    var var_3 = ~global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(28338u, 21u)]), 21u)];
    return Struct_2(-1415f, u_input.c, global1.c);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = vec3<bool>(all(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_2.b.b.x, 3u)], global3[_wgslsmith_index_u32(global1.c.b, 3u)], global3[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.c.a.x, 21u)], 21u)], 3u)], global3[_wgslsmith_index_u32(arg_2.a.x, 3u)], global3[_wgslsmith_index_u32(0u, 3u)], global3[_wgslsmith_index_u32(1u, 3u)]), any(vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6869u, 21u)], 3u)], true, true)))), arg_1 != arg_3.x, select(false, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(46133u, _wgslsmith_mult_u32(1u, global1.b.x)), 3u)], any(vec4<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(global1.c.b, 3u)], false)), any(vec4<bool>(global3[_wgslsmith_index_u32(global1.b.x, 3u)], global3[_wgslsmith_index_u32(arg_2.a.x, 3u)], global3[_wgslsmith_index_u32(u_input.b, 3u)], global3[_wgslsmith_index_u32(arg_2.b.c.b, 3u)])), 0i <= arg_1, false))));
    var var_1 = global1.c;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c)))), var_1.a, func_1(~countOneBits(_wgslsmith_dot_vec2_i32(arg_3, vec2<i32>(arg_1, 1i)))).c);
    let var_3 = vec4<bool>(((_wgslsmith_sub_i32(27627i, arg_0) | abs(2147483647i)) >> (min(global2[_wgslsmith_index_u32(69475u, 21u)], ~global1.c.b) % 32u)) == ~(-53653i), !all(select(select(var_0.zx, vec2<bool>(true, false), var_0.x), vec2<bool>(true, global3[_wgslsmith_index_u32(global1.c.a.x, 3u)]), var_0.x && true)), var_0.x, !any(var_0.yz));
    var var_4 = func_1((i32(-1i) * -arg_1) << (_wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(global1.c.b, global2[_wgslsmith_index_u32(arg_2.b.b.x, 21u)]), 66012u), ~var_2.c.b, 18811u) % 32u));
    return vec3<u32>(~(arg_2.a.x >> (_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(u_input.b, 21u)], firstLeadingBit(var_4.b.x)) % 32u)), var_1.a.x, abs(~arg_2.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_vec3_i32(firstTrailingBit(~vec3<i32>(-1i, 2147483647i, -1i)), -vec3<i32>(1i, 1i, 1i)) >> (func_4(0i, _wgslsmith_mult_i32(select(_wgslsmith_sub_i32(0i, 49521i), 1i, false), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 18273i, 0i), vec3<i32>(-38150i, 17486i, 2147483647i))), Struct_3(u_input.c, func_1(1i), -925f), ~firstLeadingBit(select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(1i, -2147483647i), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 3u)], global3[_wgslsmith_index_u32(u_input.c.x, 3u)])))) % vec3<u32>(32u));
    global1 = Struct_2(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(227f, _wgslsmith_div_f32(global1.c.c.x, -1000f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1449f, global0.x)), -693f))), true)), select(~select(global1.b, abs(global1.c.a), !vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 3u)])), reverseBits(min(u_input.c, ~u_input.c)), !(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 3u)], false))), Struct_1(~func_4(39385i, var_0.x, Struct_3(vec2<u32>(global1.b.x, 0u), Struct_2(global0.x, global1.c.a, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 21u)], 21u)], 4294967295u), 52730u, global1.c.c)), global1.a), -var_0.xy).xz, min(global2[_wgslsmith_index_u32(~150823u, 21u)] ^ abs(global1.b.x), ~select(1u, u_input.d, global3[_wgslsmith_index_u32(4294967295u, 3u)])), vec3<f32>(_wgslsmith_f_op_f32(-func_1(25298i).a), _wgslsmith_f_op_f32(round(global1.a)), -370f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global1.a))))), -1i);
}

