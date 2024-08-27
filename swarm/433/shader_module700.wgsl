struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 6>;

var<private> global2: Struct_1;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> bool {
    let var_0 = u_input.a.x;
    let var_1 = Struct_5(arg_3.c.a.x, true, Struct_3(global2.d.wxx), arg_3.c);
    global1 = array<i32, 6>();
    return global2.a.x;
}

fn func_3() -> bool {
    let var_0 = u_input.b;
    global2 = Struct_1(vec3<bool>(any(select(global0.ww, !global0.zy, 610f > global2.d.x)), !(!(global2.b > 501f)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1838f))))), vec3<u32>(var_0.x, ~10026u, reverseBits(1u)), _wgslsmith_f_op_vec4_f32(sign(global2.d)));
    global0 = !vec4<bool>(_wgslsmith_f_op_f32(select(-1000f, global2.d.x, true)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x - -247f)), 4294967295u >= var_0.x, true, global0.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -587f, _wgslsmith_f_op_f32(-global2.d.x)) + vec3<f32>(_wgslsmith_f_op_f32(global2.b * 1360f), global2.b, -510f)))));
    var var_2 = select(vec4<bool>(true, global2.a.x, any(select(!vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, global2.a.x, global0.x), any(global0.yw))), false && all(select(global0.zy, global2.a.yz, true))), vec4<bool>(true, !(any(global0.xy) & global2.a.x), !global0.x, any(!(!global2.a.zy))), !select(vec4<bool>(true, any(global2.a), global2.a.x, global2.a.x), vec4<bool>(global2.a.x, u_input.a.x < global1[_wgslsmith_index_u32(var_0.x, 6u)], !global2.a.x, true), vec4<bool>(false, any(vec4<bool>(true, global0.x, true, true)), global0.x | global2.a.x, global0.x)));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(true, false && func_2(u_input.a, global1[_wgslsmith_index_u32(global3.x, 6u)], global2.c.x, Struct_4(~u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global2.c.x, 6u)], 38133i, u_input.c, 0i), vec4<i32>(u_input.a.x, -10809i, global1[_wgslsmith_index_u32(global2.c.x, 6u)], 35287i)), Struct_1(vec3<bool>(true, false, true), 880f, global2.c, vec4<f32>(355f, global2.d.x, global2.b, global2.d.x)), vec2<bool>(global2.a.x, global0.x))), global2.a.x);
    var var_1 = !(((-global1[_wgslsmith_index_u32(58719u, 6u)] >> (countOneBits(global3.x) % 32u)) < ~(~(-29794i))) & select(u_input.a.x > u_input.a.x, true, u_input.b.x >= ~global2.c.x));
    global1 = array<i32, 6>();
    var var_2 = select(vec4<bool>(true, var_0.x, all(vec2<bool>(true, !global2.a.x)), (_wgslsmith_dot_vec3_i32(vec3<i32>(-29501i, -1i, global1[_wgslsmith_index_u32(global2.c.x, 6u)]), vec3<i32>(u_input.a.x, 0i, -1i)) <= ~global1[_wgslsmith_index_u32(16756u, 6u)]) && select(true, false, global0.x)), !(!vec4<bool>(func_3(), all(vec4<bool>(true, true, false, var_0.x)), global2.a.x, true)), vec4<bool>(global0.x, false, true, true));
    global1 = array<i32, 6>();
    return Struct_1(global2.a, global2.b, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(max(u_input.b.zyx, vec3<u32>(u_input.b.x, 38478u, 56936u)), vec3<u32>(global2.c.x, u_input.b.x, global2.c.x), u_input.b.yyz) ^ max(~vec3<u32>(1u, global2.c.x, 4294967295u), vec3<u32>(u_input.b.x, 14403u, 90069u)), u_input.b.ywx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.d.x, global2.b, 256f, 126f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, -220f, -2146f)), global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = any(vec4<bool>(true, true, all(select(vec3<bool>(false, true, global2.a.x), select(vec3<bool>(true, false, true), global0.wyw, global0.zww), true)), false));
    let var_1 = func_1();
    let var_2 = u_input.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, _wgslsmith_div_f32(global2.d.x, 1006f), 1f, func_1().d.x)))));
    global1 = array<i32, 6>();
    let var_4 = Struct_5(func_2(-(~u_input.a) >> (var_1.c.yz % vec2<u32>(32u)), 15708i, 4294967295u, Struct_4(~(~vec4<u32>(4294967295u, u_input.b.x, 14837u, 119121u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, global1[_wgslsmith_index_u32(38491u, 6u)], u_input.a.x), vec4<i32>(u_input.c, 1i, -2147483647i, 2147483647i)), func_1(), select(!global0.ww, func_1().a.yz, func_1().a.x))), false, Struct_3(global2.d.wwy), Struct_1(func_1().a, -286f, vec3<u32>(var_1.c.x, u_input.b.x, 1u >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(-var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1129f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b - var_4.d.d.x), _wgslsmith_f_op_f32(715f - -718f)))), _wgslsmith_f_op_f32(-var_4.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) * _wgslsmith_f_op_f32(-525f * var_4.c.a.x)) - -702f), global2.d.x), global2.d, -14544i, ~(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, global2.c.x, var_2, var_2), vec4<u32>(u_input.b.x, 24864u, var_1.c.x, global2.c.x)) ^ _wgslsmith_add_u32(var_4.d.c.x, global3.x), 6u)] & (i32(-1i) * -1i)));
}

