struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: i32;

var<private> global2: vec3<i32> = vec3<i32>(10074i, -14280i, -13748i);

var<private> global3: Struct_1;

var<private> global4: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(4294967295u, 1u, 21576u), vec3<u32>(65145u, 272u, 76656u), vec3<u32>(1u, 4872u, 46449u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(25183u, 66793u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(72297u, 4294967295u, 54658u), vec3<u32>(4294967295u, 4294967295u, 39947u), vec3<u32>(40596u, 17718u, 1u), vec3<u32>(1u, 41609u, 1u), vec3<u32>(1u, 0u, 56738u), vec3<u32>(78721u, 1u, 0u), vec3<u32>(53193u, 0u, 11108u), vec3<u32>(1u, 6886u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(17963u, 742u, 1u), vec3<u32>(10756u, 7056u, 64985u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(13567u, 5019u, 12168u), vec3<u32>(1u, 47228u, 2397u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = vec3<f32>(-1219f, _wgslsmith_f_op_f32(-1f), -178f);
    var var_1 = arg_0.d;
    var var_2 = arg_0;
    var var_3 = arg_0;
    return (_wgslsmith_sub_vec4_i32(global3.c, vec4<i32>(1i, _wgslsmith_mult_i32(2147483647i, 0i), -var_2.c.x, firstLeadingBit(u_input.a.x))) >> (_wgslsmith_div_vec4_u32(u_input.c ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(40359u, var_3.d, arg_0.d, 72420u), vec4<u32>(1u, 91957u, var_3.d, 10441u), u_input.c), vec4<u32>(arg_0.d, var_2.d, global3.d, ~global3.b)) % vec4<u32>(32u))) & var_3.c;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<i32> {
    global3 = Struct_1(min(i32(-1i) * -global3.a, 2147483647i), _wgslsmith_div_u32(global3.b, 4294967295u), global3.c, ~_wgslsmith_sub_u32(global3.b, ~83703u));
    let var_0 = arg_1;
    return func_3(arg_1);
}

fn func_1() -> f32 {
    global3 = Struct_1(-u_input.a.x, ~countOneBits(global3.b), _wgslsmith_div_vec4_i32(func_2(9551i, Struct_1(~global2.x, 21341u, -u_input.a, abs(u_input.b.x)), u_input.a), _wgslsmith_mult_vec4_i32(global3.c, abs(u_input.a))), u_input.d.x);
    global1 = 2147483647i;
    let var_0 = Struct_1(~reverseBits(22161i), u_input.b.x, _wgslsmith_mod_vec4_i32(func_3(Struct_1(u_input.a.x, 1u, abs(vec4<i32>(-1i, u_input.a.x, global3.a, -42209i)), ~16668u)), u_input.a), ~countOneBits(~49676u));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(func_3(Struct_1(u_input.a.x, global3.d, select(vec4<i32>(global3.c.x, -19549i, 2147483647i, var_0.a), vec4<i32>(var_0.a, u_input.a.x, 1i, 2147483647i), false), u_input.d.x)).www, ~_wgslsmith_mod_vec3_i32(var_0.c.yxw, var_0.c.wwz) << (vec3<u32>(~8230u, _wgslsmith_add_u32(var_0.d, 0u), _wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, 32645u)) % vec3<u32>(32u))), global3.d, ~(vec4<i32>(func_2(global3.c.x, var_0, var_0.c).x, ~(-60778i), _wgslsmith_mult_i32(19949i, 18523i), reverseBits(global3.c.x)) >> (u_input.c % vec4<u32>(32u))), ~global3.b);
    global1 = 0i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(350f - -179f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(134f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-115f - -1000f) * _wgslsmith_f_op_f32(floor(1042f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(127f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, false)))));
    var var_1 = ~min(~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, ~vec4<u32>(0u, global3.b, u_input.b.x, 26860u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, global3.b, 50494u), vec4<u32>(2028u, global3.b, global3.b, global3.b), vec4<u32>(global3.b, 13939u, 4294967295u, 0u))));
    var_1 = u_input.d.x;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(~(~abs(u_input.b.x)), min(max(u_input.b.x, global3.b) << (~u_input.d.x % 32u), ~u_input.c.x)), 0u);
    let var_3 = vec2<bool>(true, !(true & any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    global1 = 2147483647i;
    let var_4 = global2.x;
    let var_5 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), -1019f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) + _wgslsmith_f_op_f32(max(var_0, var_0))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))));
    var_1 = max(4294967295u, ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.a.x), 1i);
}

