struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<u32, 5>;

var<private> global2: vec2<u32>;

var<private> global3: vec4<bool>;

var<private> global4: array<vec3<i32>, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    global0 = array<Struct_1, 4>();
    let var_0 = global0[_wgslsmith_index_u32(25065u, 4u)];
    global2 = u_input.e.zx;
    global4 = array<vec3<i32>, 27>();
    var var_1 = vec2<u32>(~4294967295u, ~_wgslsmith_add_u32(reverseBits(global2.x) >> (_wgslsmith_mod_u32(global2.x, 1u) % 32u), 1u));
    return global3.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = arg_3;
    global2 = ~u_input.e.yx;
    global3 = select(select(vec4<bool>(select(true, false, all(vec4<bool>(arg_0.x, arg_0.x, true, false))), false, _wgslsmith_f_op_f32(1004f * var_0.b) >= -294f, !global3.x), select(!select(vec4<bool>(arg_2, arg_0.x, true, true), vec4<bool>(false, global3.x, arg_2, arg_0.x), vec4<bool>(global3.x, arg_0.x, true, arg_0.x)), vec4<bool>(arg_0.x || arg_2, global1[_wgslsmith_index_u32(u_input.e.x, 5u)] <= 13168u, true, arg_2), any(!arg_0.zy)), select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_2), !vec4<bool>(true, global3.x, arg_2, arg_2), true), !vec4<bool>(global3.x, false, true, true), !(!vec4<bool>(global3.x, arg_0.x, false, global3.x)))), select(select(vec4<bool>(true, true, true, arg_2), !select(vec4<bool>(arg_0.x, arg_0.x, global3.x, true), vec4<bool>(false, false, true, false), false), select(!vec4<bool>(global3.x, true, false, true), select(vec4<bool>(global3.x, arg_2, false, false), vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_2, true, true)), !vec4<bool>(false, arg_2, true, global3.x))), select(!(!vec4<bool>(arg_2, true, global3.x, global3.x)), vec4<bool>(!arg_2, true, !global3.x, global3.x), ~global1[_wgslsmith_index_u32(global2.x, 5u)] >= ~u_input.e.x), !select(!vec4<bool>(false, arg_0.x, global3.x, false), vec4<bool>(false, arg_0.x, false, arg_2), true)), vec4<bool>(false, !all(global3.yw), false, global3.x));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, firstLeadingBit(_wgslsmith_add_i32(u_input.a, 1i)), _wgslsmith_mult_i32(u_input.b, -1i) >> (max(u_input.e.x, 4257u) % 32u), _wgslsmith_mult_i32(u_input.c, u_input.b) & _wgslsmith_clamp_i32(2147483647i, u_input.d, u_input.c)) << ((min(vec4<u32>(58446u, global2.x, 5536u, u_input.e.x), vec4<u32>(0u, 1u, 4294967295u, u_input.e.x)) | vec4<u32>(countOneBits(u_input.e.x), 1u, u_input.e.x, _wgslsmith_div_u32(u_input.e.x, global1[_wgslsmith_index_u32(u_input.e.x, 5u)]))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(1i, -17355i), -1i, u_input.b ^ u_input.b, -1i), firstLeadingBit(select(firstLeadingBit(vec4<i32>(2147483647i, -41291i, u_input.d, -40740i)), min(vec4<i32>(u_input.c, -2147483647i, -43938i, -2147483647i), vec4<i32>(2147483647i, 8203i, u_input.d, -40655i)), !(!global3.x))));
    var var_2 = -436f;
    return select(select(!vec4<bool>(all(global3.zz), any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true, true), !(!vec4<bool>(arg_2, global3.x, false, arg_2)), select(vec4<bool>(true, any(vec3<bool>(global3.x, false, arg_2)), all(arg_0), !arg_2), select(select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, arg_0.x, arg_2), arg_0.x), !vec4<bool>(false, false, global3.x, false), select(vec4<bool>(true, arg_2, arg_0.x, global3.x), vec4<bool>(arg_2, arg_2, arg_0.x, global3.x), vec4<bool>(false, false, false, false))), false || (global2.x <= 0u))), vec4<bool>(true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8908u), vec2<u32>(5735u, global1[_wgslsmith_index_u32(9577u, 5u)])) > ~(~u_input.e.x), false), false || (-(~1i) == abs(var_1.x)));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    global3 = func_3(select(select(global3.zyx, vec3<bool>(all(vec4<bool>(true, global3.x, global3.x, global3.x)), all(vec4<bool>(true, true, true, false)), true), true), global3.yzz, false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(max(1504f, _wgslsmith_f_op_f32(round(-2151f))))), func_2(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-922f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f)) - arg_0.x)));
    var var_0 = vec3<i32>(2147483647i, 2147483647i, u_input.d >> (u_input.e.x % 32u));
    var var_1 = ((firstLeadingBit(vec2<i32>(var_0.x, u_input.b)) ^ vec2<i32>(_wgslsmith_sub_i32(24239i, 2147483647i), _wgslsmith_mod_i32(-2147483647i, 2147483647i))) | abs(~(var_0.zy >> (vec2<u32>(1u, global2.x) % vec2<u32>(32u))))) >> (~(~u_input.e.yx >> (vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.yx, u_input.e.zz), ~22107u) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = vec2<bool>(any(select(select(!vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, false, global3.x), global3.x), select(global3.xwy, global3.zzw, true), (global3.x | global3.x) && false)), !any(global3.yw));
    global0 = array<Struct_1, 4>();
    return reverseBits(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(abs(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8229u, 5u)] & 47182u, 27u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.b | 20036i, func_1(vec4<f32>(-540f, 387f, 1812f, 592f))) | select(vec3<i32>(u_input.b, -16363i, 44607i), select(vec3<i32>(u_input.b, u_input.d, u_input.a), global4[_wgslsmith_index_u32(4294967295u, 27u)], global3.zwy), global3.x), _wgslsmith_clamp_vec3_i32(-global4[_wgslsmith_index_u32(global2.x, 27u)], vec3<i32>(11279i, u_input.b, 39323i), _wgslsmith_add_vec3_i32(global4[_wgslsmith_index_u32(35551u, 27u)], global4[_wgslsmith_index_u32(global2.x, 27u)])) ^ firstLeadingBit(-global4[_wgslsmith_index_u32(4294967295u, 27u)])));
    let var_1 = vec4<u32>(global1[_wgslsmith_index_u32(~abs(1u) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.e, max(vec3<u32>(16167u, global2.x, global2.x), u_input.e)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(12332u, u_input.e.x, 12004u), vec3<u32>(global2.x, global2.x, 1u)))) % 32u), 5u)], global1[_wgslsmith_index_u32(0u, 5u)], ~global2.x, global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 994u, global1[_wgslsmith_index_u32(global2.x, 5u)], 4294967295u), vec4<u32>(u_input.e.x, u_input.e.x, 40259u, 4678u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.e.x, 5u)], global2.x, global2.x, 0u), vec4<u32>(global1[_wgslsmith_index_u32(37514u, 5u)], global2.x, 1u, u_input.e.x)), u_input.e.x <= u_input.e.x), abs(abs(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)))), 5u)]), 5u)]);
    global2 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~min(global2.x, global1[_wgslsmith_index_u32(1u, 5u)]) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(7026u, global2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 5u)], 5u)], 12003u), var_1) % 32u)), var_1.wz);
    let var_2 = false;
    var var_3 = vec2<u32>(32988u, 67591u ^ (var_1.x & ~_wgslsmith_add_u32(global2.x, 4294967295u)));
    var_3 = vec2<u32>(countOneBits(reverseBits(var_3.x)), ~abs(~(~0u)));
    let var_4 = vec3<bool>(!(var_2 || var_2), false, !var_2);
    global0 = array<Struct_1, 4>();
    let var_5 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -133f))))))), _wgslsmith_f_op_f32(max(-2286f, _wgslsmith_f_op_f32(f32(-1f) * -192f))));
    let x = u_input.a;
    s_output = StorageBuffer(60476u, var_5.a);
}

