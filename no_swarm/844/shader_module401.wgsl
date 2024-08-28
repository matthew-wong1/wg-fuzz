struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<f32>(-601f, 1011f), vec2<bool>(false, true), vec2<u32>(4294967295u, 0u), Struct_1(1642u), -2496f), -39951i, vec4<i32>(i32(-2147483648), 33221i, 40381i, 1i), false);

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = u_input.e.xy;
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + global0.a)) - vec3<f32>(global1.a.a.x, _wgslsmith_f_op_f32(-831f - global1.a.a.x), _wgslsmith_f_op_f32(sign(global0.a.x))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1533f, -392f) + global0.a.yx)))), vec2<bool>(global0.b.b.x, all(select(vec3<bool>(false, false, global1.a.b.x), vec3<bool>(true, true, false), true))), _wgslsmith_clamp_vec2_u32(global0.b.c, vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, global1.a.d.a), 68238u), select(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.b.d.a, global1.a.c.x), vec2<u32>(0u, global0.b.d.a)), global0.b.c << (global0.b.c % vec2<u32>(32u)), select(global0.b.b, vec2<bool>(false, arg_0), global1.d))), Struct_1(23887u), _wgslsmith_f_op_f32(1000f * -667f)));
    var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.x, global1.a.a.x, 754f) * global0.a)))), var_1.b);
    return ~vec3<i32>(_wgslsmith_mult_i32(u_input.d, global1.b) ^ var_0.x, ~(~(-1i)), ~min(global1.c.x, reverseBits(16102i)));
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: Struct_2) -> Struct_5 {
    let var_0 = arg_1;
    let var_1 = Struct_4(firstLeadingBit(23693u), _wgslsmith_add_vec3_i32(abs(global1.c.zwz) ^ vec3<i32>(u_input.d, global1.c.x, global1.b), firstLeadingBit(func_3(var_0.b.b.x, global1.c.wzw))) >> (abs(vec3<u32>(14677u, arg_2.d.a, 4294967295u) ^ firstTrailingBit(vec3<u32>(global1.a.d.a, global0.b.d.a, arg_1.b.c.x))) % vec3<u32>(32u)), 727f, ~vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.wxy), ~u_input.c.zyx), select(~var_0.b.d.a, arg_1.b.d.a, arg_1.b.b.x), _wgslsmith_div_u32(~15219u, _wgslsmith_div_u32(1u, arg_1.b.c.x))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * 766f) - _wgslsmith_div_f32(var_0.a.x, arg_2.e))) * -1100f), _wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-493f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) * _wgslsmith_f_op_f32(max(global0.b.a.x, -415f)))))));
    global0 = arg_1;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_1.b.a), select(vec2<bool>(any(global1.a.b), true), global1.a.b, false && !arg_1.b.b.x), vec2<u32>(arg_1.b.d.a, firstLeadingBit(~reverseBits(1u))), arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1999f + global1.a.a.x) - _wgslsmith_f_op_f32(414f * -847f)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(select(arg_2.e, arg_2.e, true)), _wgslsmith_f_op_f32(-var_2.x))))), Struct_2(var_2.wy, vec2<bool>(true, false), _wgslsmith_mod_vec2_u32(~var_3.c, var_1.d.xz), Struct_1(~(~var_0.b.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -957f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -350f);
    let var_1 = ~(-firstLeadingBit(64585i));
    let var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -701f) + global1.a.e) < 1405f, _wgslsmith_f_op_f32(-global1.a.e) < _wgslsmith_f_op_f32(106f * 1000f), true);
    global1 = global2[_wgslsmith_index_u32(~arg_3.d.a, 17u)];
    global2 = array<Struct_3, 17>();
    return -1i;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.zz));
    global1 = Struct_3(arg_2.b, _wgslsmith_dot_vec2_i32(arg_0.c.yx, global1.c.wy), vec4<i32>(func_4(arg_0.a.d, func_2(arg_2.b.c.x, arg_2, Struct_2(vec2<f32>(486f, arg_1), vec2<bool>(arg_2.b.b.x, true), global0.b.c, global0.b.d, 953f)), global1.a.a, global0.b), 51298i, arg_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global1.b, arg_0.b), global1.c.ww ^ abs(u_input.e.xx))), true);
    var var_1 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_div_f32(arg_0.a.a.x, _wgslsmith_f_op_f32(step(arg_1, arg_2.b.e))), _wgslsmith_f_op_f32(abs(-1896f))), vec2<bool>(global0.b.b.x, arg_2.b.b.x), vec2<u32>(~global0.b.c.x, ~global1.a.d.a >> ((arg_2.b.c.x & 1u) % 32u)), func_2(firstTrailingBit(~arg_2.b.c.x), func_2(global1.a.c.x ^ arg_2.b.c.x, func_2(global0.b.c.x, Struct_5(arg_2.a, global0.b), global1.a), arg_2.b), func_2(~u_input.b.x, Struct_5(global0.a, global1.a), arg_0.a).b).b.d, _wgslsmith_f_op_f32(ceil(func_2(_wgslsmith_mod_u32(1u, global1.a.d.a), Struct_5(global0.a, Struct_2(vec2<f32>(arg_0.a.e, -1573f), vec2<bool>(true, true), global0.b.c, global0.b.d, arg_1)), func_2(68429u, arg_2, global0.b).b).a.x))), -2147483647i, global1.c, arg_3.x);
    var var_2 = arg_1;
    let var_3 = select(!vec4<bool>(func_2(global1.a.c.x, arg_2, global1.a).b.b.x, true, global1.a.b.x, u_input.e.x >= arg_0.c.x), vec4<bool>(arg_2.b.b.x, true, true, all(arg_3)), var_1.d);
    return var_1.a;
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = Struct_2(global0.b.a, vec2<bool>(80277i > global1.b, arg_0.b.x), global1.a.c, global1.a.d, -286f);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~u_input.b.zzw), vec3<u32>(global1.a.c.x, global1.a.c.x, _wgslsmith_add_u32(4294967295u, var_0.d.a))), 17u)];
    var var_1 = arg_0.a.x;
    var var_2 = Struct_4(~(~global1.a.d.a), vec3<i32>(global1.c.x, u_input.d << (func_2(2266u, func_2(1u, Struct_5(vec3<f32>(-447f, arg_0.a.x, 328f), Struct_2(global1.a.a, vec2<bool>(var_0.b.x, false), var_0.c, Struct_1(1u), var_0.e)), Struct_2(vec2<f32>(-996f, 1086f), global0.b.b, vec2<u32>(global0.b.d.a, 0u), Struct_1(4294967295u), global1.a.a.x)), global0.b).b.d.a % 32u), 1i), 1239f, ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, global0.b.d.a, 4294967295u), (vec3<u32>(arg_0.c.x, var_0.c.x, var_0.c.x) & vec3<u32>(u_input.c.x, 2550u, global0.b.d.a)) >> (u_input.c.wwz % vec3<u32>(32u))));
    let var_3 = Struct_1(countOneBits(1u));
    return ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) < -1351f) && var_0.b.x) || all(select(vec4<bool>(false, false, !global1.a.b.x, !global1.d), vec4<bool>(any(arg_0.b), false, !arg_0.b.x, global0.b.b.x), false && !global1.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(select(70994u, ~_wgslsmith_add_u32(global0.b.c.x, ~136055u), !func_5(func_1(Struct_3(Struct_2(vec2<f32>(global0.b.a.x, global1.a.a.x), vec2<bool>(true, global1.a.b.x), vec2<u32>(0u, 0u), Struct_1(39506u), -505f), -12834i, global1.c, global0.b.b.x), global1.a.e, Struct_5(vec3<f32>(-191f, global0.a.x, global0.b.e), Struct_2(global1.a.a, global0.b.b, vec2<u32>(7756u, 4294967295u), global1.a.d, 1000f)), vec3<bool>(true, false, true)))), ~firstLeadingBit((4294967295u ^ global1.a.d.a) >> (min(global1.a.c.x, global1.a.c.x) % 32u)));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(global0.b.d.a), u_input.b.x >> (countOneBits(~global1.a.c.x) % 32u)) >> (u_input.a % 32u), 17u)];
    global2 = array<Struct_3, 17>();
    var var_1 = false;
    var var_2 = func_1(global2[_wgslsmith_index_u32(func_2(~(~var_0.x & ~var_0.x), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 0u), ~vec3<u32>(global1.a.c.x, var_0.x, 102300u)), func_2(4294967295u, func_2(global1.a.c.x, Struct_5(vec3<f32>(2132f, -470f, global0.b.a.x), global0.b), Struct_2(global0.b.a, global1.a.b, vec2<u32>(var_0.x, 1u), Struct_1(14430u), 2701f)), Struct_2(global1.a.a, global1.a.b, vec2<u32>(1u, 0u), global1.a.d, global1.a.a.x)), global0.b), global1.a).b.c.x, 17u)], global1.a.a.x, func_2(~(0u << (firstTrailingBit(global0.b.d.a) % 32u)), Struct_5(_wgslsmith_f_op_vec3_f32(min(global0.a, _wgslsmith_div_vec3_f32(vec3<f32>(global1.a.a.x, global1.a.a.x, global1.a.a.x), global0.a))), global0.b), func_2(4294967295u, func_2(~u_input.a, Struct_5(global0.a, global0.b), func_1(global2[_wgslsmith_index_u32(4294967295u, 17u)], global0.b.e, Struct_5(vec3<f32>(-1572f, global1.a.e, 700f), global0.b), vec3<bool>(global0.b.b.x, global1.a.b.x, global0.b.b.x))), global0.b).b), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global1.a.b.x, global1.a.b.x || global1.a.b.x), !select(vec3<bool>(true, global1.a.b.x, global1.a.b.x), vec3<bool>(global1.d, true, global1.d), global0.b.b.x), select(select(vec3<bool>(true, true, global0.b.b.x), vec3<bool>(global1.d, true, false), vec3<bool>(global0.b.b.x, global1.d, global1.d)), select(vec3<bool>(global1.d, false, global1.d), vec3<bool>(false, true, true), global1.a.b.x), vec3<bool>(true, global1.d, true))), global1.d)).b;
    global0 = func_2(global0.b.d.a, func_2(abs(11643u), func_2(5970u, Struct_5(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b), global1.a), func_2(~(~var_0.x), Struct_5(_wgslsmith_f_op_vec3_f32(sign(global0.a)), global0.b), func_1(Struct_3(Struct_2(global1.a.a, global1.a.b, vec2<u32>(0u, 1u), global0.b.d, global0.b.e), -2147483647i, vec4<i32>(-1465i, u_input.e.x, global1.c.x, 1i), true), _wgslsmith_f_op_f32(-global1.a.a.x), func_2(1u, Struct_5(global0.a, global0.b), global1.a), !vec3<bool>(var_2.x, global0.b.b.x, global1.a.b.x))).b), func_2(0u, Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + global0.a)), Struct_2(_wgslsmith_f_op_vec2_f32(global1.a.a - vec2<f32>(global0.a.x, -155f)), !global0.b.b, _wgslsmith_sub_vec2_u32(global0.b.c, u_input.c.ww), Struct_1(var_0.x), _wgslsmith_f_op_f32(-global0.a.x))), func_1(global2[_wgslsmith_index_u32(60656u, 17u)], 1577f, Struct_5(_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, false)), Struct_2(vec2<f32>(1363f, global0.b.a.x), global0.b.b, vec2<u32>(global1.a.d.a, global0.b.d.a), global0.b.d, global1.a.a.x)), select(vec3<bool>(true, true, true), !vec3<bool>(global1.a.b.x, true, var_2.x), !vec3<bool>(global0.b.b.x, false, false)))).b);
    let var_3 = ~vec2<u32>(1u, abs(firstLeadingBit(58503u)));
    global1 = Struct_3(global1.a, i32(-1i) * -22654i, min(abs(global1.c), vec4<i32>(0i, _wgslsmith_mult_i32(max(-1i, -60115i), u_input.d), select(_wgslsmith_clamp_i32(global1.b, 19575i, global1.b), _wgslsmith_clamp_i32(-2305i, 9729i, global1.c.x), true), abs(select(-30223i, global1.b, false)))), global0.b.d.a >= var_3.x);
    var var_4 = _wgslsmith_dot_vec2_i32(abs(global1.c.ww), -global1.c.yz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-21449i, u_input.e.x), global1.c.wy), ~abs(func_3(true, vec3<i32>(u_input.d, global1.c.x, 4936i)).x), -(~_wgslsmith_mult_i32(1i, global1.c.x))), ~(-u_input.e.x), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(1u, var_3.x, u_input.b.x, var_0.x)), u_input.b), select(func_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b.wxz, vec3<u32>(u_input.c.x, 4294967295u, 23327u)), global0.b.c.x), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1689f * global1.a.e)), func_2(1u, Struct_5(vec3<f32>(-2287f, global0.a.x, global1.a.a.x), global0.b), global0.b), !(!vec3<bool>(global0.b.b.x, false, global0.b.b.x))).c.x, u_input.a, false), firstTrailingBit(~select(~37102u, 25914u, true)));
}

