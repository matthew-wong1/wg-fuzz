struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1u, vec2<f32>(-1276f, -376f), 1u), Struct_1(1u, vec2<f32>(-248f, 1470f), 100883u), Struct_1(4294967295u, vec2<f32>(-1716f, -169f), 47198u), Struct_1(4294967295u, vec2<f32>(588f, -806f), 19502u), Struct_1(4294967295u, vec2<f32>(-653f, 2154f), 25534u), Struct_1(2932u, vec2<f32>(1044f, 1157f), 8045u), Struct_1(4294967295u, vec2<f32>(796f, -818f), 4294967295u), Struct_1(0u, vec2<f32>(419f, 615f), 0u), Struct_1(1u, vec2<f32>(-1000f, 776f), 64589u), Struct_1(18076u, vec2<f32>(266f, -932f), 22173u), Struct_1(50360u, vec2<f32>(728f, 463f), 1u), Struct_1(49539u, vec2<f32>(1808f, -507f), 2489u), Struct_1(38673u, vec2<f32>(-1150f, -176f), 50964u), Struct_1(1u, vec2<f32>(1011f, -848f), 29893u), Struct_1(12346u, vec2<f32>(-1580f, 191f), 0u), Struct_1(1u, vec2<f32>(-737f, -3205f), 0u));

var<private> global1: vec3<u32>;

var<private> global2: vec2<i32>;

var<private> global3: vec2<f32> = vec2<f32>(559f, -838f);

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = false;
    var var_1 = true;
    let var_2 = -_wgslsmith_mod_i32(global2.x, ~global2.x);
    let var_3 = !global4.b.x;
    let var_4 = global4.d;
    return !global4.b;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    var var_0 = Struct_3(arg_2, global4.b, arg_1, Struct_2(arg_1.a, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.x * global3.x)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(global4.d.a.c, 4294967295u), abs(55676u)) >> (_wgslsmith_mod_u32(~global4.c.a.c, global4.c.a.a >> (1u % 32u)) % 32u), arg_1.a.b, ~16533u));
    var var_1 = ~(~global4.e.c);
    var_1 = arg_3.x;
    global4 = Struct_3(global4.e, func_3(), Struct_2(arg_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1559f * _wgslsmith_f_op_f32(min(-280f, 825f)))))), arg_1, arg_1.a);
    let var_2 = Struct_4(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.b.x)) * _wgslsmith_f_op_f32(-arg_1.b)))), ~var_0.a.c);
    return _wgslsmith_f_op_f32(-global3.x);
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = abs(min(~_wgslsmith_clamp_i32(global2.x, -2147483647i, -2147483647i), global2.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1224f, _wgslsmith_f_op_f32(global4.a.b.x * global4.c.a.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(-1i, Struct_2(global4.c.a, -747f), global4.c.a, vec4<u32>(u_input.a, 29817u, u_input.a, global4.c.a.a)))))))));
    var var_2 = global4.c.a;
    global3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xx - vec2<f32>(var_1.x, global3.x)), _wgslsmith_f_op_vec2_f32(var_2.b + var_2.b))))));
    let var_3 = Struct_4(global4.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.c.a.b.x))))), 207f)), u_input.a);
    return 30003u;
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f * _wgslsmith_div_f32(_wgslsmith_div_f32(-109f, -664f), _wgslsmith_f_op_f32(2822f + global3.x)))), _wgslsmith_f_op_f32(-global4.d.a.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-236f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1654f * global3.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e.b.x, var_0.x, global4.e.b.x, global4.c.b)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.e.b.x, -1000f, global4.e.b.x, 1338f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global4.a.b.x, -644f, 409f, global4.d.a.b.x), vec4<f32>(global4.e.b.x, global4.e.b.x, global4.a.b.x, global4.c.b)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), 665f, _wgslsmith_f_op_f32(-global4.a.b.x), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(sign(global4.d.b)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(global3.x - -1558f), _wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(var_0.x + -1197f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 834f, 168f, 1863f)), vec4<f32>(1083f, 404f, -1549f, 187f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, global3.x, global4.e.b.x, global3.x))))), select(select(vec4<bool>(true, global4.b.x, true, global4.b.x), vec4<bool>(false, global4.b.x, true, global4.b.x), vec4<bool>(true, global4.b.x, false, global4.b.x)), select(vec4<bool>(global4.b.x, global4.b.x, global4.b.x, global4.b.x), vec4<bool>(false, global4.b.x, global4.b.x, global4.b.x), vec4<bool>(true, false, global4.b.x, true)), vec4<bool>(true, true, global4.b.x, global4.b.x))))));
    let var_1 = vec4<i32>(-1i) * -(~select(vec4<i32>(97082i, global2.x, global2.x, global2.x) ^ vec4<i32>(2147483647i, global2.x, -537i, -63111i), firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, global2.x, -26033i)), -505f < global3.x));
    var var_2 = global4.b.x | all(vec4<bool>(true, false, global4.b.x, firstLeadingBit(0i) > (global2.x ^ global2.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 479f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f) * _wgslsmith_f_op_f32(-global3.x)), global3.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1054f, global3.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -610f))))))));
    return global4.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.d;
    var var_1 = func_4(vec4<u32>(global4.d.a.a, ~var_0.a.a, 0u, (countOneBits(var_0.a.a) | func_1(vec2<bool>(global4.b.x, global4.b.x))) & ~6401u));
    var var_2 = Struct_4(true, var_1.b, 0u);
    let var_3 = firstTrailingBit(~firstLeadingBit(countOneBits(reverseBits(vec2<i32>(-55937i, global2.x)))));
    var var_4 = Struct_4(global4.b.x, -271f, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.c << (0u % 32u), ~61286u), countOneBits(global1.xz))));
    var var_5 = Struct_3(Struct_1(0u, global4.c.a.b, max(74391u, ~(~u_input.a))), vec3<bool>(global4.b.x, false, var_2.a), func_4(_wgslsmith_add_vec4_u32(reverseBits(abs(vec4<u32>(var_4.c, 22701u, 1u, var_0.a.c))), ~vec4<u32>(var_2.c, var_2.c, global1.x, var_0.a.c))), global4.c, global0[_wgslsmith_index_u32(var_1.a.a, 16u)]);
    var var_6 = 29043u;
    var var_7 = Struct_4(true, global3.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, ~global1.xy);
}

