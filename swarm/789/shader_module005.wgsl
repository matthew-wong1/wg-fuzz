struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: array<bool, 24> = array<bool, 24>(true, false, true, true, true, false, true, false, true, true, false, true, false, true, false, true, true, true, false, true, false, false, false, false);

var<private> global4: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(85738u, 21269u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 19863u, 9020u), vec4<u32>(0u, 51546u, 69094u, 0u), vec4<u32>(4294967295u, 60286u, 69302u, 1u), vec4<u32>(1u, 53668u, 25406u, 0u), vec4<u32>(2584u, 4294967295u, 11213u, 1u), vec4<u32>(89718u, 87145u, 107332u, 78448u), vec4<u32>(89561u, 1u, 0u, 15921u), vec4<u32>(41254u, 1u, 63014u, 15292u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2065f - -1000f))), 939f);
    global1 = Struct_2(global1.a, ~global1.a.b.xw, !global3[_wgslsmith_index_u32(max(countOneBits(~u_input.a), _wgslsmith_add_u32(select(global1.a.e, global1.a.e, false), ~global1.a.e)), 24u)], 17277i);
    let var_1 = abs(1i);
    var var_2 = Struct_2(global1.a, countOneBits(~global1.a.b.xy) & vec2<i32>(-(var_1 & 28444i), 27424i), select((abs(global1.d) >= _wgslsmith_sub_i32(16702i, 4829i)) & true, (abs(var_1) ^ ~2147483647i) >= _wgslsmith_clamp_i32(-global1.b.x, global1.a.b.x ^ -16169i, 0i), false), 2147483647i);
    global0 = array<vec4<bool>, 8>();
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) + -189f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var var_0 = Struct_2(global1.a, _wgslsmith_div_vec2_i32(vec2<i32>(-arg_0.x, _wgslsmith_sub_i32(1i, arg_0.x)), _wgslsmith_div_vec2_i32(global1.a.b.zx, arg_0.yx)) << ((abs(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) ^ vec2<u32>(11185u, ~0u)) % vec2<u32>(32u)), any(select(vec2<bool>(true, true), vec2<bool>(global1.a.c.x || global3[_wgslsmith_index_u32(49224u, 24u)], true), false)), abs(_wgslsmith_dot_vec4_i32(-global1.a.b, global1.a.b)));
    global2 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1921f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-623f, -1190f) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(155f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 1f, var_1.x)));
    return ~vec2<u32>(u_input.a, ~(10683u & u_input.a)) >> (vec2<u32>(1u, (~39216u >> (global1.a.a % 32u)) ^ ~_wgslsmith_div_u32(global1.a.a, 4294967295u)) % vec2<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global1 = Struct_2(global1.a, ~vec2<i32>(global1.b.x, 1i), arg_2.c.x, global1.d);
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~_wgslsmith_div_u32(4294967295u, 4294967295u)), arg_2.a, _wgslsmith_div_u32(reverseBits(0u), reverseBits(_wgslsmith_div_u32(0u, global1.a.d))), max(0u, 1u)), global4[_wgslsmith_index_u32(~3308u, 9u)]);
    var var_1 = firstTrailingBit(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(17499u, 1u), global1.a.e)) < abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global1.a.e, 0u) >> (vec2<u32>(1u, 31264u) % vec2<u32>(32u)), abs(vec2<u32>(29776u, arg_2.e))), ~func_2(vec3<i32>(global1.b.x, arg_2.b.x, global1.b.x))));
    var var_2 = 4294967295u;
    var var_3 = global1.a;
    return Struct_2(global1.a, global1.a.b.yx, any(vec4<bool>(arg_2.c.x, false, all(vec3<bool>(arg_2.c.x, true, false)), !(arg_2.c.x || false))), max(global1.b.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, ~var_3.b.x), 1i, i32(-1i) * -58191i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -413f;
    var var_0 = global1.a;
    var var_1 = func_1(!(all(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], var_0.c.x, var_0.c.x)) & any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 24u)], true, var_0.c.x))), false, global1.a);
    let var_2 = reverseBits(vec4<i32>(var_1.b.x, var_1.b.x, _wgslsmith_add_i32(var_1.b.x, _wgslsmith_clamp_i32(var_0.b.x, -2147483647i, 14447i)), i32(-1i) * -1i) & -var_1.a.b);
    var_1 = func_1(select(!(var_1.d != var_2.x) & true, true, true), !(!var_1.c | !global3[_wgslsmith_index_u32(~55201u, 24u)]), func_1(!global1.c, select(all(var_0.c), !(false | global1.a.c.x), var_1.a.c.x || global1.a.c.x), Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(21170u, 1u), 1241u), select(func_1(true, false, var_1.a).a.b, ~var_1.a.b, global1.c), !var_1.a.c, global1.a.d, firstLeadingBit(var_1.a.d))).a);
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zw, _wgslsmith_div_vec3_f32(vec3<f32>(610f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -745f), -766f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1578f, 472f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-118f, -612f, -989f), vec3<f32>(1000f, -127f, 1836f))))))), ~(~var_1.a.a) >> (~4294967295u % 32u), var_0.e);
}

