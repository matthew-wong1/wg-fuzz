struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: u32 = 37838u;

var<private> global2: vec3<u32> = vec3<u32>(36617u, 32405u, 50419u);

var<private> global3: bool = false;

var<private> global4: array<f32, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, u_input.b.x), 30u)], ~min(select(u_input.b.x, ~1u, true), ~_wgslsmith_dot_vec3_u32(u_input.d.zzy, vec3<u32>(global2.x, 0u, global2.x))), vec3<bool>(true, all(vec4<bool>(true, -114f >= global4[_wgslsmith_index_u32(u_input.b.x, 30u)], false, true)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -788f))))));
    let var_1 = Struct_2(u_input.c.x >= u_input.a, ~countOneBits(global2.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d)))), _wgslsmith_dot_vec2_u32(global2.xx, countOneBits(vec2<u32>(global2.x, 31525u))), var_0.c, _wgslsmith_f_op_f32(floor(var_0.a))), ~(-(select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x), vec4<i32>(4540i, u_input.c.x, -28365i, 27411i), vec4<bool>(false, var_0.c.x, true, var_0.c.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(69903u, 1u, u_input.b.x, global2.x), u_input.d) % vec4<u32>(32u)))), vec4<i32>(11573i, -29189i, i32(-1i) * -u_input.a, abs(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, u_input.a, u_input.a)), min(vec3<i32>(u_input.c.x, 22288i, u_input.a), vec3<i32>(u_input.a, 2147483647i, -13618i))))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 11690u), 30u)] * _wgslsmith_f_op_f32(1168f * _wgslsmith_f_op_f32(-1816f + global4[_wgslsmith_index_u32(0u, 30u)]))) * global4[_wgslsmith_index_u32(~(~global2.x), 30u)])));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) - 704f)), !any(vec4<bool>(var_0.c.x, true, var_1.a, var_1.a)))), abs(abs(~(~u_input.d.x))), select(!select(vec3<bool>(true, var_1.c.c.x, true), vec3<bool>(true, var_0.c.x, false), vec3<bool>(false, false, true)), !(!select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(false, false, false), true)), select(false, any(vec3<bool>(var_0.c.x, var_1.c.c.x, true)) & !var_1.a, var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -401f))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(122501u, select(~u_input.b.x, var_1.c.b, !all(select(vec4<bool>(false, true, var_1.a, true), vec4<bool>(var_0.c.x, false, true, true), true)))), 15u)];
    return -1817f;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.b.x, 30u)], 878f) + _wgslsmith_f_op_f32(-1475f - 750f)))));
    let var_1 = 27747u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)) * 689f)), 3452u, select(vec3<bool>(all(vec3<bool>(false, false, true)), true, -1532f <= global4[_wgslsmith_index_u32(firstLeadingBit(104091u), 30u)]), vec3<bool>(false, true, (u_input.c.x <= -12931i) || true), true), var_0.x);
    var var_3 = all(vec2<bool>(global4[_wgslsmith_index_u32(~1u, 30u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2026f, 1566f)) + _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(var_2.b, 30u)]))), any(!vec3<bool>(true, var_2.c.x, true)) == var_2.c.x));
    var var_4 = Struct_3(var_2.c.x, var_2, var_2);
    return ~_wgslsmith_sub_i32(reverseBits(-_wgslsmith_sub_i32(u_input.a, u_input.c.x)), abs(u_input.a));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = u_input.d.x;
    let var_1 = vec3<i32>(func_2(), u_input.a, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(~22025i, ~(-1i), arg_0, -6954i), vec4<i32>(_wgslsmith_mult_i32(-37574i, arg_0), u_input.c.x, firstLeadingBit(-31763i), i32(-1i) * -3328i))));
    let var_2 = Struct_3(false, Struct_1(_wgslsmith_f_op_f32(1504f * global4[_wgslsmith_index_u32(1u, 30u)]), firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, 11886u, 4294967295u), _wgslsmith_div_vec3_u32(u_input.d.ywy, vec3<u32>(0u, var_0, u_input.b.x)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(false, true, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), -17518i < var_1.x), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(abs(global2.x), 30u)]))))), Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.zwx, vec3<u32>(6236u, ~27188u, reverseBits(0u))), 30u)], 118227u, vec3<bool>(!all(vec3<bool>(false, false, false)), !(global2.x == 47930u), true), global4[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(75675u, 86641u, 64147u)), 30u)]));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, global2.x, ~(~var_0)), 15u)];
    global2 = vec3<u32>(reverseBits(38466u), countOneBits(firstLeadingBit(4294967295u << (global2.x % 32u))), ~(_wgslsmith_clamp_u32(u_input.b.x, 20404u, var_0) << (58144u % 32u))) ^ select(_wgslsmith_mult_vec3_u32(abs(firstLeadingBit(u_input.b)), abs(_wgslsmith_add_vec3_u32(u_input.b, u_input.d.xyz))), vec3<u32>(16727u, u_input.b.x, countOneBits(var_3.b)) | (u_input.d.xwz ^ u_input.b), var_2.c.c);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = (1u != firstLeadingBit(~u_input.b.x)) | (~(~(~u_input.d.x)) != _wgslsmith_mult_u32(~(~u_input.b.x), ~37691u));
    let var_0 = func_1(_wgslsmith_mod_i32(u_input.a, countOneBits(-(i32(-1i) * -16361i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.d.x, 30u)], global4[_wgslsmith_index_u32(3776u, 30u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.x, 30u)] + -881f), _wgslsmith_f_op_f32(var_0.c.d - _wgslsmith_f_op_f32(trunc(var_0.b.a)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(548f, -376f, var_0.c.d) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(853f, var_0.b.a, global4[_wgslsmith_index_u32(4294967295u, 30u)]))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(var_0.b.b, 30u)], -937f, var_0.b.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(9955u, 30u)], global4[_wgslsmith_index_u32(1u, 30u)], var_0.c.a) + vec3<f32>(global4[_wgslsmith_index_u32(global2.x, 30u)], global4[_wgslsmith_index_u32(var_0.b.b, 30u)], 1689f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~global2.x >> (7699u % 32u), min(~0u, ~4294967295u)) & reverseBits(0u), 3261f);
}

