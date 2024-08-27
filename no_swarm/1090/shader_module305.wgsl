struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(4294967295u, 0u, 25703u, 6856u, 0u, 0u, 89401u, 132117u, 0u, 0u, 4294967295u, 0u, 535u, 1u, 76226u, 4294967295u);

var<private> global1: array<Struct_3, 13>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, vec4<bool>(true, true, false, false), true, true, false), Struct_1(false, vec4<bool>(false, false, false, true), true, true, false), Struct_1(false, vec4<bool>(true, false, false, false), false, false, true), Struct_1(false, vec4<bool>(true, false, true, true), false, true, true), Struct_1(true, vec4<bool>(false, false, true, false), true, true, true), Struct_1(true, vec4<bool>(false, false, true, true), false, true, false), Struct_1(false, vec4<bool>(false, false, false, false), false, true, false), Struct_1(true, vec4<bool>(false, true, true, false), false, true, false), Struct_1(false, vec4<bool>(true, false, false, false), true, true, false), Struct_1(false, vec4<bool>(true, false, false, false), true, true, false), Struct_1(false, vec4<bool>(true, false, true, false), true, false, true));

var<private> global3: Struct_2 = Struct_2(1u);

var<private> global4: array<bool, 26>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = ~0u;
    var var_1 = ~u_input.c;
    let var_2 = arg_1;
    let var_3 = -46823i;
    var_0 = _wgslsmith_add_u32(~(~u_input.c.x), u_input.c.x);
    return arg_0.zw;
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = reverseBits(~46956u);
    var var_1 = all(!select(arg_0.b.a.yw, vec2<bool>(arg_0.b.a.x & global4[_wgslsmith_index_u32(var_0, 26u)], false), true));
    let var_2 = countOneBits(1i);
    global2 = array<Struct_1, 11>();
    var var_3 = select(true, !global4[_wgslsmith_index_u32(global3.a ^ var_0, 26u)] | true, true);
    return ~abs(max(1u, 39467u));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1114f - 1000f), 714f, _wgslsmith_f_op_f32(1515f * 1000f), -450f), vec4<f32>(_wgslsmith_f_op_f32(sign(-317f)), -608f, -439f, _wgslsmith_f_op_f32(round(-761f)))), global1[_wgslsmith_index_u32(7342u, 13u)])));
    let var_2 = Struct_2(73889u);
    global4 = array<bool, 26>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -537f);
    return Struct_3(select(vec4<bool>(true, global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, global3.a, 0u, u_input.c.x), vec4<u32>(0u, 44601u, global3.a, 16031u)), 26u)], ~8520u <= global0[_wgslsmith_index_u32(func_3(Struct_4(u_input.a, Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31071u, 16u)], 26u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 16u)], 26u)], global4[_wgslsmith_index_u32(global3.a, 26u)], false), -2147483647i))), 16u)], any(!vec4<bool>(global4[_wgslsmith_index_u32(12784u, 26u)], global4[_wgslsmith_index_u32(u_input.c.x, 26u)], global4[_wgslsmith_index_u32(19449u, 26u)], global4[_wgslsmith_index_u32(0u, 26u)]))), select(!select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], global4[_wgslsmith_index_u32(global3.a, 26u)], global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(8269u, 26u)], global4[_wgslsmith_index_u32(73673u, 26u)], true), false), !(!vec4<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a, 16u)], 26u)], false, false, true)), false), true), -u_input.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_4) -> vec3<f32> {
    global4 = array<bool, 26>();
    let var_0 = firstLeadingBit(vec2<i32>(arg_3.a, u_input.a));
    var var_1 = vec2<i32>(min(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(24037i, u_input.b, -6257i), vec3<i32>(8198i, -1i, -2147483647i)), ~vec3<i32>(arg_1.b, var_0.x, var_0.x)), -(~u_input.a)) ^ arg_1.b, -65105i);
    var var_2 = ~(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, countOneBits(u_input.c.x)), 52374u) & u_input.c.x);
    let var_3 = Struct_4(firstLeadingBit(105436i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, 103868u, 23010u), vec4<u32>(arg_2.x, u_input.c.x, 13986u, 0u)) % 32u)), arg_1);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(true, true));
    let var_1 = vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 4294967295u), 16u)], 1u);
    var var_2 = ~_wgslsmith_dot_vec2_u32(~var_1, ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 30231u), max(u_input.c, vec2<u32>(0u, var_1.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-261f, 1930f, 487f)), func_1(), abs(vec3<u32>(0u, u_input.c.x, u_input.c.x)), Struct_4(-2147483647i, global1[_wgslsmith_index_u32(17705u, 13u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1472f, -1412f, 617f) * vec3<f32>(-404f, 1960f, -661f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 1000f, 287f))))))));
    var var_4 = 27393u;
    let x = u_input.a;
    s_output = StorageBuffer(global3.a, 2147483647i, 1249f, -vec2<i32>(u_input.a, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))));
}

