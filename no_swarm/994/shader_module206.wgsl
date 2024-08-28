struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(533f, 925f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-209f, -2081f, true)), -626f, true))), 389f, _wgslsmith_f_op_f32(670f * _wgslsmith_f_op_f32(269f - -341f)));
    var var_1 = var_0.zw;
    let var_2 = 63048u;
    global1 = array<vec3<i32>, 24>();
    let var_3 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~42931u, abs(var_2), ~max(1u, var_2)), vec3<u32>(min(u_input.b.x | 47876u, 20327u), ~(~var_2), ~var_2)), min(_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_2, var_2, 18028u, 0u), vec4<u32>(u_input.b.x, 4294967295u, var_2, 11209u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_2, 0u, 0u), vec4<u32>(1u, 1u, 1u, u_input.b.x)) % vec4<u32>(32u)), vec4<u32>(~43935u, ~4294967295u, u_input.b.x, _wgslsmith_div_u32(1u, 1u))), abs(~countOneBits(vec4<u32>(52924u, 38286u, var_2, var_2)))), var_0.ww);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-621f + _wgslsmith_f_op_f32(-337f + -2139f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, 1000f, false))))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))))));
}

fn func_2() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 31u)];
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(max(global1[_wgslsmith_index_u32(0u, 24u)], -vec3<i32>(-1i, 0i, 0i)), u_input.c.xww), ~(-34185i));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, 1484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -1000f), -374f));
    var var_4 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(~u_input.b.x, ~var_0.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(u_input.b.x), _wgslsmith_sub_u32(var_0.b.x, 30178u), 32134u, abs(var_0.b.x)), ~min(vec4<u32>(40241u, 1u, u_input.b.x, 4294967295u), vec4<u32>(91386u, 38039u, u_input.b.x, var_0.b.x))), min(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 53136u, 4294967295u), vec4<u32>(u_input.b.x, var_0.b.x, var_0.b.x, u_input.b.x)), firstLeadingBit(vec4<u32>(62523u, var_0.b.x, 12511u, var_0.b.x))), max(vec4<u32>(u_input.b.x, var_0.b.x, u_input.b.x, u_input.b.x), countOneBits(vec4<u32>(var_0.b.x, var_0.b.x, 32364u, var_0.b.x))))));
    return 772f;
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.a, 10u)];
    let var_1 = vec2<u32>(select(countOneBits(reverseBits(firstTrailingBit(arg_0.a))), 4294967295u, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), 24235u);
    var var_2 = all(!vec3<bool>(true, var_0.c.x <= arg_0.c.x, true)) && !(_wgslsmith_div_u32(~u_input.b.x, var_0.b.x) > ~var_0.b.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(max(-998f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(892f))))));
    var_2 = false || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(895f + _wgslsmith_f_op_f32(var_0.c.x - 384f)) - 953f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1434f, arg_0.c.x)))));
    return var_0.b.wwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(37334u, u_input.b.x), select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(30971u, u_input.b.x, u_input.b.x), vec3<u32>(11137u, 4294967295u, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 1618u, 41549u), vec3<u32>(3615u, u_input.b.x, u_input.b.x))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 1u, 103983u) & vec3<u32>(4294967295u, u_input.b.x, 0u))), ~(1u | u_input.b.x), false));
    let var_1 = global0[_wgslsmith_index_u32(1u, 10u)];
    let var_2 = select(8216u, 103859u << (_wgslsmith_dot_vec3_u32(var_1.b.zyx, func_1(Struct_2(9198u, var_1.b, var_1.c))) % 32u), false);
    let var_3 = global2[_wgslsmith_index_u32(u_input.b.x, 31u)];
    var var_4 = Struct_1(47492i, var_3.b, _wgslsmith_div_vec2_i32(vec2<i32>(-35722i, ~(var_3.a & var_3.c.x)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.e, u_input.c.x) << (vec2<u32>(1u, 45085u) % vec2<u32>(32u)), abs(vec2<i32>(2147483647i, var_3.a))), vec2<i32>(-1i) * -vec2<i32>(-1i, -2147483647i))), var_3.d, ~var_3.c.x & 0i);
    var var_5 = firstTrailingBit(~vec4<u32>(select(firstLeadingBit(4294967295u), min(var_4.b.x, u_input.b.x), true), ~_wgslsmith_sub_u32(92861u, 1u), var_2, 46913u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(731f)), 1966f, _wgslsmith_f_op_f32(f32(-1f) * -1120f)))), _wgslsmith_div_vec3_u32(~(var_5.zxy & var_5.yzx), var_1.b.yzx), min(var_3.e, countOneBits(~(-2147483647i))));
}

