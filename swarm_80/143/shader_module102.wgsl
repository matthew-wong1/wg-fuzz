struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(44090u, 53048u), vec4<f32>(1000f, 1094f, 1000f, -473f), 45304u, vec2<f32>(-2416f, 474f), 57363u);

var<private> global2: array<bool, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    global1 = Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~18498u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.a.x, 31052u), vec3<u32>(global1.c, 35091u, 4294967295u))), max(vec2<u32>(5544u, global1.e), ~vec2<u32>(1u, u_input.a.x)), _wgslsmith_mult_vec2_u32(u_input.a >> (u_input.a % vec2<u32>(32u)), ~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, global1.d.x, 494f, 1623f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(global1.d.x, 513f, global1.b.x, global1.b.x)))))), ~firstLeadingBit(global1.e) & ~u_input.a.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.xy, _wgslsmith_f_op_vec2_f32(-global1.b.wz))))), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(global1.a, u_input.a | u_input.a, vec2<u32>(global1.c, u_input.a.x)), vec2<u32>(60228u, ~52187u)));
    global2 = array<bool, 3>();
    global0 = select(!select(!select(vec3<bool>(true, global0.x, false), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 3u)], true), vec3<bool>(global0.x, false, global0.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(20026u, 3u)], global2[_wgslsmith_index_u32(global1.a.x, 3u)]), !vec3<bool>(global2[_wgslsmith_index_u32(global1.c, 3u)], true, true)), any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 3u)])) && true), select(select(vec3<bool>(all(vec4<bool>(true, global0.x, true, global2[_wgslsmith_index_u32(global1.c, 3u)])), !global0.x, true), vec3<bool>(all(vec4<bool>(true, global0.x, true, true)), global2[_wgslsmith_index_u32(872u, 3u)], true), !global2[_wgslsmith_index_u32(1u, 3u)]), select(select(!vec3<bool>(true, global2[_wgslsmith_index_u32(global1.c, 3u)], global2[_wgslsmith_index_u32(30492u, 3u)]), select(vec3<bool>(global0.x, global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(18911u, 3u)]), vec3<bool>(false, global0.x, true), true), !vec3<bool>(global2[_wgslsmith_index_u32(113u, 3u)], true, global0.x)), vec3<bool>(true, global2[_wgslsmith_index_u32(abs(4192u), 3u)], false), !(!vec3<bool>(global0.x, global2[_wgslsmith_index_u32(11376u, 3u)], true))), !(!vec3<bool>(true, global0.x, global2[_wgslsmith_index_u32(global1.a.x, 3u)]))), global0.x);
    var var_0 = max(vec4<u32>(u_input.a.x, abs(u_input.a.x), ~(4294967295u ^ firstTrailingBit(u_input.a.x)), 0u), firstTrailingBit(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, global1.c, u_input.a.x), vec3<u32>(global1.a.x, global1.a.x, global1.e)), 1u ^ u_input.a.x, ~global1.c) << (_wgslsmith_add_vec4_u32(max(vec4<u32>(global1.e, 25455u, global1.e, 71089u), vec4<u32>(4294967295u, u_input.a.x, global1.e, global1.e)), select(vec4<u32>(u_input.a.x, global1.e, global1.c, 0u), vec4<u32>(0u, global1.a.x, u_input.a.x, global1.e), vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], true, true, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]))) % vec4<u32>(32u))));
    let var_1 = !select(select(vec3<bool>(true, global0.x, !global2[_wgslsmith_index_u32(global1.a.x, 3u)]), select(select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(34639u, 3u)], global2[_wgslsmith_index_u32(834u, 3u)], global2[_wgslsmith_index_u32(var_0.x, 3u)]), true), vec3<bool>(global0.x, global2[_wgslsmith_index_u32(27008u, 3u)], true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], true), vec3<bool>(false, false, global0.x))), global0.x), vec3<bool>(all(select(vec4<bool>(false, global0.x, global0.x, global2[_wgslsmith_index_u32(global1.a.x, 3u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global0.x, false, global2[_wgslsmith_index_u32(global1.a.x, 3u)]), true)), any(!vec2<bool>(global2[_wgslsmith_index_u32(global1.a.x, 3u)], global0.x)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 49577u), vec3<u32>(40674u, var_0.x, 13407u)), 3u)]), !select(!vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(global1.a.x, 3u)]), false));
    return vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f + global1.d.x))))), -605f, global1.b.x);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = 0u;
    var var_1 = 1i;
    global1 = arg_0;
    var_1 = max(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(min(1u, 50216u), ~0u, firstTrailingBit(var_0), u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(35395i, _wgslsmith_clamp_i32(-42226i, 5205i, 1i), ~(-13520i), 2147483647i)), -24361i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~(-21670i))), global1.b))));
    return false & all(vec3<bool>(any(select(vec4<bool>(true, global0.x, global2[_wgslsmith_index_u32(global1.e, 3u)], global2[_wgslsmith_index_u32(global1.c, 3u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global0.x), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]))), true, all(global0.zx)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> vec2<u32> {
    global2 = array<bool, 3>();
    global0 = vec3<bool>(func_2(Struct_1(abs(vec2<u32>(1u, 4294967295u)) & (global1.a << (vec2<u32>(44636u, 0u) % vec2<u32>(32u))), global1.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.e, arg_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(9316u, 1u, global1.a.x, 0u), vec4<u32>(1u, arg_1.b, u_input.a.x, 20046u))), arg_1.d, 0u)), all(!(!vec3<bool>(true, arg_0.x, false))), arg_0.x);
    global1 = Struct_1(min(_wgslsmith_div_vec2_u32(~(~global1.a), abs(u_input.a) << (vec2<u32>(71935u, 15097u) % vec2<u32>(32u))), min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29809u, 4294967295u, 55790u, 18861u), vec4<u32>(0u, 4294967295u, u_input.a.x, 18971u)), 4292u), global1.a)), global1.b, u_input.a.x, arg_1.d, _wgslsmith_mod_u32(~firstTrailingBit(countOneBits(4294967295u)), 13135u));
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(8137i, 53591i, -25402i))), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9960i, 6241i, 1i), vec3<i32>(2467i, -28690i, -6857i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(16745i, 1i, 21118i, -2099i), vec4<i32>(16017i, 47246i, 19311i, 0i)))) >> (u_input.a % vec2<u32>(32u));
    global2 = array<bool, 3>();
    return ~countOneBits(~select(~global1.a, _wgslsmith_sub_vec2_u32(global1.a, global1.a), !arg_0));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> vec4<f32> {
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~(~vec2<u32>(42936u, u_input.a.x)) >> (~(~(~global1.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.b)))), _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(global0.x, false | global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(14875u, 3u)], true), func_1(vec2<bool>(false, global0.x), Struct_2(false, global1.c, -1588f, global1.d), true) >> (vec2<u32>(1u, 15571u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, -1i))), vec4<bool>(global0.x, global2[_wgslsmith_index_u32(40330u, 3u)], false & global0.x, global0.x))), _wgslsmith_div_u32(global1.e & _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.e, 1u), _wgslsmith_div_u32(global1.e, 0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global1.a.x, global1.c) ^ ~vec3<u32>(global1.e, 22825u, 0u), vec3<u32>(global1.e, 4294967295u, ~0u))), _wgslsmith_div_vec2_f32(global1.b.wx, global1.d), ~(~(~u_input.a.x | ~u_input.a.x)));
    let var_0 = Struct_2(!(select(global1.e <= u_input.a.x, global1.c < 18912u, select(global2[_wgslsmith_index_u32(1u, 3u)], true, global0.x)) || false), 35179u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(861f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.b.x, 630f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, global1.d.x)));
    var var_1 = 1i;
    var_1 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, -39255i), vec2<i32>(1i, -80573i), false), vec2<i32>(45210i, -1i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-30611i, -2682i, 1i, -24052i)), vec4<i32>(-55203i, -7463i, 22973i, 1i))), -abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -6624i), vec2<i32>(30066i, -5649i), vec2<i32>(-32235i, -2147483647i)))), countOneBits(-(_wgslsmith_mult_vec2_i32(vec2<i32>(-10266i, 0i), vec2<i32>(-46278i, 16628i)) >> (firstLeadingBit(global1.a) % vec2<u32>(32u)))));
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(35442u, var_0.b, global1.c), ~vec3<u32>(21912u, 13839u, var_0.b)), 26297u, abs(u_input.a.x)) >> ((vec3<u32>(_wgslsmith_div_u32(max(4294967295u, 99298u), 4629u), countOneBits(~1u), _wgslsmith_sub_u32(func_1(vec2<bool>(var_0.a, false), var_0, global0.x).x, global1.c)) | ~abs(vec3<u32>(4294967295u, 4294967295u, 8939u))) % vec3<u32>(32u));
    var var_3 = -_wgslsmith_add_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(7609i, 21052i, 2147483647i, -29583i))) << (vec4<u32>(1u ^ var_0.b, 4294967295u, max(var_2.x, 24496u), _wgslsmith_dot_vec4_u32(vec4<u32>(39626u, global1.a.x, global1.a.x, u_input.a.x), vec4<u32>(36904u, var_2.x, 1u, var_2.x))) % vec4<u32>(32u)), ~(-vec4<i32>(-482i, 56053i, 1i, 13081i)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(-var_0.d.x))))), global1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.x, ~_wgslsmith_dot_vec2_i32(-var_3.wy, vec2<i32>(var_3.x, -2147483647i))), var_0.c, var_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.d)) * vec2<f32>(_wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(round(global1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

