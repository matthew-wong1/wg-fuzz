struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<Struct_1, 3>;

var<private> global3: array<bool, 20> = array<bool, 20>(false, true, false, false, true, false, true, false, false, true, false, false, false, true, true, false, false, false, false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.e.xx;
    var var_1 = u_input.b;
    global2 = array<Struct_1, 3>();
    let var_2 = countOneBits(~_wgslsmith_clamp_i32(27467i, -87769i & arg_2.d.x, select(max(var_0.x, 17524i), 0i, arg_0.x)));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, arg_2.c, 607f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(exp2(arg_2.c))), _wgslsmith_f_op_f32(-arg_2.a)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(125f, 1764f, -1984f)))));
    return u_input.a.x;
}

fn func_2() -> i32 {
    let var_0 = select(abs(0i), -44727i, true);
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 3u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-864f, 321f)))) + _wgslsmith_f_op_f32(2424f * 1294f));
    global0 = true;
    var var_3 = Struct_2(Struct_1(var_2, _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(var_1.b, vec4<u32>(u_input.b, var_1.b.x, u_input.a.x, u_input.a.x)), vec4<u32>(func_3(vec3<bool>(global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(7050u, 20u)], global1.x), u_input.c.zwz, global2[_wgslsmith_index_u32(u_input.b, 3u)]), u_input.b, _wgslsmith_div_u32(var_1.b.x, 20030u), abs(41387u))), var_2, -(u_input.c.xwy >> (vec3<u32>(0u, u_input.b, var_1.b.x) % vec3<u32>(32u))) >> ((vec3<u32>(u_input.b, 29616u, 4294967295u) << (_wgslsmith_clamp_vec3_u32(var_1.b.wwz, vec3<u32>(73179u, 0u, var_1.b.x), var_1.b.zwz) % vec3<u32>(32u))) % vec3<u32>(32u)), firstTrailingBit(u_input.c.ywx)), select(global1.zw, vec2<bool>(false, false), !vec2<bool>(false, any(vec3<bool>(false, global1.x, global1.x)))));
    return 1i;
}

fn func_1(arg_0: Struct_2) -> i32 {
    global2 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1006f, arg_0.a.a), vec2<f32>(arg_0.a.c, -1699f)), vec2<f32>(1304f, -817f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(354f, arg_0.a.c)))))));
    let var_1 = false;
    var var_2 = true;
    var var_3 = vec4<bool>(!(!(!global1.x)), true, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false);
    return _wgslsmith_clamp_i32(func_2(), 1i, select(countOneBits(_wgslsmith_div_i32(min(u_input.c.x, -1i), _wgslsmith_add_i32(2363i, 45839i))), 23689i, min(u_input.c.x, select(-14233i, 17719i, arg_0.b.x)) < ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(func_1(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 3u)], global1.yz)), -1i)), countOneBits(_wgslsmith_sub_vec2_i32(max(u_input.c.xx, vec2<i32>(u_input.c.x, 1i)), u_input.c.zx))), u_input.c.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c.x & u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-18184i, u_input.c.x, 4566i, u_input.c.x), u_input.c), u_input.c.x, -u_input.c.x)), select(abs(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c, false) << (vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), vec2<u32>(u_input.b, 1u)), ~46646u, 42357u) % vec4<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c.x, -(u_input.c.x << (u_input.b % 32u)), _wgslsmith_div_i32(~u_input.c.x, -51871i)), 2147483647i));
    let var_1 = !global3[_wgslsmith_index_u32(48365u, 20u)];
    let var_2 = -u_input.c.x;
    let var_3 = 29117u;
    let var_4 = Struct_2(global2[_wgslsmith_index_u32(11231u, 3u)], vec2<bool>(false, !(1u > u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c, var_3);
}

