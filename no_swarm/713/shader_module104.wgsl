struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(53290u, 3361u, 62941u), vec3<u32>(0u, 1u, 1u), vec3<u32>(38627u, 1u, 4294967295u), vec3<u32>(81446u, 1u, 1u), vec3<u32>(0u, 1u, 103955u), vec3<u32>(26641u, 1u, 2858u), vec3<u32>(2781u, 12433u, 17755u), vec3<u32>(51619u, 38358u, 4294967295u), vec3<u32>(4294967295u, 59380u, 16054u), vec3<u32>(7922u, 24990u, 32894u), vec3<u32>(6083u, 0u, 33796u), vec3<u32>(13473u, 0u, 4294967295u), vec3<u32>(18639u, 1u, 136103u), vec3<u32>(46525u, 63390u, 4294967295u));

var<private> global2: array<vec4<u32>, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> vec2<u32> {
    global1 = array<vec3<u32>, 14>();
    var var_0 = u_input.a.ww;
    let var_1 = all(select(!(!vec2<bool>(true, arg_2.x)), !vec2<bool>(arg_2.x, false), !arg_2.x));
    let var_2 = ~(-vec4<i32>(abs(u_input.c), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.c, 1947i, -53401i, 1i)), ~vec4<i32>(u_input.c, -6502i, u_input.c, 5771i)), 0i, -1i));
    global0 = array<u32, 8>();
    return ~u_input.a.ww;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    global2 = array<vec4<u32>, 28>();
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - 1529f)), arg_1.a) - vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1278f, var_0.a) * _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_sub_u32(85669u, arg_1.d.x), vec2<u32>(~_wgslsmith_sub_u32(~30761u, 0u), min(~(~global0[_wgslsmith_index_u32(7645u, 8u)]), 1u)), u_input.c);
    var var_1 = Struct_1(var_0.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(floor(arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-101f, arg_1.b.x, false)))) * arg_1.b), 0u, func_3(~0u, u_input.b, select(vec3<bool>(false, arg_0, false), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, arg_0), arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0))), 82379i);
    var_0 = arg_1;
    return abs(42106u);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -u_input.c;
    var var_1 = (select(~arg_1.d.x, arg_1.c, true) >> (_wgslsmith_dot_vec4_u32(min(global2[_wgslsmith_index_u32(~33433u, 28u)], vec4<u32>(global0[_wgslsmith_index_u32(716u, 8u)], u_input.b, global0[_wgslsmith_index_u32(15189u, 8u)], 36483u)), vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_div_u32(1u, 49791u), ~global0[_wgslsmith_index_u32(1u, 8u)], 1u)) % 32u)) << (~(42117u << (arg_1.c % 32u)) % 32u);
    var var_2 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 8u)], arg_1.c, arg_1.d.x), ~global1[_wgslsmith_index_u32(1u, 14u)]) | global1[_wgslsmith_index_u32(1u, 14u)]) | _wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(max(abs(reverseBits(37617u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(arg_1.d.x)), 8u)], 8u)]), 14u)], ~u_input.a.xxw);
    let var_3 = arg_1;
    global1 = array<vec3<u32>, 14>();
    return var_3;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~(abs(min(-vec4<i32>(u_input.c, 1i, arg_0.e, u_input.c), -vec4<i32>(arg_0.e, 1i, arg_0.e, u_input.c))) & _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, 2147483647i), vec4<i32>(0i, 45839i, arg_0.e, arg_0.e)), vec4<i32>(~(-8097i), -10586i, firstTrailingBit(arg_0.e), u_input.c)));
    global2 = array<vec4<u32>, 28>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(arg_0.b.xy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.b.zx + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1029f, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(trunc(arg_0.b.xz)))))))));
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), Struct_1(-148f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * 613f), 495f)), firstTrailingBit(~(~global0[_wgslsmith_index_u32(1u, 8u)])), firstLeadingBit(vec2<u32>(func_2(false, arg_0), u_input.a.x)), -12050i));
    var_0 = -select(vec4<i32>(1i, u_input.c ^ abs(var_2.e), ~(-60581i), u_input.c), vec4<i32>(countOneBits(u_input.c), reverseBits(47324i), arg_0.e, 0i) << (~abs(u_input.a) % vec4<u32>(32u)), vec4<bool>(true, true, !select(true, true, false), var_0.x < arg_0.e));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -171f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-445f, 930f))), _wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1478f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_1(1008f, vec3<f32>(-1236f, 777f, 654f), u_input.a.x, u_input.a.yx, u_input.c))))), 1f)), 4294967295u, u_input.a.wy, -1i);
    var var_1 = u_input.c;
    let var_2 = Struct_1(_wgslsmith_div_f32(-105f, -426f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-726f, var_0.b.x, var_0.b.x))), var_0.c, vec2<u32>(1u, ~u_input.b), var_0.e);
    global0 = array<u32, 8>();
    var var_3 = abs(_wgslsmith_add_vec3_u32(~(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 11252u, 20867u) | vec3<u32>(0u, 1u, 0u)) ^ vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0.c), vec3<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(33093u, 8u)])), var_2.c), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, var_2.c, min(0u, 0u)), global1[_wgslsmith_index_u32(~var_2.d.x >> (~u_input.b % 32u), 14u)])));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(var_0.b.x)), vec3<f32>(_wgslsmith_div_f32(var_2.b.x, var_0.a), _wgslsmith_f_op_f32(-var_2.a), -776f), u_input.a.x, var_0.d, 1i);
    global2 = array<vec4<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

