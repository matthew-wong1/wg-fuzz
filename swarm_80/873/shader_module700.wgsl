struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: Struct_5 = Struct_5(Struct_4(vec3<i32>(1i, 1i, -1i), -286f), Struct_2(4294967295u, Struct_1(true, vec3<bool>(false, false, true))), vec4<i32>(11302i, i32(-2147483648), -51721i, -3771i), true);

var<private> global3: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> vec3<bool> {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_0 = arg_3.b.a;
    global2 = arg_3;
    global0 = array<Struct_1, 3>();
    return arg_1.b.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = 788f;
    global2 = Struct_5(global2.a, Struct_2(_wgslsmith_mod_u32(0u, firstLeadingBit(countOneBits(0u))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global2.b.a, global2.b.a), u_input.a.ywx) & 1u, 3u)]), global2.c, true);
    global3 = !any(func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(19579u, u_input.a.x, 0u)), 3u)], Struct_2(_wgslsmith_sub_u32(1u, global2.b.a), arg_2), -251f, Struct_5(Struct_4(global2.c.xwz, 328f), Struct_2(4294967295u, Struct_1(true, vec3<bool>(global2.d, false, global2.d))), global2.c, global2.a.b < 518f)));
    global2 = Struct_5(global2.a, Struct_2(36367u, Struct_1(all(select(vec4<bool>(arg_1.a, true, arg_2.b.x, false), vec4<bool>(true, global2.d, false, global2.b.b.a), global1.x)), global2.b.b.b)), global2.c, true);
    global2 = Struct_5(global2.a, global2.b, -((~vec4<i32>(global2.a.a.x, global2.c.x, global2.c.x, 0i) << (vec4<u32>(global2.b.a, u_input.a.x, u_input.a.x, 2366u) % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u))), (global2.b.a <= select(u_input.a.x, u_input.a.x, true)) & true);
    return -62411i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>(!(true & global2.b.b.b.x) && true, !(_wgslsmith_sub_i32(-global2.c.x, func_2(vec3<i32>(-26758i, 2147483647i, 2147483647i), Struct_1(global2.d, global2.b.b.b), Struct_1(true, vec3<bool>(global1.x, global2.d, true)))) >= -1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-677f, -493f, global2.a.b), vec3<f32>(global2.a.b, -729f, global2.a.b)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.b, global2.a.b, -309f) + vec3<f32>(global2.a.b, global2.a.b, 580f))))))));
    global2 = Struct_5(global2.a, global2.b, ~max(select(global2.c, global2.c, false), vec4<i32>(-2147483647i, ~(-2147483647i), 1i, abs(global2.a.a.x))), min(~max(75072u, 1u), ~u_input.a.x) < ~u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(abs(-129f));
    return Struct_1(false, global2.b.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yxx;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.b) + _wgslsmith_f_op_f32(-776f - global2.a.b))), global2.a.b)));
    var var_2 = !all(global1.zzz);
    global3 = any(vec4<bool>(true, !global1.x, true, !global1.x));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(global2.c.x, global2.a.a.x), ~global2.c.x), ~(~global2.c.zw), _wgslsmith_div_vec2_i32(min(~global2.a.a.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.a.x, global2.a.a.x), global2.a.a.zz)), firstLeadingBit(vec2<i32>(-9074i, 3673i) | vec2<i32>(70542i, global2.c.x)))), global2.a.b);
}

