struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec3<f32> = vec3<f32>(291f, -100f, -758f);

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 1571u, 91037u), vec3<u32>(1u, 1u, 14980u), vec3<u32>(18789u, 74069u, 4294967295u), vec3<u32>(42545u, 54894u, 0u), vec3<u32>(11727u, 1u, 0u), vec3<u32>(35031u, 82305u, 32270u), vec3<u32>(91794u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 1999u), vec3<u32>(21778u, 42331u, 8653u), vec3<u32>(6617u, 0u, 0u), vec3<u32>(43228u, 34319u, 0u), vec3<u32>(1456u, 80677u, 4294967295u), vec3<u32>(0u, 32082u, 0u), vec3<u32>(0u, 6546u, 4294967295u), vec3<u32>(11131u, 1u, 1u), vec3<u32>(0u, 1u, 64384u));

var<private> global3: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global4: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, 1i, -27571i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 65674u, 3297u), vec4<u32>(76818u, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<u32>(u_input.c.x, 13284u, 4294967295u, u_input.c.x)), ~0u) & countOneBits(u_input.c);
    let var_1 = vec4<bool>(select(!(!all(vec4<bool>(true, false, true, true))), all(global3[_wgslsmith_index_u32(var_0.x, 18u)]), false), true, false, any(select(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 89455u, 0u), 18u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 23177u), 18u)], any(vec3<bool>(true, true, true)))) | true);
    global2 = array<vec3<u32>, 16>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-1040f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), -759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -115f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) - -1042f) * _wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(floor(global1.x))))));
    let var_2 = Struct_4(abs(vec2<i32>(~1i, -select(-5321i, -39214i, var_1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2666f, global1.x, global1.x, 630f) + vec4<f32>(1113f, global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(636f, global1.x, -294f, global1.x), vec4<f32>(-1112f, global1.x, -795f, -988f), var_1.x))))));
    return 1055f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2, 426f)), _wgslsmith_f_op_f32(-arg_1.x), true)))), 1539f, -1442f));
    var var_0 = Struct_3(-1404f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global1.x), -595f, _wgslsmith_div_f32(_wgslsmith_div_f32(-681f, global1.x), _wgslsmith_f_op_f32(-arg_2)), -424f)), vec3<u32>(43683u, 80143u, arg_0.x), global0[_wgslsmith_index_u32(~23904u, 17u)]);
    global3 = array<vec2<bool>, 18>();
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.a.zzz)), var_0.d.a.a.wwx));
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_2));
    return Struct_4(max(vec2<i32>(i32(-1i) * -2147483647i, -44253i), max(u_input.b.wx, vec2<i32>(-1i, -1i) & vec2<i32>(2147483647i, global4.x))) << (_wgslsmith_div_vec2_u32(vec2<u32>(25155u ^ arg_0.x, ~u_input.c.x), vec2<u32>(~10558u, 0u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.a.x)), arg_1.x, _wgslsmith_f_op_f32(591f * var_0.d.a.a.x), 275f), vec4<f32>(_wgslsmith_f_op_f32(floor(-601f)), _wgslsmith_f_op_f32(abs(565f)), arg_1.x, -320f)))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = func_2(global2[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1110f, 991f), vec2<f32>(global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_2.a.a.xx)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-272f, global1.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.a.yzy - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(648f, var_0.b.a.x, var_0.b.a.x)))))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(41470i, 0i)), vec2<i32>(97i, -1i), vec2<i32>(global4.x, 0i)), var_0.a), abs(25114i), -2147483647i) ^ ~firstTrailingBit(-(~vec3<i32>(u_input.b.x, -1i, -17407i)));
    global3 = array<vec2<bool>, 18>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.c.x), global2[_wgslsmith_index_u32(u_input.c.x ^ u_input.a, 16u)]), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(52078u, 17u)]));
    var_0 = u_input.b;
    let var_1 = vec2<bool>(select(true, false, !(u_input.a <= (u_input.c.x << (u_input.a % 32u)))), true);
    let var_2 = select(!(!(!select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x), false))), !(!select(!vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), any(global3[_wgslsmith_index_u32(u_input.c.x, 18u)]))), false);
    var var_3 = -(~global4.x) >> (~(~0u) % 32u);
    var_3 = min(_wgslsmith_clamp_i32((-18179i | (2147483647i | global4.x)) ^ (_wgslsmith_add_i32(30922i, global4.x) & _wgslsmith_add_i32(1i, 49682i)), ~firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.yx)), i32(-1i) * -85600i), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(max(var_0.x, -18660i), 0i), ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), _wgslsmith_mult_i32(u_input.b.x & _wgslsmith_add_i32(var_0.x, var_0.x), _wgslsmith_add_i32(func_1(4294967295u, var_2.zzz, Struct_2(Struct_1(vec4<f32>(global1.x, global1.x, global1.x, -248f)), vec2<u32>(u_input.c.x, 17210u))).x, global4.x))));
    global4 = ~(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x), _wgslsmith_sub_vec2_i32(~(abs(u_input.b.yz) ^ (vec2<i32>(u_input.b.x, var_0.x) & vec2<i32>(-10656i, u_input.b.x))), func_2(global2[_wgslsmith_index_u32(44470u, 16u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 524f)))), _wgslsmith_f_op_f32(624f + _wgslsmith_f_op_f32(f32(-1f) * -816f))).a));
}

