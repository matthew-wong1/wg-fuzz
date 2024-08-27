struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-9241i);

var<private> global1: array<i32, 9>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(1i), Struct_1(-3550i), 0u, Struct_1(15274i), vec2<bool>(true, true)), Struct_2(Struct_1(-11678i), Struct_1(1i), 695u, Struct_1(1i), vec2<bool>(false, false)), Struct_2(Struct_1(2714i), Struct_1(0i), 1u, Struct_1(i32(-2147483648)), vec2<bool>(false, true)), Struct_2(Struct_1(-12106i), Struct_1(1i), 1u, Struct_1(1i), vec2<bool>(false, false)), Struct_2(Struct_1(7577i), Struct_1(1i), 4294967295u, Struct_1(i32(-2147483648)), vec2<bool>(false, false)), Struct_2(Struct_1(4087i), Struct_1(-13412i), 4294967295u, Struct_1(35225i), vec2<bool>(true, true)), Struct_2(Struct_1(-15190i), Struct_1(2147483647i), 4825u, Struct_1(i32(-2147483648)), vec2<bool>(false, false)), Struct_2(Struct_1(39994i), Struct_1(37614i), 1u, Struct_1(-32625i), vec2<bool>(true, true)), Struct_2(Struct_1(3476i), Struct_1(-1i), 4294967295u, Struct_1(1i), vec2<bool>(true, false)), Struct_2(Struct_1(-1i), Struct_1(-37330i), 1u, Struct_1(-52035i), vec2<bool>(true, true)), Struct_2(Struct_1(-16522i), Struct_1(0i), 4294967295u, Struct_1(-25938i), vec2<bool>(true, true)), Struct_2(Struct_1(-45826i), Struct_1(-47763i), 16373u, Struct_1(i32(-2147483648)), vec2<bool>(true, false)), Struct_2(Struct_1(1i), Struct_1(1i), 35682u, Struct_1(2147483647i), vec2<bool>(false, true)));

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1406f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1405f + -399f) - 1026f)));
    var var_1 = global4.e.x;
    var var_2 = arg_3.ww;
    let var_3 = abs(~85033u);
    global3 = array<Struct_2, 13>();
    return 4294967295u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> vec2<bool> {
    global4 = Struct_2(global2.d, global4.d, ~(~max(global4.c, _wgslsmith_div_u32(arg_1, 6322u))), Struct_1(_wgslsmith_mod_i32(~select(-2147483647i, -2147483647i, false), _wgslsmith_mult_i32(2428i, -1i))), vec2<bool>(global2.e.x, any(select(vec3<bool>(true, global4.e.x, false), !vec3<bool>(false, global2.e.x, global2.e.x), false))));
    var var_0 = _wgslsmith_f_op_f32(-702f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056f * -105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)) * 1424f), select(!all(vec3<bool>(false, false, false)), any(select(vec4<bool>(false, true, global2.e.x, true), vec4<bool>(false, true, global4.e.x, global4.e.x), vec4<bool>(false, true, true, global2.e.x))), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b.x) != firstLeadingBit(0i)))));
    let var_1 = Struct_4(Struct_2(global4.b, Struct_1(u_input.c.x), abs(~(~global4.c)), Struct_1(-2147483647i), vec2<bool>(any(vec4<bool>(true, true, global4.e.x, true)), !global2.e.x | global2.e.x)), Struct_3(global4.d, reverseBits(~arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-251f, -665f, true)) + _wgslsmith_f_op_f32(-346f + 449f)), 144f, _wgslsmith_f_op_f32(sign(470f)))));
    var var_2 = _wgslsmith_sub_vec3_u32(arg_0.yxz, arg_0.wzz);
    global4 = var_1.a;
    return select(!(!select(!global2.e, !vec2<bool>(true, var_1.a.e.x), var_1.a.e)), vec2<bool>(false, select(true, false, all(!vec3<bool>(global4.e.x, var_1.a.e.x, false)))), !(!(!all(vec4<bool>(global4.e.x, global2.e.x, false, false)))));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = !(false & !global2.e.x);
    let var_1 = func_4(abs(~vec4<u32>(func_3(global4.d, -656f, vec2<i32>(global2.d.a, global0.a), vec4<i32>(0i, 21930i, arg_0, u_input.b.x)), ~u_input.a, global2.c, 1u >> (1u % 32u))), 35579u);
    let var_2 = global3[_wgslsmith_index_u32(~u_input.a, 13u)];
    global1 = array<i32, 9>();
    let var_3 = abs(u_input.b);
    return vec4<bool>(true | (~_wgslsmith_mult_u32(global4.c, 0u) != 59445u), !func_4(max(vec4<u32>(global4.c, var_2.c, u_input.a, var_2.c), vec4<u32>(4294967295u, 1u, var_2.c, global4.c)), global2.c >> (var_2.c % 32u)).x || all(select(vec3<bool>(global2.e.x, var_1.x, false), vec3<bool>(false, global2.e.x, var_1.x), vec3<bool>(false, true, false))), false, false);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<u32>) -> vec4<f32> {
    global0 = global4.b;
    var var_0 = !func_2(global2.a.a);
    var var_1 = Struct_2(Struct_1(13279i >> (min(_wgslsmith_clamp_u32(u_input.a, 64775u, arg_3.x), min(0u, 48605u)) % 32u)), global2.a, 46654u, Struct_1(20247i), arg_1.ww);
    global0 = var_1.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0, -212f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -610f, 527f, arg_0), vec4<f32>(arg_0, -151f, arg_0, 758f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-159f, arg_0, -790f, arg_0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -594f, arg_0, 1786f))))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(global2.e.x, _wgslsmith_f_op_vec4_f32(func_1(-1018f, !(!(!vec4<bool>(global4.e.x, global4.e.x, global2.e.x, global2.e.x))), ~19459u, firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global4.c, 1u), vec3<u32>(13832u, global4.c, u_input.a))) << (~vec3<u32>(global2.c, 4294967295u, global2.c) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(12031i, 14308i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 9u)], u_input.b.x))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-6609i, u_input.b.x, 0i), u_input.c.zxz, global2.e.x), firstTrailingBit(u_input.b)), -abs(global1[_wgslsmith_index_u32(global2.c, 9u)])));
}

