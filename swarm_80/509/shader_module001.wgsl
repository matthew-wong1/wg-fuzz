struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(44167u, 34525u, vec3<u32>(11844u, 1u, 29261u));

var<private> global1: array<f32, 25>;

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f - -640f)) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 25u)] * _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 25u)])))), -670f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.b.x, 25u)])), global1[_wgslsmith_index_u32(~arg_0, 25u)]) - _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(26157u, 25u)], -1000f)), 1706f)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), -171f, -1077f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, countOneBits(0u)), ~min(u_input.a, vec2<u32>(arg_0, arg_0))) & _wgslsmith_mod_u32(1u, max(firstLeadingBit(0u), global0.c.x)), 25u)]);
    global0 = Struct_1(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(select(u_input.b, ~vec4<u32>(4294967295u, u_input.a.x, 1u, arg_0), vec4<bool>(false, true, true, true)), u_input.b)), 1u, firstTrailingBit(firstTrailingBit(~vec3<u32>(1u, arg_0, arg_0))));
    global2 = ~22309u;
    var var_1 = Struct_1(abs(9467u), 14832u, ~vec3<u32>(77671u, _wgslsmith_dot_vec3_u32(global0.c, global0.c) >> (global0.b % 32u), arg_0));
    return !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))) || (u_input.c < -17689i), false, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(48545u, ~u_input.b.x, vec3<u32>(u_input.b.x, global0.a, ~1441u));
    let var_1 = select(countOneBits(_wgslsmith_div_vec3_u32((var_0.c << (var_0.c % vec3<u32>(32u))) & vec3<u32>(0u, u_input.a.x, global0.a), var_0.c | var_0.c)), ~u_input.b.zxz, !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), func_3(global0.c.x), true));
    var var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_sub_u32(0u, (select(u_input.a.x, 0u, true) >> (_wgslsmith_add_u32(var_0.a, 0u) % 32u)) & var_2.b), _wgslsmith_mult_u32(50343u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b & vec4<u32>(0u, 4294967295u, 33022u, 1u))), vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.b.x, var_1.x), ~_wgslsmith_mod_u32(4294967295u, 60055u)), (select(var_0.a, var_0.a, false) ^ ~var_2.c.x) >> (var_1.x % 32u), 0u));
    var var_4 = max(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-12884i, u_input.c, -43714i), vec3<i32>(37625i, 39252i, 16438i), vec3<i32>(19107i, u_input.c, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 1i, 1i), vec3<i32>(u_input.c, 5569i, u_input.c))), reverseBits(-vec3<i32>(2147483647i, u_input.c, u_input.c))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -60293i, u_input.c) << (~(~global0.c) % vec3<u32>(32u)), reverseBits(countOneBits(max(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(u_input.c, u_input.c, -1i))))));
    return u_input.a.x;
}

fn func_1() -> vec2<bool> {
    global2 = func_2();
    global1 = array<f32, 25>();
    let var_0 = ~func_2();
    let var_1 = vec4<bool>(func_3(_wgslsmith_add_u32(~(~63855u), ~global0.c.x)).x, any(select(func_3(59444u), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true))), !(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), true);
    var var_2 = !any(vec2<bool>(!var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1037f) >= _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 25u)], -304f)));
    return vec2<bool>(var_1.x, !all(!(!vec4<bool>(true, var_1.x, var_1.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = min(~(~23369u), global0.c.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.a, ~1u, firstTrailingBit(~43708u), select(reverseBits(0u), ~4294967295u, 503f == global1[_wgslsmith_index_u32(global0.c.x, 25u)])), vec4<u32>(global0.a, abs(42902u), u_input.a.x, firstTrailingBit(func_2())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], 752f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(21335u, 25u)], global1[_wgslsmith_index_u32(5937u, 25u)]), vec3<bool>(var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(156f))) + global1[_wgslsmith_index_u32(1u, 25u)]))), -149f, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global0.c.x, 1u, u_input.b.x) << (u_input.b % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(0u, u_input.b.x, 1u, 0u))) << (~global0.c.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(446f, 714f, global1[_wgslsmith_index_u32(117934u, 25u)], -514f) - vec4<f32>(649f, -1921f, global1[_wgslsmith_index_u32(global0.b, 25u)], -319f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(global0.c.x, 25u)], 134f, 321f, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 1043f, 1300f, global1[_wgslsmith_index_u32(global0.c.x, 25u)]))), vec4<f32>(_wgslsmith_f_op_f32(max(1686f, global1[_wgslsmith_index_u32(4294967295u, 25u)])), -1193f, 157f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 25u)]))))));
}

