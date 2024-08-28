struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: array<vec3<f32>, 26>;

var<private> global2: array<f32, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec3<f32> {
    global0 = array<vec4<u32>, 16>();
    global2 = array<f32, 15>();
    var var_0 = arg_1.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, global2[_wgslsmith_index_u32(u_input.a, 15u)], 703f))))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], 1239f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 15u)])))), vec3<f32>(1307f, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)])))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.b.x << (63654u % 32u), -vec2<i32>(arg_1.x, -1i))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1093f, 1395f, -501f), global1[_wgslsmith_index_u32(1u, 26u)])) + vec3<f32>(global2[_wgslsmith_index_u32(27224u, 15u)], -360f, -741f))))), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(5866u, 15u)], -371f, !all(!vec2<bool>(false, arg_0)))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~4910i, -1i), ~_wgslsmith_add_i32(abs(min(2147483647i, 7724i)), 28523i));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1677f, global2[_wgslsmith_index_u32(19349u, 15u)])), _wgslsmith_f_op_f32(floor(var_0.b)))) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 15u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(41014u, 15u)] * var_0.a.x) * _wgslsmith_f_op_f32(-1289f - var_0.b))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(15330i, u_input.b.x, arg_1.x), vec3<i32>(-1i, u_input.c.x, 2147483647i)), arg_1.yyz), firstTrailingBit(arg_1.zzx)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, 1i), u_input.b.xx)))).x);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.a, var_0.a)), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], -122f, 970f))), global2[_wgslsmith_index_u32(u_input.a, 15u)]));
    return select(vec3<bool>(_wgslsmith_f_op_f32(-500f * var_0.a.x) > 361f, arg_0, true), select(select(vec3<bool>(arg_0, !arg_0, u_input.b.x <= arg_1.x), vec3<bool>(!arg_0, arg_0, arg_0), all(vec4<bool>(true, true, true, true))), vec3<bool>(arg_0, true, var_0.b <= _wgslsmith_f_op_f32(-1337f * var_3.b.a.x)), vec3<bool>(arg_0, all(vec2<bool>(arg_0, arg_0)) & all(vec3<bool>(true, arg_0, true)), false)), select(!select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(false, arg_0, true), !arg_0), select(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, false), arg_0), select(!vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, true), vec3<bool>(false, arg_0, false)), vec3<bool>(true, false, true)), true), !arg_0));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global2 = array<f32, 15>();
    global2 = array<f32, 15>();
    global1 = array<vec3<f32>, 26>();
    var var_0 = firstLeadingBit(1i);
    var var_1 = all(!select(!func_2(true, vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec3<bool>(u_input.c.x != u_input.c.x, all(vec4<bool>(true, false, false, true)), false), true));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~u_input.a), 15u)])), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(1u >> (arg_0 % 32u), 26u)])))), 113f));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = false;
    let var_1 = 77606u;
    let var_2 = vec4<u32>(select(~1u, 20629u, any(vec3<bool>(true, false, func_2(true, u_input.c).x))), 29108u, ~var_1, ~var_1);
    global1 = array<vec3<f32>, 26>();
    global2 = array<f32, 15>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 15>();
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, select(~min(99621u, 1u), func_4(true, func_1(4294967295u), func_1(4294967295u).b, _wgslsmith_f_op_f32(-713f + global2[_wgslsmith_index_u32(u_input.a, 15u)])), true)), 16u)];
    var var_1 = 1i;
    global1 = array<vec3<f32>, 26>();
    let var_2 = vec4<i32>(-u_input.c.x, 18588i, min(_wgslsmith_sub_i32(1i, ~u_input.c.x << (_wgslsmith_mod_u32(var_0.x, var_0.x) % 32u)), _wgslsmith_div_i32(abs(-35898i), _wgslsmith_dot_vec3_i32(u_input.b.zwy >> (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u)), u_input.c.xwx))), _wgslsmith_sub_i32(u_input.c.x, i32(-1i) * -1i) | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.c.x)), _wgslsmith_mod_i32(u_input.c.x, 48711i) & ~u_input.c.x));
    global1 = array<vec3<f32>, 26>();
    var_1 = firstLeadingBit(0i << (_wgslsmith_mult_u32(~var_0.x, abs(u_input.a & u_input.a)) % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(-1i, var_2.zx)).zz;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(2147483647i, vec2<i32>(2147483647i, -29396i))).x, global2[_wgslsmith_index_u32(~var_0.x, 15u)], _wgslsmith_f_op_f32(f32(-1f) * -1255f)))), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(51251u, 15u)], 1014f, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yz, _wgslsmith_mod_u32(~(~(var_0.x & u_input.a)), ~u_input.a & (_wgslsmith_sub_u32(var_0.x, 54524u) ^ u_input.a)), _wgslsmith_dot_vec2_i32(var_2.xx, -(select(var_2.yx, vec2<i32>(var_2.x, -22175i), vec2<bool>(false, false)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), var_0.zz, vec2<u32>(10416u, u_input.a)) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, firstTrailingBit(~u_input.c.x)), vec2<i32>(_wgslsmith_mod_i32(var_2.x, 18700i), -21302i)), u_input.c.zzx);
}

