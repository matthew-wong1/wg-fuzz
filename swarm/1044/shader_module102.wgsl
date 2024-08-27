struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_3,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: array<i32, 28> = array<i32, 28>(-11661i, 1i, -32986i, 2147483647i, 37490i, 35834i, 1i, -929i, 2147483647i, -1i, 36775i, 2147483647i, 36940i, -1i, 2147483647i, 77908i, 9467i, 2147483647i, 21746i, 14365i, 20392i, 2147483647i, -1i, -6934i, -18634i, i32(-2147483648), 0i, 2147483647i);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), 1i, 22266u);

var<private> global3: array<Struct_2, 32>;

var<private> global4: array<u32, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-255f)), arg_0)) - _wgslsmith_f_op_f32(exp2(arg_0))) - arg_0);
    return i32(-1i) * -2147483647i;
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<f32>, 18>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 28u)], func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1237f + -1985f) - _wgslsmith_div_f32(174f, 974f)), vec4<i32>(global2.b, 0i, -55295i, 1i) << (abs(vec4<u32>(25085u, global2.c, 50968u, global4[_wgslsmith_index_u32(1u, 32u)])) % vec4<u32>(32u)))), ~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u & _wgslsmith_clamp_u32(56554u, global2.c, 1u), 113180u), 32u)], 28u)]);
    let var_1 = ~(~vec2<u32>(~(~global4[_wgslsmith_index_u32(global2.c, 32u)]), abs(global4[_wgslsmith_index_u32(0u, 32u)]) | 1u));
    let var_2 = Struct_4(firstTrailingBit(vec2<i32>(select(u_input.a, u_input.a, global2.a.x), u_input.a)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -651f), -2049f, global2.a.x)), 330f))), Struct_3(vec2<bool>(false, true)), min(vec3<u32>(global2.c, 12112u, ~global2.c) << (reverseBits(vec3<u32>(global4[_wgslsmith_index_u32(0u, 32u)], 1u, 1u) << (vec3<u32>(8282u, 49766u, var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(63871u, 4294967295u, 4294967295u) >> (vec3<u32>(0u, 0u, global2.c) % vec3<u32>(32u)), ~vec3<u32>(global4[_wgslsmith_index_u32(51921u, 32u)], global4[_wgslsmith_index_u32(3809u, 32u)], global2.c)))), ~vec4<u32>(global4[_wgslsmith_index_u32(countOneBits(global2.c) >> (firstLeadingBit(0u) % 32u), 32u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(var_1.x, 32u)], global2.c), vec4<u32>(4294967295u, 90687u, 107889u, 21063u)), ~global2.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~var_1.x), 32u)], 32u)]));
    global2 = Struct_1(vec4<bool>(var_2.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)) != _wgslsmith_f_op_f32(f32(-1f) * -814f), true, true), -26873i, var_2.e.x & ~reverseBits(_wgslsmith_div_u32(var_2.d.x, 4294967295u)));
    return Struct_4(~var_2.a, _wgslsmith_f_op_vec2_f32(abs(var_2.b)), var_2.c, var_2.e.xyx, reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1, var_1), firstLeadingBit(select(0u, var_2.e.x, var_2.c.a.x)), firstTrailingBit(~var_2.e.x), ~(0u << (global4[_wgslsmith_index_u32(1u, 32u)] % 32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> Struct_4 {
    global0 = array<vec3<f32>, 18>();
    var var_0 = !global2.a.zyx;
    let var_1 = var_0.zy;
    let var_2 = ~(~arg_0.e);
    var var_3 = any(select(select(vec4<bool>(true, var_1.x, true, true), !global2.a, vec4<bool>(true, true, true, !global2.a.x)), !vec4<bool>(true, all(vec4<bool>(false, false, global2.a.x, true)), all(arg_0.c.a), true), !all(!var_0.xy)));
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_3 {
    global3 = array<Struct_2, 32>();
    global2 = Struct_1(select(!(!vec4<bool>(global2.a.x, false, false, false)), global2.a, select(!(!global2.a), vec4<bool>(true, arg_1.d.x < 4294967295u, any(global2.a), true), select(vec4<bool>(true, global2.a.x, true, false), vec4<bool>(arg_1.c.a.x, false, arg_1.c.a.x, global2.a.x), select(vec4<bool>(arg_1.c.a.x, arg_1.c.a.x, global2.a.x, global2.a.x), vec4<bool>(true, arg_1.c.a.x, false, false), arg_1.c.a.x)))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.x))), ~(-vec4<i32>(17155i, -40724i, -81689i, u_input.a) | ~vec4<i32>(global2.b, 39021i, arg_1.a.x, -2147483647i))), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(max(global2.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)])) & _wgslsmith_sub_u32(arg_1.d.x, 4294967295u), ~firstLeadingBit(0u) ^ (abs(58760u) >> (~global4[_wgslsmith_index_u32(77666u, 32u)] % 32u))), 32u)]);
    let var_0 = arg_1.a.x ^ func_4(arg_1, 2147483647i, -159f, arg_1.b).a.x;
    var var_1 = func_2().b.x;
    var var_2 = !(!(!vec2<bool>(global2.a.x, arg_1.c.a.x)));
    return Struct_3(!global2.a.ww);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(arg_0.c)), 18u)]));
    let var_1 = firstTrailingBit(vec2<u32>(28001u & (arg_0.c & global2.c), arg_0.c) >> (select(~(vec2<u32>(1u, 96393u) | vec2<u32>(global2.c, global2.c)), firstTrailingBit(vec2<u32>(arg_0.c, arg_0.c)) & _wgslsmith_add_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global2.c, 32u)], global4[_wgslsmith_index_u32(15601u, 32u)]), vec2<u32>(3949u, arg_0.c)), !arg_1.x) % vec2<u32>(32u)));
    var var_2 = vec4<u32>(firstTrailingBit(1u), arg_0.c, _wgslsmith_mult_u32(reverseBits(47315u) << (min(global4[_wgslsmith_index_u32(arg_0.c, 32u)], ~20780u) % 32u), select(0u, _wgslsmith_sub_u32(31064u, ~4294967295u), -1154f <= _wgslsmith_f_op_f32(round(arg_2)))), 27783u);
    let var_3 = Struct_4(min(vec2<i32>(-1i) * -(vec2<i32>(-22002i, -106012i) << (vec2<u32>(global4[_wgslsmith_index_u32(1u, 32u)], 0u) % vec2<u32>(32u))), vec2<i32>(i32(-1i) * -1i, u_input.a)), vec2<f32>(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(var_0.x - var_0.x))))), func_5(vec2<i32>(-arg_0.b, 1i ^ u_input.a) & vec2<i32>(-39022i, _wgslsmith_dot_vec4_i32(vec4<i32>(-23837i, 0i, arg_0.b, 51238i), vec4<i32>(10704i, 1i, -67553i, u_input.a))), func_4(func_2(), firstTrailingBit(-48743i), var_0.x, var_0.zz)), ~func_2().d, min(~vec4<u32>(arg_0.c, arg_0.c, global2.c, var_2.x), vec4<u32>(30354u, 19156u, 1u, var_1.x) << (~vec4<u32>(global4[_wgslsmith_index_u32(1u, 32u)], global2.c, var_1.x, global2.c) % vec4<u32>(32u))) << (vec4<u32>(abs(global2.c >> (1u % 32u)), 86025u, 4294967295u, _wgslsmith_div_u32(select(1u, var_1.x, global2.a.x), 0u)) % vec4<u32>(32u)));
    var var_4 = var_3.c.a;
    return Struct_1(arg_0.a, countOneBits(~1i), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(global2.c, 32u)];
    global3 = array<Struct_2, 32>();
    let var_1 = Struct_3(select(!global2.a.xy, vec2<bool>(global2.a.x, true), !(_wgslsmith_f_op_f32(-362f - -122f) <= _wgslsmith_f_op_f32(ceil(-240f)))));
    let var_2 = countOneBits(-vec3<i32>(2147483647i, _wgslsmith_div_i32(65344i << (0u % 32u), u_input.a >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14534u, 32u)], 32u)] % 32u)), -12441i));
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    global2 = func_1(Struct_1(global2.a, 8350i, ~(~_wgslsmith_mod_u32(global2.c, 0u))), !(!var_1.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -950f))));
    var var_3 = ~vec4<u32>(~1u, 0u, 4959u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.c, global2.c, 4294967295u, global4[_wgslsmith_index_u32(global2.c, 32u)]), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 16394u, global4[_wgslsmith_index_u32(global2.c, 32u)], 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(52831u, global2.c, 4294967295u, global2.c), vec4<u32>(7693u, global2.c, global2.c, 15890u)))));
    global2 = Struct_1(global2.a, var_2.x, _wgslsmith_dot_vec2_u32(~(var_3.wy >> (vec2<u32>(global2.c, var_3.x) % vec2<u32>(32u))), func_2().d.xy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(65046u, ~(~8u) & _wgslsmith_mod_u32(~global2.c, _wgslsmith_sub_u32(1u, var_3.x))), global1[_wgslsmith_index_u32(select(select(_wgslsmith_mult_u32(~24704u, _wgslsmith_mult_u32(global2.c, var_3.x)), var_3.x, !all(vec4<bool>(true, global2.a.x, true, var_1.a.x))), max(global2.c, 1u), _wgslsmith_dot_vec3_i32(select(var_2, vec3<i32>(global1[_wgslsmith_index_u32(global2.c, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global2.b), var_1.a.x), -vec3<i32>(-862i, 15689i, global2.b)) < -28644i), 28u)], 1i & ~_wgslsmith_dot_vec2_i32(var_2.yy, countOneBits(vec2<i32>(6855i, var_2.x))), vec3<u32>(~func_4(Struct_4(var_2.xz, vec2<f32>(529f, -450f), var_1, vec3<u32>(var_3.x, 76724u, global2.c), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.c, 32u)], 32u)], 32u)], global2.c, 1u, 0u)), abs(-1i), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, 968f))).e.x, 4321u, var_3.x));
}

