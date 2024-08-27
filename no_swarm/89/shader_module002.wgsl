struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec2<bool>(false, false), false), i32(-2147483648), vec4<u32>(15174u, 7331u, 249u, 80768u));

var<private> global2: array<u32, 26>;

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(any(select(vec4<bool>(arg_2.b, true, global0[_wgslsmith_index_u32(u_input.a, 27u)] != global0[_wgslsmith_index_u32(u_input.a, 27u)], global1.c <= 13174i), vec4<bool>(false, true, select(arg_1, true, arg_0), true), select(!vec4<bool>(arg_2.a.x, arg_1, true, true), !vec4<bool>(arg_1, arg_0, arg_2.b, arg_2.a.x), global1.c > global1.c))), Struct_1(vec2<bool>(true, 1i <= abs(global1.c)), all(vec4<bool>(true, !arg_1, !arg_0, true))), global1.c, global1.d);
    return abs(_wgslsmith_div_i32(~(~(~0i)), max(u_input.b.x, -var_0.c & _wgslsmith_mult_i32(-1i, global1.c))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_2(true, Struct_1(global1.b.a, true), _wgslsmith_mult_i32(-32676i, global1.c), countOneBits(~(~_wgslsmith_sub_vec4_u32(global1.d, vec4<u32>(0u, 1u, 4294967295u, u_input.a)))));
    global1 = var_0;
    global1 = Struct_2(!arg_0.x || all(arg_0.zzw), Struct_1(arg_0.zx, global0[_wgslsmith_index_u32(abs(4294967295u), 27u)] > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 27u)])) * global0[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(u_input.b.x), select(1i, -2147483647i, true)), ~(-15613i)), ~func_3(true, global2[_wgslsmith_index_u32(0u, 26u)] <= 4294967295u, Struct_1(vec2<bool>(var_0.b.b, false), false))), global1.d);
    var var_1 = false;
    let var_2 = (1i | (i32(-1i) * -global1.c)) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, firstTrailingBit(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 17486i, -2147483647i), arg_2), 1i), reverseBits(u_input.b));
    return global0[_wgslsmith_index_u32(~u_input.a, 27u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = vec2<i32>(~max(-39628i ^ -u_input.b.x, _wgslsmith_sub_i32(global1.c << (0u % 32u), max(-2147483647i, 2147483647i))), _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(select(vec4<i32>(-26028i, global1.c, 0i, global1.c), vec4<i32>(0i, -4510i, -2147483647i, 2147483647i), vec4<bool>(true, global1.b.a.x, false, false)), -u_input.b), u_input.b));
    global2 = array<u32, 26>();
    var var_1 = global1.b;
    global1 = Struct_2(arg_0.x, Struct_1(select(!var_1.a, vec2<bool>(true, arg_0.x), !(global1.b.a.x & arg_0.x)), global1.a), u_input.b.x, global1.d);
    let var_2 = global1.b;
    return Struct_1(vec2<bool>(true, (all(arg_0) || any(vec2<bool>(var_2.b, var_2.a.x))) & var_2.a.x), any(vec2<bool>(true, true)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global1.b.a;
    global3 = ~(~firstLeadingBit(1u));
    global1 = Struct_2(true, global1.b, ~_wgslsmith_div_i32(_wgslsmith_add_i32(abs(69078i), ~global1.c), -(~u_input.b.x)), global1.d);
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    global0 = array<f32, 27>();
    global1 = Struct_2(global1.a, func_5(all(vec4<bool>(any(vec2<bool>(arg_1, true)), true, arg_1, !arg_1)), func_4(select(!vec3<bool>(false, true, arg_1), !vec3<bool>(global1.b.a.x, arg_1, true), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec4<bool>(global1.b.a.x, false, arg_1, arg_1), true, u_input.b.zzz)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 27u)]))), global1.d.xz), true, global1.b), 26671i, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(reverseBits(global1.d.x), 26u)], ~global2[_wgslsmith_index_u32(0u, 26u)], abs(u_input.a), global1.d.x), vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_mod_u32(global1.d.x, global1.d.x), _wgslsmith_div_u32(u_input.a, global2[_wgslsmith_index_u32(13043u, 26u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(36184u, 4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global1.d.x, 26u)]), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(global1.d.x, 26u)], 4294967295u, u_input.a))), countOneBits(global1.d)));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-970f - arg_0);
    return Struct_2(!func_5(true, global1.b, !any(vec4<bool>(false, arg_1, arg_1, arg_1)), func_5(arg_1, global1.b, true, Struct_1(global1.b.a, false))).b, Struct_1(select(global1.b.a, vec2<bool>(var_1, true), true), arg_1), max(0i, -2147483647i), vec4<u32>(select(_wgslsmith_clamp_u32(0u, global1.d.x, 29830u), _wgslsmith_mod_u32(15148u, 4294967295u) >> (_wgslsmith_dot_vec4_u32(global1.d, global1.d) % 32u), select(select(arg_1, true, true), select(true, true, arg_1), true)), 1u, _wgslsmith_add_u32(1u, ~(~global2[_wgslsmith_index_u32(global1.d.x, 26u)])), firstLeadingBit(select(1u | global1.d.x, reverseBits(global1.d.x), global1.b.b))));
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 27>();
    let var_0 = arg_3.a;
    global0 = array<f32, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-857f, global0[_wgslsmith_index_u32(23862u, 27u)]), vec2<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 27u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(arg_3.d.x, 27u)], 2055f), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 975f), arg_3.b.a)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-640f, 1000f), vec2<f32>(984f, global0[_wgslsmith_index_u32(1u, 27u)]), false))))));
    var var_2 = arg_3.b.b;
    return func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3.d.x, 27u)])))), var_1.x, arg_2)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    var var_0 = true;
    let var_1 = func_6(~(-(~global1.c)), min(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26035u, global2[_wgslsmith_index_u32(u_input.a, 26u)], global1.d.x), global1.d.yyz), countOneBits(u_input.a))) << ((select(92415u, 1u, global1.b.a.x) << ((global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.d, global1.d), 26u)] ^ 1u) % 32u)) % 32u), global1.a, func_1(-1000f, true));
    let var_2 = vec2<f32>(1062f, _wgslsmith_f_op_f32(func_2(select(select(vec4<bool>(false, true, global1.a, false), !vec4<bool>(false, true, true, var_1.b.a.x), 863i >= var_1.c), !select(vec4<bool>(true, var_1.a, var_1.a, global1.b.b), vec4<bool>(global1.b.a.x, global1.a, true, var_1.a), vec4<bool>(global1.a, false, true, global1.a)), false), var_1.b.a.x, ~(-vec3<i32>(global1.c, -2147483647i, global1.c)) & firstLeadingBit(u_input.b.wwx))));
    var var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zz & u_input.b.wz, max(_wgslsmith_mod_vec3_u32(var_1.d.zzx, ~vec3<u32>(var_1.d.x, global1.d.x, 1u)), vec3<u32>(0u, ~u_input.a, 0u)) << (~var_1.d.wzz % vec3<u32>(32u)), -186f);
}

