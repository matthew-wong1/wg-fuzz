struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: Struct_4 = Struct_4(-1000f, Struct_1(vec3<bool>(false, false, true)), vec3<u32>(26135u, 4294967295u, 18636u), 59409i, Struct_1(vec3<bool>(true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<f32>) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - global2.a)), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(abs(arg_2.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2006f))) * 835f)), Struct_1(!(!(!global2.b.a))), global1[_wgslsmith_index_u32(0u, 29u)], -2147483647i, Struct_1(select(select(arg_0.a.a, arg_0.a.a, !global2.e.a), arg_0.a.a, !select(vec3<bool>(false, arg_0.a.a.x, true), global2.e.a, global2.b.a.x))));
    global1 = array<vec3<u32>, 29>();
    global2 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1947f, arg_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))))), Struct_1(var_0.e.a), _wgslsmith_div_vec3_u32(global2.c, max(~global2.c, ~vec3<u32>(37976u, 0u, 0u)) >> (~global2.c % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x & _wgslsmith_clamp_i32(-28380i, global0.x, u_input.a.x), global2.d, u_input.c.x), select(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(21766i, 6456i, 0i), select(u_input.b, u_input.c, vec3<bool>(false, arg_1.b, global2.e.a.x)), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(global0.x, global0.x, 0i))), arg_1.a.a.x)), global2.b);
    var var_1 = firstLeadingBit(var_0.c.x);
    let var_2 = u_input.e.x;
    return all(vec3<bool>((_wgslsmith_mult_u32(1u, 1u) | global2.c.x) <= abs(41976u), var_0.b.a.x, true));
}

fn func_2() -> Struct_1 {
    var var_0 = -1i;
    let var_1 = global2.e;
    let var_2 = Struct_3(true, Struct_1(vec3<bool>(any(select(vec4<bool>(global2.b.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(false, true, false, false), vec4<bool>(false, true, global2.b.a.x, true))), _wgslsmith_f_op_f32(-global2.a) == global2.a, func_3(Struct_2(global2.e, global2.b.a.x), Struct_2(Struct_1(var_1.a), global2.e.a.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-724f, global2.a, global2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, 924f))))), countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(43961u, 0u, 1u, u_input.d), vec4<u32>(_wgslsmith_sub_u32(u_input.d, global2.c.x), ~28781u, global2.c.x, 4294967295u))), global2.b, any(select(select(!vec4<bool>(var_1.a.x, false, true, false), vec4<bool>(false, true, true, global2.b.a.x), vec4<bool>(global2.b.a.x, var_1.a.x, false, true)), select(vec4<bool>(global2.b.a.x, true, global2.e.a.x, var_1.a.x), select(vec4<bool>(var_1.a.x, global2.b.a.x, global2.e.a.x, false), vec4<bool>(global2.b.a.x, var_1.a.x, true, true), false), select(vec4<bool>(var_1.a.x, false, false, var_1.a.x), vec4<bool>(true, true, global2.b.a.x, false), vec4<bool>(true, var_1.a.x, false, true))), true)));
    let var_3 = 16497i;
    global1 = array<vec3<u32>, 29>();
    return Struct_1(vec3<bool>(false, all(vec4<bool>(all(var_1.a), true, true, true)), var_1.a.x));
}

fn func_1() -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(global2.a * global2.a), func_2(), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(min(global2.c, vec3<u32>(u_input.d, u_input.d, 30534u)), vec3<u32>(global2.c.x >> (0u % 32u), countOneBits(u_input.d), 0u)), abs(firstTrailingBit(global1[_wgslsmith_index_u32(~u_input.d, 29u)]))), -global0.x, func_2());
    var var_1 = Struct_2(Struct_1(vec3<bool>(true & (global2.a > -2150f), any(select(vec4<bool>(var_0.b.a.x, var_0.e.a.x, false, false), vec4<bool>(global2.b.a.x, true, global2.b.a.x, false), vec4<bool>(false, false, false, false))), !(-1575f >= var_0.a))), false || all(var_0.e.a.zy));
    let var_2 = !(!var_0.e.a.x != all(select(vec4<bool>(true, var_1.b, false, global2.e.a.x), select(vec4<bool>(true, var_1.b, false, true), vec4<bool>(true, var_0.e.a.x, true, global2.b.a.x), vec4<bool>(true, var_1.b, var_0.b.a.x, var_1.a.a.x)), false)));
    global1 = array<vec3<u32>, 29>();
    var var_3 = 94153u;
    return max(var_0.c.x, select(_wgslsmith_div_u32(var_0.c.x, reverseBits(81u)), ~u_input.d, !select(true, var_0.a < global2.a, var_1.a.a.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> StorageBuffer {
    global2 = Struct_4(333f, Struct_1(vec3<bool>(arg_1.x, any(vec4<bool>(global2.e.a.x, arg_1.x, arg_1.x, true)), global2.b.a.x)), _wgslsmith_sub_vec3_u32(~(~global1[_wgslsmith_index_u32(countOneBits(4294967295u), 29u)]), firstTrailingBit(~max(vec3<u32>(u_input.d, arg_0, u_input.d), vec3<u32>(0u, 75762u, 0u)))), -2147483647i, Struct_1(func_2().a));
    let var_0 = 29106u;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(max(global2.a, -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.a, -110f)), 2351f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1711f, global2.a) - -345f)))), 621f, _wgslsmith_f_op_f32(select(-719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1283f))), !(_wgslsmith_div_f32(global2.a, global2.a) > global2.a))));
    var var_2 = vec3<i32>(global2.d, (firstLeadingBit(global0.x) >> (~u_input.d % 32u)) | ~46248i, ~(-2147483647i));
    let var_3 = Struct_3(arg_1.x && global2.b.a.x, func_2(), abs(reverseBits(~max(vec4<u32>(31360u, arg_0, 24787u, 4294967295u), vec4<u32>(4294967295u, var_0, arg_0, 37150u)))), global2.e, true);
    return StorageBuffer(((vec4<i32>(global2.d, u_input.c.x, -1i, 2147483647i) >> (~var_3.c % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 0u, arg_0, global2.c.x), _wgslsmith_mult_vec4_u32(var_3.c, var_3.c)) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(countOneBits(0u), 49905u, _wgslsmith_mult_u32(arg_0, var_0), var_0)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global2.e.a), global2.e.a.x);
    global2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(vec3<bool>(-535f >= _wgslsmith_f_op_f32(trunc(-1167f)), var_0.b, true)), vec3<u32>(_wgslsmith_mod_u32(~56131u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(global2.c.x, 29u)], vec3<u32>(15602u, 4294967295u, global2.c.x)), u_input.d)), global2.c.x, abs(~(~global2.c.x))), global2.d, global2.e);
    let var_1 = _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * -1270f) * global2.a));
    let var_2 = _wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1945f - 752f)))));
    var var_3 = Struct_3(false, Struct_1(global2.e.a), _wgslsmith_mod_vec4_u32(vec4<u32>(~global2.c.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.d, 0u), 1u, u_input.d & u_input.d), global2.c.x, 1u), abs((vec4<u32>(global2.c.x, global2.c.x, u_input.d, 50727u) ^ vec4<u32>(5192u, 32079u, 56702u, u_input.d)) >> (~vec4<u32>(27142u, 4294967295u, 42435u, 28135u) % vec4<u32>(32u)))), var_0.a, false);
    let x = u_input.a;
    s_output = func_4(countOneBits(func_1()), select(!var_3.d.a.yy, var_0.a.a.xz, var_3.d.a.zx));
}

