struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<f32, 26>;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32) -> vec4<i32> {
    let var_0 = arg_1.x;
    global2 = array<Struct_1, 10>();
    global2 = array<Struct_1, 10>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(49784u, 1u), vec2<u32>(1u, 1u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), true || all(vec3<bool>(true, true, false))) & vec2<u32>(1u, 1u), vec2<u32>(1u, 35686u)), 10u)];
    global2 = array<Struct_1, 10>();
    return -(~(_wgslsmith_div_vec4_i32(-vec4<i32>(-40216i, -46928i, -40524i, -37602i), vec4<i32>(1i, arg_2, -1i, arg_2)) | select(-vec4<i32>(2147483647i, -26014i, arg_2, 2147483647i), vec4<i32>(u_input.a, 34987i, u_input.a, 17981i) | vec4<i32>(0i, -1i, u_input.a, -2147483647i), vec4<bool>(var_1.e, false, var_1.e, false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    global2 = array<Struct_1, 10>();
    let var_0 = reverseBits(min(min(arg_1, _wgslsmith_mod_i32(arg_2.x & u_input.b, arg_2.x)), _wgslsmith_dot_vec2_i32(arg_2.xy, arg_2.xy)));
    var var_1 = -1000f;
    var var_2 = vec3<bool>(all(select(vec4<bool>(any(vec2<bool>(arg_3.e, false)), any(vec3<bool>(arg_3.e, true, arg_3.e)), arg_3.e, true), select(select(vec4<bool>(arg_3.e, false, false, arg_3.e), vec4<bool>(true, arg_3.e, arg_3.e, false), vec4<bool>(arg_3.e, true, arg_3.e, arg_3.e)), vec4<bool>(true, true, true, true), true | arg_3.e), arg_3.e)), arg_3.e, arg_3.e);
    var_1 = _wgslsmith_f_op_f32(sign(-715f));
    return 4294967295u;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~29816u, ~41461u), ~max(func_4(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -1000f, 293f, 752f), 4552i, func_3(vec4<f32>(-186f, -972f, arg_2.x, global1[_wgslsmith_index_u32(3003u, 26u)]), vec3<f32>(global1[_wgslsmith_index_u32(0u, 26u)], arg_2.x, global1[_wgslsmith_index_u32(arg_0.x, 26u)]), u_input.a), Struct_1(vec4<u32>(51818u, 1u, 54464u, 0u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x, u_input.b, arg_3.x)), ~(~0u))), 10u)];
    global0 = array<f32, 26>();
    var var_1 = 2147483647i;
    let var_2 = Struct_1(reverseBits(var_0.a << (~vec4<u32>(0u, arg_0.x, arg_0.x, 4294967295u) % vec4<u32>(32u))), ~var_0.a, 0u, ~_wgslsmith_clamp_i32(~1i, 8652i, ~(~arg_1)), all(!vec4<bool>(false, arg_3.x, false, true)) || var_0.e);
    let var_3 = var_2.a.wz;
    return var_2;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    return func_2(vec2<u32>(27594u, ~1u), 0i & abs(~(-u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(158f + 281f), _wgslsmith_f_op_f32(step(-438f, -1516f)), true)), _wgslsmith_f_op_f32(trunc(-791f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.wx) * arg_2.zx)), vec3<bool>(true, true, true));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = vec4<bool>(true, !arg_2.e, !arg_2.e, false);
    var var_1 = ~(~arg_2.a.x);
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_2.a.x, ~4294967295u, ~13028u, arg_2.b.x), arg_2.a, vec4<u32>(0u, 62796u, arg_2.b.x, ~0u))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c ^ arg_2.b.x, arg_2.c << (1u % 32u), 1u | arg_2.c, arg_2.c), arg_2.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~arg_2.b.x, select(1u, 75634u, true), arg_2.a.x >> (21357u % 32u)), reverseBits(arg_2.a)), arg_2.a.x, u_input.b, false);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(func_5(53682i, ~u_input.a, func_1(_wgslsmith_f_op_f32(303f - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(31667u, 26u)]), vec4<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(select(-544f, -1655f, true)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(73271u, 26u)] - global0[_wgslsmith_index_u32(71815u, 26u)])))), ~func_2(abs(abs(vec2<u32>(4294967295u, 59558u))), ~(-39886i), vec2<f32>(global1[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(-1000f * -266f)), vec3<bool>(false, any(vec4<bool>(true, false, true, true)), true)).d, _wgslsmith_sub_i32(abs(-15871i), u_input.b));
    var var_1 = Struct_1(vec4<u32>(~(~reverseBits(29330u)), ~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(64378u, 55666u), vec2<u32>(1u, 0u), true), ~vec2<u32>(0u, 41918u)), vec2<u32>(~42948u, ~4661u)), max(_wgslsmith_div_u32(~1u, _wgslsmith_clamp_u32(25135u, 1u, 78221u)), 4294967295u)), ~vec4<u32>(1u << (func_1(318f, global1[_wgslsmith_index_u32(40676u, 26u)], vec4<f32>(-329f, global0[_wgslsmith_index_u32(47737u, 26u)], -1889f, 204f)).a.x % 32u), ~firstTrailingBit(11766u), 52621u, 1u), _wgslsmith_mult_u32(29379u, abs(1u)), -(i32(-1i) * -1965i), any(vec2<bool>(true, true)));
    global2 = array<Struct_1, 10>();
    var var_2 = vec2<bool>(any(!select(vec3<bool>(var_1.e, var_1.e, var_1.e), vec3<bool>(var_1.e, true, true), !vec3<bool>(true, true, var_1.e))), false);
    var_1 = global2[_wgslsmith_index_u32(27408u, 10u)];
    let var_3 = global2[_wgslsmith_index_u32(var_1.b.x, 10u)];
    global1 = array<f32, 26>();
    global2 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(33533u, 29022u), 26u)]) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.c, 26u)]) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.a.x, 26u)] * global0[_wgslsmith_index_u32(var_1.b.x, 26u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -378f)), _wgslsmith_f_op_f32(f32(-1f) * -431f), 120f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~var_3.a.x), 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1203f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 26u)] - global0[_wgslsmith_index_u32(countOneBits(var_1.a.x), 26u)])) - -239f), 4294967295u, -611f);
}

