struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: array<Struct_4, 11>;

var<private> global2: Struct_4;

var<private> global3: i32 = 14255i;

var<private> global4: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_2(false || (global2.b != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global2.b, -515f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b)) + _wgslsmith_f_op_f32(ceil(global2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-247f - 586f), _wgslsmith_f_op_f32(abs(global2.b)))) - vec2<f32>(global2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(314f, global2.b)))))), true, abs(~_wgslsmith_mod_vec4_u32(global2.a, vec4<u32>(u_input.b.x, global2.a.x, u_input.b.x, 43182u))));
    global3 = u_input.c;
    var var_1 = _wgslsmith_div_vec4_u32(select(_wgslsmith_mod_vec4_u32(abs(~global2.a), vec4<u32>(reverseBits(global2.a.x), var_0.d.x >> (0u % 32u), ~global2.c, 7568u)), abs(global2.a), all(!vec3<bool>(false, global2.d, global2.d))), var_0.d);
    var var_2 = _wgslsmith_dot_vec4_u32(~(~var_0.d), _wgslsmith_sub_vec4_u32(vec4<u32>(22890u, _wgslsmith_add_u32(7503u, 1u) >> (var_0.d.x % 32u), ~1u, reverseBits(reverseBits(var_1.x))), firstLeadingBit(~vec4<u32>(arg_1.x, 42056u, 1u, var_1.x)) ^ var_0.d));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1014f, -1984f, -854f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.b, -655f)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(-(u_input.d ^ vec3<i32>(arg_0.b.b, 72031i, u_input.d.x)), _wgslsmith_add_vec3_u32(global2.a.xww, global2.a.yzz) >> (vec3<u32>(arg_0.b.c, arg_1.c, arg_0.a) % vec3<u32>(32u)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-195f, 332f, global2.b))))) * vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(f32(-1f) * -892f), arg_1.d)) * _wgslsmith_f_op_f32(-arg_1.b)), arg_2.b));
    let var_1 = Struct_2(arg_0.b.a, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), -566f), select(!arg_0.b.a, all(select(vec2<bool>(arg_1.d, false), vec2<bool>(true, arg_2.d), arg_0.b.a)), all(select(vec4<bool>(arg_0.b.a, true, false, arg_2.d), vec4<bool>(arg_0.b.a, true, false, true), vec4<bool>(true, true, false, true)))) & !all(select(vec2<bool>(arg_0.b.a, false), vec2<bool>(arg_1.d, global2.d), vec2<bool>(arg_1.d, arg_2.d))), arg_2.a);
    var var_2 = vec2<i32>(~(-_wgslsmith_mult_i32(arg_3, arg_3) & _wgslsmith_div_i32(1i, u_input.c)), _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(u_input.d, u_input.d & vec3<i32>(3330i, arg_3, arg_3)), vec3<i32>(-1i ^ u_input.a.x, 1i, _wgslsmith_div_i32(arg_3, -60353i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(var_1.a, false, arg_1.d))), vec3<i32>(arg_3, -2147483647i, arg_3)));
    global1 = array<Struct_4, 11>();
    var var_3 = global2.b;
    return Struct_1(false, 4128i, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_mult_u32(81513u, arg_0.b.c)), u_input.b.x), var_1.d);
}

fn func_1(arg_0: vec2<bool>) -> vec3<i32> {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(31338u, ~(~(68104u & global2.a.x)) ^ ~firstLeadingBit(~109962u)), 11u)];
    let var_0 = func_2(Struct_3(u_input.b.x, Struct_1(true, ~(1i << (u_input.b.x % 32u)), 964u, global2.a)), Struct_4(~(~(global2.a & global2.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-213f)))), _wgslsmith_mult_u32(1u, abs(global2.c)), true), global1[_wgslsmith_index_u32(28496u, 11u)], 0i);
    global2 = Struct_4(~firstLeadingBit(vec4<u32>(global2.a.x, func_2(Struct_3(u_input.b.x, Struct_1(arg_0.x, 2147483647i, global2.a.x, vec4<u32>(35853u, 4294967295u, var_0.c, 1u))), global1[_wgslsmith_index_u32(u_input.b.x, 11u)], Struct_4(vec4<u32>(0u, u_input.b.x, u_input.b.x, global2.c), global2.b, global2.c, true), u_input.c).d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(30687u, 4294967295u, 0u, global2.c), global2.a), u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(689f, global2.b))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(546f)))), u_input.b.x, arg_0.x);
    var var_1 = firstLeadingBit(_wgslsmith_div_vec4_i32(min(-vec4<i32>(2147483647i, var_0.b, var_0.b, -2147483647i), countOneBits(vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, var_0.b))), abs(-vec4<i32>(-5761i, var_0.b, u_input.d.x, var_0.b))) >> (reverseBits(~(~var_0.d)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, select(41004u, 4294967295u, var_0.a), 1u), min(~vec4<u32>(41637u, global2.a.x, 142260u, var_0.d.x), vec4<u32>(u_input.b.x, 0u, 38070u, 4294967295u))), 4294967295u), vec2<u32>(~var_0.d.x, _wgslsmith_add_u32(63618u, (global2.c ^ 22448u) & 60654u)));
    return countOneBits(max(u_input.d, vec3<i32>(var_0.b, firstLeadingBit(var_0.b), abs(0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(~1u, 11u)];
    let var_0 = Struct_1(any(!(!vec4<bool>(true, global2.d, false, true))), u_input.c, ~65840u, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(47043u, global2.a.x, 19211u, 0u)), _wgslsmith_sub_vec4_u32(global2.a >> (global2.a % vec4<u32>(32u)), vec4<u32>(0u, 1u, u_input.b.x, global2.c))) & max(abs(~global2.a), vec4<u32>(global2.c, 1u, 10783u ^ global2.c, u_input.b.x)));
    global3 = -(~0i);
    var var_1 = u_input.d | (max(_wgslsmith_clamp_vec3_i32(select(u_input.d, u_input.d, vec3<bool>(true, false, true)), vec3<i32>(-2147483647i, u_input.c, var_0.b), vec3<i32>(-1i, u_input.c, var_0.b)), func_1(vec2<bool>(false, true))) << (((vec3<u32>(var_0.d.x, var_0.c, var_0.d.x) & u_input.b) & vec3<u32>(global2.c, global2.a.x, ~1u)) % vec3<u32>(32u)));
    let var_2 = Struct_2(select(all(vec4<bool>(var_0.a, false, true, false)) || false, any(vec2<bool>(false, global2.d)), global2.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(-738f + 884f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b))))), var_0.a & var_0.a, ~vec4<u32>(var_0.c, 64397u, 1u, ~(~42388u)));
    let var_3 = Struct_3(~_wgslsmith_clamp_u32(var_0.c, reverseBits(1u), (55154u << (global2.a.x % 32u)) >> (45192u % 32u)), Struct_1(true, _wgslsmith_sub_i32(u_input.a.x, var_0.b >> (var_0.d.x % 32u)), _wgslsmith_mult_u32(global2.a.x, 187526u) << (4294967295u % 32u), ~(~var_0.d >> (vec4<u32>(4294967295u, 4294967295u, 0u, 1u) % vec4<u32>(32u)))));
    global4 = 71549i;
    var var_4 = select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1452f, -2174f)))) <= -2765f, !all(vec2<bool>(var_3.b.a, var_2.a)), !var_3.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1490f, 312f, 1707f, global2.b), vec4<f32>(var_2.b.x, 317f, global2.b, -150f), false))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(-var_2.b.x)))))), -56908i, select(~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2.a.x, var_3.a, 1u), var_2.d)), var_0.d, var_3.b.a), var_1.yx);
}

