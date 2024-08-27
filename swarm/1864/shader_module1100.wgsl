struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: vec3<u32>;

var<private> global3: array<vec4<f32>, 18>;

var<private> global4: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.c, u_input.c) << (vec3<u32>(firstTrailingBit(1u), global2.x << (arg_0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(34684u, 137964u), arg_0.wz)) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.c, 11834i, u_input.c), vec3<i32>(0i, u_input.c, u_input.c), true), vec3<i32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(arg_0.x, 0u, 0u) % vec3<u32>(32u))));
    global3 = array<vec4<f32>, 18>();
    let var_1 = global2.x >> ((_wgslsmith_dot_vec3_u32(u_input.d, ~(~vec3<u32>(u_input.b.x, 0u, 4294967295u))) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(arg_0), vec4<u32>(3223u, arg_1, global2.x, 19665u)), arg_0)) % 32u);
    let var_2 = Struct_1(true, global3[_wgslsmith_index_u32(~countOneBits(34220u), 18u)]);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(sign(arg_2))))))));
    return ~(~0u);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = arg_1.a;
    var var_1 = -select(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c, u_input.c, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-16466i, 8069i, u_input.c))), firstLeadingBit(firstLeadingBit(vec3<i32>(-7384i, u_input.c, u_input.c))), !select(vec3<bool>(false, arg_1.a, false), vec3<bool>(var_0, arg_1.a, true), arg_1.a)) >> (u_input.d % vec3<u32>(32u));
    let var_2 = Struct_2(!vec4<bool>(any(!vec2<bool>(true, var_0)), false, arg_1.a, !(!var_0)), vec4<bool>(var_0, any(vec2<bool>(any(vec2<bool>(false, var_0)), true)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.x, 1u), firstLeadingBit(19635u)) != ~0u, false), !any(vec4<bool>(true, !arg_1.a, -1296f > arg_1.b.x, all(vec2<bool>(true, var_0)))));
    var var_3 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, var_1.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, u_input.c, var_1.x)), ~vec3<i32>(u_input.c, -2147483647i, var_1.x))), min(u_input.c, select(-1i >> (u_input.b.x % 32u), -7859i, any(var_2.b.yx)))), 41989i, var_1.x, ~firstLeadingBit(~(i32(-1i) * -35124i)));
    global4 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -674f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(425f + arg_1.b.x));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<i32> {
    let var_0 = any(vec4<bool>(!(!(true != arg_1)), func_4(~func_3(vec4<u32>(u_input.a.x, u_input.a.x, global2.x, 4294967295u), 1u, 481f), Struct_1(true & arg_1, _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(39075u, 18u)]))), !(false && arg_1), (~global2.x & ~4294967295u) == ~(~u_input.d.x)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1067f)), -1364f))) + 1878f)));
    let var_2 = select(select(vec4<bool>(arg_1, any(vec3<bool>(true, true, true)), false, true), vec4<bool>(!arg_1 || false, true, true, var_0), vec4<bool>(true, true, all(!vec4<bool>(true, false, var_0, false)), false)), select(select(vec4<bool>(true, select(arg_1, false, true), any(vec3<bool>(true, true, arg_1)), true), !(!vec4<bool>(arg_1, var_0, true, var_0)), !(!vec4<bool>(var_0, arg_1, var_0, arg_1))), !select(select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, false, var_0, true), false), vec4<bool>(var_0, arg_1, var_0, arg_1), true), true), vec4<bool>(false, select(all(vec3<bool>(true, true, arg_1)), select(var_0, var_0, arg_1), u_input.b.x != u_input.b.x) && any(!vec2<bool>(false, arg_1)), var_0, false));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(725f * _wgslsmith_f_op_f32(abs(2064f))))), _wgslsmith_f_op_f32(f32(-1f) * -215f)));
    let var_4 = -763f;
    return firstLeadingBit(vec4<i32>(countOneBits(27023i), -1i, -arg_0, -23144i >> ((abs(global2.x) | u_input.d.x) % 32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.c, 23732i, -2147483647i, arg_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(-26882i, -2147483647i, arg_1, u_input.c), ~vec4<i32>(50023i, arg_1, u_input.c, u_input.c))), -func_2(arg_1, false));
    var var_1 = var_0;
    var var_2 = Struct_1(~(-abs(var_1.x)) == max(14774i, i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~(~global2.x), 18u)]));
    global4 = select(916f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false, var_2.a != (var_2.a == !var_2.a));
    let var_3 = var_0.www;
    return ~(-(~_wgslsmith_dot_vec2_i32(var_3.xz, var_1.xx << (u_input.d.zx % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 18>();
    global2 = countOneBits(~u_input.b);
    global3 = array<vec4<f32>, 18>();
    global1 = u_input.b.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, -529f)));
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, -35033i), vec2<i32>(u_input.c, -37i)) >> (~u_input.b.x % 32u), _wgslsmith_mult_i32(-1i, abs(reverseBits(func_1(vec2<i32>(71979i, u_input.c), 1i, vec2<f32>(var_0.x, 769f))))));
    var var_2 = Struct_2(!vec4<bool>(true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), func_4(u_input.d.x, Struct_1(false, global3[_wgslsmith_index_u32(134u, 18u)])), global2.x >= _wgslsmith_div_u32(u_input.b.x, 3398u)), !(!vec4<bool>(true, false, any(vec2<bool>(true, true)), func_4(1u, Struct_1(false, global3[_wgslsmith_index_u32(81862u, 18u)])))), all(vec2<bool>(true, !all(vec4<bool>(false, true, false, false)))));
    let var_3 = Struct_3(-1327f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-254f - var_0.x), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(sign(-693f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_3.a, -699f)))))), func_4(global2.x, Struct_1(var_2.a.x, _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(0u, 18u)]))))), vec4<i32>(u_input.c, countOneBits(firstLeadingBit(1i)), _wgslsmith_add_i32(u_input.c, 1i) << (u_input.a.x % 32u), _wgslsmith_clamp_i32(~u_input.c & -71495i, _wgslsmith_div_i32(firstTrailingBit(u_input.c), firstLeadingBit(u_input.c)), -53507i)));
}

