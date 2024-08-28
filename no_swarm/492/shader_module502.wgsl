struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_3) -> i32 {
    global1 = array<vec4<bool>, 11>();
    global1 = array<vec4<bool>, 11>();
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(64750u, firstTrailingBit(4294967295u), arg_1.d), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, ~u_input.d.x), ~(arg_1.d & arg_1.d), ~arg_1.d)), ~(~reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, arg_1.d))));
    global0 = array<vec2<bool>, 23>();
    return arg_1.b;
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<bool>, 23>();
    let var_0 = 4294967295u;
    var var_1 = u_input.d.yx;
    var var_2 = _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -13444i, -1i), vec4<i32>(-2147483647i, -14837i, u_input.b, 1i))), firstTrailingBit(~vec3<i32>(39984i, u_input.b, u_input.c)))), min(vec3<i32>(-1i) * -(vec3<i32>(-1i, -1i, u_input.b) >> (vec3<u32>(var_1.x, 1u, var_0) % vec3<u32>(32u))), vec3<i32>(max(0i, 78322i) & _wgslsmith_mod_i32(-25592i, u_input.c), -9662i, _wgslsmith_mod_i32(-1i, u_input.c >> (var_0 % 32u)))));
    global1 = array<vec4<bool>, 11>();
    return Struct_2(Struct_1(326f, var_2.x, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(671f, -587f, 593f))), Struct_1(-1222f, var_2.x | 2147483647i, _wgslsmith_add_i32(5747i, 0i), var_1.x, true), ~vec4<i32>(-1i, 2147483647i, 1i, -12231i) >> (u_input.a % vec4<u32>(32u)), Struct_3(29330i ^ u_input.c)), var_1.x, any(vec4<bool>(true, true, all(global0[_wgslsmith_index_u32(4294967295u, 23u)]), true))), vec4<i32>(var_2.x, var_2.x, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.c, -2147483647i, 0i)), ~vec4<i32>(41516i, u_input.c, var_2.x, -27385i)), var_2.x >> (1u % 32u)));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    global0 = array<vec2<bool>, 23>();
    let var_0 = ~abs(~u_input.d.xy);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, u_input.b), u_input.b);
    global1 = array<vec4<bool>, 11>();
    let var_2 = func_2();
    return vec2<bool>(true, 4294967295u > ~(~(30266u | u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 11>();
    var var_0 = select(select(!global0[_wgslsmith_index_u32(select(~39040u, _wgslsmith_add_u32(4294967295u, u_input.e), true), 23u)], func_1(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_clamp_u32(36253u, 4294967295u, 0u))), select(select(func_1(u_input.e), vec2<bool>(true, false), true), vec2<bool>(true, true), false)), select(!func_1(min(u_input.a.x, 80965u)), select(vec2<bool>(func_2().a.e, true), !global0[_wgslsmith_index_u32(reverseBits(u_input.d.x), 23u)], false), any(global1[_wgslsmith_index_u32(60352u, 11u)])), true);
    var var_1 = Struct_3(-abs(u_input.b) & _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.c), 1i, u_input.b), vec3<i32>(43556i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-10130i, 0i), vec2<i32>(2147483647i, u_input.b)))));
    let var_2 = vec4<i32>(0i, 84295i, countOneBits(_wgslsmith_mult_i32(var_1.a, 30619i)) & _wgslsmith_mult_i32(abs(firstTrailingBit(u_input.b)), _wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(0i, u_input.b, var_1.a))), -1i);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1000f - 536f), _wgslsmith_f_op_f32(f32(-1f) * -420f), 1547f, _wgslsmith_f_op_f32(f32(-1f) * -190f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-751f, 218f, 2157f, 1000f) - vec4<f32>(-185f, 631f, -428f, -149f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(173f, 474f, 1059f, -1169f), vec4<f32>(333f, -871f, -496f, 1295f), global1[_wgslsmith_index_u32(u_input.e, 11u)]))))))));
    let var_4 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x ^ max(u_input.d.x, 69617u), _wgslsmith_div_u32(14094u ^ u_input.a.x, min(10391u, u_input.d.x))), countOneBits(u_input.a.x) << (39701u % 32u)), 1u);
    global0 = array<vec2<bool>, 23>();
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_5.b.x, var_2.x, -2147483647i), _wgslsmith_add_i32(u_input.c & _wgslsmith_dot_vec2_i32(var_5.b.zz, vec2<i32>(1i, var_5.b.x)), 25761i), firstTrailingBit(var_1.a)));
}

