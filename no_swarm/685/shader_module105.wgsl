struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<f32, 4>;

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = vec2<bool>(all(select(select(!arg_0, global1.d, true), select(select(vec3<bool>(false, global1.d.x, true), arg_0, arg_0.x), vec3<bool>(true, arg_0.x, false), select(vec3<bool>(global2.d.x, true, global1.d.x), vec3<bool>(global2.d.x, false, true), global2.d)), false)), global2.d.x);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(global1.a, vec4<u32>(42296u, abs(global2.a.x), min(1u, global2.a.x), select(0u, 101624u, true))), vec4<u32>(u_input.c, abs(global2.a.x & 35655u), ~(~4294967295u), 6707u)), _wgslsmith_f_op_f32(f32(-1f) * -1350f), global1.c, !(!(!(!arg_0))), vec4<i32>((-u_input.a.x & ~global2.c.x) >> (1u % 32u), ~(~(~42428i)), global1.e.x, 2147483647i));
    global3 = array<f32, 4>();
    let var_2 = var_1;
    let var_3 = select(var_1.d, var_1.d, select(select(!vec3<bool>(true, global1.d.x, var_1.d.x), !vec3<bool>(var_0.x, true, var_1.d.x), select(!global1.d, vec3<bool>(true, true, true), global2.d)), select(vec3<bool>(false, var_0.x, all(vec4<bool>(global1.d.x, global1.d.x, false, var_2.d.x))), var_1.d, -1i >= _wgslsmith_div_i32(global1.c.x, -8950i)), global2.e.x < ((58731i | var_2.e.x) << (global2.a.x % 32u))));
    return var_1.e.x;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<u32>(~(~1u), 16277u, 1u) >> ((global2.a.xyy & ~vec3<u32>(1u, _wgslsmith_mod_u32(global1.a.x, global2.a.x), 0u)) % vec3<u32>(32u));
    global0 = array<u32, 31>();
    global1 = Struct_1(abs(countOneBits(~abs(vec4<u32>(global2.a.x, u_input.c, var_0.x, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(655f - 1243f)) + global3[_wgslsmith_index_u32(~0u, 4u)])), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(global2.c.x, global2.e.x, global1.e.x, global2.c.x)), global1.c), ~vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 0i), func_3(global1.d), countOneBits(0i), global2.c.x & global1.c.x)), select(select(global1.d, global1.d, !(true | global1.d.x)), global2.d, _wgslsmith_add_i32(-1i, global1.c.x) >= ~_wgslsmith_clamp_i32(global1.c.x, u_input.d.x, u_input.d.x)), -countOneBits(firstTrailingBit(global2.c)));
    let var_1 = _wgslsmith_div_u32(abs(~(var_0.x << (global2.a.x % 32u)) & 1u), u_input.c);
    global1 = Struct_1(~(vec4<u32>(65859u, 4294967295u, global0[_wgslsmith_index_u32(2992u, 31u)], 56699u) ^ vec4<u32>(32044u, 0u, var_0.x, var_0.x)) ^ global2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1568f) - 299f))), vec4<i32>(~((global1.c.x ^ 15473i) ^ abs(-2147483647i)), global2.e.x, _wgslsmith_mod_i32(-(~(-11313i)), global1.c.x), _wgslsmith_mult_i32(global1.e.x | global1.e.x, global1.c.x)), vec3<bool>(false, global1.d.x, global2.d.x), abs(-global1.e));
    return Struct_1(vec4<u32>(1u, var_0.x, ~0u, min(global0[_wgslsmith_index_u32(global1.a.x, 31u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, var_0.x), global2.a))), global2.b, vec4<i32>(global2.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, -1i), vec3<i32>(global2.c.x, global2.c.x, 2147483647i)), firstLeadingBit(~u_input.b), ~(global1.e.x ^ -37075i)) << (max(_wgslsmith_mod_vec4_u32(global2.a, vec4<u32>(77931u, var_0.x, 29617u, global1.a.x)) & vec4<u32>(global1.a.x, 37693u, var_0.x, var_1), global2.a) % vec4<u32>(32u)), global2.d, global1.e);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    let var_0 = func_2();
    global1 = Struct_1(vec4<u32>(_wgslsmith_div_u32(1u, select(_wgslsmith_sub_u32(u_input.c, 1u), global0[_wgslsmith_index_u32(1u, 31u)] << (u_input.c % 32u), global2.d.x)), 15341u, 18894u, 0u), arg_2.b, func_2().c, !(!global1.d), var_0.e);
    var var_1 = ~(-u_input.a.xx);
    let var_2 = global1.a.xzz;
    var_1 = func_2().c.yy;
    return abs(global2.a.zyz);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = u_input.d.xz;
    let var_1 = vec4<u32>(2493u ^ global2.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(21899u, 1u), global2.a.x, 1u), func_4(vec4<f32>(global2.b, global1.b, global2.b, -721f), max(global1.e.wz, global2.c.yy), func_2(), u_input.d.x)), ~76580u, _wgslsmith_add_u32(9876u, 0u));
    var var_2 = !select(func_2().d, !vec3<bool>(func_2().d.x, true, global1.d.x), !(!(!global1.d.x)));
    global2 = Struct_1(reverseBits(var_1 & reverseBits(abs(global2.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 4u)] + global2.b) + 300f), -1439f)))), vec4<i32>(-11412i, -34946i, _wgslsmith_dot_vec4_i32(func_2().e, global2.c), min(countOneBits(-18495i), firstTrailingBit(~global2.e.x))), func_2().d, min(func_2().e, -(~vec4<i32>(2147483647i, global2.c.x, -2147483647i, global2.c.x))));
    global1 = Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(~40311u, _wgslsmith_div_u32(var_1.x, 0u), arg_0.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.x, 31u)], 31u)]), vec4<u32>(_wgslsmith_sub_u32(max(13845u, var_1.x), global2.a.x), var_1.x, global1.a.x, u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b, 1113f))) * -475f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.a.x, 4u)]))), -783f)))), global2.e, vec3<bool>(any(!global2.d), false, all(!vec2<bool>(var_2.x, true))), func_2().e);
    return Struct_1(~vec4<u32>(arg_0.x, select(~global1.a.x, ~u_input.c, true), func_2().a.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.x, u_input.c), 1u)), -605f, reverseBits(abs(vec4<i32>(14931i, global2.c.x, global1.e.x, -66365i))) >> (select(func_2().a, _wgslsmith_div_vec4_u32(var_1, global2.a), vec4<bool>(true, any(global1.d), any(vec4<bool>(global2.d.x, global2.d.x, false, var_2.x)), all(vec4<bool>(var_2.x, var_2.x, global2.d.x, false)))) % vec4<u32>(32u)), vec3<bool>(any(!vec3<bool>(true, true, global1.d.x)), ~(~var_0.x) != 2147483647i, true), vec4<i32>(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.x, _wgslsmith_div_i32(14997i, -14079i), u_input.a.x), ~abs(u_input.d)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-global2.e, -vec4<i32>(0i, var_0.x, -1i, 1i), global1.e | vec4<i32>(u_input.d.x, 2147483647i, global1.e.x, 1i)), global1.c), -(-25400i << (countOneBits(arg_0.x) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~global1.a.wz);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - _wgslsmith_f_op_f32(-global1.b));
    global3 = array<f32, 4>();
    let var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(global2.a.x, ~u_input.c) ^ vec2<u32>(global2.a.x, _wgslsmith_mult_u32(0u | u_input.c, ~4294967295u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 31u)], global1.a.x), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3[_wgslsmith_index_u32(744u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], var_0)), vec2<i32>(global1.e.x, u_input.b), func_1(vec2<u32>(64877u, 0u)), ~(-598i)).xz), ~vec2<u32>(~1u, u_input.c)));
    global4 = ~1u;
    let var_2 = Struct_3(vec3<f32>(702f, -515f, func_2().b), Struct_2(abs(global2.e.x), u_input.d.zz, !(!global2.d.x), _wgslsmith_div_u32(func_2().a.x << (_wgslsmith_mod_u32(u_input.c, 1u) % 32u), func_2().a.x)), Struct_2(~1i, -global2.c.wy, true, _wgslsmith_mult_u32(countOneBits(2593u), ~(~global0[_wgslsmith_index_u32(global2.a.x, 31u)]))), u_input.c, Struct_2(_wgslsmith_clamp_i32(~(-45990i), global1.c.x, reverseBits(-1i)), ~u_input.d.yy, any(vec3<bool>(1000f >= global2.b, true, !global1.d.x)), ~4294967295u));
    global4 = _wgslsmith_add_u32(_wgslsmith_div_u32(abs(global1.a.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, ~17946u), 31u)], 31u)]) | ~0u, max(_wgslsmith_mod_u32(var_1.x, max(0u, 21695u)) & var_2.d, var_1.x >> (1u % 32u)));
    var var_3 = -2090f;
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, func_2().b, ~global1.c.x & var_2.e.a, firstLeadingBit(global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(646f, global3[_wgslsmith_index_u32(global2.a.x, 4u)])) + 518f))));
}

