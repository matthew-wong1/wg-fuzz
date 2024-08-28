struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: Struct_5 = Struct_5(vec2<f32>(-460f, -615f), Struct_1(vec2<i32>(0i, 0i), vec4<bool>(false, true, false, true)), vec4<f32>(317f, -1241f, 674f, 1979f));

var<private> global2: array<Struct_4, 20>;

var<private> global3: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(firstLeadingBit(10761u)), min(~u_input.a.x, u_input.e.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u | u_input.b.x, _wgslsmith_sub_u32(u_input.e.x, 1u), _wgslsmith_mod_u32(u_input.e.x, 110472u)), u_input.a)), 20u)];
    global1 = Struct_5(var_0.b.zy, global1.b, global1.c);
    global2 = array<Struct_4, 20>();
    global1 = Struct_5(_wgslsmith_f_op_vec2_f32(-var_0.b.zw), global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - -1000f))), 444f, _wgslsmith_f_op_f32(round(-374f)), 836f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) + vec4<f32>(1151f, 734f, var_0.b.x, arg_3.x)))));
    global2 = array<Struct_4, 20>();
    return global1.b.b;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(381f, global1.a.x, false)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-1369f * -1695f), _wgslsmith_f_op_f32(ceil(-542f))) + _wgslsmith_div_vec4_f32(global1.c, global1.c))));
    var_0 = global1.c;
    var var_1 = -2147483647i;
    var var_2 = select(select(select(func_3(Struct_2(global1.b.b.xx, vec3<i32>(global1.b.a.x, arg_1, global1.b.a.x)), _wgslsmith_f_op_vec2_f32(var_0.xz * vec2<f32>(global1.c.x, var_0.x)), Struct_3(51058i), _wgslsmith_f_op_vec3_f32(-var_0.yxw)), global1.b.b, global0[_wgslsmith_index_u32(~(4294967295u | u_input.a.x), 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u ^ arg_0, 17u)], !global1.b.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true), select(func_3(Struct_2(vec2<bool>(true, true), vec3<i32>(-2147483647i, 41179i, -2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x)), Struct_3(2147483647i), vec3<f32>(1803f, var_0.x, 128f)), vec4<bool>(func_3(Struct_2(global1.b.b.xz, u_input.c.wxy), vec2<f32>(-1911f, -847f), Struct_3(6686i), vec3<f32>(var_0.x, global1.a.x, global1.c.x)).x, false & global1.b.b.x, true, false & global1.b.b.x), true)), global1.b.b, true);
    let var_3 = min(_wgslsmith_div_vec3_u32(abs(~u_input.a.zzz), select(abs(u_input.a.xwz), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 34479u, u_input.b.x), u_input.b), false)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 0u), u_input.e))) ^ countOneBits(~max(vec3<u32>(474u, u_input.b.x, 1u), u_input.a.www) & (_wgslsmith_div_vec3_u32(u_input.b, u_input.b) ^ vec3<u32>(arg_0, arg_0, arg_0)));
    return true;
}

fn func_1() -> StorageBuffer {
    var var_0 = !(!(global1.b.b.x && (global1.a.x != _wgslsmith_f_op_f32(ceil(global1.c.x)))));
    let var_1 = Struct_1(vec2<i32>(754i, -1i), select(vec4<bool>(false, global1.b.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 17u)], false), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(72222u), u_input.b.x), 17u)], all(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global1.b.b.x, global0[_wgslsmith_index_u32(31761u, 17u)])), -2147483647i != _wgslsmith_clamp_i32(-32505i, -516i, u_input.d.x), !func_2(82452u, global1.b.a.x, vec3<i32>(global1.b.a.x, u_input.d.x, 2147483647i))), true));
    var var_2 = var_1.a.x;
    var var_3 = vec3<i32>(-1i) * -u_input.c.zwz;
    let var_4 = var_1.a.x;
    return StorageBuffer(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(-64410i, var_4), -_wgslsmith_sub_i32(max(var_1.a.x, -1i), global1.b.a.x)), 1i, ~reverseBits(_wgslsmith_add_vec4_u32(u_input.a, u_input.a)), ~countOneBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

