struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: Struct_2;

var<private> global3: array<u32, 21> = array<u32, 21>(4294967295u, 65210u, 1u, 0u, 0u, 10740u, 39941u, 4294967295u, 0u, 0u, 1u, 7374u, 0u, 1u, 0u, 24007u, 0u, 14518u, 63096u, 4294967295u, 66349u);

var<private> global4: vec4<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> vec2<i32> {
    return _wgslsmith_mult_vec2_i32(vec2<i32>(global2.a.c, global2.a.c), vec2<i32>(~_wgslsmith_add_i32(~2147483647i, i32(-1i) * -24559i), ~(~24681i)));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_3(global2.a, 1272f, !(!(!select(vec4<bool>(global2.b, global4.x, false, true), vec4<bool>(true, global1.x, global1.x, true), global4.x))));
    global1 = !var_0.c.xw;
    global3 = array<u32, 21>();
    global0 = array<u32, 24>();
    global3 = array<u32, 21>();
    return vec4<u32>(0u, ~4294967295u, ~(~global2.a.b.x), ~1u);
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<u32, 24>();
    global4 = select(!(!(!(!vec4<bool>(global1.x, false, global1.x, true)))), vec4<bool>(!(arg_0 != _wgslsmith_f_op_f32(round(arg_0))), global1.x, !(!(u_input.b.x <= -2147483647i)), global1.x), all(!select(global4.wz, !vec2<bool>(true, global2.b), false)));
    var var_0 = _wgslsmith_dot_vec3_i32(-(u_input.a & _wgslsmith_sub_vec3_i32(u_input.b, u_input.a)), u_input.b);
    var var_1 = global2.a;
    global0 = array<u32, 24>();
    return ~(~47870u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(~u_input.b.yz << ((global2.a.b << (u_input.c.zx % vec2<u32>(32u))) % vec2<u32>(32u)), func_1());
    let var_1 = func_2();
    global3 = array<u32, 21>();
    let var_2 = 40788i & func_1().x;
    global1 = !global4.yy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) + global2.a.d));
    let var_4 = Struct_2(global2.a, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(func_3(_wgslsmith_f_op_f32(var_4.a.a.x * global2.a.d)), 1u, 10365u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, 8910u, 4294967295u, 40419u)), _wgslsmith_add_vec4_u32(var_1, vec4<u32>(global3[_wgslsmith_index_u32(global2.a.b.x, 21u)], global2.a.b.x, 1u, var_4.a.b.x))))), var_1, _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 21u)], u_input.c.x, var_4.a.b.x) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global3[_wgslsmith_index_u32(30264u, 21u)], var_4.a.b.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(min(~u_input.c, vec3<u32>(1u, var_1.x, 15173u)), var_1.wxy)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(24552i, 1i, 14432i)), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, -1i, 20896i)), -7259i, func_1().x)), u_input.a.x));
}

