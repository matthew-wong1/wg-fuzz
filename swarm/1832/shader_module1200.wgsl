struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_5, 11>;

var<private> global2: vec4<i32> = vec4<i32>(14921i, 5475i, 1i, 1i);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<vec3<bool>, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    global1 = array<Struct_5, 11>();
    return Struct_3(global0.c.b.x, u_input.c);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(arg_3.a, 11u)];
    let var_1 = arg_0;
    global0 = Struct_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-347f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)) - _wgslsmith_f_op_f32(f32(-1f) * -832f)), -669f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.c.c.b), vec3<f32>(519f, -880f, -1113f)))), var_1.a.d.x)), 1u, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.b.x, -1026f), arg_1.b.zz) * _wgslsmith_f_op_vec2_f32(floor(global0.a.xy))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, global0.b), 37933u), var_0.c.c.b), vec4<bool>(select(true, !var_0.c.d.x, !global0.c.d.x), !all(vec2<bool>(true, var_0.c.d.x)), all(!global0.c.d.ywz), var_1.a.d.x), _wgslsmith_sub_vec2_i32(countOneBits(var_1.a.e), global2.xx) & select(~global2.wy, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -44258i), u_input.a), var_0.c.d.xy)));
    var var_2 = var_1.b;
    var var_3 = true;
    return Struct_3(-763f, vec3<u32>(14862u, max(select(0u, var_0.c.c.a, false), 29398u), ~(~_wgslsmith_add_u32(46640u, 36168u))));
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = ~(~(min(vec4<u32>(54923u, 0u, u_input.c.x, 38580u), ~vec4<u32>(1u, u_input.e, 4294967295u, u_input.d)) & ~min(vec4<u32>(0u, 18059u, arg_0.b.x, 4294967295u), vec4<u32>(1u, global0.b, arg_0.b.x, 73876u))));
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(select(u_input.b, u_input.a.x, false), _wgslsmith_add_i32(7967i, global2.x)), firstLeadingBit(firstLeadingBit(global2.x))), vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(2147483647i, -11173i)), 38985i)), firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(global0.c.e, vec2<i32>(global2.x, 74144i)), vec2<i32>(-2147483647i, global2.x)), vec2<i32>(1472i, -5843i))), global0.c.e);
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.e & arg_0.b.x, ~arg_0.b.x) | 13278u, max(1u, abs(_wgslsmith_add_u32(1u, arg_0.b.x)))), vec2<u32>(arg_0.b.x, 39656u));
    let var_3 = any(global0.c.d.xx);
    let var_4 = 1306f;
    return vec4<bool>(false || global0.c.d.x, global3.x, !(global2.x > 14331i) | (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.a.x, -609f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1173f)))), !(!var_3 & all(select(vec3<bool>(global0.c.d.x, global0.c.d.x, true), global4[_wgslsmith_index_u32(u_input.c.x, 9u)], false))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_5 {
    global0 = global1[_wgslsmith_index_u32(0u, 11u)];
    let var_0 = select(!func_4(func_3(Struct_4(global0.c, Struct_3(arg_1, vec3<u32>(139580u, 0u, u_input.d)), vec2<i32>(u_input.a.x, -17416i)), Struct_1(25226u, global0.a), func_2(vec4<i32>(0i, arg_0.x, 0i, u_input.b)), global0.c.c)), select(vec4<bool>(-279f != _wgslsmith_f_op_f32(-arg_1), any(global4[_wgslsmith_index_u32(16759u, 9u)]) & true, false, u_input.b <= -1i), select(select(select(vec4<bool>(global3.x, global3.x, true, global0.c.d.x), global0.c.d, false), vec4<bool>(true, true, false, global3.x), !global0.c.d.x), global0.c.d, global0.c.d), global0.c.d), global0.c.d);
    var var_1 = any(vec2<bool>(var_0.x, true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-345f, -354f)), 139f)) == arg_1;
    var var_3 = global1[_wgslsmith_index_u32(global0.c.c.a, 11u)];
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -113f, arg_1), vec3<f32>(var_3.c.a, global0.c.b.x, 439f), vec3<bool>(var_0.x, var_2, var_0.x)))))), global0.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.a.x))))), var_3.a.xz, Struct_1(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_3.c.c.b, global0.a) - _wgslsmith_f_op_vec3_f32(floor(var_3.a)))), select(vec4<bool>(all(global0.c.d.ywy), true, global0.c.e.x >= -8580i, !var_3.c.d.x), !func_4(Struct_3(var_3.c.a, vec3<u32>(4294967295u, 0u, global0.b))), vec4<bool>(false, false, false, !var_3.c.d.x)), ~(~u_input.a) >> (vec2<u32>(global0.c.c.a, _wgslsmith_mod_u32(var_3.b, 6375u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global2.xzx, global0.a.x);
    let var_0 = -8524i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(-676f)), vec3<u32>(47603u, 45720u, ~global0.b));
    global1 = array<Struct_5, 11>();
    global2 = ~_wgslsmith_add_vec4_i32(~(-(~vec4<i32>(global2.x, global0.c.e.x, global2.x, u_input.a.x))), ~firstLeadingBit(vec4<i32>(var_0, global0.c.e.x, 24154i, -2147483647i)));
    let var_2 = func_3(Struct_4(global0.c, Struct_3(var_1.a, ~(var_1.b | u_input.c)), _wgslsmith_mult_vec2_i32(firstLeadingBit(select(vec2<i32>(global0.c.e.x, 1i), global0.c.e, global0.c.d.zw)), u_input.a)), Struct_1(global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(164f, var_1.a, global0.a.x)), vec3<bool>(true, global0.c.d.x, true))))), func_2(_wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, u_input.a.x, global2.x, global2.x), vec4<i32>(29524i, -52740i, 22789i, u_input.a.x), global0.c.d.x), reverseBits(vec4<i32>(u_input.a.x, 0i, u_input.b, -1i))) & ~(~vec4<i32>(-2147483647i, u_input.b, u_input.b, global0.c.e.x))), func_1(min(vec3<i32>(-1i) * -vec3<i32>(18989i, -35812i, 2147483647i), -global2.wwx), _wgslsmith_f_op_f32(round(global0.c.a))).c.c);
    let var_3 = !(!any(!vec4<bool>(global3.x, global3.x, global0.c.d.x, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.yyw, max(vec3<i32>(_wgslsmith_dot_vec2_i32(global2.xy, vec2<i32>(36531i, global0.c.e.x)), -global2.x, countOneBits(1i)) >> (vec3<u32>(_wgslsmith_add_u32(var_1.b.x, 0u), reverseBits(var_1.b.x), var_2.b.x >> (8110u % 32u)) % vec3<u32>(32u)), global2.yzy));
}

