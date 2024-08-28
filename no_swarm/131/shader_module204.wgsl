struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(14992u, 0u, 1u), vec4<f32>(-131f, 485f, -1876f, 573f), vec3<i32>(1083i, 0i, i32(-2147483648)), vec2<f32>(1000f, -1155f), Struct_1(vec4<i32>(-1i, -14409i, 7927i, 1i), vec3<i32>(i32(-2147483648), 1i, -28289i), -1471f));

var<private> global2: array<bool, 32>;

var<private> global3: array<f32, 6>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    let var_0 = false;
    global0 = array<i32, 8>();
    global2 = array<bool, 32>();
    let var_1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(926f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), global1.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 6u)])))), ~global1.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global1.d, global1.b.zx, vec2<bool>(1407f > global1.d.x, any(vec2<bool>(global2[_wgslsmith_index_u32(70554u, 32u)], var_0))))))), global1.e);
    var var_2 = vec4<i32>(-21849i, ~reverseBits(3176i ^ global1.e.b.x), var_1.c.x, global1.e.b.x);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-627f)), 528f))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 6u)], var_1.d.x));
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global1.b)), global1.b, false)), global1.b)), vec3<i32>(8297i, global0[_wgslsmith_index_u32(~20700u, 8u)], global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(0u, 17486u)) >> (_wgslsmith_mult_u32(1u, global1.a.x) % 32u), 8u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, global1.e.c))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global1.e.c, global3[_wgslsmith_index_u32(global1.a.x, 6u)]), global1.b.wz), global1.d)))) + _wgslsmith_f_op_vec2_f32(func_3())), Struct_1((vec4<i32>(global1.e.b.x, 2147483647i, global1.e.a.x, global1.e.b.x) & firstLeadingBit(vec4<i32>(-10189i, global1.e.b.x, global1.e.a.x, 9107i))) ^ abs(vec4<i32>(global0[_wgslsmith_index_u32(global1.a.x, 8u)], global0[_wgslsmith_index_u32(34652u, 8u)], global0[_wgslsmith_index_u32(global1.a.x, 8u)], -2147483647i)), vec3<i32>(-7231i, _wgslsmith_dot_vec4_i32(countOneBits(global1.e.a), firstTrailingBit(global1.e.a)), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 8u)], 2376i) & -3443i), _wgslsmith_f_op_vec2_f32(func_3()).x));
    var var_0 = global1.e.c;
    global3 = array<f32, 6>();
    var var_1 = select(!vec3<bool>(true, any(vec3<bool>(global2[_wgslsmith_index_u32(57295u, 32u)], arg_0.x, arg_0.x)), (arg_0.x | true) | global2[_wgslsmith_index_u32(53683u << (u_input.a.x % 32u), 32u)]), arg_0.wwy, vec3<bool>(!(!global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), global2[_wgslsmith_index_u32(u_input.a.x, 32u)], false));
    var_0 = _wgslsmith_f_op_vec2_f32(func_3()).x;
    return u_input.a;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = Struct_3(vec3<u32>(global1.a.x, 1u, ~2617u), _wgslsmith_f_op_vec4_f32(-global1.b), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2(arg_0), vec2<u32>(reverseBits(4294967295u), ~1u)), 8u)], firstTrailingBit(global0[_wgslsmith_index_u32(global1.a.x, 8u)]), -1i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.b.wy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d))))), global1.e);
    var var_1 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, var_0.a.x), ~abs(39602u)) & _wgslsmith_div_u32(25852u, _wgslsmith_dot_vec2_u32(~abs(u_input.a), _wgslsmith_div_vec2_u32(global1.a.xy, vec2<u32>(1u, var_0.a.x) << (vec2<u32>(15237u, global1.a.x) % vec2<u32>(32u)))));
    var_1 = _wgslsmith_clamp_u32(var_0.a.x, ~global1.a.x, u_input.a.x);
    var var_2 = func_2(!(!select(!arg_0, vec4<bool>(true, true, arg_0.x, false), vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(global1.a.x, 32u)], true, global2[_wgslsmith_index_u32(57437u, 32u)])))).x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2029f, global3[_wgslsmith_index_u32(4294967295u, 6u)], 1553f, var_0.e.c)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(8091u, 6u)], global1.d.x, global1.b.x, -145f))), select(arg_0, arg_0, arg_0))) - global1.b))), arg_0.zyx, var_0.e);
    return _wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(866i, -51278i, ~(~abs(global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), -_wgslsmith_clamp_i32(~global1.c.x, ~global1.e.a.x, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global1.e.b.x))), vec3<i32>(-(~global0[_wgslsmith_index_u32(4294967295u, 8u)] | _wgslsmith_mod_i32(global1.e.b.x, 1i)), 1i, _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(40801u, 8u)])), _wgslsmith_f_op_f32(-708f - -1218f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_add_u32(select(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(global1.a.x, 50267u, u_input.a.x, 0u)), ~1u), !global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.a.x, 150279u), 32u)]), global1.a.x), ~func_1(!select(vec4<bool>(false, true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(5394u, 32u)], true), global2[_wgslsmith_index_u32(0u, 32u)])));
}

