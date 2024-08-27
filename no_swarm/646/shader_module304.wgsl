struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(0i, 2147483647i, -1i, 45529i, -10441i, -68471i, 1i, 1i, -1i, 2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i, 74190i, 0i, -1i, 0i, -30174i, 0i, -1i, 32619i, i32(-2147483648), i32(-2147483648));

var<private> global1: vec3<bool>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_3, 21>;

var<private> global4: array<vec3<u32>, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> vec2<i32> {
    global0 = array<i32, 24>();
    global1 = !select(vec3<bool>(!(!global1.x), any(vec3<bool>(arg_0, arg_0, true)) & true, arg_0), !(!select(global2.b.b.yyz, vec3<bool>(arg_0, true, global2.b.b.x), false)), !global2.b.a.c.b.zyz);
    return u_input.a;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> bool {
    var var_0 = global2.b;
    let var_1 = vec4<u32>(0u, abs(_wgslsmith_add_u32(4294967295u, u_input.b.x)), 4294967295u, ~1u);
    var var_2 = Struct_3(var_0.a, var_0.a.c.b);
    global3 = array<Struct_3, 21>();
    global0 = array<i32, 24>();
    return global2.b.a.c.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> vec4<bool> {
    global1 = vec3<bool>(true, !func_3(_wgslsmith_mod_i32(-2147483647i, arg_0.x), vec4<f32>(global2.c.x, global2.c.x, -951f, global2.c.x), -2147483647i) || (global2.c.x >= global2.c.x), select(any(vec4<bool>(arg_1.a.c.a, arg_3.b.x, all(global2.b.a.d.b.zxw), !global1.x)), false, false));
    var var_0 = Struct_2(arg_1.a.a >> (u_input.b % vec4<u32>(32u)), -vec3<i32>(~42301i, firstLeadingBit(abs(arg_1.a.b.x)), -44352i), arg_2.a.c, global2.b.a.c);
    let var_1 = -23305i;
    let var_2 = any(!vec4<bool>(u_input.b.x <= _wgslsmith_mult_u32(0u, u_input.b.x), global1.x, false, any(select(var_0.d.b, arg_1.a.c.b, vec4<bool>(false, false, false, global1.x)))));
    var var_3 = global4[_wgslsmith_index_u32(~(~u_input.b.x), 26u)];
    return select(select(select(arg_2.b, select(!arg_3.b, select(global2.b.a.c.b, arg_3.a.c.b, arg_2.a.d.b), true), vec4<bool>(arg_3.a.c.b.x, global2.c.x >= -1000f, any(arg_3.a.c.b.ww), false)), select(vec4<bool>(var_0.d.a, var_0.c.a, true, global2.b.a.d.a | global1.x), vec4<bool>(true, true, func_3(arg_0.x, vec4<f32>(global2.c.x, 1181f, -994f, global2.c.x), arg_3.a.b.x), !arg_3.a.d.b.x), vec4<bool>(all(vec4<bool>(global1.x, false, true, false)), all(vec4<bool>(true, var_0.c.b.x, true, true)), true, true)), _wgslsmith_f_op_f32(-1f) >= global2.c.x), arg_1.b, !arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 0i), u_input.c), abs(global2.a)), _wgslsmith_add_i32(global2.a, -_wgslsmith_sub_i32(-1i, global2.b.a.a.x))) & func_1(false, ~(~(~82529u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c.yz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.c.zz)))));
    let var_1 = _wgslsmith_sub_vec3_i32(global2.b.a.b, _wgslsmith_mult_vec3_i32(abs(global2.b.a.b), _wgslsmith_add_vec3_i32(global2.b.a.a.ywy, global2.b.a.a.wyx) & ~vec3<i32>(var_0.x, 2147483647i, -974i))) >> (u_input.b.wzw % vec3<u32>(32u));
    let var_2 = Struct_1(true, select(vec4<bool>(~u_input.b.x > _wgslsmith_mod_u32(117657u, u_input.b.x), !global2.b.a.c.a != (global2.b.a.d.b.x || true), !(!global1.x), all(func_2(var_1, global2.b, global2.b, global2.b))), select(select(vec4<bool>(global2.b.b.x, false, global2.b.b.x, global1.x), select(global2.b.a.d.b, global2.b.b, false), true), global2.b.b, global2.b.b), !(!(!vec4<bool>(global1.x, false, false, true)))));
    global2 = Struct_4(select(u_input.e, max(max(-46202i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.e)), 2863i), any(!global2.b.a.c.b.wyx) && any(global2.b.a.d.b.yyx)), Struct_3(Struct_2(vec4<i32>(325i, var_0.x, ~global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -1i), vec3<i32>(1i, var_1.x, 0i), global2.b.a.d, var_2), !func_2(vec3<i32>(global2.b.a.a.x, u_input.c, var_0.x), Struct_3(global2.b.a, vec4<bool>(global1.x, global2.b.b.x, false, true)), global3[_wgslsmith_index_u32(abs(u_input.b.x), 21u)], Struct_3(global2.b.a, global2.b.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c + vec3<f32>(global2.c.x, -1042f, global2.c.x)) - global2.c))));
    var var_3 = 1u;
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2061f - -1011f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f))))))), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.c.x)) + 399f) <= -780f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b.x, ~select(~u_input.b.x, u_input.b.x, true), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 20517u));
}

