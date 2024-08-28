struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<u32, 13>;

var<private> global2: vec4<u32>;

var<private> global3: vec4<i32> = vec4<i32>(-14887i, i32(-2147483648), 5913i, 2147483647i);

var<private> global4: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<u32> {
    global1 = array<u32, 13>();
    let var_0 = global3.x;
    var var_1 = global4.a;
    let var_2 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~52656u, 13u)], 4u)];
    global0 = array<bool, 4>();
    return vec2<u32>(u_input.c.x, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)]), 13u)], 13u)], global2.x), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(firstLeadingBit(14515u), 13u)], global2.x)), 13u)]);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_3 {
    var var_0 = global4.a.a;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(func_3(), (_wgslsmith_mult_vec2_u32(global2.ww, vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(69164u, 13u)])) << (u_input.b.xx % vec2<u32>(32u))) >> ((~vec2<u32>(global2.x, u_input.e.x) ^ abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]))) % vec2<u32>(32u))), countOneBits(u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), 0u, 59082u, ~global2.x), ~(~countOneBits(vec4<u32>(4294967295u, u_input.d, 13916u, u_input.a)))), 4294967295u);
    let var_2 = Struct_4(~(~global2.x >> (global2.x % 32u)));
    global4 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32((vec2<i32>(2494i, -14227i) >> (u_input.e.xy % vec2<u32>(32u))) >> (~vec2<u32>(var_2.a, var_1.x) % vec2<u32>(32u)), countOneBits(select(global3.yy, global3.zw, arg_0)))));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1832f - 684f)))))), vec3<bool>(true, true, global0[_wgslsmith_index_u32(~28u, 4u)]), Struct_3(_wgslsmith_mod_i32(1i, reverseBits(-1821i)), Struct_2(global4.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -661f), 168f, !arg_0)), Struct_1(countOneBits(global4.a.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1052f, 593f)))), Struct_3(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global3.x, _wgslsmith_mult_i32(global3.x, 0i), arg_1), arg_1), Struct_2(global4.a), _wgslsmith_f_op_f32(f32(-1f) * -203f), Struct_1(-global4.a.a)));
    return var_3.e;
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(false, global3.x);
    let var_1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -156f), -943f)), _wgslsmith_f_op_f32(-var_0.c)), !(!vec3<bool>(var_0.c != var_0.c, true, !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 4u)])), Struct_3(~var_0.d.a, var_0.b, func_2(any(!vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86549u, 13u)], 4u)], global0[_wgslsmith_index_u32(95516u, 4u)])), -2147483647i).c, func_2(any(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true)), global3.x).d), func_2(~firstTrailingBit(global2.x) == ~_wgslsmith_mod_u32(4294967295u, 1u), func_2(false, countOneBits(var_0.a)).d.a).c, Struct_3(global3.x, var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-858f))), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(abs(var_0.c))))), func_2(true, global4.a.a).d));
    var var_2 = ~(~(vec4<u32>(global1[_wgslsmith_index_u32(45845u, 13u)], 40406u, global2.x, 28435u) & ~vec4<u32>(84607u, global1[_wgslsmith_index_u32(1u, 13u)], 11217u, 13190u)) & ~min(~vec4<u32>(0u, 1u, u_input.e.x, 12021u), vec4<u32>(151308u, 1u, global2.x, 1u)));
    var var_3 = Struct_4(35441u | ~_wgslsmith_sub_u32(4294967295u, u_input.b.x));
    global2 = (firstLeadingBit(min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(102558u, 13u)], 16388u, 4294967295u), vec4<u32>(0u, 5610u, var_3.a, 8701u)), _wgslsmith_add_vec4_u32(vec4<u32>(100890u, global1[_wgslsmith_index_u32(4294967295u, 13u)], global2.x, var_2.x), vec4<u32>(4294967295u, 1u, u_input.e.x, var_2.x)))) | ~vec4<u32>(38641u << (0u % 32u), 28845u, 1u, var_3.a)) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(258u, var_2.x, 6084u, 60695u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 14698u, var_2.x), vec4<u32>(global2.x, 0u, global2.x, var_2.x))), ~vec4<u32>(u_input.a, var_2.x, u_input.e.x, 54387u) & ~vec4<u32>(1u, 44643u, 4294967295u, 0u)) % vec4<u32>(32u));
    return Struct_4(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    global0 = array<bool, 4>();
    let var_1 = func_2(!global0[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_dot_vec2_i32(vec2<i32>((i32(-1i) * -1i) ^ global4.a.a, -23043i), reverseBits(global3.ww))).b.a;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1111f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f - _wgslsmith_f_op_f32(trunc(-786f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-847f * 529f))))), _wgslsmith_f_op_f32(f32(-1f) * -2483f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(func_2(true, var_1.a).c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(var_3 * -676f)), ~vec4<i32>(-33638i, firstTrailingBit(global3.x), _wgslsmith_div_i32(-global3.x, -1i), var_1.a | select(var_1.a, global4.a.a, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_div_f32(2797f, var_3), all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -138f), true)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_2) * vec2<f32>(1000f, var_3)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, -929f), vec2<f32>(var_3, 1313f)))) - vec2<f32>(-606f, 278f)), vec2<f32>(1835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1099f)))))));
}

