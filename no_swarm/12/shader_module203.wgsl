struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<f32>(1800f, -506f, -698f)));

var<private> global3: array<bool, 12>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    var var_0 = global2.a;
    global4 = global2.a.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.a))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.a.x + global2.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -687f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), global2.a.a.x)))), global2.a, global2.a);
    return ~_wgslsmith_mult_u32(u_input.e.x, ~u_input.e.x);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1232f * -1200f), _wgslsmith_f_op_f32(round(-1307f)))), _wgslsmith_f_op_f32(ceil(484f)), global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x))));
    global0 = var_0.x;
    var var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - 263f), _wgslsmith_f_op_f32(abs(global2.a.a.x)), select(true, false, arg_3)))), global2.a.a.x, all(vec4<bool>(arg_3, arg_0.x != arg_1.x, true, u_input.e.x >= 1u)))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.e.x, 4926u), (~u_input.e.x << (9032u % 32u)) & ~(~(~0u)));
    var var_3 = u_input.e.zyy;
    return Struct_3(global2.a);
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = func_3(u_input.a, u_input.c.zwy, 33i, global3[_wgslsmith_index_u32(~((13525u << (u_input.b % 32u)) ^ (u_input.b & 4294967295u)) >> (func_2() % 32u), 12u)]);
    global4 = func_3(-(~vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, 47134i, 2147483647i, -1i)), i32(-1i) * -21227i)), -vec3<i32>(2147483647i, -1i, u_input.c.x), u_input.d.x, global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~u_input.b, u_input.b)), 12u)]).a.a.x;
    let var_1 = false & any(select(select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(8144u, 12u)]), vec2<bool>(true, true), true), vec2<bool>(true, true), any(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 12u)], false))));
    global3 = array<bool, 12>();
    global1 = any(vec3<bool>(true, min(~1u, 1u) != (1u >> (_wgslsmith_mult_u32(u_input.e.x, 64955u) % 32u)), select(firstLeadingBit(-37831i) == -u_input.a.x, var_1, (global3[_wgslsmith_index_u32(4294967295u, 12u)] | true) == false)));
    return func_3(~min(select(vec2<i32>(-48424i, 2147483647i), vec2<i32>(-13322i, u_input.a.x), u_input.b < 50175u), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.d.x, u_input.d.x)) >> (select(vec2<u32>(u_input.e.x, 6780u), vec2<u32>(1u, 3833u), true) % vec2<u32>(32u))), u_input.c.xyy, i32(-1i) * -select(u_input.a.x, _wgslsmith_mult_i32(u_input.d.x, u_input.c.x), true), any(vec4<bool>(true, any(!vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(4294967295u, 12u)])), any(vec3<bool>(var_1, global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)])), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, true), !select(!select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b, 12u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 12u)], false, global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)])), select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 12u)], false, global3[_wgslsmith_index_u32(u_input.b, 12u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(u_input.e.x, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 12u)], true, global3[_wgslsmith_index_u32(u_input.e.x, 12u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 12u)], global3[_wgslsmith_index_u32(21804u, 12u)])), select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.b, 12u)]), vec3<bool>(true, false, false), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 12u)], true))), vec3<bool>(!global3[_wgslsmith_index_u32(16720u, 12u)], all(vec2<bool>(true, true)), false)), vec3<bool>(global3[_wgslsmith_index_u32(~1u, 12u)], false, global3[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_dot_vec2_u32(u_input.e.yy, reverseBits(u_input.e.yw))), 12u)]));
    let var_1 = func_1(Struct_3(global2.a));
    global0 = var_1.a.a.x;
    let var_2 = var_1;
    let var_3 = _wgslsmith_sub_i32(1i, -u_input.a.x);
    global3 = array<bool, 12>();
    var var_4 = countOneBits(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, -2147483647i, var_3, 0i), u_input.c), vec4<i32>(var_3, 0i, var_3, i32(-1i) * -29441i)));
    var var_5 = var_1.a;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.zyw);
}

