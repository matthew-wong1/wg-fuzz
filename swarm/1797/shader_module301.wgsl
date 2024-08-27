struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 29>;

var<private> global3: vec4<u32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    global1 = global2[_wgslsmith_index_u32(~global3.x, 29u)];
    global2 = array<Struct_2, 29>();
    let var_0 = u_input.d;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(global3.yyx, countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(28876u, u_input.a.x, 22216u) << (vec3<u32>(global3.x, var_0, 53741u) % vec3<u32>(32u)), u_input.a.yxx >> (vec3<u32>(20393u, 0u, global3.x) % vec3<u32>(32u))))), var_0, var_0, u_input.b);
    global1 = Struct_2(Struct_1(global1.b, global1.a.b, max(firstLeadingBit(vec4<i32>(-2147483647i, global1.b, 20181i, global1.b)), vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, 0i, global1.a.c.x), vec3<i32>(global1.b, 0i, global1.b)), -global1.a.a, ~global1.a.c.x)), true), ~(-_wgslsmith_clamp_i32(global1.b, global1.a.a ^ global1.a.c.x, abs(-33636i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1467f, global1.c.x), vec2<f32>(-193f, global1.c.x))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(global1.c, vec2<f32>(global1.c.x, global1.c.x))), global1.c, true)))));
    return _wgslsmith_f_op_f32(floor(996f)) == global1.c.x;
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = global1.a;
    var var_1 = !vec3<bool>(func_3(global1.a.b.x), all(!vec3<bool>(var_0.b.x, true, var_0.b.x)), !(~106397u < arg_0.x));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(vec3<bool>(!(!global1.a.b.x), (func_2(u_input.a) == true) == true, all(vec3<bool>(global1.a.d, global1.a.b.x, true))), global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a, 1i, countOneBits(global1.a.a)), -select(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.a, global1.a.c.x, global1.b), global1.a.c.wxy), _wgslsmith_div_vec3_i32(vec3<i32>(global1.a.a, -1i, global1.a.c.x), vec3<i32>(global1.a.a, -2147483647i, global1.b)), true)), any(select(!global1.a.b.yy, vec2<bool>(func_2(vec4<u32>(74132u, 4294967295u, u_input.d, 0u)), global1.a.b.x), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, global1.c.x, -178f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x))))));
    return Struct_1(var_0.c ^ _wgslsmith_sub_i32(var_0.b.a, global1.a.c.x << (reverseBits(u_input.b) % 32u)), var_0.b.b, abs(firstTrailingBit(-var_0.b.c) & max(vec4<i32>(-31446i, -26419i, var_0.b.c.x, 2147483647i) | vec4<i32>(global1.a.c.x, -20734i, -2064i, 58051i), reverseBits(global1.a.c))), !global1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.x;
    var var_1 = func_1();
    let var_2 = global1.a;
    var var_3 = Struct_3(vec3<bool>(!(var_1.a >= ~var_2.a), any(select(select(vec4<bool>(var_1.d, true, global1.a.b.x, var_1.d), vec4<bool>(global1.a.b.x, false, true, var_1.b.x), vec4<bool>(false, var_1.d, var_2.b.x, var_1.d)), !vec4<bool>(false, var_1.b.x, true, var_2.b.x), true)), global1.a.d), Struct_1(-2147483647i, func_1().b, countOneBits(var_2.c | (var_2.c >> (vec4<u32>(8310u, global3.x, u_input.b, global3.x) % vec4<u32>(32u)))), !(4294967295u > global3.x)), var_1.a, any(select(vec4<bool>(u_input.b < 1u, true, true, true), select(vec4<bool>(true, false, var_1.d, true), select(vec4<bool>(var_1.b.x, var_1.b.x, global1.a.b.x, global1.a.d), vec4<bool>(false, var_2.b.x, global1.a.d, var_1.b.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_2.b.x, true, var_2.b.x, global1.a.b.x), vec4<bool>(true, var_1.d, true, var_1.b.x), vec4<bool>(global1.a.b.x, global1.a.b.x, false, global1.a.b.x))), true & var_1.b.x)));
    let var_4 = vec2<bool>(false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.x))));
}

