struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<vec4<bool>, 24>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1952f, arg_0, -732f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 638f, -1122f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, arg_0))), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), false))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 193f, 1000f)))))), Struct_1(select(~firstLeadingBit(vec2<i32>(-2147483647i, u_input.c)), ~abs(vec2<i32>(u_input.c, 0i)), any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 27u)], true, true, global0[_wgslsmith_index_u32(26036u, 27u)]))), vec4<i32>(_wgslsmith_mod_i32(abs(u_input.c), min(u_input.c, 1i)), -(u_input.c | u_input.c), 1838i, -21275i), 4294967295u, arg_0, (i32(-1i) * -37728i) <= _wgslsmith_clamp_i32(~u_input.c, u_input.c, u_input.c)), _wgslsmith_add_vec4_u32(select(u_input.e, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.e.x), u_input.a.xx), 1u, u_input.e.x, min(0u, 1u)), global2[_wgslsmith_index_u32(u_input.a.x | 1u, 24u)]), _wgslsmith_add_vec4_u32(abs(countOneBits(vec4<u32>(26538u, u_input.b, u_input.a.x, 21025u))), abs(u_input.e))), ~(~_wgslsmith_add_u32(67959u, u_input.b)) & ((u_input.b ^ u_input.b) << (695u % 32u)));
    global0 = array<bool, 27>();
    var var_1 = Struct_1(min(vec2<i32>(50235i, ~1i >> (var_0.c.x % 32u)), abs(firstTrailingBit(firstLeadingBit(var_0.b.b.yz)))), vec4<i32>(12476i, _wgslsmith_dot_vec3_i32(select(-var_0.b.b.wxz, vec3<i32>(u_input.c, -4241i, -3799i), any(vec3<bool>(var_0.b.e, false, false))), vec3<i32>(_wgslsmith_div_i32(-22984i, var_0.b.a.x), var_0.b.a.x, -var_0.b.a.x)), ~select(1i, _wgslsmith_clamp_i32(0i, var_0.b.a.x, var_0.b.b.x), select(global0[_wgslsmith_index_u32(134038u, 27u)], var_0.b.e, false)), 38745i), var_0.c.x, _wgslsmith_f_op_f32(ceil(arg_0)), all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, var_0.b.e), true), vec3<bool>(true, true, true), !var_0.b.e), vec3<bool>(true, var_0.b.e, true), var_0.a.x == _wgslsmith_f_op_f32(562f * var_0.a.x))));
    var var_2 = ~1i;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-212f, _wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(-var_0.a.x)), true))));
    return var_0.b.a;
}

fn func_2() -> f32 {
    let var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 3854i, ~u_input.c), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.c, u_input.c, 39559i), vec3<i32>(-12895i, u_input.c, u_input.c), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], false)) | vec3<i32>(-9950i, -79166i, u_input.c), min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(u_input.c, u_input.c, -26426i)), reverseBits(vec3<i32>(1i, u_input.c, u_input.c))), vec3<i32>(-1i, -2147483647i >> (u_input.e.x % 32u), u_input.c)));
    let var_1 = !select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(25582u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(22968u, 20051u, u_input.b))), 27u)], !(!global0[_wgslsmith_index_u32(u_input.d.x, 27u)]), true, false), !global2[_wgslsmith_index_u32(u_input.b, 24u)], all(!global2[_wgslsmith_index_u32(u_input.d.x, 24u)]));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x << (6299u % 32u), 1u), 12u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-569f)) * _wgslsmith_f_op_f32(min(var_2.a.d, 612f)));
    var var_4 = Struct_1(_wgslsmith_mod_vec2_i32(-_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(16921i, u_input.c), var_2.a.b.zy), func_3(1001f), _wgslsmith_sub_vec2_i32(var_2.a.a, var_2.a.b.yx)), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.c, u_input.c), vec2<i32>(-43506i, 10577i)) >> (u_input.e.yx % vec2<u32>(32u))), var_2.a.b, _wgslsmith_clamp_u32(~var_2.a.c, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d.x >> (var_2.a.c % 32u), u_input.e.x), ~u_input.e.x), _wgslsmith_dot_vec4_u32(~(~u_input.e), u_input.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.d)))), true);
    return -522f;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<bool, 27>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -842f) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(arg_0.d + arg_0.d)))));
    global2 = array<vec4<bool>, 24>();
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = func_3(2029f).x;
    let var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 27u)];
    var_2 = true;
    global0 = array<bool, 27>();
    return global2[_wgslsmith_index_u32(4294967295u, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 24>();
    var var_0 = vec3<bool>(all(func_4(i32(-1i) * -2147483647i, u_input.d, Struct_3(func_1(Struct_1(vec2<i32>(-14003i, u_input.c), vec4<i32>(-21471i, u_input.c, u_input.c, 2147483647i), 72111u, -511f, global0[_wgslsmith_index_u32(1u, 27u)]), 200f, Struct_1(vec2<i32>(u_input.c, 1i), vec4<i32>(-2147483647i, u_input.c, -5054i, -22735i), 4019u, 579f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(func_2()))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-529f)))), -1148f)));
    var_0 = select(func_4(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(18036i, -1i), i32(-1i) * -3133i), ~_wgslsmith_add_i32(u_input.c, 2147483647i)), ~abs(u_input.a.yy), global1[_wgslsmith_index_u32(~((u_input.a.x | 64115u) << (u_input.a.x % 32u)), 12u)]).yzy, !(!func_4(1i, vec2<u32>(u_input.d.x, u_input.e.x), Struct_3(Struct_1(vec2<i32>(-1i, 13320i), vec4<i32>(u_input.c, u_input.c, 31338i, 49204i), 8374u, -987f, true))).ywy), !vec3<bool>(func_4(firstTrailingBit(-44252i), select(vec2<u32>(u_input.b, 24211u), u_input.d, var_0.x), global1[_wgslsmith_index_u32(~u_input.b, 12u)]).x, true, any(vec2<bool>(var_0.x, false))));
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-554f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(941f)))), 758f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(22583u, u_input.b ^ 10256u) | u_input.d.x, u_input.d.x), var_1);
}

