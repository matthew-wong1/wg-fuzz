struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 29> = array<u32, 29>(65859u, 4294967295u, 7064u, 0u, 0u, 1u, 1u, 4294967295u, 42518u, 53700u, 14094u, 4294967295u, 23629u, 60270u, 4294967295u, 16984u, 63444u, 4294967295u, 54881u, 17149u, 1u, 1u, 25849u, 1u, 0u, 1u, 3339u, 19092u, 10850u);

var<private> global3: Struct_2;

var<private> global4: array<Struct_3, 6>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> bool {
    global0 = array<Struct_2, 10>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(58601u, 4294967295u), 6u)];
    global2 = array<u32, 29>();
    global4 = array<Struct_3, 6>();
    return 1u < global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, -729f, 584f, -928f), vec4<f32>(1000f, 808f, -1064f, -1357f))))));
    var var_1 = Struct_4(var_0.x <= _wgslsmith_f_op_f32(arg_0.b.e.x + _wgslsmith_f_op_f32(462f * _wgslsmith_f_op_f32(-1146f + 1000f))), select(!vec4<bool>(true, arg_2.x, false, all(global1.xx)), vec4<bool>(true, arg_0.b.c.x, arg_1.x, arg_2.x), arg_2.x || global3.b.c.x), vec4<i32>(-u_input.e.x, abs(~firstTrailingBit(u_input.e.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, ~0i, ~u_input.e.x, ~0i), -vec4<i32>(-42410i, 0i, 1i, 1i)), countOneBits(-39540i)));
    let var_2 = _wgslsmith_sub_u32(global3.a, arg_0.b.d.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.b.b.x, 972f, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.b.x, 252f, arg_3.x, 510f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0)), _wgslsmith_f_op_vec4_f32(-var_0))))));
    var var_4 = u_input.e.x;
    return global3.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 10>();
    return global3.b;
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(global3.b.e.x, func_3(Struct_2(~u_input.d ^ u_input.a.x, global3.b, true), !(!vec3<bool>(true, global1.x, true)), vec2<bool>(global3.c, func_2(u_input.e, 50222u) & any(vec4<bool>(global3.c, global3.c, global3.c, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b.b * global3.b.b)))));
    global0 = array<Struct_2, 10>();
    var var_1 = abs(global3.b.d.zx) | select(var_0.a.yz, ~vec2<u32>(0u, func_3(global0[_wgslsmith_index_u32(94437u, 10u)], global3.b.c, global3.b.c.xz, vec3<f32>(-1389f, -1000f, -1824f)).a.x), vec2<bool>(true, true));
    global0 = array<Struct_2, 10>();
    var var_2 = global0[_wgslsmith_index_u32(57871u, 10u)];
    return Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(~(~var_2.b.a.xx), select(select(var_0.d.yx, u_input.c.zy, global1.x), vec2<u32>(var_1.x, 0u), true)), func_3(global0[_wgslsmith_index_u32(7383u, 10u)], vec3<bool>(any(vec4<bool>(global1.x, global3.b.c.x, var_0.c.x, false)), true, false), !func_3(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 10u)], vec3<bool>(global3.b.c.x, global3.c, var_0.c.x), var_0.c.yy, var_2.b.b).c.zz, func_3(global0[_wgslsmith_index_u32(var_0.a.x, 10u)], var_0.c, var_2.b.c.zx, vec3<f32>(-684f, var_2.b.b.x, var_2.b.b.x)).e), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 29>();
    let var_0 = ~1i;
    var var_1 = func_1();
    let var_2 = global3.b.a.zy;
    global1 = func_3(func_1().a, !(!(!(!vec3<bool>(global3.b.c.x, true, true)))), select(select(select(select(global3.b.c.xz, global3.b.c.yx, false), global3.b.c.xy, global1.x | var_1.a.c), !select(vec2<bool>(true, global1.x), global1.xy, global3.b.c.yx), all(global3.b.c.yx)), func_4(global3.b.e.x, func_4(839f, func_1().a.b)).c.xz, !(!vec2<bool>(true, global1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.b.b), func_3(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(55888u, var_2.x), vec2<u32>(4294967295u, var_2.x)), Struct_1(vec4<u32>(4294967295u, 23209u, var_2.x, 16903u), vec3<f32>(229f, global3.b.b.x, global3.b.b.x), var_1.a.b.c, var_1.a.b.a, vec3<f32>(var_1.a.b.b.x, -2778f, var_1.a.b.b.x)), true), !(!vec3<bool>(global3.b.c.x, true, global1.x)), !select(vec2<bool>(false, global3.b.c.x), vec2<bool>(global1.x, true), global1.x), global3.b.e).b)).c;
    global2 = array<u32, 29>();
    var var_3 = any(!vec2<bool>(global1.x, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.b.e.x)) - var_1.a.b.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1563f))), ~(_wgslsmith_sub_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(58920u, 29u)], 21347u), func_1().a.a) << (u_input.d % 32u)), 1u, _wgslsmith_add_u32(116853u, u_input.b), -268f);
}

