struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: Struct_4;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, global2.c.c.b, global2.c.c.b)), _wgslsmith_f_op_vec3_f32(-global2.c.a))))) * _wgslsmith_div_vec3_f32(global2.c.a, global2.c.a)), max(global2.c.b, global2.c.b), global2.c.c);
    let var_1 = arg_0;
    var var_2 = var_0.b;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(250f, 293f, global2.c.c.b), global2.c.a)) - _wgslsmith_f_op_vec3_f32(max(global2.c.a, global2.c.a)))), all(!vec3<bool>(global2.b, false, arg_0)))), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, global2.c.b), select(4866i, 0i, global2.c.b >= _wgslsmith_add_i32(var_0.b, var_0.b))), Struct_1(min(abs(vec4<u32>(global2.a.x, 30969u, 4294967295u, u_input.a)), var_0.c.a) | var_0.c.a, var_0.c.b));
    var_3 = global2.c;
    return 80198u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = select(!vec2<bool>(!global3.x, (global2.c.b ^ -1i) <= _wgslsmith_add_i32(37122i, 17241i)), !vec2<bool>(-arg_2.x != _wgslsmith_dot_vec3_i32(vec3<i32>(-33606i, -31835i, 18304i), arg_1.yxy), _wgslsmith_add_i32(-2147483647i, arg_2.x) >= 1i), global2.b);
    var_0 = global0[_wgslsmith_index_u32(~(~(~min(u_input.a, func_3(false)))), 14u)];
    global1 = array<vec3<u32>, 5>();
    global2 = Struct_4(abs(global2.c.c.a), !var_0.x, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f * arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(sign(global2.c.a.x))), _wgslsmith_f_op_f32(select(224f, _wgslsmith_f_op_f32(min(arg_0.x, -1518f)), true))), -2147483647i, Struct_1(vec4<u32>(_wgslsmith_div_u32(u_input.a, global2.a.x), max(global2.c.c.a.x, u_input.a), max(1u, u_input.a), select(global2.c.c.a.x, u_input.a, false)), _wgslsmith_f_op_f32(max(-899f, _wgslsmith_f_op_f32(-arg_0.x))))));
    global1 = array<vec3<u32>, 5>();
    return global2.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = ~max(vec2<u32>(reverseBits(_wgslsmith_div_u32(33027u, arg_2.a.x)), _wgslsmith_mult_u32(102781u, 0u)), global2.c.c.a.yx);
    global3 = global0[_wgslsmith_index_u32(func_2(arg_1.a, -min(select(~vec4<i32>(2147483647i, 0i, 20103i, global2.c.b), vec4<i32>(arg_1.b, global2.c.b, arg_0.x, arg_0.x) << (arg_1.c.a % vec4<u32>(32u)), false), reverseBits(~vec4<i32>(-17555i, -11335i, -46911i, global2.c.b))), countOneBits(abs(vec2<i32>(11467i, ~arg_0.x)))), 14u)];
    var var_1 = true;
    var var_2 = ~min(firstTrailingBit(_wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_sub_vec3_u32(vec3<u32>(23432u, 46416u, arg_2.a.x), vec3<u32>(arg_1.c.a.x, global2.c.c.a.x, 46757u)))), global1[_wgslsmith_index_u32(27241u, 5u)]);
    var var_3 = !(!(!vec3<bool>(all(vec4<bool>(global2.b, global3.x, false, global3.x)), any(vec3<bool>(global2.b, global3.x, true)), false)));
    return global2.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-973f + _wgslsmith_f_op_f32(func_1(vec3<i32>(global2.c.b, 40357i, global2.c.b), global2.c, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, global2.a.x), global2.c.c.b), 37969u)))), _wgslsmith_f_op_f32(-global2.c.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-739f, global2.c.a.x))) + global2.c.a.x), global2.c.a.x, -499f);
    var var_1 = global2.c.c;
    let var_2 = u_input.a;
    var var_3 = firstTrailingBit(~(0u ^ u_input.a));
    let var_4 = select(!(!select(select(vec3<bool>(true, false, global3.x), vec3<bool>(global2.b, true, false), vec3<bool>(global2.b, true, true)), !vec3<bool>(false, global2.b, false), vec3<bool>(false, false, global2.b))), select(select(vec3<bool>(false, global3.x | global3.x, global2.b), vec3<bool>(!global2.b, !global2.b, true), !vec3<bool>(global3.x, false, false)), !vec3<bool>(false, !global2.b, var_2 != var_1.a.x), !global2.b), !all(vec3<bool>(true, true, global3.x)));
    let var_5 = select(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global2.c.b), vec2<i32>(-35292i, global2.c.b), vec2<i32>(global2.c.b, global2.c.b)), vec2<i32>(global2.c.b, 2147483647i) >> (var_1.a.ww % vec2<u32>(32u)), abs(vec2<i32>(global2.c.b, global2.c.b))), min(reverseBits(vec2<i32>(1i, global2.c.b)), reverseBits(vec2<i32>(global2.c.b, -2147483647i)))), ~(~abs(vec2<i32>(global2.c.b, global2.c.b))), true) << ((~(~global2.c.c.a.xx) >> (var_1.a.yy % vec2<u32>(32u))) % vec2<u32>(32u));
    var_1 = global2.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), -28436i, max(_wgslsmith_mult_i32(global2.c.b, global2.c.b), _wgslsmith_clamp_i32(27483i, ~global2.c.b, firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, -74963i, 8055i)))), select(-(_wgslsmith_div_vec3_i32(vec3<i32>(var_5.x, var_5.x, global2.c.b), vec3<i32>(11403i, var_5.x, 1i)) >> (~global1[_wgslsmith_index_u32(u_input.a, 5u)] % vec3<u32>(32u))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_5.x, var_5.x, var_5.x), vec3<i32>(var_5.x, var_5.x, var_5.x)), ~(~global2.c.b)), select(select(select(vec3<bool>(true, false, false), var_4, global3.x), vec3<bool>(global3.x, false, false), select(vec3<bool>(var_4.x, false, global2.b), vec3<bool>(false, false, true), true)), select(select(var_4, vec3<bool>(true, global2.b, global2.b), false), !vec3<bool>(global2.b, var_4.x, global3.x), global3.x), select(select(vec3<bool>(true, global2.b, global3.x), var_4, global3.x), select(vec3<bool>(false, global2.b, false), vec3<bool>(global2.b, false, global2.b), false), select(var_4, vec3<bool>(false, global2.b, var_4.x), false)))), _wgslsmith_mod_u32(5523u, 4294967295u));
}

