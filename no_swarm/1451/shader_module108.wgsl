struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(0u, 0u), vec2<u32>(63988u, 9448u), vec2<u32>(37982u, 53880u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(43473u, 30002u), vec2<u32>(0u, 1u), vec2<u32>(43172u, 64156u), vec2<u32>(1u, 3450u), vec2<u32>(61853u, 1u), vec2<u32>(9553u, 85853u), vec2<u32>(17109u, 0u), vec2<u32>(16241u, 19274u), vec2<u32>(122365u, 1u), vec2<u32>(0u, 65263u), vec2<u32>(24886u, 0u), vec2<u32>(12777u, 1u), vec2<u32>(4294967295u, 90221u), vec2<u32>(10151u, 0u), vec2<u32>(21155u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(30854u, 1u), vec2<u32>(0u, 17096u), vec2<u32>(1922u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(35154u, 1u), vec2<u32>(1u, 32921u), vec2<u32>(1u, 76434u), vec2<u32>(1u, 21412u), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: Struct_2 = Struct_2(0u, -1i);

var<private> global2: Struct_2 = Struct_2(4294967295u, 0i);

var<private> global3: Struct_5;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = 2147483647i;
    var var_1 = Struct_4(vec4<bool>(global3.a.a.x, !any(vec2<bool>(false, false)) & any(!vec4<bool>(false, true, global3.a.a.x, false)), false, true), reverseBits(((vec2<u32>(0u, arg_0.x) >> (global0[_wgslsmith_index_u32(global2.a, 32u)] % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(0u, 32u)], vec2<u32>(4294967295u, u_input.b.x))) ^ ~countOneBits(arg_0.zz)));
    var_1 = global3.a;
    var var_2 = arg_1.c.c;
    var_0 = 2147483647i;
    return _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.wx, (vec2<u32>(global3.a.b.x, 0u) << (var_1.b % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(arg_2.a, 32u)], var_1.b)), vec2<u32>(var_1.b.x, var_1.b.x & 4294967295u) >> (global0[_wgslsmith_index_u32(~global2.a, 32u)] % vec2<u32>(32u))), vec2<u32>(global1.a, arg_2.a));
}

fn func_2() -> Struct_3 {
    global3 = Struct_5(Struct_4(select(!vec4<bool>(global3.a.a.x, global3.a.a.x, global3.a.a.x, global3.a.a.x), !global3.a.a, !(!global3.a.a)), func_3(_wgslsmith_div_vec4_u32(select(vec4<u32>(11941u, 1u, 1u, u_input.c), u_input.b, global3.a.a.x), vec4<u32>(global3.a.b.x, 47621u, 0u, global1.a)), global3.b, Struct_2(u_input.c, 56053i), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.e.e.x, global3.b.c.a, 424f, -2110f) * vec4<f32>(-2399f, 507f, global3.b.e.a, -1686f)), _wgslsmith_add_vec4_i32(global3.b.b, vec4<i32>(-6467i, global3.c.b, global1.b, global3.b.c.c)), global3.b.e, global2.b, global3.b.e))), global3.b, Struct_2(1u & reverseBits(global1.a), u_input.d.x));
    global2 = global3.c;
    var var_0 = (_wgslsmith_sub_i32(global1.b, global2.b) & u_input.a) & _wgslsmith_mult_i32(~(-(~u_input.d.x)), countOneBits(global1.b));
    var var_1 = Struct_5(global3.a, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b.a) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, global3.b.a.x, global3.b.c.e.x, -181f)), vec4<f32>(global3.b.a.x, -1000f, global3.b.c.e.x, -431f)))), global3.b.b, Struct_1(486f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.e.a, -874f, -539f))), 1i, _wgslsmith_f_op_vec2_f32(global3.b.c.b.xz + vec2<f32>(global3.b.e.b.x, global3.b.e.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global3.b.c.b.zx, global3.b.e.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(307f, global3.b.c.d.x)), vec2<bool>(global3.a.a.x, true)))), abs(40231i), global3.b.e), global3.c);
    var var_2 = -1856f;
    return global3.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    global1 = Struct_2(~global2.a, -2147483647i);
    var var_0 = global3.a.a.yzz;
    var var_1 = arg_0.c.b.xz;
    var_1 = global3.b.a.zx;
    var var_2 = Struct_5(global3.a, Struct_3(_wgslsmith_div_vec4_f32(global3.b.a, _wgslsmith_f_op_vec4_f32(-arg_0.a)), reverseBits(~vec4<i32>(47287i, 0i, 1i, -2147483647i)), arg_0.e, arg_0.c.c, global3.b.e), global3.c);
    return var_2.a;
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = array<vec2<u32>, 32>();
    let var_0 = global3.a;
    let var_1 = -(-vec4<i32>(-8396i, i32(-1i) * -15580i, -global2.b, -global1.b) ^ -(~vec4<i32>(global1.b, global1.b, 0i, global3.c.b) << (~vec4<u32>(global3.c.a, global3.a.b.x, 1u, global2.a) % vec4<u32>(32u))));
    global0 = array<vec2<u32>, 32>();
    global3 = Struct_5(func_4(func_2(), global3.c), func_2(), global3.c);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.b.c.e.x);
    let var_1 = false;
    global2 = Struct_2(6276u, _wgslsmith_dot_vec2_i32(global3.b.b.wz, countOneBits(countOneBits(_wgslsmith_add_vec2_i32(u_input.d.zx, var_0.b.wy)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-681f * 916f), global3.b.c.b, -(~firstLeadingBit(global3.b.d << (global3.c.a % 32u))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, -670f), global3.b.a.xz), _wgslsmith_f_op_vec2_f32(select(var_0.e.e, global3.b.a.zw, vec2<bool>((var_0.b.x | 1i) < _wgslsmith_mult_i32(u_input.a, var_0.e.c), !func_4(global3.b, global3.c).a.x))));
    global2 = Struct_2(_wgslsmith_div_u32(~global3.c.a, u_input.b.x ^ ~_wgslsmith_dot_vec3_u32(u_input.b.zyz, vec3<u32>(4294967295u, 4294967295u, u_input.c))), min(~var_0.e.c ^ u_input.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(global2.b, global2.b)), vec2<i32>(var_0.c.c, -6821i) << (u_input.b.yx % vec2<u32>(32u))), -vec2<i32>(global3.c.b, var_2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-11119i, _wgslsmith_f_op_f32(-var_2.b.x), var_2.c, abs(select(~u_input.b, u_input.b, global3.a.a.x)));
}

