struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<bool, 2>;

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(select(select(select(global1.a, vec4<u32>(8447u, 0u, global1.a.x, 1u), true), min(global1.a, vec4<u32>(global1.a.x, global1.a.x, 0u, global1.a.x)), vec4<bool>(global0.x, false, false, global0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, global1.a.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(4878u, 1u, 39460u, global1.a.x), global1.a)), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a | 30548u, 2u)], 20922u != u_input.a, arg_1.d.x && true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(530f)), -1063f);
    var var_2 = select(arg_1.b & arg_1.b, arg_1.b, !all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, global0.x, true), false)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(-517f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) * _wgslsmith_f_op_f32(floor(-1000f)))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, 892f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(-563f, arg_1.c), false))))), (4294967295u == (global1.a.x | global1.a.x)) == ((arg_1.d.x & true) | true))));
    return select(~(~76794u), countOneBits(min(global1.a.x, 1u)), false);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = 874f;
    let var_1 = _wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-1791f + _wgslsmith_f_op_f32(select(-1000f, 1852f, any(select(arg_3, arg_3, true))))));
    let var_2 = (arg_1.a.xy ^ countOneBits(global1.a.ww)) ^ vec2<u32>(69356u, _wgslsmith_clamp_u32(firstTrailingBit(arg_1.a.x), firstLeadingBit(global1.a.x) >> (u_input.a % 32u), arg_1.a.x << (44598u % 32u)));
    global4 = any(vec2<bool>(all(vec2<bool>(true, true)), true));
    let var_3 = Struct_2(select(~(arg_1.a | vec4<u32>(1u, 5166u, 14566u, var_2.x)), vec4<u32>(4294967295u, 28313u, reverseBits(0u), u_input.a), select(select(vec4<bool>(arg_3.x, arg_0, global3[_wgslsmith_index_u32(21126u, 2u)], global0.x), vec4<bool>(true, arg_3.x, global0.x, false), vec4<bool>(true, arg_0, true, global3[_wgslsmith_index_u32(var_2.x, 2u)])), !vec4<bool>(arg_2.d.x, false, arg_2.d.x, true), select(vec4<bool>(global3[_wgslsmith_index_u32(12956u, 2u)], arg_3.x, arg_0, false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(global1.a.x, 2u)], false), arg_2.d.x))) & select(vec4<u32>(u_input.a, u_input.a & var_2.x, ~var_2.x, 42702u), ~_wgslsmith_clamp_vec4_u32(arg_1.a, vec4<u32>(var_2.x, arg_1.a.x, 241u, arg_1.a.x), arg_1.a), all(vec2<bool>(global3[_wgslsmith_index_u32(var_2.x, 2u)], arg_2.d.x))));
    return vec2<bool>(!(true || ((true & global0.x) && all(global0.zz))), arg_2.d.x && any(vec2<bool>(global0.x, any(arg_3))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -12095i, -40715i) & select(vec4<i32>(-12795i, -12444i, 56097i, 0i), vec4<i32>(-2862i, 0i, -2147483647i, -45820i), false), max(vec4<i32>(1i, 2147483647i, 4617i, -34022i), vec4<i32>(2147483647i, 41320i, 1i, -2147483647i))), _wgslsmith_sub_i32(_wgslsmith_add_i32(0i << (global1.a.x % 32u), abs(-2147483647i)), -35642i)), vec4<i32>(-(~(-2147483647i)), 1i, _wgslsmith_add_i32(~(-1i), -countOneBits(52048i)), _wgslsmith_add_i32(4105i, _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(17426i, 4927i)))), 517f, select(vec3<bool>(select(global3[_wgslsmith_index_u32(~global1.a.x, 2u)], true, !global3[_wgslsmith_index_u32(u_input.a, 2u)]), false, true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 2u)], true || global0.x, true), all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], false, global0.x, global3[_wgslsmith_index_u32(global1.a.x, 2u)])) || true));
    var var_1 = func_4(var_0.c != _wgslsmith_f_op_f32(step(-584f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, 295f) * var_0.c))), Struct_2(vec4<u32>(abs(max(global1.a.x, u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(5614u, u_input.a), ~4294967295u, 57191u), func_3(min(var_0.b.x, var_0.b.x), Struct_1(var_0.b.x, var_0.b, var_0.c, vec3<bool>(false, true, false))), _wgslsmith_add_u32(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)))), Struct_1(~(~var_0.a) << (_wgslsmith_dot_vec2_u32(firstLeadingBit(global1.a.yx), vec2<u32>(u_input.a, 74475u)) % 32u), var_0.b, 645f, select(!vec3<bool>(true, var_0.d.x, true), !var_0.d, true)), var_0.d);
    global0 = !select(vec4<bool>(true, true, all(select(var_0.d, vec3<bool>(false, true, false), var_0.d)), var_1.x), select(select(vec4<bool>(true, var_1.x, var_1.x, true), select(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 2u)], var_1.x, global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 2u)], global0.x), true), select(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 2u)], global0.x, false), vec4<bool>(false, global3[_wgslsmith_index_u32(global1.a.x, 2u)], true, false), vec4<bool>(var_0.d.x, true, true, false))), select(vec4<bool>(var_1.x, true, var_0.d.x, var_0.d.x), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.d.x, true, true, var_1.x), var_0.d.x), var_1.x), vec4<bool>(true, global0.x || true, all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)])), !global0.x)), false);
    var var_2 = var_0.c;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c)));
    return _wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -464f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(func_2());
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    global2 = array<Struct_1, 25>();
    let var_0 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a << ((u_input.a << (4294967295u % 32u)) % 32u), 1u, global1.a.x, abs(u_input.a)), abs(vec4<u32>(49429u, ~global1.a.x, u_input.a, global1.a.x))));
    global4 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1.c, arg_1.c)))) <= -801f) || any(global0.xw);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -824f);
    let var_2 = ~(~vec3<u32>(45314u, var_0, _wgslsmith_add_u32(4294967295u & var_0, global1.a.x)));
    return Struct_3(Struct_2(global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(vec4<u32>(_wgslsmith_div_u32(countOneBits(1u), 1u), ~4294967295u, _wgslsmith_mod_u32(~global1.a.x, 1u), 90723u));
    global2 = array<Struct_1, 25>();
    var var_0 = func_5(countOneBits(abs(-6853i << (countOneBits(u_input.a) % 32u))), global2[_wgslsmith_index_u32(512u, 25u)], _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-794f + 382f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-160f, -1454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) + _wgslsmith_f_op_f32(-780f * -135f)), 664f), vec4<f32>(_wgslsmith_f_op_f32(-390f - -2576f), _wgslsmith_f_op_f32(floor(-484f)), -170f, _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_u32(global1.a.x, u_input.a, global1.a.x), Struct_1(0i, vec4<i32>(-1i, 24817i, 1i, 2147483647i), -226f, global0.yww)))))));
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) - 473f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-747f, -145f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-458f))), -300f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2515f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_f_op_f32(f32(-1f) * -386f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(230f, -424f, 2693f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(trunc(453f)))) - -824f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(var_0.a.a.x, global2[_wgslsmith_index_u32(var_0.a.a.x, 25u)])), 456f, var_0.a.a.x > 36388u)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1612f, -1485f)), -711f)))), countOneBits(vec3<i32>(-2147483647i, 1i, 0i)));
}

