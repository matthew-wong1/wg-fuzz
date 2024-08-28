struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(0u, Struct_1(vec2<bool>(true, false), true, vec4<i32>(0i, 1i, 8744i, -1i)));

var<private> global4: array<u32, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    global3 = Struct_2(global3.a, arg_2);
    global2 = Struct_2(~50242u, arg_2);
    var var_0 = true;
    global0 = array<bool, 32>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), -279f);
    return arg_1.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<bool, 32>();
    global1 = vec4<bool>(all(vec4<bool>(true, true, true, true)), any(!(!vec3<bool>(global2.b.a.x, global3.b.a.x, false))) || select(any(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global1.x), vec4<bool>(true, false, global1.x, global3.b.b), vec4<bool>(global1.x, global1.x, true, arg_0.a.x))), global1.x, !(false & global0[_wgslsmith_index_u32(75079u, 32u)])), select(arg_0.a.x, u_input.c.x < 1u, true || global1.x), arg_0.b);
    var var_0 = u_input.e;
    global0 = array<bool, 32>();
    let var_1 = Struct_2(u_input.e, Struct_1(!(!arg_0.a), false, vec4<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, arg_1.x), 2147483647i), -1i, global3.b.c.x)));
    return var_1.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    global2 = Struct_2(_wgslsmith_mult_u32(global3.a, 105359u), func_3(Struct_1(global1.yx, false, func_2(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(vec2<bool>(false, global3.b.b), global2.b.b, global2.b.c), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(global2.a, 32u)], true), global0[_wgslsmith_index_u32(u_input.b, 32u)], global2.b.c), arg_0.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.b.c.x, -40785i, u_input.d, u_input.d) >> (vec4<u32>(0u, 4027u, global4[_wgslsmith_index_u32(global3.a, 18u)], 61527u) % vec4<u32>(32u)), -vec4<i32>(arg_1, -1i, arg_1, global3.b.c.x), ~vec4<i32>(2147483647i, 16750i, 12174i, u_input.d)), vec4<i32>(arg_1 ^ 0i, ~3121i, global2.b.c.x, 0i), -select(global3.b.c, global2.b.c, global2.b.b))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = true;
    var var_2 = global3.b.c;
    let var_3 = ~4773u;
    return Struct_2(~35456u, global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1014f, 2255f, 981f), vec3<f32>(-923f, -288f, 384f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-323f, 565f, -381f) * vec3<f32>(1373f, -573f, 479f))))), min(-30351i, -(_wgslsmith_dot_vec4_i32(global3.b.c, vec4<i32>(global2.b.c.x, u_input.d, 38965i, 4833i)) & (0i >> (u_input.e % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(global3.a)));
}

