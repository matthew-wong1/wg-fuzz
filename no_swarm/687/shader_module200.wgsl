struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool;

var<private> global2: array<vec2<bool>, 1>;

var<private> global3: Struct_2 = Struct_2(Struct_1(30296u, -367f, vec3<bool>(false, false, true), -1i), 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> i32 {
    global1 = all(select(select(select(!vec3<bool>(global3.a.c.x, global3.a.c.x, true), select(vec3<bool>(arg_0.b, false, arg_0.b), global3.a.c, false), !global3.a.c.x), global3.a.c, vec3<bool>(any(global3.a.c), global3.a.c.x, all(global3.a.c.zz))), select(vec3<bool>(false, false, true), vec3<bool>(true, all(vec4<bool>(global3.a.c.x, false, true, false)), all(vec2<bool>(true, false))), arg_0.b), global3.a.c.x));
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.b - global3.a.b)), -121f, _wgslsmith_div_f32(-282f, -802f), _wgslsmith_f_op_f32(f32(-1f) * -241f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b, global3.a.b, global3.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.a.b)), _wgslsmith_f_op_f32(-553f - -543f)))));
    var var_1 = global3.a;
    var var_2 = select(firstLeadingBit(29225u), arg_1, var_1.c.x);
    let var_3 = vec2<i32>(_wgslsmith_add_i32(global3.a.d, ~(_wgslsmith_mod_i32(-18955i, u_input.a) ^ global3.a.d)), abs(i32(-1i) * -6089i));
    return max(7238i, 1i);
}

fn func_2() -> i32 {
    global3 = Struct_2(Struct_1(global3.b, global3.a.b, select(!select(vec3<bool>(true, true, global3.a.c.x), vec3<bool>(global3.a.c.x, true, true), global3.a.c.x), global3.a.c, _wgslsmith_div_i32(-24777i, u_input.e) < global3.a.d), -(-15340i & func_3(Struct_4(53353u, global3.a.c.x), 14635u))), ~(_wgslsmith_add_u32(~16362u, _wgslsmith_sub_u32(1u, u_input.b)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(9563u, 0u), vec2<u32>(u_input.d, 1u)) % 32u)));
    let var_0 = Struct_4(max(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, 1u), 12328u), max(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 97035u)), global3.a.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(5833u, 18128u, 48930u, 8425u), ~vec4<u32>(global3.b, global3.a.a, 75655u, global3.a.a)))), global3.a.c.x);
    var var_1 = ~min(vec3<i32>(1i, -u_input.c, 22419i), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(29842i, 1i, u_input.a), vec3<i32>(-25815i, u_input.e, 5688i)) << (vec3<u32>(var_0.a, var_0.a, 28047u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.d, global3.a.d, 2147483647i), vec3<i32>(u_input.c, u_input.a, global3.a.d)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e, 2147483647i, -1i), vec3<i32>(u_input.c, 22716i, u_input.a), ~vec3<i32>(-1i, u_input.a, 36312i))));
    let var_2 = vec2<u32>(_wgslsmith_add_u32(~countOneBits(_wgslsmith_mult_u32(0u, global3.b)), ~(~17229u) >> (global3.a.a % 32u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 4294967295u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global3.b, var_0.a), vec3<u32>(37852u, u_input.d, 1u), vec3<u32>(0u, global3.b, 4294967295u)), select(global3.a.c, vec3<bool>(false, global3.a.c.x, false), vec3<bool>(false, false, var_0.b))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 106637u, var_0.a), ~vec3<u32>(global3.a.a, global3.b, 94988u)) % vec3<u32>(32u)), ~(countOneBits(vec3<u32>(1u, 13093u, var_0.a)) << (vec3<u32>(33917u, 3653u, 18377u) % vec3<u32>(32u)))));
    var var_3 = global3.a.b;
    return _wgslsmith_div_i32(-2147483647i, max(firstTrailingBit(2147483647i), u_input.e));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = -29375i | ~arg_1.x;
    let var_1 = global3.a.c.zx;
    var var_2 = !select(global2[_wgslsmith_index_u32(u_input.b, 1u)], !vec2<bool>(all(vec2<bool>(true, global3.a.c.x)), global3.a.c.x), vec2<bool>(true, global3.a.c.x));
    var var_3 = global3.a.a;
    var_0 = -func_2();
    return Struct_2(global3.a, ~(_wgslsmith_sub_u32(global3.a.a, _wgslsmith_div_u32(u_input.b, 4294967295u)) & ~(u_input.d ^ 63479u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 1>();
    let var_0 = func_1(-263f, vec3<i32>(abs(-2147483647i), u_input.a, _wgslsmith_div_i32(global3.a.d, 0i)) & vec3<i32>(u_input.c, _wgslsmith_add_i32(i32(-1i) * -61561i, _wgslsmith_div_i32(u_input.a, 1i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, global3.a.d), -17867i)));
    let var_1 = -vec2<i32>(_wgslsmith_clamp_i32(1i, global3.a.d, 0i), 2640i);
    var var_2 = Struct_3(global3.a.c.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2242f * -1000f), _wgslsmith_f_op_f32(trunc(var_0.a.b)), _wgslsmith_f_op_f32(floor(var_0.a.b)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-575f, global3.a.b, _wgslsmith_f_op_f32(min(var_0.a.b, 880f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a.b, -136f, global3.a.b), vec3<f32>(-2099f, 687f, -463f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(var_0.a.d, abs(var_0.a.d) & (global3.a.d << (0u % 32u))));
}

