struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: array<u32, 30> = array<u32, 30>(1u, 19048u, 81473u, 25838u, 64279u, 1u, 1u, 4294967295u, 4294967295u, 0u, 4294967295u, 60425u, 1u, 70659u, 43164u, 0u, 27633u, 4294967295u, 23633u, 4294967295u, 3683u, 28337u, 1u, 0u, 12012u, 0u, 1528u, 4294967295u, 4294967295u, 4294967295u);

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, false, true), 24469u, Struct_1(99388u));

var<private> global2: array<i32, 32>;

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    global1 = Struct_3(!global1.a, ~_wgslsmith_div_u32(~global1.c.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.a, 4294967295u), vec2<u32>(u_input.b, 3834u)) % 32u), abs(countOneBits(arg_1))), global1.c);
    global2 = array<i32, 32>();
    global0 = array<u32, 30>();
    global3 = !vec3<bool>(all(select(!vec4<bool>(global3.x, global1.a.x, global3.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global3.x, global3.x), true)), all(vec4<bool>(global1.a.x, global1.a.x, global3.x, global3.x)), true);
    let var_0 = 5479u;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~(~arg_1) & 1u, abs(~reverseBits(48888u)), reverseBits(abs(abs(9970u)))), vec3<u32>(arg_1, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(0u, arg_1)) >> (~(~66569u) % 32u), ~(~3145u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: i32) -> bool {
    let var_0 = Struct_5(-21353i <= max(~(2147483647i >> (1u % 32u)), ~(-global2[_wgslsmith_index_u32(1u, 32u)])), vec3<f32>(-583f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(475f + -2037f), 2199f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f), -1408f)), global1.b, ~countOneBits(vec3<u32>(arg_0.c.a, 1u, ~u_input.c)));
    global3 = select(global1.a, vec3<bool>(select(!select(var_0.a, global1.a.x, false), false, any(arg_1.xx) | (global3.x && true)), false, global3.x), vec3<bool>(true, !(abs(var_0.d.x) > ~0u), !all(global1.a) | !global1.a.x));
    global0 = array<u32, 30>();
    let var_1 = abs(u_input.b | (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a, 36894u), var_0.d.xx) & firstTrailingBit(firstLeadingBit(arg_0.c.a))));
    let var_2 = firstTrailingBit(vec4<i32>(-_wgslsmith_dot_vec2_i32(max(u_input.a.zy, u_input.a.xy), abs(vec2<i32>(global2[_wgslsmith_index_u32(29437u, 32u)], 25207i))), min(2147483647i, -8712i), _wgslsmith_sub_i32(9964i, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.d.x, var_0.c, global0[_wgslsmith_index_u32(9089u, 30u)]), 32u)] & min(global2[_wgslsmith_index_u32(arg_0.b, 32u)], 2147483647i)), _wgslsmith_sub_i32(abs(0i) >> (_wgslsmith_clamp_u32(4294967295u, var_1, var_1) % 32u), -12717i)));
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = !vec3<bool>(true, func_4(Struct_3(vec3<bool>(global1.a.x, false, global3.x), func_3(27950i, 0u), global1.c), select(vec3<bool>(true, global3.x, global1.a.x), !global1.a, global3.x), select(!vec2<bool>(false, global1.a.x), select(global1.a.xz, vec2<bool>(false, false), global3.x), select(global3.xy, global1.a.xy, vec2<bool>(global1.a.x, global3.x))), 47973i), global1.a.x);
    global3 = vec3<bool>(any(var_0.xy), _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.c, 1u) & vec2<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 47294u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global1.b, global0[_wgslsmith_index_u32(22301u, 30u)])) % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.b, 121311u)) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) >= _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u, 131002u), ~vec3<u32>(u_input.c, 1u, global0[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, global1.c.a), abs(vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)])))), !((global3.x || global3.x) != true) | false);
    global1 = Struct_3(select(!(!select(global1.a, vec3<bool>(true, global3.x, false), vec3<bool>(true, true, global3.x))), vec3<bool>(true, true, global1.a.x), true), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.c, 22901u)), ~vec2<u32>(global1.b, 1u))), Struct_1(_wgslsmith_sub_u32(func_3(-22906i, 0u), u_input.c)));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(global1.b, 16359u), ~(~global0[_wgslsmith_index_u32(u_input.c, 30u)] & 14072u)) < ~u_input.b;
    let var_2 = u_input.a.yy;
    return Struct_2(firstTrailingBit(~(~_wgslsmith_add_vec4_i32(vec4<i32>(-3147i, -17530i, u_input.e, 0i), vec4<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 32u)], 2147483647i, 16535i, -54821i)))), vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.b, 1u, global1.c.a), vec4<u32>(80550u, global0[_wgslsmith_index_u32(u_input.c, 30u)], 20891u, global1.c.a)), 45723u, u_input.c), 30u)] == 1u), -635f);
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    global0 = array<u32, 30>();
    let var_0 = func_2();
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_2().c, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -604f));
    var var_2 = Struct_3(!(!global1.a), firstLeadingBit(11756u), global1.c);
    global0 = array<u32, 30>();
    return !(!vec4<bool>(true, true, all(vec3<bool>(false, true, global1.a.x)), global3.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> Struct_3 {
    global2 = array<i32, 32>();
    var var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3 + vec2<f32>(arg_3.x, -286f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2329f, _wgslsmith_f_op_f32(f32(-1f) * -1338f), all(arg_0.www))) * -648f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1024f, 808f), arg_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * -601f) * 1910f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_3.x, var_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.a.x) + _wgslsmith_f_op_f32(-arg_3.x)))));
    let var_2 = select(!arg_0, vec4<bool>(4294967295u <= _wgslsmith_dot_vec3_u32(~vec3<u32>(2838u, global0[_wgslsmith_index_u32(56329u, 30u)], 4294967295u), select(vec3<u32>(arg_1.a, 4294967295u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(arg_1.a, 30u)], global1.c.a, arg_1.a), true)), any(select(arg_0.ww, select(arg_0.yz, vec2<bool>(global3.x, true), global1.a.xy), func_4(Struct_3(global1.a, 0u, arg_1), global1.a, vec2<bool>(global1.a.x, false), -1i))), !(~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10012u, 30u)], 32u)] < (0i << (1u % 32u))), true), false);
    let var_3 = arg_3;
    return Struct_3(!(!vec3<bool>(any(arg_0.zzw), var_1.x != -143f, false)), arg_1.a, Struct_1(_wgslsmith_mod_u32(func_3(global2[_wgslsmith_index_u32(4294967295u, 32u)] | -20705i, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], u_input.b)), u_input.b >> ((arg_1.a & 26967u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 32>();
    let var_0 = global1.a;
    var var_1 = func_5(func_1(~(~(~vec3<u32>(global1.c.a, 4890u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1315u, 30u)], 30u)])))), Struct_1(u_input.c), all(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)) || true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -823f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-310f, -1088f))), vec2<f32>(1328f, _wgslsmith_f_op_f32(floor(-1000f))), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1730f, _wgslsmith_f_op_f32(step(1493f, -417f)))))));
    var var_2 = vec2<i32>(countOneBits(firstLeadingBit((i32(-1i) * -12861i) >> (1u % 32u))), min(58020i, 1i));
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, -2147483647i, u_input.e), vec3<i32>(51150i, -1i, -23846i), var_0.x), u_input.a) ^ abs(var_2.x)), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(0u, 0u, u_input.c, 4294967295u))), vec4<u32>(abs(var_1.b), u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, global1.b, 4294967295u, var_1.b), vec4<u32>(25042u, global0[_wgslsmith_index_u32(0u, 30u)], 33180u, 1811u) & vec4<u32>(87867u, var_1.c.a, u_input.b, 4294967295u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.b, global1.c.a)), min(vec2<u32>(974u, 1u), vec2<u32>(var_1.b, var_1.b))))));
}

