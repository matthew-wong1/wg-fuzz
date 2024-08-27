struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-981f, 1492f), vec2<f32>(-2107f, -443f), vec2<f32>(-370f, 303f), vec2<f32>(1267f, 634f), vec2<f32>(326f, -897f), vec2<f32>(-2040f, -102f), vec2<f32>(-701f, 124f), vec2<f32>(-377f, 1375f), vec2<f32>(-1119f, -558f), vec2<f32>(-1000f, 883f), vec2<f32>(1193f, -308f), vec2<f32>(-1063f, -1000f), vec2<f32>(708f, 460f), vec2<f32>(434f, 909f), vec2<f32>(-1000f, -417f), vec2<f32>(114f, 1704f), vec2<f32>(-1000f, -1926f), vec2<f32>(-1000f, 1243f), vec2<f32>(-826f, -1018f), vec2<f32>(-915f, 1000f), vec2<f32>(122f, 629f), vec2<f32>(1683f, 1000f), vec2<f32>(-328f, -608f), vec2<f32>(-1242f, -1000f), vec2<f32>(-789f, 1703f), vec2<f32>(1000f, 845f), vec2<f32>(654f, -461f), vec2<f32>(-135f, 2827f));

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_1(false, global1.a.b, global1.b.x, arg_0, vec4<i32>(-u_input.b.x, firstTrailingBit(-17203i), ~u_input.a.x, max(2147483647i, 1i) & _wgslsmith_sub_i32(reverseBits(global3.x), ~1i)));
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global3 = u_input.a;
    let var_1 = select(vec3<bool>(global1.b.x, all(vec2<bool>(-74581i >= arg_2.x, all(vec4<bool>(var_0.a, var_0.c, global1.a.a, var_0.c)))), true), select(global1.b, !vec3<bool>(8407i >= arg_2.x, false & global1.a.c, all(vec4<bool>(var_0.c, true, false, global1.a.c))), all(vec4<bool>(global1.a.c & false, any(vec4<bool>(var_0.a, true, var_0.a, true)), var_0.a, true))), vec3<bool>(select(global1.a.a, true, !var_0.c), !(arg_2.x != -7776i) || all(vec4<bool>(true, false, var_0.c, global1.b.x)), !(_wgslsmith_f_op_f32(round(arg_1)) >= _wgslsmith_f_op_f32(f32(-1f) * -884f))));
    return 32481u;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(abs(4294967295u) & func_3(vec2<u32>(21828u, global1.a.d.x), 1078f, _wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, global3.x, -2147483647i, 0i), u_input.a)), ~firstTrailingBit(61757u), global1.b.x), global1.a.d.x), 14u)];
    var var_1 = global1.b;
    var_0 = Struct_3(Struct_1(true, vec4<u32>(global1.a.b.x & _wgslsmith_dot_vec2_u32(global1.a.d, global1.a.b.wz), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.d.x, var_0.a.d.x, global1.a.d.x, global1.a.d.x) >> (var_0.a.b % vec4<u32>(32u)), reverseBits(global1.a.b)), ~(~var_0.a.b.x), _wgslsmith_div_u32(global1.a.b.x | global1.a.b.x, global1.a.b.x)), global1.b.x && ((global1.a.e.x <= global3.x) && true), vec2<u32>(~0u, ~var_0.a.d.x), vec4<i32>(_wgslsmith_dot_vec2_i32(~global3.ww, vec2<i32>(1i, -2147483647i)), global1.a.e.x, 6205i, var_0.a.e.x)), select(!vec3<bool>(true, all(global1.b.xy), select(false, var_1.x, var_0.b.x)), select(vec3<bool>(true, true, var_0.a.b.x == global1.a.b.x), global1.b, vec3<bool>(true, any(var_0.b.xx), false)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1275f), var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -358f)))), global1.d);
    let var_2 = Struct_3(Struct_1(global1.b.x, _wgslsmith_sub_vec4_u32(global1.a.b, var_0.a.b), arg_1 != _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(global1.a.b.zz, vec2<u32>(var_0.a.d.x, global1.a.d.x)), global1.a.d), _wgslsmith_mult_vec4_i32(var_0.a.e, u_input.a | abs(u_input.a))), global1.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1443f))), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -728f))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(684f, global1.c.x, arg_1, arg_1)));
    global0 = array<Struct_3, 14>();
    return Struct_3(Struct_1(var_1.x, vec4<u32>(0u, select(4294967295u, global1.a.b.x, false), _wgslsmith_clamp_u32(var_0.a.b.x, var_2.a.b.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_0.a.b.zy)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.b.x, 4294967295u, 6527u, var_0.a.b.x), ~global1.a.b) % vec4<u32>(32u)), any(vec3<bool>(true, !global1.b.x, var_2.a.a)), reverseBits(~(~global1.a.d)), ~(~global1.a.e)), select(vec3<bool>(true, !global1.a.a, !var_0.a.c), var_0.b, false), var_2.c, var_2.d);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~2858u, firstLeadingBit(countOneBits(arg_1)))), 28u)];
    global1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), -739f, -1221f, global1.d.x)) * global1.d), 699f);
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_clamp_i32(arg_0, _wgslsmith_mult_i32(firstTrailingBit(arg_3.e.x), -34275i), _wgslsmith_mult_i32(-35676i, firstTrailingBit(u_input.a.x))), countOneBits(0i)));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, global1.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(func_2(global1.d, -368f).d.wy, _wgslsmith_f_op_vec2_f32(sign(global2[_wgslsmith_index_u32(arg_2, 28u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(arg_1, 28u)])) - _wgslsmith_div_vec2_f32(global1.c.yy, global2[_wgslsmith_index_u32(arg_1, 28u)])))), _wgslsmith_f_op_vec2_f32(max(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.d, vec4<f32>(756f, global1.d.x, -499f, var_0.x))) - _wgslsmith_f_op_vec4_f32(abs(global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -602f, true)))).d.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(263f, -817f) - vec2<f32>(1000f, global1.d.x)))) + vec2<f32>(_wgslsmith_f_op_f32(step(global1.d.x, var_0.x)), var_0.x))))));
    var var_2 = Struct_2(vec2<i32>((reverseBits(global1.a.e.x) ^ global3.x) | u_input.b.x, ~arg_3.e.x));
    return ~(~arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_1(global3.x << (61613u % 32u), max(global1.a.d.x, 17249u), _wgslsmith_div_u32(4294967295u, global1.a.b.x), Struct_1(global1.b.x, vec4<u32>(1u, 56119u, 36968u, global1.a.d.x), true, vec2<u32>(7683u, global1.a.b.x), vec4<i32>(25801i, u_input.b.x, 0i, -2147483647i)))) | 42417u;
    global0 = array<Struct_3, 14>();
    let var_1 = _wgslsmith_f_op_f32(global1.d.x + global1.d.x);
    global1 = Struct_3(func_2(vec4<f32>(-1000f, 587f, _wgslsmith_f_op_f32(func_2(vec4<f32>(-835f, var_1, -1000f, global1.c.x), var_1).c.x * _wgslsmith_f_op_f32(global1.c.x - -739f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-856f)))), -737f).a, select(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(782f, -274f, -1584f, var_1) + vec4<f32>(var_1, 819f, var_1, 439f)))), -133f).b, vec3<bool>(false, true, false), global1.b.x), vec3<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(1274f - var_1))), _wgslsmith_f_op_f32(-global1.d.x), var_1), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.d.x, 182f, 738f, global1.c.x), global1.d)), _wgslsmith_f_op_vec4_f32(global1.d + global1.d), !vec4<bool>(global1.a.a, true, false, false))))))));
    global2 = array<vec2<f32>, 28>();
    let var_2 = vec4<bool>(global1.a.a, all(!global1.b), false, (~global3.x >> ((var_0 ^ ~1u) % 32u)) >= 1i);
    var var_3 = -1i > _wgslsmith_sub_i32(global3.x, -global3.x);
    global2 = array<vec2<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(1071f);
}

