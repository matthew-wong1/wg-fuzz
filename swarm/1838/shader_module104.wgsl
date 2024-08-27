struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 26>;

var<private> global2: vec3<f32>;

var<private> global3: vec4<i32> = vec4<i32>(-51830i, 40657i, 1i, -14588i);

var<private> global4: array<f32, 13> = array<f32, 13>(146f, -1000f, -730f, 1821f, 1464f, -508f, 373f, 743f, 132f, -996f, -553f, 888f, -426f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<f32, 26>();
    var var_0 = vec4<i32>(-1i, -(~firstLeadingBit(global0.b.x ^ 0i)), arg_0, 33674i);
    let var_1 = _wgslsmith_f_op_vec3_f32(global0.a.yxx * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-190f - _wgslsmith_f_op_f32(floor(global0.a.x))), global1[_wgslsmith_index_u32(1u >> (_wgslsmith_mult_u32(90906u, arg_1.x) % 32u), 26u)]))));
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    return Struct_1(global0.a, u_input.c, _wgslsmith_sub_vec2_u32(vec2<u32>(32579u, global0.c.x), vec2<u32>(global0.c.x, global0.c.x | _wgslsmith_sub_u32(30005u, global0.c.x))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = countOneBits(arg_3.c) & ~reverseBits((arg_0.a.c ^ vec2<u32>(u_input.b.x, global0.c.x)) ^ ~arg_0.a.c);
    var var_1 = _wgslsmith_dot_vec2_i32(~global3.zw, ~(~vec2<i32>(-arg_3.b.x, select(1i, global0.b.x, true))));
    global1 = array<f32, 26>();
    global3 = _wgslsmith_div_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0.a.b.x, arg_3.b.x, 1i), select(vec4<i32>(29092i, -8508i, global0.b.x, u_input.a.x), vec4<i32>(-5602i, -2147483647i, arg_3.b.x, arg_0.a.b.x), true))), u_input.c);
    var_1 = 17424i;
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_0.a.c.x, 26u)])), _wgslsmith_f_op_f32(min(-206f, global4[_wgslsmith_index_u32(0u, 13u)])), true)), arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, global0.a.x, true)), func_2(global3.x, vec4<u32>(44922u, 11992u, u_input.b.x, global0.c.x), vec4<bool>(false, false, true, true)).a.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, global0.a.x), _wgslsmith_div_f32(-1000f, -427f)), -126f))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = func_2(u_input.c.x, select(firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 11803u, global0.c.x), vec4<u32>(1u, 0u, u_input.b.x, 4294967295u)), firstTrailingBit(vec4<u32>(26726u, u_input.b.x, 1u, 22041u)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(global0.c.x, 104817u, u_input.b.x, u_input.b.x), vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 1u), vec4<bool>(true, true, false, arg_1.x)), vec4<u32>(global0.c.x, global0.c.x, u_input.b.x, u_input.b.x) & vec4<u32>(11756u, global0.c.x, 22074u, 47874u)), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 16293u, 0u, 1u), vec4<u32>(1u, 0u, 51842u, 28379u) | vec4<u32>(global0.c.x, 4294967295u, 45778u, u_input.b.x))), vec4<bool>(false, false, true, false)), arg_1);
    var var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_3 = vec4<i32>(-1i, countOneBits(70115i), var_1.b.x, ~var_1.b.x) >> ((vec4<u32>(_wgslsmith_mult_u32(global0.c.x, u_input.b.x) << ((0u ^ u_input.b.x) % 32u), ~(var_1.c.x >> (78933u % 32u)), var_1.c.x >> (_wgslsmith_add_u32(u_input.b.x, global0.c.x) % 32u), 1u) >> (~(~(~vec4<u32>(u_input.b.x, global0.c.x, 18397u, 1u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(func_2(1i, select(vec4<u32>(u_input.b.x, 39265u, 0u, 1u), vec4<u32>(global0.c.x, var_1.c.x, 53075u, 1u), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1, arg_1.x)), arg_1)), _wgslsmith_f_op_f32(select(-652f, 347f, all(vec2<bool>(true, arg_1.x)))), 504f, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + var_1.a)) + vec4<f32>(_wgslsmith_div_f32(881f, -919f), global2.x, -390f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(17082u, var_1.c.x), 26u)])), _wgslsmith_div_vec4_i32(vec4<i32>(~(-38079i), 24131i, ~var_3.x, abs(var_1.b.x)), vec4<i32>(24313i, i32(-1i) * -2147483647i, ~1i, _wgslsmith_add_i32(-17311i, -24638i))), select(func_2(-55181i, max(vec4<u32>(3776u, u_input.b.x, 4294967295u, global0.c.x), vec4<u32>(var_1.c.x, 0u, 4294967295u, 8706u)), select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1.x)).c, u_input.b, vec2<bool>(arg_1.x, true)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global1[_wgslsmith_index_u32(~global0.c.x, 26u)], _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.c.x, 127877u), 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -844f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a), global0.a, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global2.x, arg_0.x, -1000f)))), global0.b, min(vec2<u32>(func_2(_wgslsmith_div_i32(-23597i, var_1.b.x), ~vec4<u32>(1u, 20268u, global0.c.x, global0.c.x), vec4<bool>(true, false, arg_1.x, arg_1.x)).c.x, _wgslsmith_mult_u32(firstLeadingBit(global0.c.x), ~39039u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3669u, var_1.c.x, 0u, 1u), vec4<u32>(var_1.c.x, global0.c.x, 4294967295u, u_input.b.x)), var_1.c.x >> (global0.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.a.zxw;
    global0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.yz + vec2<f32>(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.b.x, 13u)], 620f), _wgslsmith_f_op_f32(global0.a.x * global2.x)))), select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, false))), vec4<bool>(true, select(true, all(vec3<bool>(false, true, false)), all(vec2<bool>(true, false))), true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), true)), vec3<f32>(-1453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.a.x, -974f)))), -627f));
    var var_0 = func_2(countOneBits(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a.x, -10925i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -1i, -22708i, 1i), vec4<i32>(16883i, global0.b.x, u_input.c.x, global0.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 19115i), vec2<i32>(global0.b.x, global3.x))))), ~(~(~vec4<u32>(72528u, 1u, 4294967295u, 0u)) & (abs(vec4<u32>(u_input.b.x, 1u, 7789u, global0.c.x)) & vec4<u32>(20352u, 50048u, 4294967295u, u_input.b.x))), select(vec4<bool>(false, any(vec2<bool>(true, true)), true, !select(false, true, true)), vec4<bool>(any(vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), true, true), false));
    global4 = array<f32, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.a)));
    var var_2 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 37772u, 82534u, 42192u) & ~vec4<u32>(u_input.b.x, 6600u, 1u, 42661u), ~vec4<u32>(var_0.c.x, global0.c.x, var_0.c.x, var_0.c.x)), vec4<u32>(0u, ~63688u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 10614u), global0.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, global0.c.x) & vec2<u32>(var_0.c.x, var_0.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.c.x, 14563u), u_input.b)))), 26u)], var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec3_i32(global3.wyw & vec3<i32>(0i, -44596i, u_input.c.x), u_input.a) << ((_wgslsmith_mod_u32(global0.c.x, u_input.b.x) >> (~127197u % 32u)) % 32u)), _wgslsmith_f_op_f32(-var_1.x), global0.c.x, global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.wy * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1000f) * _wgslsmith_f_op_vec2_f32(-var_0.a.wx))) - var_1.zx));
}

