struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: Struct_4;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, -756i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = select(vec3<bool>(false, !((false & global1.b) & global1.b), true), select(vec3<bool>(any(select(vec3<bool>(true, global1.c.b.a, global1.b), vec3<bool>(global1.d.b.a, global1.c.b.a, global1.d.b.a), global1.b)), all(vec4<bool>(global1.c.b.a, false, false, global1.d.b.a)) || (0u <= u_input.d), all(!vec4<bool>(global1.c.b.a, global1.b, global1.c.b.a, false))), vec3<bool>(any(!vec3<bool>(true, global1.d.b.a, true)), true, all(!vec2<bool>(global1.d.b.a, global1.c.b.a))), false), vec3<bool>(true, any(select(vec2<bool>(global1.b, true), vec2<bool>(global1.b, false), true)), true));
    global1 = Struct_4(vec2<f32>(global1.a.x, global1.a.x), false, global1.c, Struct_3(global1.d.a, global1.d.b));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.a.x, -359f, select(1u > global1.d.a.x, false, true)))));
    var var_2 = -select(-vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, global2.x, 42977i, u_input.b.x)), -399i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.b.c.a, -41524i), u_input.b.zx)), u_input.b.xyw, select(select(select(vec3<bool>(global1.d.b.a, false, global1.c.b.a), vec3<bool>(var_0.x, true, global1.d.b.a), vec3<bool>(false, global1.b, var_0.x)), select(vec3<bool>(false, true, false), vec3<bool>(global1.b, false, global1.b), vec3<bool>(false, false, global1.b)), !vec3<bool>(true, global1.b, global1.d.b.a)), !vec3<bool>(global1.b, true, var_0.x), select(select(vec3<bool>(true, global1.b, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), !vec3<bool>(var_0.x, false, var_0.x), all(var_0.zy))));
    global2 = vec2<i32>(-1i) * -var_2.zz;
    return true;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(12915u, 19u)]), true)), _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(u_input.d, 19u)]))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.a.x)), 421f, _wgslsmith_f_op_f32(-global1.a.x)))))));
    let var_1 = 0u;
    var var_2 = reverseBits(select(~reverseBits(~vec4<u32>(1u, 88002u, 6557u, global1.d.a.x)), ~vec4<u32>(reverseBits(4294967295u), u_input.d, _wgslsmith_div_u32(20533u, global1.c.a.x), 1u), any(vec2<bool>(func_3(), all(vec2<bool>(true, global1.c.b.a))))));
    let var_3 = global1.c.a;
    let var_4 = select(31819u, 30572u, false) << (var_3.x % 32u);
    return false;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.xz), global1.d.b.d, _wgslsmith_div_i32(46623i, global1.c.b.d)) & ~vec3<i32>(43779i | global2.x, 2147483647i, _wgslsmith_dot_vec3_i32(u_input.b.yyy, u_input.a)), firstTrailingBit(u_input.a));
    let var_1 = global1.d.b.a;
    let var_2 = vec4<bool>(any(!vec4<bool>(any(vec2<bool>(false, global1.c.b.a)), all(vec3<bool>(true, global1.b, true)), true, true)), global1.b, !func_2(), false);
    global0 = array<vec3<f32>, 19>();
    let var_3 = ~select(_wgslsmith_sub_u32(26945u << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.a.x, 1u), global1.c.a) % 32u), u_input.d), _wgslsmith_mult_u32(2150u, 110784u), func_2());
    return Struct_4(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-2171f + _wgslsmith_div_f32(440f, _wgslsmith_f_op_f32(abs(global1.a.x))))), global1.b, global1.d, Struct_3(~firstLeadingBit(select(global1.d.a, vec2<u32>(u_input.c, 4294967295u), vec2<bool>(false, global1.c.b.a))), global1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.a.x;
    global1 = func_1();
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(global1.a.x)), -509f))), false, func_1().d, Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.d, 1u)), func_1().d.a), Struct_2(global1.b, global1.c.b.d, global1.c.b.c, 1i)));
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-func_1().a), false, Struct_3(vec2<u32>(global1.c.a.x & ~36309u, global1.d.a.x ^ 0u), Struct_2(any(!vec2<bool>(false, global1.c.b.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.e, 18293i), u_input.a), Struct_1(0i), -26256i)), func_1().d);
    let var_1 = vec4<u32>(max((countOneBits(global1.d.a.x) << (1u % 32u)) ^ abs(29620u >> (u_input.c % 32u)), abs(abs(global1.d.a.x))), ~(~_wgslsmith_mod_u32(select(u_input.c, u_input.c, global1.b), ~0u)), u_input.d, 9278u);
    let x = u_input.a;
    s_output = StorageBuffer(1567f, _wgslsmith_div_u32(abs(13852u | var_1.x), ~1u), abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-26991i, -8712i, global1.d.b.b), ~vec3<i32>(u_input.e, global2.x, -10715i)), ~vec3<i32>(global2.x, -1i, u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, global1.a.x))))) - global1.a.x));
}

