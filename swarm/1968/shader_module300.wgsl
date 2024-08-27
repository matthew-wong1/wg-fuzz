struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: bool;

var<private> global3: array<f32, 29> = array<f32, 29>(384f, 718f, -402f, -775f, -1250f, 352f, 145f, -1000f, 1379f, -101f, -589f, 534f, -1045f, 1340f, 1118f, 719f, 1686f, -1000f, -956f, -407f, 436f, -273f, 985f, 1060f, -1283f, -975f, -914f, 2147f, -2383f);

var<private> global4: vec4<u32> = vec4<u32>(1u, 5791u, 5449u, 17012u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global3 = array<f32, 29>();
    let var_0 = 0i;
    global1 = Struct_2(Struct_1(select(global4.x, ~_wgslsmith_mod_u32(arg_0.a, 1u), true)), global1.b, u_input.c.xz);
    global3 = array<f32, 29>();
    let var_1 = Struct_4(Struct_3(firstTrailingBit(~(92548u | global0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_0.a), 29u)] * _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(9865u, 29u)], global3[_wgslsmith_index_u32(u_input.b.x, 29u)], false))))), global4.zz), global1.a, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(53997u, 29u)]), Struct_3(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4.x, 29u)]), 2261f)), min(global4.zz ^ ~u_input.b.zx, global4.yw)));
    return false;
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = u_input.c.x;
    let var_1 = global1.c.x;
    var_0 = _wgslsmith_mult_i32(-2147483647i, abs(0i));
    global4 = firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(global1.a.a, reverseBits(4294967295u)), _wgslsmith_mult_u32(global0.a, ~14555u), 0u >> (1u % 32u), ~1u) | ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, global1.a.a, global4.x, 4294967295u), ~vec4<u32>(u_input.b.x, 67854u, global1.a.a, u_input.b.x)));
    global1 = Struct_2(Struct_1(global4.x), min(~select(vec2<i32>(u_input.c.x, u_input.c.x), global1.c, false), vec2<i32>(38011i, -1i)) ^ vec2<i32>(_wgslsmith_mod_i32(global1.c.x, u_input.c.x), abs(global1.b.x)), -_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 10477i), global1.b), vec2<i32>(min(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(640i, u_input.c.x)))));
    return 86025u;
}

fn func_1() -> bool {
    let var_0 = all(vec3<bool>(!(any(vec4<bool>(false, false, true, true)) || (global1.b.x >= -6130i)), true, func_2(global1.a)));
    global0 = global1.a;
    let var_1 = Struct_3(min(firstLeadingBit(func_3(!vec2<bool>(var_0, true))), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 29u)] * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(global1.a.a), 29u)])) - 123f), ~global4.xx);
    let var_2 = Struct_3(global1.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_f_op_f32(select(1681f, var_1.b, false))) + -1000f), _wgslsmith_f_op_f32(-var_1.b))), countOneBits(vec2<u32>(_wgslsmith_mod_u32(var_1.a, 4294967295u), global4.x)) >> (var_1.c % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(sign(-667f))));
    return any(!(!(!(!vec2<bool>(true, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global2 = func_1();
    var var_1 = Struct_1(20131u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, global3[_wgslsmith_index_u32(~(~21836u), 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, global3[_wgslsmith_index_u32(var_1.a, 29u)])) - _wgslsmith_f_op_f32(f32(-1f) * -222f)), _wgslsmith_f_op_f32(f32(-1f) * -747f))));
    var var_3 = Struct_1(~u_input.b.x);
    let var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_3.a, var_3.a, global1.a.a, var_3.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global4.x, 0u, 4294967295u), vec4<u32>(4294967295u, global0.a, u_input.b.x, 4294967295u)))), _wgslsmith_add_vec2_i32(u_input.c.yx, _wgslsmith_clamp_vec2_i32(global1.b, vec2<i32>(-u_input.c.x, ~41658i), _wgslsmith_clamp_vec2_i32(~u_input.c.zy, abs(vec2<i32>(2039i, -27067i)), abs(vec2<i32>(-21957i, global1.b.x))))), vec2<i32>(2147483647i, firstTrailingBit(-7419i)));
    var_0 = u_input.c.x;
    var var_5 = var_2.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.ywz, _wgslsmith_f_op_f32(-var_2.x));
}

