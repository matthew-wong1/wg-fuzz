struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, true, true, true, true, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: bool) -> vec2<u32> {
    global2 = array<Struct_1, 25>();
    var var_0 = arg_0;
    let var_1 = ~vec4<u32>(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c, var_0.c), vec3<u32>(0u, var_0.c, var_0.c))), 36466u, abs(arg_0.c), _wgslsmith_mod_u32(0u, select(min(1u, var_0.c), ~var_0.c, false)));
    var var_2 = Struct_1(vec4<i32>(firstLeadingBit(-101367i), firstLeadingBit(u_input.a.x), select(-1i, -global1.a.x, !(5619u < var_1.x)), firstLeadingBit(-var_0.a.x) << (~(~arg_0.c) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-518f, var_0.b, false)) * _wgslsmith_f_op_f32(642f + -990f))))), _wgslsmith_div_u32(~(~reverseBits(global1.c)), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_1, var_1)) | ~var_0.c), vec4<bool>(!(_wgslsmith_f_op_f32(sign(884f)) > -556f), arg_0.d.x, ~(~var_1.x) >= var_0.c, arg_0.d.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))));
    return min(var_1.wx, _wgslsmith_add_vec2_u32(~var_1.yz, countOneBits(~vec2<u32>(var_0.c, var_1.x))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = vec4<u32>(~firstLeadingBit(global1.c ^ 0u) << ((~(~4294967295u) >> (arg_0 % 32u)) % 32u), ~4294967295u << (arg_2.c % 32u), arg_0, 4294967295u);
    let var_1 = var_0.zyy;
    var var_2 = vec3<f32>(184f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(f32(-1f) * -247f)) * arg_2.b), _wgslsmith_f_op_f32(min(-1000f, global1.b)));
    global0 = array<bool, 6>();
    var var_3 = global2[_wgslsmith_index_u32(~4294967295u, 25u)];
    return func_3(arg_2, arg_2.d.xy, vec2<bool>(all(!vec2<bool>(false, global1.d.x)), var_3.d.x), true) << (_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_1.x, 4294967295u), ~1u), var_1.xx ^ var_0.yx) % vec2<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> vec3<i32> {
    let var_0 = global2[_wgslsmith_index_u32(48187u, 25u)];
    var var_1 = true;
    var var_2 = _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 43018u), vec2<u32>(0u, arg_1)), _wgslsmith_sub_vec2_u32(vec2<u32>(43933u, 1u), vec2<u32>(var_0.c, arg_0))), _wgslsmith_mult_vec2_u32(func_2(arg_1, var_0.b, Struct_1(vec4<i32>(1872i, 2147483647i, u_input.a.x, -2147483647i), global1.b, arg_1, vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, true, arg_2))), vec2<u32>(arg_0, 41502u) | vec2<u32>(1u, var_0.c)))), vec2<u32>(_wgslsmith_add_u32(~arg_1, arg_0) << (~111047u % 32u), 15688u), select(~select(~vec2<u32>(global1.c, global1.c), vec2<u32>(0u, arg_0) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), 9249i > global1.a.x), select(vec2<u32>(22113u, _wgslsmith_add_u32(23060u, 88701u)), firstTrailingBit(~vec2<u32>(104601u, arg_0)), global1.d.yz), false));
    var var_3 = global2[_wgslsmith_index_u32(min(max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.c, 81571u, 1u), ~vec3<u32>(1u, 49169u, 55272u)), ~(vec3<u32>(arg_0, 4294967295u, 18120u) << (vec3<u32>(var_2.x, 4294967295u, 45112u) % vec3<u32>(32u)))), _wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, arg_0), min(_wgslsmith_mult_u32(global1.c, 27766u), global1.c))), 44097u ^ firstLeadingBit(~(arg_1 & arg_1))), 25u)];
    var var_4 = func_3(Struct_1(_wgslsmith_add_vec4_i32(-(global1.a >> (vec4<u32>(var_3.c, var_3.c, 4294967295u, global1.c) % vec4<u32>(32u))), ~var_0.a), 2023f, abs(_wgslsmith_add_u32(var_0.c, var_2.x)), !select(global1.d, vec4<bool>(false, true, arg_2, arg_2), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, 37872i < var_3.a.x), !(!vec2<bool>(false, var_3.d.x)), any(global1.d.zzw)), global1.d.x && false), select(!vec2<bool>(!var_0.d.x, true), vec2<bool>(true, global1.d.x), (global1.a.x >> (56515u % 32u)) >= u_input.a.x), all(select(vec3<bool>(true, false, true), vec3<bool>(false, !global1.d.x, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, false))));
    return ((vec3<i32>(1i, 1i, 1i) | _wgslsmith_div_vec3_i32(global1.a.zyz, vec3<i32>(-12975i, 9627i, var_0.a.x))) << (abs(max(~vec3<u32>(39166u, 1u, 6436u), countOneBits(vec3<u32>(var_2.x, 1u, var_3.c)))) % vec3<u32>(32u))) >> (vec3<u32>(44936u & (max(33277u, 1u) & _wgslsmith_sub_u32(var_4.x, 20264u)), 0u, 1u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(203u, 4294967295u, 4294967295u, 55881u) << ((vec4<u32>(64348u, global1.c, 20385u, 0u) & vec4<u32>(global1.c, global1.c, global1.c, 66233u)) % vec4<u32>(32u))), ~(~vec4<u32>(0u, 1u, 13967u, global1.c))), _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.c, global1.c), vec2<u32>(0u, global1.c))), ~select(vec2<u32>(global1.c, global1.c), ~vec2<u32>(global1.c, 14062u), !global0[_wgslsmith_index_u32(23167u, 6u)])), all(global1.d.ywy));
    var var_1 = vec4<u32>(global1.c & _wgslsmith_mult_u32(~(~0u), 6677u), firstLeadingBit(global1.c), global1.c, 4294967295u);
    var var_2 = Struct_1(abs(countOneBits(~vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, global1.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global1.b, global1.b)), -808f, _wgslsmith_f_op_f32(-global1.b) > -1569f)), _wgslsmith_f_op_f32(-2730f + 1902f))), 0u, select(vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.wy, vec2<u32>(global1.c, global1.c)) << (~global1.c % 32u), 6u)], global0[_wgslsmith_index_u32(var_1.x << (max(global1.c, global1.c) % 32u), 6u)], 25093i < firstLeadingBit(u_input.a.x)), global1.d, !(true & global1.d.x)));
    global1 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a.x, -6561i, u_input.a.x, var_0.x), vec4<i32>(var_2.a.x, -1924i, 17542i, -59934i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_2.b)), 1029f, var_2.d.x & false)), -1000f, false)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.b, var_2.b))))))), var_1.x, select(global1.d, vec4<bool>(true, ~u_input.a.x > max(-6088i, u_input.a.x), false, true), true));
    global2 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~9819u, 1u, !any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true))).x, var_2.a.x, vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -576f)));
}

