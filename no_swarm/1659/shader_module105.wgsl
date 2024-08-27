struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(180f, 540f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> f32 {
    let var_0 = reverseBits(-(~vec2<i32>(arg_0, ~arg_0)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(-1703f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.a + 279f), -304f)))));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_2 = 2057f;
    return arg_1.e.x;
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(802f * global0[_wgslsmith_index_u32(u_input.a, 2u)]) * 1715f))), global0[_wgslsmith_index_u32(min(~u_input.a, 72188u), 2u)]);
    let var_1 = Struct_3(vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(u_input.a, 2u)])))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(147f * -1497f), -770f, select(true, false, false))), !all(vec4<bool>(true, true, true, true)), true));
    let var_2 = ~(~u_input.a);
    return vec3<bool>(!var_1.a.x, var_1.a.x, true);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(vec3<bool>(true, true, true));
    var var_1 = Struct_3(func_4(Struct_2(_wgslsmith_f_op_f32(func_3(2147483647i, Struct_4(Struct_2(-619f), var_0.a.xz, var_0.a, u_input.a, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 728f, 566f, global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]))))));
    var var_2 = Struct_3(func_4(Struct_2(1039f)));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(vec3<bool>(!all(var_0.a), !(var_2.a.x & (var_2.a.x && var_0.a.x)), true));
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(22451u, 53731u), 2u)])))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    global0 = array<f32, 2>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-507f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(0i, arg_1, arg_1.a.a))))), _wgslsmith_f_op_f32(arg_1.e.x + 725f), true)));
    var var_1 = (~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(arg_1.d, u_input.a)) >> (_wgslsmith_clamp_u32(3427u | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d, u_input.a, arg_1.d, 16175u), vec4<u32>(4294967295u, u_input.a, 4294967295u, arg_1.d)), 29527u, u_input.a | (29349u << (arg_1.d % 32u))) % 32u)) ^ (arg_1.d ^ _wgslsmith_mult_u32(0u, 85151u));
    let var_2 = arg_1.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(2147483647i, arg_1, 110f))))));
    return arg_1;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = Struct_4(arg_2.a, !arg_1.a.xx, arg_1.a, arg_2.d, arg_2.e);
    let var_1 = vec4<bool>(!var_0.c.x, !(arg_0 && ((arg_1.a.x | arg_0) || true)), false, !(!arg_2.b.x));
    let var_2 = 31651i;
    let var_3 = -256f;
    var var_4 = 1000f;
    return vec3<bool>(true, all(func_4(Struct_2(-1115f))), !var_0.c.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<i32>) -> i32 {
    global0 = array<f32, 2>();
    let var_0 = select(func_6(false, Struct_3(vec3<bool>(false, !arg_0.a.x, u_input.a > u_input.a)), func_5(func_2(), Struct_4(Struct_2(global0[_wgslsmith_index_u32(1u, 2u)]), select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(arg_0.a.x, false), true), !arg_0.a, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], -979f))))), func_6(false, Struct_3(!vec3<bool>(arg_0.a.x, false, true)), func_5(func_5(func_2(), func_5(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 2u)]), Struct_4(Struct_2(-1017f), vec2<bool>(arg_0.a.x, true), arg_0.a, u_input.a, vec4<f32>(1054f, -987f, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(82662u, 2u)])))).a, func_5(func_5(Struct_2(global0[_wgslsmith_index_u32(1u, 2u)]), Struct_4(Struct_2(-690f), vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a, 1u, vec4<f32>(1835f, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], 386f))).a, func_5(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 2u)]), Struct_4(Struct_2(global0[_wgslsmith_index_u32(66385u, 2u)]), vec2<bool>(false, false), vec3<bool>(false, true, arg_0.a.x), 43298u, vec4<f32>(193f, -1361f, global0[_wgslsmith_index_u32(u_input.a, 2u)], 1936f)))))), arg_0.a.x);
    let var_1 = 2147483647i >= _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-10694i, arg_2.x, arg_2.x), abs(vec3<i32>(0i, arg_1.x, arg_2.x) ^ vec3<i32>(arg_1.x, arg_2.x, arg_2.x))), _wgslsmith_mod_vec3_i32(~abs(arg_1), vec3<i32>(-2147483647i, -arg_1.x, _wgslsmith_div_i32(-2147483647i, -48577i))));
    var var_2 = arg_1;
    let var_3 = arg_1.x;
    return firstTrailingBit(-arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, -(~firstTrailingBit(33078i)), -2147483647i, firstTrailingBit(-abs(-36583i))), 22299i, vec4<i32>(_wgslsmith_sub_i32(0i, -countOneBits(0i)), _wgslsmith_clamp_i32(1i, ~50576i, ~(~(-2147483647i))), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(9839i, -44274i, 33544i), vec3<i32>(5338i, -2147483647i, -2147483647i)), select(vec3<i32>(32033i, 0i, 2147483647i), vec3<i32>(28550i, -2147483647i, -1i), false)), _wgslsmith_add_i32(~0i, _wgslsmith_div_i32(-1i, 1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(~71628i, func_1(Struct_3(vec3<bool>(false, true, true)), vec3<i32>(-2147483647i, -2147483647i, 2858i), vec3<i32>(17691i, 0i, 2147483647i))))), firstTrailingBit(select(~vec4<u32>(48297u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, 58755u, 4294967295u), true)) & _wgslsmith_div_vec4_u32((vec4<u32>(5750u, 48940u, u_input.a, u_input.a) | vec4<u32>(4294967295u, u_input.a, 28236u, u_input.a)) ^ (vec4<u32>(14486u, 1u, u_input.a, 38992u) | vec4<u32>(0u, u_input.a, 4294967295u, 1u)), abs(~vec4<u32>(17146u, u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 2u)])), global0[_wgslsmith_index_u32(u_input.a, 2u)])));
}

