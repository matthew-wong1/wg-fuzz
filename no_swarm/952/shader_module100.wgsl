struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 3>;

var<private> global3: array<vec4<f32>, 31>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    global0 = array<Struct_1, 26>();
    global2 = array<f32, 3>();
    global2 = array<f32, 3>();
    global0 = array<Struct_1, 26>();
    let var_0 = u_input.b;
    return -6854i;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    var var_0 = ~(~arg_1.c.wzw);
    let var_1 = Struct_1(!all(vec2<bool>(arg_1.a.c, any(vec2<bool>(false, false)))), all(select(!select(vec3<bool>(true, global1.a.a, true), vec3<bool>(true, true, global1.a.b), false), !(!vec3<bool>(global1.a.c, global1.a.b, true)), vec3<bool>(!global1.a.c, u_input.d == -2147483647i, !arg_1.a.a))), false, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.a.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-562f, arg_0.x), _wgslsmith_f_op_f32(-arg_1.b.x))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(var_0.x), 3u)] * global2[_wgslsmith_index_u32(u_input.b.x, 3u)]))));
    let var_2 = ~(~var_0.x);
    var_0 = firstLeadingBit(vec3<u32>(max(~global1.c.x, var_2), 1u ^ abs(var_0.x), u_input.c));
    var var_3 = Struct_2(var_1, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zy)), global1.b)))), vec4<u32>(max(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, var_2, arg_1.c.x), firstLeadingBit(global1.c.x)), _wgslsmith_mult_u32(abs(var_0.x), arg_1.c.x)), var_2, firstTrailingBit(u_input.b.x), arg_1.c.x | ~1u));
    return false && !(1i >= u_input.d);
}

fn func_1() -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.c, ~_wgslsmith_mult_vec4_u32(global1.c, (vec4<u32>(85654u, 4294967295u, global1.c.x, 0u) & vec4<u32>(u_input.c, 0u, 4294967295u, global1.c.x)) & (global1.c >> (global1.c % vec4<u32>(32u))))), 31u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(11150u, u_input.c), 26u)];
    let var_2 = _wgslsmith_add_vec3_i32(min((~vec3<i32>(u_input.d, u_input.d, 1i) | min(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(47304i, u_input.d, u_input.d))) ^ vec3<i32>(i32(-1i) * -28177i, -2147483647i | u_input.d, u_input.d), vec3<i32>(-12155i, u_input.d, i32(-1i) * -21968i) << (select(_wgslsmith_mult_vec3_u32(vec3<u32>(9657u, global1.c.x, 25306u), global1.c.wzx), _wgslsmith_mod_vec3_u32(vec3<u32>(19361u, 4294967295u, u_input.b.x), global1.c.wyw), vec3<bool>(true, false, false)) % vec3<u32>(32u))), vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d)), vec2<i32>(u_input.d, u_input.d)), countOneBits(vec2<i32>(u_input.d, -5180i))), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -760f, -708f, -1421f)), true)))));
    var var_3 = true;
    let var_4 = select(!vec4<bool>(u_input.d <= ~u_input.d, global1.a.c, func_3(vec4<f32>(-860f, global2[_wgslsmith_index_u32(global1.c.x, 3u)], var_1.d.x, -1610f), Struct_2(Struct_1(true, false, true, global1.a.d), vec2<f32>(global1.a.d.x, global1.b.x), vec4<u32>(4294967295u, 46617u, global1.c.x, 1u))), all(select(vec4<bool>(var_1.c, global1.a.c, true, false), vec4<bool>(global1.a.b, true, false, false), true))), !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.b, global1.a.a, global1.a.a, false), false), vec4<bool>(global1.a.b, global1.a.c, global1.a.a, global1.a.c), !vec4<bool>(true, global1.a.a, var_1.c, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, global1.a.a && global1.a.b, true, !var_1.a), !vec4<bool>(global1.a.a, false, false, true)));
    return Struct_1(global1.a.b, true, var_4.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.d, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], -276f, global2[_wgslsmith_index_u32(global1.c.x, 3u)]))) - _wgslsmith_f_op_vec3_f32(-global1.a.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(max(-891f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -735f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global2 = array<f32, 3>();
    let var_0 = func_1();
    return 478f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    global3 = array<vec4<f32>, 31>();
    let var_1 = global1.c.x;
    var_0 = global1.a;
    global3 = array<vec4<f32>, 31>();
    var var_2 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(abs(1u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.c.xw, global1.c.yz), vec2<u32>(1u, 1u))), ~min(u_input.b.x & global1.c.x, 21973u), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~26447u & ~global1.c.x), _wgslsmith_div_u32(global1.c.x, _wgslsmith_dot_vec2_u32(global1.c.zz, vec2<u32>(global1.c.x, u_input.a)))), 31u)], 510f, vec4<f32>(470f, 2724f, _wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(func_4(vec3<i32>(2147483647i, -50241i, u_input.d), abs(vec4<i32>(10304i, 2147483647i, u_input.d, u_input.d)), func_1())))));
}

