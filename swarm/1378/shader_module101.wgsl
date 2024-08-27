struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<u32>, 19>;

var<private> global2: u32 = 24186u;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: vec4<i32> = vec4<i32>(5081i, 1i, 37137i, 2147483647i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(all(!global0.yxw), Struct_1(global4.x << (_wgslsmith_add_u32(firstTrailingBit(0u), u_input.a & u_input.a) % 32u)));
    var var_1 = var_0.b;
    var var_2 = global4.x;
    let var_3 = _wgslsmith_add_i32(arg_0.a, _wgslsmith_mult_i32(global4.x, global4.x));
    let var_4 = Struct_2(true, arg_0);
    return select(select(vec4<bool>(var_4.a, true, any(select(global3.xy, global3.zy, false)), false), vec4<bool>(false, select(var_4.a, all(global0.yx), var_4.a), false, false), !any(global3.xz)), select(!select(!vec4<bool>(var_0.a, true, false, false), select(vec4<bool>(false, var_4.a, var_4.a, true), vec4<bool>(global0.x, false, true, global0.x), var_0.a), select(vec4<bool>(true, true, false, var_4.a), vec4<bool>(var_4.a, global0.x, true, true), vec4<bool>(var_4.a, false, global0.x, var_0.a))), select(vec4<bool>(false | var_4.a, true, global3.x, true), !(!vec4<bool>(true, var_4.a, true, false)), !(!vec4<bool>(global3.x, global0.x, var_0.a, true))), (-global4.x >= var_0.b.a) && !(var_4.a || true)), global3.x);
}

fn func_2() -> Struct_2 {
    global0 = func_3(Struct_1(-global4.x));
    let var_0 = all(!global0.yw);
    var var_1 = func_3(Struct_1(countOneBits(46878i))).x;
    global0 = !func_3(Struct_1(25765i));
    let var_2 = Struct_1(~min(global4.x, select(global4.x, -17821i, global0.x)) >> (_wgslsmith_clamp_u32(~(~69945u), reverseBits(abs(37789u)), countOneBits(_wgslsmith_mult_u32(u_input.a, 49180u))) % 32u));
    return Struct_2(all(vec2<bool>(var_2.a <= firstLeadingBit(var_2.a), !(global0.x | global0.x))), Struct_1(-1i));
}

fn func_1() -> bool {
    var var_0 = func_2();
    global1 = array<vec4<u32>, 19>();
    global4 = ~(-((min(vec4<i32>(var_0.b.a, var_0.b.a, -21867i, global4.x), vec4<i32>(-2147483647i, global4.x, -18092i, 2147483647i)) << (min(global1[_wgslsmith_index_u32(4294967295u, 19u)], vec4<u32>(u_input.a, u_input.a, 4294967295u, 40654u)) % vec4<u32>(32u))) ^ ((vec4<i32>(0i, -9258i, var_0.b.a, -1i) << (global1[_wgslsmith_index_u32(0u, 19u)] % vec4<u32>(32u))) << ((vec4<u32>(u_input.a, u_input.a, u_input.a, 5949u) ^ vec4<u32>(63976u, 35227u, 40408u, u_input.a)) % vec4<u32>(32u)))));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f))), _wgslsmith_f_op_f32(f32(-1f) * -850f), -254f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-254f, 1472f, 250f))))));
    return var_0.a & global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = !vec4<bool>(var_0, true, global0.x, global0.x);
    var var_1 = abs(vec3<u32>(u_input.a, 0u, 0u));
    global0 = select(vec4<bool>(global3.x, func_1() && var_0, func_2().a, all(!global0.zyy)), func_3(func_2().b), !(!select(!vec4<bool>(global3.x, global3.x, true, var_0), vec4<bool>(global3.x, var_0, false, false), !vec4<bool>(true, global0.x, var_0, true))));
    var var_2 = Struct_2(global0.x, Struct_1(_wgslsmith_mult_i32(func_2().b.a, abs(global4.x))));
    global3 = !global0.yxx;
    var var_3 = !(firstLeadingBit(_wgslsmith_dot_vec4_u32(countOneBits(global1[_wgslsmith_index_u32(93301u, 19u)]), global1[_wgslsmith_index_u32(u_input.a, 19u)] ^ global1[_wgslsmith_index_u32(var_1.x, 19u)])) != 34669u);
    global3 = vec3<bool>(select(false, false, true), any(!vec2<bool>(func_3(var_2.b).x, func_1())), false);
    let x = u_input.a;
    s_output = StorageBuffer(~global4.yx, _wgslsmith_mod_i32(countOneBits(_wgslsmith_mult_i32(~global4.x, abs(-58735i))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global4.zww, vec3<i32>(2147483647i, var_2.b.a, global4.x)), ~1i)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(32429u, u_input.a), 1u), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, var_1.x), var_1.x << (1u % 32u)), ~_wgslsmith_sub_u32(u_input.a, 0u)) & _wgslsmith_mod_vec3_u32(~vec3<u32>(34115u, var_1.x, 4294967295u), firstLeadingBit(~vec3<u32>(34772u, 4294967295u, 27963u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~30819u, _wgslsmith_sub_u32(58992u, 45511u), u_input.a), _wgslsmith_add_vec4_u32(~global1[_wgslsmith_index_u32(4294967295u, 19u)], ~global1[_wgslsmith_index_u32(66149u, 19u)])) | ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21768u, 0u), ~var_1.yy), 19u)], ~39579i);
}

