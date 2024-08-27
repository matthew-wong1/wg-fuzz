struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 20>;

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<f32>, 7>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn func_3(arg_0: vec2<f32>) -> i32 {
    global3 = array<vec2<f32>, 7>();
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits((global1[_wgslsmith_index_u32(u_input.a.x, 20u)] << (33945u % 32u)) ^ 1u), reverseBits((global1[_wgslsmith_index_u32(u_input.d, 20u)] | 4294967295u) & min(global1[_wgslsmith_index_u32(u_input.d, 20u)], 87001u))), ~u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, 438f), vec3<f32>(arg_0.x, arg_0.x, 942f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(318f, arg_0.x, 632f), vec3<f32>(-455f, -1060f, 2161f))))))));
    var var_2 = !(!(global2.x > u_input.b.x) && (_wgslsmith_mult_i32(u_input.b.x, -u_input.b.x) > ~(u_input.b.x ^ u_input.b.x)));
    let var_3 = Struct_3(vec4<i32>(max(i32(-1i) * -global2.x, global2.x), -5939i, _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(global2.x, 1i)) | abs(7532i)), 0i), Struct_2(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, false, false)))), Struct_2(select(vec4<bool>(true, all(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)), arg_0.x < arg_0.x), vec4<bool>(arg_0.x >= arg_0.x, true, true, true), true)), -u_input.b.xw, ~(i32(-1i) * -global2.x));
    return global2.x;
}

fn func_2() -> vec3<f32> {
    var var_0 = -958f;
    let var_1 = Struct_3(_wgslsmith_add_vec4_i32(u_input.b ^ vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), ~global2.x, -u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), u_input.b), Struct_2(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), select(true, true, true) || true)), Struct_2(vec4<bool>(false, true, false, true)), global2.zz, func_3(vec2<f32>(_wgslsmith_f_op_f32(round(-1719f)), _wgslsmith_f_op_f32(floor(-1418f)))));
    let var_2 = abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.c.zzx, vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(17520u, 20u)], 4294967295u)), countOneBits(_wgslsmith_div_vec3_u32(u_input.c.xyw, u_input.c.xwy))), reverseBits(~abs(vec3<u32>(49968u, 90923u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)])))));
    global3 = array<vec2<f32>, 7>();
    global2 = vec3<i32>(global2.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global2.x, u_input.b.x, 0i)), u_input.b.zxw), var_1.d.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2590f + -875f), _wgslsmith_f_op_f32(f32(-1f) * -1202f), _wgslsmith_f_op_f32(abs(-1206f))) - vec3<f32>(866f, _wgslsmith_f_op_f32(sign(1216f)), _wgslsmith_f_op_f32(1000f * 560f)))));
}

fn func_1() -> i32 {
    var var_0 = true;
    var_0 = !any(!vec4<bool>(any(vec2<bool>(true, false)), true, true, any(vec4<bool>(true, true, false, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    var var_2 = u_input.a.x;
    var var_3 = Struct_4(Struct_1(vec4<u32>(1u, 54376u, _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(16596u, u_input.a.x, 1u, 83860u)), _wgslsmith_mod_u32(reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 20u)]), 1039u)), _wgslsmith_div_vec2_u32(firstLeadingBit(select(u_input.c.xy, u_input.c.xy, false)), firstTrailingBit(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)]))), u_input.c.ywx));
    return firstTrailingBit(-2147483647i);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_2 {
    global0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32((62562u >> ((0u & u_input.a.x) % 32u)) ^ (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(arg_0, 20u)], 0u) & ~arg_0), 18313u, 4294967295u), ~u_input.c.x);
    global1 = array<u32, 20>();
    global3 = array<vec2<f32>, 7>();
    let var_0 = vec3<i32>(~((global2.x | arg_3.x) | -arg_3.x) | u_input.b.x, -_wgslsmith_mult_i32(arg_3.x, -1i | (43159i ^ u_input.b.x)), ~countOneBits(_wgslsmith_div_i32(-u_input.b.x, ~u_input.b.x)));
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c.xzy, vec3<u32>(max(_wgslsmith_mod_u32(~15062u, arg_0), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 20u)], 20u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~u_input.a, max(u_input.a, u_input.a), vec2<bool>(true, true)), select(~vec2<u32>(35486u, arg_0), vec2<u32>(59985u, u_input.d), !arg_2)), 20u)], global1[_wgslsmith_index_u32(~(~arg_0), 20u)]));
    return Struct_2(vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(max(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 21507u), any(vec4<bool>(true, min(u_input.c.x, u_input.c.x) != ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], any(vec4<bool>(true, true, true, true)), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true), _wgslsmith_mod_vec2_i32(global2.xz, vec2<i32>(func_1(), _wgslsmith_sub_i32(-43150i ^ u_input.b.x, global2.x))));
    let var_1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(882f + 355f) + 1000f));
    var var_2 = !var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(126f, var_1, -1364f, -201f) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f + var_1)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 * 853f), var_1)), 206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))));
    let var_4 = vec4<bool>(var_0.a.x, true, var_0.a.x || var_0.a.x, !(!var_0.a.x));
    var var_5 = _wgslsmith_f_op_f32(ceil(var_1));
    let var_6 = vec4<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(-573f - var_1))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)))), _wgslsmith_f_op_f32(ceil(-365f))), _wgslsmith_f_op_f32(abs(-1717f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-308f + _wgslsmith_div_f32(_wgslsmith_div_f32(-1592f, var_3.x), var_3.x)))));
    let var_7 = vec4<u32>(~global1[_wgslsmith_index_u32(~(~1u), 20u)], u_input.d, _wgslsmith_sub_u32(~max(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 20u)], countOneBits(u_input.a.x)), 38952u), _wgslsmith_div_u32(~((0u << (global1[_wgslsmith_index_u32(u_input.c.x, 20u)] % 32u)) >> (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(30865u, u_input.a.x), 20u)] % 32u)), ~(~3577u)));
    let x = u_input.a;
    s_output = StorageBuffer(-15852i, _wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, var_6.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_6.x))))), var_7.zxw & ~u_input.c.wyz, global2.x);
}

