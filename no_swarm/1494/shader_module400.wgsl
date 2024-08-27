struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: vec3<u32>;

var<private> global2: array<f32, 2>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> i32 {
    global3 = firstLeadingBit(global1.yy);
    global3 = min(abs(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(global4.a.yw, global1.yy), global4.a.wy) << (vec2<u32>(max(0u, global4.a.x), _wgslsmith_sub_u32(global4.a.x, 45148u)) % vec2<u32>(32u))), firstLeadingBit(min(abs(~vec2<u32>(16435u, 1u)), ~firstTrailingBit(vec2<u32>(global4.a.x, global1.x)))));
    global4 = Struct_1(abs(vec4<u32>(~(~1u), select(global4.a.x, 1u, arg_1.x), _wgslsmith_mod_u32(global4.a.x, ~25669u), ~firstTrailingBit(0u))));
    let var_0 = vec4<f32>(284f, arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -954f)), -131f)) * -187f));
    let var_1 = Struct_3(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2197f - -487f)));
    return 1i;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(countOneBits(~select(vec4<u32>(40118u, 4294967295u, 14024u, global4.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, global1.x, 4294967295u, 40901u), global4.a), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))));
    var var_1 = 1750f;
    let var_2 = Struct_2(var_0, arg_1, ~(max(34218i, arg_1) | -2147483647i) >> (~global3.x % 32u), arg_1);
    var var_3 = Struct_5(abs(var_0.a.x), (vec3<i32>(~(-4135i), i32(-1i) * -2147483647i, arg_1 >> (var_0.a.x % 32u)) & vec3<i32>(~u_input.a, arg_1, abs(-2147483647i))) | _wgslsmith_mult_vec3_i32(-vec3<i32>(var_2.c, 36898i, u_input.a), vec3<i32>(28782i, arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, 0i, 1i), vec4<i32>(13832i, var_2.d, 0i, var_2.d)))), firstTrailingBit(var_2.b));
    var_3 = Struct_5(global4.a.x, vec3<i32>(~func_3(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global4.a.x, 2u)], 219f), vec2<bool>(true, true)), -(-2147483647i | _wgslsmith_mult_i32(arg_1, -29189i)), 15683i), abs(u_input.a));
    return var_2.a;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = func_2(u_input.a, arg_0);
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u & global1.x, 4294967295u, ~(46885u & global4.a.x)), _wgslsmith_mod_vec3_u32(var_0.a.yzw, ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 36097u, 40717u), vec3<u32>(1u, global1.x, var_0.a.x))), _wgslsmith_div_vec3_u32(abs(vec3<u32>(global3.x, 1u, 1u)), vec3<u32>(~47022u, _wgslsmith_dot_vec4_u32(var_0.a, var_0.a), ~126213u))));
    var var_2 = ~_wgslsmith_sub_u32(max(var_0.a.x, 38282u), min(arg_1, _wgslsmith_mult_u32(1u, 80245u ^ global3.x)));
    let var_3 = false;
    var_1 = _wgslsmith_clamp_vec3_u32(min(~global4.a.yxz, ~vec3<u32>(17184u, 20024u, 90710u) ^ (_wgslsmith_mod_vec3_u32(vec3<u32>(151563u, global3.x, 6010u), var_0.a.wwy) << (var_0.a.yww % vec3<u32>(32u)))), global4.a.wxw, vec3<u32>(firstLeadingBit(~57193u) >> (func_2(u_input.b, -329i).a.x % 32u), ~0u, 87861u));
    return _wgslsmith_f_op_f32(f32(-1f) * -577f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global1.x, 2u)])))), -1805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(-40150i, 1u, -451f)))))), -573f);
    let var_1 = Struct_4(Struct_2(func_2(~5345i, -16427i), ~2147483647i, _wgslsmith_div_i32(abs(2147483647i ^ u_input.b), ~func_3(global2[_wgslsmith_index_u32(global3.x, 2u)], vec2<bool>(false, false))), -1i), Struct_2(func_2(-1i, u_input.a), u_input.b, 2147483647i, u_input.b), global2[_wgslsmith_index_u32(0u, 2u)], -2147483647i & u_input.b, Struct_3(_wgslsmith_add_u32(~24731u, ~global4.a.x), _wgslsmith_f_op_f32(round(var_0.x))));
    global4 = Struct_1(vec4<u32>(global1.x, var_1.a.a.a.x, ~select(~var_1.b.a.a.x, _wgslsmith_mod_u32(0u, global4.a.x), true), 29479u));
    let var_2 = Struct_3(_wgslsmith_mult_u32(firstTrailingBit(~33847u), var_1.b.a.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f) - _wgslsmith_f_op_f32(f32(-1f) * -501f)) * var_1.e.b))));
    global3 = ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(26234u, 4294967295u), ~global1.yz), ~_wgslsmith_mult_vec2_u32(vec2<u32>(592u, global3.x) ^ vec2<u32>(global4.a.x, global1.x), _wgslsmith_mod_vec2_u32(global1.zz, vec2<u32>(86179u, var_1.e.a))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))));
    let var_3 = _wgslsmith_mult_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global4.a.x, ~global4.a.x), ~var_1.b.a.a.yx)), global4.a.ww);
    global3 = select(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(global1.x, 14264u)), vec2<u32>(countOneBits(global4.a.x << (1u % 32u)), 4294967295u)), vec2<u32>(var_3.x, var_2.a), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    global2 = array<f32, 2>();
    var var_4 = Struct_5(87127u, _wgslsmith_mod_vec3_i32(countOneBits(countOneBits(vec3<i32>(-1i, u_input.b, 0i)) >> (abs(vec3<u32>(var_3.x, 82609u, 1u)) % vec3<u32>(32u))), max(select(firstLeadingBit(vec3<i32>(var_1.b.b, 0i, -16124i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, var_1.a.c), vec3<i32>(u_input.b, var_1.d, 19425i), vec3<i32>(var_1.b.c, var_1.b.d, var_1.a.b)), vec3<bool>(true, true, false)), vec3<i32>(~9489i, u_input.a, var_1.b.d))), 7850i);
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.wy, countOneBits(vec4<u32>(~4294967295u, ~global1.x, 91031u, ~0u)) | var_1.a.a.a);
}

