struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1772f, 1000f), Struct_1(338f, -613f), Struct_1(-547f, -457f), Struct_1(-572f, 1006f));

var<private> global2: array<f32, 26> = array<f32, 26>(798f, -903f, 180f, -777f, -1870f, 1768f, -150f, 185f, -479f, 168f, -638f, -665f, -375f, 2745f, -2508f, -1000f, 1000f, -1368f, 1643f, -1069f, -984f, 1513f, 1000f, -1000f, -1107f, -927f);

var<private> global3: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(13900i, -1i, -17126i), vec3<i32>(-16556i, 0i, -1i), vec3<i32>(i32(-2147483648), 36534i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 18530i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 76051i, -77042i));

var<private> global4: vec4<u32> = vec4<u32>(82176u, 59786u, 26021u, 20538u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], 1f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(52827u, 25u)] * -234f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(193f, global0[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(u_input.a, 26u)]) + vec3<f32>(1191f, global0[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(u_input.a, 26u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(54085u, 26u)]))), all(vec2<bool>(true, true)))) - vec3<f32>(-450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 26u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 25u)]))), -283f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1766f, global0[_wgslsmith_index_u32(u_input.a, 25u)]) + var_0.yy))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1477f, -1000f) + var_0.xz) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.yy), vec2<f32>(global0[_wgslsmith_index_u32(global4.x, 25u)], global2[_wgslsmith_index_u32(0u, 26u)]))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy * var_0.zx) - vec2<f32>(-1441f, 232f)), var_0.xy) * var_0.zy));
    global4 = reverseBits(firstTrailingBit(_wgslsmith_add_vec4_u32(select(~vec4<u32>(global4.x, global4.x, u_input.a, u_input.a), min(vec4<u32>(u_input.a, u_input.a, 27035u, u_input.a), vec4<u32>(0u, 47263u, 16424u, 21534u)), vec4<bool>(false, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 24751u, global4.x), vec4<u32>(1u, 27286u, 85456u, 10895u)))));
    global4 = vec4<u32>(~(~_wgslsmith_sub_u32(abs(global4.x), _wgslsmith_dot_vec2_u32(global4.zw, vec2<u32>(4294967295u, 16047u)))), global4.x, 51166u, ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(global4.x, u_input.a), vec2<u32>(0u, 8482u)) | 1u));
    var var_2 = min(_wgslsmith_dot_vec2_i32(~(countOneBits(u_input.b.yx) << (global4.wz % vec2<u32>(32u))), vec2<i32>(11466i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, global3[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(global4.x, 8u)], vec3<i32>(0i, u_input.b.x, u_input.b.x))))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_sub_i32(41387i, -519i)), -(~(-62086i)), 30656i, i32(-1i) * -u_input.b.x), vec4<i32>(reverseBits(0i), ~(-100505i), reverseBits(u_input.b.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), ~u_input.b.xz))));
    return var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(-985f)), _wgslsmith_f_op_f32(func_3()));
    var var_1 = true;
    var var_2 = vec3<u32>(1u, u_input.a, firstTrailingBit(abs(firstTrailingBit(u_input.a))));
    let var_3 = ~vec2<u32>(~(~var_2.x << (12175u % 32u)), 21787u);
    let var_4 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2.x, 18592u, 1u)) >> (max(firstLeadingBit(vec3<u32>(15204u, 0u, 11336u)), abs(global4.wwy)) % vec3<u32>(32u)), global4.wzy) >> (_wgslsmith_sub_u32(~_wgslsmith_add_u32(global4.x << (u_input.a % 32u), var_3.x & var_2.x), 4294967295u) % 32u);
    return 7399i;
}

fn func_1() -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_u32(global4.x, ~1u);
    global3 = array<vec3<i32>, 8>();
    let var_1 = vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global4.x, _wgslsmith_mod_u32(2679u, 1u)), 0u), ~global4.x, abs(0u)) ^ (~vec4<u32>(countOneBits(23740u), global4.x, global4.x, global4.x) & ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4155u, 2045u, 4294967295u, var_0), vec4<u32>(global4.x, var_0, 37972u, var_0))));
    global2 = array<f32, 26>();
    global0 = array<f32, 25>();
    return ~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(func_2(global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(9526u, 4u)], Struct_1(-1064f, -671f), u_input.b.yx), u_input.b.x), min(u_input.b.x ^ u_input.b.x, min(u_input.b.x, 33872i)), abs(reverseBits(u_input.b.x)), u_input.b.x), abs(-(vec4<i32>(u_input.b.x, -5950i, u_input.b.x, u_input.b.x) ^ vec4<i32>(28358i, u_input.b.x, 0i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, false, (any(vec2<bool>(true, true)) != (firstTrailingBit(u_input.b.x) <= ~u_input.b.x)) || false);
    let var_1 = u_input.a;
    let var_2 = !var_0;
    let var_3 = global1[_wgslsmith_index_u32(~max(0u, 4294967295u), 4u)];
    global4 = vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 98710u, global4.x, 0u) >> ((countOneBits(vec4<u32>(4294967295u, 17169u, u_input.a, global4.x)) ^ ~vec4<u32>(global4.x, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<u32>(global4.x, _wgslsmith_add_u32(firstLeadingBit(0u), 34229u), 1u, ~firstLeadingBit(9401u))), _wgslsmith_mult_u32(~(~reverseBits(4294967295u)), ~select(u_input.a, var_1, false) ^ abs(1u)), 99769u);
    global0 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_1()), select(~(~var_1) & _wgslsmith_mod_u32(9615u, firstLeadingBit(11788u)), abs(4294967295u), any(var_0.xw)), select(-vec3<i32>(max(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(12314i, 17070i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 73753i), vec2<i32>(1i, u_input.b.x))), vec3<i32>(u_input.b.x, -2147483647i, ~min(-37012i, -2147483647i)), var_2.x));
}

