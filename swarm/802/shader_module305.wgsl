struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(801f, 1832f, -1023f, 1114f, 2641f, 702f, 493f, -428f, 431f, 2306f, 680f, 301f, -866f, 1102f, -538f, 742f, -1211f, 185f, -1000f, 1000f);

var<private> global1: array<vec4<i32>, 15>;

var<private> global2: Struct_1 = Struct_1(1u, 34927u, false, -14698i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(u_input.b, min(global2.a << (~_wgslsmith_clamp_u32(47912u, 0u, arg_2.x) % 32u), ~41699u), true | any(vec4<bool>(true, true, 4294967295u == arg_2.x, global2.c)), -42888i);
    global0 = array<f32, 20>();
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(arg_3.a, var_0.b.x, select(_wgslsmith_clamp_i32(firstLeadingBit(global2.d), ~(-4158i), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.d, -33544i), vec2<i32>(var_1.d, var_1.d))), -5535i, any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)))), 1246i, 1273i);
    var var_3 = 6387u;
    return ~var_1.b;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = countOneBits(~firstLeadingBit(~(vec3<i32>(arg_0.a, arg_0.a, u_input.d) >> (vec3<u32>(1u, global2.b, u_input.b) % vec3<u32>(32u)))));
    let var_1 = arg_0.b.x;
    global2 = Struct_1(_wgslsmith_mod_u32(~(~(~global2.a)), 39761u), _wgslsmith_sub_u32(func_3(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(15793u, 20u)], 1752f, -1551f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(26889u, 20u)], global0[_wgslsmith_index_u32(global2.b, 20u)]) + vec3<f32>(global0[_wgslsmith_index_u32(global2.b, 20u)], -354f, global0[_wgslsmith_index_u32(64031u, 20u)]))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, global2.b), firstLeadingBit(vec3<u32>(19570u, global2.a, 4294967295u))), Struct_2(-6447i, u_input.c.zx)), _wgslsmith_mod_u32(~global2.b, u_input.b) << (u_input.b % 32u)), any(select(!vec4<bool>(true, false, global2.c, false), !(!vec4<bool>(true, global2.c, global2.c, true)), global2.c)), ~14621i);
    var var_2 = vec2<bool>(false, false);
    global1 = array<vec4<i32>, 15>();
    return Struct_1(u_input.b, ~4294967295u, false, var_1);
}

fn func_1() -> vec3<bool> {
    global2 = func_2(Struct_2(2147483647i, ~vec2<i32>(global2.d, u_input.c.x | u_input.c.x)));
    let var_0 = select(select(vec4<bool>(global2.c != true, !global2.c, true, !(global0[_wgslsmith_index_u32(4294967295u, 20u)] < global0[_wgslsmith_index_u32(u_input.b, 20u)])), vec4<bool>(_wgslsmith_f_op_f32(-461f - -1206f) != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(41628u, 20u)] * global0[_wgslsmith_index_u32(u_input.b, 20u)]), global2.c && (true || global2.c), false, _wgslsmith_f_op_f32(f32(-1f) * -816f) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 20u)])), select(select(!vec4<bool>(true, false, global2.c, global2.c), vec4<bool>(false, true, global2.c, true), all(vec3<bool>(global2.c, global2.c, global2.c))), vec4<bool>(!global2.c, global2.c, any(vec3<bool>(global2.c, global2.c, false)), global2.c), !global2.c)), !vec4<bool>(true, !(true && global2.c), any(select(vec3<bool>(global2.c, false, false), vec3<bool>(global2.c, global2.c, global2.c), vec3<bool>(true, global2.c, false))), false), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~countOneBits(4294967295u), 20u)]) != global0[_wgslsmith_index_u32(reverseBits(global2.b), 20u)]);
    var var_1 = select(var_0.wz, !select(!(!vec2<bool>(global2.c, false)), var_0.wy, true), vec2<bool>(!all(vec4<bool>(var_0.x, var_0.x, global2.c, true)), !(!all(var_0))));
    let var_2 = select(vec4<bool>(global2.c, func_2(Struct_2(0i, u_input.c.zz)).c, global2.c, true & all(var_0.wxy)), var_0, vec4<bool>(false, false, global2.c, global2.c));
    let var_3 = u_input.c.x;
    return var_2.wzz;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = false;
    global2 = Struct_1(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, 1u)) ^ ~4294967295u)), ~_wgslsmith_mod_u32(~21490u, 79766u), !all(!vec2<bool>(var_0, true)), _wgslsmith_clamp_i32(-2147483647i | _wgslsmith_dot_vec3_i32(~vec3<i32>(global2.d, global2.d, 1i), ~vec3<i32>(global2.d, -1i, global2.d)), i32(-1i) * -1i, -1i));
    return func_2(Struct_2(_wgslsmith_add_i32(global2.d, global2.d), _wgslsmith_add_vec2_i32(u_input.c.yy, firstLeadingBit(u_input.c.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2147483647i);
    var var_1 = Struct_1(_wgslsmith_sub_u32((~u_input.b >> ((global2.a & 0u) % 32u)) | u_input.b, 89625u), ~(~53009u), !(5277u >= countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57458u, 10644u, 603u), vec4<u32>(u_input.b, u_input.b, u_input.b, global2.a)))), global2.d);
    var var_2 = func_4(func_1(), vec4<bool>(global2.c, !global2.c, any(select(!vec2<bool>(var_1.c, true), vec2<bool>(global2.c, false), vec2<bool>(false, false))), !(!global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -1283f));
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 20u)])))) > global0[_wgslsmith_index_u32(31294u, 20u)], min(_wgslsmith_mult_u32(var_2.b, u_input.b) ^ global2.a, u_input.b) == global2.b);
    var var_4 = u_input.c.yx;
    global2 = func_4(vec3<bool>(true, var_2.c, 1i != -func_2(Struct_2(-19690i, u_input.c.yx)).d), select(select(vec4<bool>(var_1.c, var_2.b > u_input.b, var_3.x, func_1().x), !select(vec4<bool>(var_1.c, global2.c, var_2.c, true), vec4<bool>(var_3.x, true, var_3.x, var_1.c), vec4<bool>(true, true, false, var_1.c)), func_1().x), vec4<bool>(false, all(!vec2<bool>(true, var_2.c)), !(!var_3.x), func_1().x), select(!var_3.x, true, var_2.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 20u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.b, 20u)] * global0[_wgslsmith_index_u32(global2.b, 20u)]))), -295f, !all(vec4<bool>(true, false, true, global2.c)) & (all(vec4<bool>(global2.c, var_2.c, true, true)) | false))));
    var var_5 = -var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~abs(~vec2<u32>(var_1.b, 0u))), global1[_wgslsmith_index_u32(4799u, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.b, 20u)]))))), ~(~(~vec4<u32>(u_input.b, 60472u, 4294967295u, 1u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, global2.b, u_input.b, global2.a), vec4<u32>(var_2.a, 1u, 1u, global2.b), vec4<u32>(u_input.b, global2.a, var_1.b, global2.b)) % vec4<u32>(32u)))));
}

