struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 52110u, 0u, 1u), vec2<bool>(false, false), 845f, vec3<i32>(1i, 13089i, i32(-2147483648)), vec4<i32>(-34778i, 2147483647i, -18717i, -36869i));

var<private> global1: Struct_5;

var<private> global2: array<vec2<f32>, 25>;

var<private> global3: array<vec3<u32>, 14>;

var<private> global4: array<f32, 1> = array<f32, 1>(319f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> i32 {
    let var_0 = Struct_2(-37131i);
    global4 = array<f32, 1>();
    global1 = Struct_5(-countOneBits(global1.a), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.e.x, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c + 744f)))))));
    let var_1 = true;
    let var_2 = _wgslsmith_sub_vec3_i32(global0.d, -vec3<i32>(-1i | global0.d.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.d.x, -43514i, var_0.a)), countOneBits(global0.e.yxx)), -2147483647i));
    return _wgslsmith_add_i32(global0.e.x, var_0.a);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    let var_0 = -484f;
    global1 = Struct_5(firstLeadingBit(min(func_3(vec3<bool>(global0.b.x, true, global0.b.x), u_input.e.x), 2147483647i)) << (~_wgslsmith_div_u32(1u, arg_3) % 32u), 171f, arg_0.c);
    global4 = array<f32, 1>();
    let var_1 = vec3<f32>(global0.c, 985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)));
    let var_2 = ~arg_1.x;
    return global0.c;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-129f, 230f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(global0.a.x, 1u)])), _wgslsmith_f_op_f32(func_2(Struct_5(-1i, arg_1, -969f), vec3<u32>(8371u, global0.a.x, 9395u), vec3<i32>(-2147483647i, 0i, 1i), global0.a.x))))), global1.c) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-556f, global4[_wgslsmith_index_u32(u_input.a, 1u)]) - -267f))), _wgslsmith_f_op_f32(670f + -1125f)));
    let var_1 = Struct_3(Struct_1(~u_input.e, select(!global0.b, select(select(vec2<bool>(false, false), vec2<bool>(arg_2, global0.b.x), global0.b), vec2<bool>(false, global0.b.x), true), !(!global0.b)), _wgslsmith_div_f32(719f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1136f), global0.c)), ~global0.e.ywx, reverseBits(global0.e)), Struct_1(~global0.a, global0.b, _wgslsmith_f_op_f32(-132f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(285f + global4[_wgslsmith_index_u32(global0.a.x, 1u)])))), global0.e.zyx, vec4<i32>(-u_input.b, _wgslsmith_mod_i32(arg_3.a, 1i << (u_input.e.x % 32u)), ~0i, 0i)), arg_3, select(!vec3<bool>(true, !arg_2, true), select(select(!vec3<bool>(global0.b.x, true, arg_2), vec3<bool>(true, global0.b.x, false), vec3<bool>(false, arg_2, global0.b.x)), vec3<bool>(any(vec4<bool>(true, global0.b.x, true, false)), false, any(vec2<bool>(global0.b.x, global0.b.x))), vec3<bool>(global0.a.x != 4294967295u, any(vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x)), false)), any(!(!global0.b))), Struct_1(_wgslsmith_mult_vec4_u32(min(global0.a, u_input.e), u_input.e), global0.b, arg_0.b.x, _wgslsmith_mult_vec3_i32(~global0.d | -vec3<i32>(global1.a, global1.a, 2147483647i), reverseBits(vec3<i32>(-74812i, global1.a, -5715i))), vec4<i32>(~_wgslsmith_mod_i32(u_input.d.x, -5290i), countOneBits(~global0.d.x), global1.a, _wgslsmith_mult_i32(global0.d.x, global1.a))));
    global1 = Struct_5(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.e.a, vec4<u32>(0u, global0.a.x, 91693u, u_input.e.x)), 1u)]))), global1.b);
    let var_2 = Struct_1(~(select(vec4<u32>(1u, arg_0.a.x, u_input.a, 72993u), global0.a, arg_2) >> (vec4<u32>(25087u, 45195u, global0.a.x, u_input.a) % vec4<u32>(32u))) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.a.x, 77020u, arg_0.a.x, 0u) | var_1.a.a, ~var_1.b.a, vec4<u32>(46202u, global0.a.x, var_1.e.a.x, 52318u)) % vec4<u32>(32u)), select(vec2<bool>(!(!var_1.b.b.x), all(!var_1.d)), var_1.b.b, !select(global0.b.x && true, select(false, arg_2, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 1440f)))), var_1.a.e.wyw, var_1.e.e);
    var var_3 = 42129u;
    return 29560u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 1>();
    var var_0 = _wgslsmith_dot_vec2_i32(global0.e.xy, global0.e.yw) << (func_1(Struct_4(~_wgslsmith_div_vec2_u32(u_input.e.zz, vec2<u32>(54568u, 11288u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(1u, 25u)] + vec2<f32>(-898f, global4[_wgslsmith_index_u32(18398u, 1u)])) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-594f, 621f), global2[_wgslsmith_index_u32(global0.a.x, 25u)], true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, 230f) - _wgslsmith_div_f32(-1964f, global1.c))), global0.b.x, Struct_2((u_input.c ^ global0.e.x) & (global1.a ^ u_input.b))) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -357f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c * -333f))), _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1656f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(global1.a, global1.b, -693f), vec3<u32>(u_input.e.x, global0.a.x, 0u), global0.d, global0.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, 782f, _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(global0.a.x, 1u)], 1000f)), global1.b) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, -570f, global1.c, -1583f) * vec4<f32>(global1.b, global1.c, global0.c, global0.c)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c, global4[_wgslsmith_index_u32(4294967295u, 1u)], global0.c, 1000f), vec4<f32>(1259f, -1000f, global1.c, -1106f), vec4<bool>(false, true, false, global0.b.x)))))), all(vec3<bool>(global0.b.x, false, global0.b.x == all(vec4<bool>(global0.b.x, false, true, true))))));
    global2 = array<vec2<f32>, 25>();
    var var_2 = !vec3<bool>(!all(select(vec3<bool>(false, false, global0.b.x), vec3<bool>(true, false, true), global0.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(288f - 449f))) >= _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(1u, 1u)], -1158f)), !(false | (global0.b.x & true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.c >> (global0.a.x % 32u)));
}

