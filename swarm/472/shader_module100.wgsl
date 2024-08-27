struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(1000f, -715f, -1000f, 1869f, -1000f, 876f, 1920f, 670f, 1927f, -650f);

var<private> global1: array<vec2<f32>, 8>;

var<private> global2: Struct_4;

var<private> global3: vec2<bool>;

var<private> global4: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(0i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-250f, -1100f, global2.b.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.c.x, -1570f, _wgslsmith_div_f32(global2.b.c.x, global0[_wgslsmith_index_u32(global2.b.b.x, 10u)])) * vec3<f32>(152f, _wgslsmith_f_op_f32(trunc(global2.b.c.x)), 1f)))), global2.c.a, false, global2.b.a);
    var var_1 = ~(vec3<i32>(abs(global2.c.a.x), 19960i, firstTrailingBit(-global2.c.a.x)) | var_0.c);
    var var_2 = var_0.e;
    var var_3 = Struct_2(select(5897i >> ((min(global2.b.a, u_input.b.x) | _wgslsmith_add_u32(var_0.e, u_input.b.x)) % 32u), firstTrailingBit(~reverseBits(u_input.a)), var_0.d), vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, -179f) - _wgslsmith_f_op_f32(f32(-1f) * -1117f)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.e, 10u)])), countOneBits(firstTrailingBit(abs(global2.c.a | vec3<i32>(u_input.a, -32486i, var_0.a)))), true, 46970u);
    global1 = array<vec2<f32>, 8>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1757f);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<f32>, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_2(abs(~arg_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.b.x, 13754u, global2.b.a, 41728u), vec4<u32>(global2.b.a, 0u, 0u, 38597u)), 10u)], _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1209f - arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(1u, 10u)], arg_2.x, global2.b.c.x))))) + vec3<f32>(-148f, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 10u)]))))), global2.c.a, global3.x, global2.b.b.x);
    var var_1 = firstLeadingBit(vec3<u32>(~(u_input.b.x & _wgslsmith_add_u32(var_0.e, 4294967295u)), ~min(4294967295u, u_input.b.x & 1u), 4294967295u));
    global1 = array<vec2<f32>, 8>();
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1080f * global0[_wgslsmith_index_u32(var_1.x, 10u)])) + 959f) * global2.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, global2.b.c.x)));
    var var_2 = global2.c;
    return Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, 3360i, arg_3), ~vec3<i32>(arg_3, -64439i, u_input.a)) & global2.c.a, ~(~vec3<i32>(global2.c.a.x, var_0.c.x, -1i))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = -arg_0.a.x >= ~1800i;
    var var_1 = Struct_2(global2.b.d, _wgslsmith_f_op_vec3_f32(arg_2 * arg_2), select(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.c.x, global2.b.c.x)) >= -136f), global2.a, u_input.b.x);
    let var_2 = u_input.b.xx | u_input.b.xx;
    global3 = vec2<bool>(any(vec4<bool>(true, !select(true, true, var_1.d), var_1.e >= var_2.x, var_0)), global2.a);
    let var_3 = Struct_5(all(vec2<bool>(reverseBits(global2.c.a.x) >= _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, u_input.a, var_1.c.x, global2.b.d), vec4<i32>(u_input.a, -1i, 20106i, -2147483647i)), !(!global3.x))), Struct_3(~vec3<i32>(14471i, u_input.a, _wgslsmith_div_i32(arg_0.a.x, var_1.a))), abs(-min(2147483647i, var_1.c.x)), 2147483647i, firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(24707u, u_input.b.x) << (vec2<u32>(var_2.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(0u, var_2.x)))));
    return global2.b;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = Struct_2(arg_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(func_4(global2.c, arg_0.c.ww, arg_0.c.zxw).c.xzw)))), firstTrailingBit(vec3<i32>(arg_0.d, u_input.a, ~arg_0.d) >> (~(~vec3<u32>(31095u, 0u, 65921u)) % vec3<u32>(32u))), ~0u < firstTrailingBit(global2.b.a), _wgslsmith_add_u32(abs(countOneBits(u_input.b.x)) & _wgslsmith_add_u32(abs(1u), arg_0.a), global2.b.a));
    var var_1 = -3350i;
    let var_2 = ~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(48976u, 15328u), select(4294967295u, arg_1, var_0.d), u_input.b.x)) & min(global2.b.a & 1u, ~1u);
    var var_3 = min(~(~global2.b.b), ~(vec2<u32>(var_2, 72769u) | vec2<u32>(54762u, global2.b.a)));
    var var_4 = firstTrailingBit(_wgslsmith_add_i32(var_0.a, reverseBits(global2.b.d)));
    return select(!(-(var_0.c.x | global2.b.d) != arg_0.d), !global3.x || true, true);
}

fn func_1() -> Struct_3 {
    global3 = vec2<bool>(all(!(!vec2<bool>(global2.a, true))) & func_5(func_4(func_2(vec3<bool>(true, global3.x, global3.x), global0[_wgslsmith_index_u32(global2.b.a, 10u)], global2.b.c.yzw, u_input.a), vec2<f32>(-590f, global2.b.c.x), vec3<f32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(global2.b.a, 10u)], 348f)), func_4(Struct_3(vec3<i32>(global2.c.a.x, -60197i, -2147483647i)), _wgslsmith_div_vec2_f32(global2.b.c.zz, global2.b.c.xz), func_4(global2.c, global2.b.c.yz, global2.b.c.zzy).c.wxw).b.x), !any(vec2<bool>(true, !global2.a)));
    var var_0 = func_4(Struct_3(vec3<i32>(~24905i, 2147483647i, global2.b.d)), vec2<f32>(-1990f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f * _wgslsmith_f_op_f32(floor(758f))) + global2.b.c.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.b.c.x, -1614f))) * global2.b.c.x), _wgslsmith_f_op_f32(round(-271f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.b.x, ~u_input.b.x), ~u_input.b.yy), 10u)]));
    let var_1 = Struct_3(vec3<i32>(-17314i, u_input.a, global2.c.a.x));
    let var_2 = vec4<u32>(func_4(func_2(select(!vec3<bool>(global2.a, true, global2.a), vec3<bool>(true, true, true), !vec3<bool>(global3.x, true, true)), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global2.b.a, 10u)]))), _wgslsmith_f_op_vec3_f32(-global2.b.c.zwx), u_input.a ^ (var_0.d ^ 1i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.c.x - global2.b.c.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1123f, var_0.c.x), _wgslsmith_f_op_f32(abs(1266f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-980f + 1912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(18000u, 10u)], 167f)))))).a, 4294967295u, reverseBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global2.b.b.x, ~u_input.b.x), 4294967295u, _wgslsmith_div_u32(abs(4294967295u), _wgslsmith_mod_u32(1u, 27008u)))), ~(~_wgslsmith_clamp_u32(reverseBits(4294967295u), _wgslsmith_mod_u32(0u, u_input.b.x), _wgslsmith_add_u32(1u, 78350u))));
    return func_2(select(!select(select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(global2.a, true, global2.a), vec3<bool>(true, false, global2.a)), vec3<bool>(false, global2.a, global3.x), true), vec3<bool>(global3.x, -196f >= global0[_wgslsmith_index_u32(abs(42699u), 10u)], (var_0.d << (var_2.x % 32u)) > _wgslsmith_div_i32(global2.b.d, 32097i)), global3.x), 1000f, _wgslsmith_f_op_vec3_f32(var_0.c.zwy + vec3<f32>(global2.b.c.x, _wgslsmith_f_op_f32(-func_4(var_1, var_0.c.xw, global2.b.c.wyx).c.x), _wgslsmith_f_op_f32(floor(-208f)))), global2.b.d);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = ~arg_2;
    let var_1 = Struct_5(global2.a, arg_3.c, 6621i, func_4(Struct_3(max(arg_3.c.a, vec3<i32>(arg_1.c.a.x, 22906i, 2147483647i))), global2.b.c.xy, global2.b.c.xwy).d, u_input.b.zx);
    let var_2 = _wgslsmith_mult_u32(countOneBits(firstLeadingBit(1u)), arg_3.b.a) > 2491u;
    global0 = array<f32, 10>();
    global4 = _wgslsmith_f_op_f32(-1f);
    return _wgslsmith_f_op_f32(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 10>();
    global4 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec4_f32(global2.b.c - _wgslsmith_f_op_vec4_f32(-global2.b.c)), Struct_4(any(vec4<bool>(true, global2.b.d < -1i, false, false && global2.a)), Struct_1(~(0u ^ global2.b.b.x), vec2<u32>(32954u, u_input.b.x), global2.b.c, countOneBits(global2.b.d)), func_1()), _wgslsmith_clamp_i32(15311i, -firstTrailingBit(global2.b.d ^ 1i), -(u_input.a | -global2.b.d)), Struct_4(false != global3.x, Struct_1(397u ^ _wgslsmith_mod_u32(2478u, u_input.b.x), vec2<u32>(~54710u, ~0u), global2.b.c, _wgslsmith_mod_i32(~(-27306i), u_input.a >> (global2.b.b.x % 32u))), Struct_3(firstLeadingBit(reverseBits(vec3<i32>(13292i, u_input.a, u_input.a)))))));
    let var_0 = vec4<bool>(!global3.x, !(~u_input.b.x < ~(~global2.b.b.x)), true, false);
    let var_1 = Struct_4(all(vec2<bool>(true, any(vec4<bool>(var_0.x, var_0.x, false, false)))), Struct_1(abs(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(5019u, global2.b.a, 4294967295u))), vec2<u32>(39371u, 871u), _wgslsmith_div_vec4_f32(vec4<f32>(1852f, -858f, _wgslsmith_f_op_f32(global2.b.c.x * 166f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), global2.b.c), -_wgslsmith_mult_i32(global2.b.d, u_input.a)), Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 1i, 35778i), vec3<i32>(global2.c.a.x, -1i, u_input.a)) >> (max(u_input.b, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), u_input.b)) % vec3<u32>(32u))));
    let var_2 = var_0.xxw;
    global2 = Struct_4(!var_1.a != !(!all(vec3<bool>(true, false, global2.a))), func_4(Struct_3(min(_wgslsmith_clamp_vec3_i32(var_1.c.a, vec3<i32>(0i, global2.b.d, var_1.b.d), global2.c.a), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, global2.b.d), vec3<i32>(var_1.b.d, -41415i, global2.c.a.x)))), global2.b.c.wx, global2.b.c.zzw), global2.c);
    let var_3 = Struct_4(false, var_1.b, var_1.c);
    var var_4 = global2.b;
    let var_5 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 10u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(55700u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.c.wwy)), var_4.c.x, global2.c.a.yy);
}

