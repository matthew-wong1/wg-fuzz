struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_2, 5>;

var<private> global3: vec2<i32>;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(-415f, -881f), 508f, false, vec2<f32>(-493f, -266f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    return abs((_wgslsmith_mult_i32(-6486i, global3.x) << (1u % 32u)) & _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 34231i, global3.x, -33243i), vec4<i32>(-20755i, global3.x, global3.x, -13081i)), ~12124i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global3.x, global3.x), vec3<i32>(-16090i, global3.x, global3.x))), ~firstTrailingBit(vec4<i32>(global3.x, 0i, 2147483647i, -30408i))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_2 {
    global1 = ~max(4189u, u_input.b);
    let var_0 = Struct_1(global4.d, global4.a.x, !all(select(vec4<bool>(false, arg_0, global4.c, false), select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, arg_0, global4.c, global4.c), vec4<bool>(arg_0, global4.c, global4.c, true)), select(global4.c, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.d * global4.a)))));
    let var_1 = var_0;
    var var_2 = vec2<bool>(true, (~max(-763i, 66229i) ^ global3.x) < max(select(func_3(), arg_2, true), 35934i));
    let var_3 = var_1.a.x;
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(1432f)), -1197f, _wgslsmith_f_op_f32(f32(-1f) * -1188f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, global4.b, 674f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-621f, var_0.b, -147f))), !(!vec3<bool>(true, var_2.x, false)))))), u_input.a, select(~vec2<i32>(0i, global3.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(arg_1, arg_2), vec2<i32>(arg_2, arg_1)), select(true, false, any(vec3<bool>(var_1.c, true, false)))) & vec2<i32>(-arg_2, abs(arg_2) << (abs(0u) % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_1.d, global4.d, vec2<bool>(false, false))))), _wgslsmith_f_op_f32(step(-1200f, var_0.d.x)), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], var_1.d.x) + _wgslsmith_f_op_vec2_f32(step(var_0.d, vec2<f32>(var_3, var_3))))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = select(!select(!(!vec4<bool>(true, false, false, arg_2.d.c)), !select(vec4<bool>(global4.c, false, arg_0.d.c, true), vec4<bool>(true, false, arg_3.d.c, arg_0.d.c), vec4<bool>(arg_0.d.c, arg_0.d.c, false, true)), !(!vec4<bool>(arg_0.d.c, arg_0.d.c, global4.c, arg_1))), select(vec4<bool>(true, any(select(vec3<bool>(true, true, arg_2.d.c), vec3<bool>(true, global4.c, true), global4.c)), false, false), !select(!vec4<bool>(true, arg_0.d.c, global4.c, arg_2.d.c), !vec4<bool>(arg_0.d.c, false, false, arg_3.d.c), select(vec4<bool>(arg_2.d.c, arg_2.d.c, false, arg_1), vec4<bool>(true, arg_1, arg_2.d.c, false), arg_2.d.c)), !arg_3.d.c), vec4<bool>(1536f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(select(global4.b, -569f, arg_1))), false, ~(~(-101476i)) < global3.x, arg_2.a.x >= global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.b.x | 0u), 8u)]));
    var_0 = select(!select(!(!vec4<bool>(false, var_0.x, false, false)), !(!vec4<bool>(true, false, false, arg_1)), select(vec4<bool>(global4.c, global4.c, var_0.x, false), !vec4<bool>(false, true, arg_3.d.c, arg_1), true)), vec4<bool>(select(true, _wgslsmith_sub_i32(-6016i, arg_2.c.x) >= global3.x, true), true, false, arg_0.d.c), select(select(vec4<bool>(true, arg_3.d.c, !var_0.x, all(vec4<bool>(arg_1, var_0.x, true, true))), select(select(vec4<bool>(true, global4.c, global4.c, arg_1), vec4<bool>(false, arg_2.d.c, false, global4.c), vec4<bool>(false, false, false, true)), vec4<bool>(false, arg_2.d.c, arg_1, true), any(vec2<bool>(true, false))), !vec4<bool>(true, arg_0.d.c, true, var_0.x)), select(vec4<bool>(global4.a.x > global4.b, any(vec4<bool>(arg_1, global4.c, arg_2.d.c, true)), all(vec4<bool>(false, arg_1, global4.c, false)), arg_3.d.c), select(vec4<bool>(arg_1, false, false, true), select(vec4<bool>(global4.c, false, true, arg_1), vec4<bool>(arg_1, true, var_0.x, true), vec4<bool>(arg_2.d.c, false, arg_0.d.c, true)), select(vec4<bool>(arg_0.d.c, true, arg_1, false), vec4<bool>(false, true, arg_0.d.c, true), var_0.x)), arg_2.d.c), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(arg_2.a));
    let var_2 = min(1u, arg_2.b.x);
    global0 = array<f32, 8>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1.x)), 126f)))));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 8>();
    global3 = vec2<i32>(-countOneBits(1i), global3.x);
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global3.x, 38125i), reverseBits(global3.x), global3.x)), vec2<i32>(global3.x, reverseBits(global3.x)));
    let var_1 = u_input.b;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global4.d.x), global0[_wgslsmith_index_u32(~20818u, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(true, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, global3.x, global3.x), vec4<i32>(1i, 29668i, global3.x, var_0.x)), -41966i), any(vec2<bool>(global4.c, false)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, global0[_wgslsmith_index_u32(var_1, 8u)], global4.b)), vec2<u32>(29035u, 47753u), ~vec2<i32>(41948i, var_0.x), func_2(true, 0i, -2147483647i).d), global2[_wgslsmith_index_u32(~0u, 5u)])) + _wgslsmith_f_op_f32(f32(-1f) * -123f)), -2660f);
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x + -900f), -718f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) - _wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_f32(158f + -1731f))), 1290f, true, _wgslsmith_f_op_vec2_f32(floor(var_2.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let var_0 = global2[_wgslsmith_index_u32(~firstLeadingBit(min(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(57028u, u_input.b), u_input.a), u_input.a.x), firstTrailingBit(u_input.b << (u_input.a.x % 32u)))), 5u)];
    var var_1 = var_0.d;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(782f)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 8u)] + -1177f)), _wgslsmith_f_op_f32(f32(-1f) * -525f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global4.d, _wgslsmith_f_op_vec2_f32(-var_1.a)))))), global0[_wgslsmith_index_u32(~u_input.b, 8u)], false, var_1.d);
    var_1 = var_0.d;
    let var_2 = func_1();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-func_1().a), 1418f, var_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.d.a * global4.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(u_input.a.x, ~27799u, _wgslsmith_div_u32(~4294967295u, u_input.a.x >> (u_input.b % 32u)), u_input.a.x)));
}

