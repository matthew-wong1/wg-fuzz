struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 9476i;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(192f, 2214f), 16880u);

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 2>;

var<private> global4: array<u32, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_2(arg_0.c, arg_2.xy, ~vec4<u32>(global4[_wgslsmith_index_u32(0u, 30u)], 55049u, 7593u >> (~arg_0.a.x % 32u), ~u_input.a), select(arg_2.x, arg_0.e, true), -1i);
    let var_1 = !vec3<bool>(true, !any(vec3<bool>(true, true, true)), true);
    var var_2 = Struct_1(global1.a, 23189u);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.x, 1000f, true)), _wgslsmith_f_op_f32(max(975f, -287f))))), _wgslsmith_f_op_f32(f32(-1f) * -314f))), -304f, 449f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1191f * _wgslsmith_div_f32(global2.x, 472f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-253f, var_2.a.x, false)), var_2.a.x))))));
    global0 = -(~43744i);
    return 66231u;
}

fn func_2(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = Struct_2(vec4<u32>(global1.b, 1u, ~(~global1.b), 73242u) >> (vec4<u32>(u_input.a, ~global1.b, select(global1.b, countOneBits(global1.b), arg_1), ~abs(7237u)) % vec4<u32>(32u)), -u_input.b.yy, ~select(vec4<u32>(func_3(Struct_2(vec4<u32>(1u, 4294967295u, global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(u_input.a, 30u)]), u_input.b.xw, vec4<u32>(40470u, u_input.a, 4294967295u, global1.b), -15037i, -27240i), global2.zy, vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.b.x)), 4294967295u, 1u, u_input.a), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 21656u, 70195u), vec4<u32>(global1.b, u_input.a, 45487u, 28649u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.b, u_input.a, 20685u), vec4<u32>(u_input.a, 37248u, global4[_wgslsmith_index_u32(386u, 30u)], 32195u), vec4<u32>(0u, global1.b, 1u, 11358u))), !select(vec4<bool>(arg_1, arg_0, false, false), vec4<bool>(true, true, arg_1, arg_0), true)), -11911i, firstLeadingBit(-_wgslsmith_mod_i32(u_input.c.x, 1i)) >> (0u % 32u));
    let var_1 = _wgslsmith_add_vec3_u32(var_0.c.ywz, firstLeadingBit(~vec3<u32>(1u, _wgslsmith_add_u32(var_0.c.x, var_0.a.x), ~global1.b)));
    let var_2 = global3[_wgslsmith_index_u32(7546u, 2u)];
    let var_3 = Struct_2(firstLeadingBit(var_0.a), _wgslsmith_clamp_vec2_i32(var_0.b, max(_wgslsmith_div_vec2_i32(u_input.b.yx, u_input.b.yy), vec2<i32>(73208i, ~(-1i))), u_input.c), select(var_0.a, ~reverseBits(vec4<u32>(var_0.a.x, 0u, 4294967295u, 4294967295u)), true), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, -39751i), vec2<i32>(-1i, var_0.e)), var_0.e), 0i);
    var var_4 = ~(vec2<i32>(_wgslsmith_sub_i32(var_0.d, -1i), -var_0.d) & vec2<i32>(var_0.e, -u_input.c.x << (abs(var_3.a.x) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -1540f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_div_f32(-444f, -936f)), -1332f))));
}

fn func_1() -> vec4<f32> {
    global3 = array<Struct_1, 2>();
    global1 = global3[_wgslsmith_index_u32(17155u, 2u)];
    global2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(all(vec4<bool>(false, false, true, true)), global1.b < 1u)), _wgslsmith_f_op_f32(sign(-996f)))))), global1.a.x);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global1.a.x, global1.a.x, global2.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 407f, 1591f)), vec4<f32>(global1.a.x, global2.x, global1.a.x, -986f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1042f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_2 = 0u;
    var var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(60036u, global1.b, u_input.a) & abs(vec3<u32>(4294967295u, global1.b, 30150u))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, 0u), global4[_wgslsmith_index_u32(~63000u, 30u)], func_3(Struct_2(vec4<u32>(0u, u_input.a, var_2, 4294967295u), vec2<i32>(u_input.b.x, -21274i), vec4<u32>(38418u, u_input.a, 0u, 1u), u_input.b.x, 1380i), vec2<f32>(var_1.x, 175f), vec4<i32>(u_input.b.x, 41290i, -22436i, -2147483647i))), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_2, 72008u, 115627u), vec3<u32>(var_2, u_input.a, 4294967295u)))), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2, global4[_wgslsmith_index_u32(global1.b, 30u)], 1u), vec3<u32>(0u, 20400u, 62504u), vec3<bool>(false, false, true)), vec3<u32>(0u, 1u, var_2)), global4[_wgslsmith_index_u32(reverseBits(~global1.b), 30u)]) & ~abs(vec3<u32>(global4[_wgslsmith_index_u32(var_2, 30u)], var_2, global1.b)));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.wz))), firstLeadingBit(44772u));
    let var_4 = _wgslsmith_mod_u32(u_input.a, 0u) >> (_wgslsmith_div_u32(abs(u_input.a), ~max(var_3.x, global4[_wgslsmith_index_u32(82059u, 30u)]) << ((~u_input.a << (min(var_3.x, 1u) % 32u)) % 32u)) % 32u);
    let var_5 = Struct_2(vec4<u32>((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31779u, global4[_wgslsmith_index_u32(var_4, 30u)], 17568u), vec4<u32>(u_input.a, 15960u, 4294967295u, global4[_wgslsmith_index_u32(40296u, 30u)])) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(28784u, u_input.a, 4294967295u, global1.b), vec4<u32>(0u, global4[_wgslsmith_index_u32(23712u, 30u)], 4294967295u, u_input.a)) % 32u)) | func_3(Struct_2(vec4<u32>(36674u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], var_4, 37706u), u_input.c, vec4<u32>(6261u, global1.b, 6267u, u_input.a), u_input.b.x, u_input.c.x), global2.yy, -u_input.b), countOneBits(global4[_wgslsmith_index_u32(0u, 30u)]), u_input.a & ~reverseBits(1u), 1u), vec2<i32>(firstTrailingBit(2291i), _wgslsmith_div_i32(countOneBits(u_input.c.x), 1i) << (~countOneBits(1u) % 32u)), _wgslsmith_clamp_vec4_u32((vec4<u32>(0u, u_input.a, 4294967295u, 35734u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 7789u), vec4<u32>(var_4, var_3.x, u_input.a, 64107u)) % vec4<u32>(32u))) >> (~(vec4<u32>(0u, 4294967295u, 0u, 28941u) | vec4<u32>(1u, 31191u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], u_input.a)) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.b, 0u, 0u, var_2), min(vec4<u32>(0u, var_3.x, global1.b, u_input.a), vec4<u32>(0u, 55131u, 1u, var_4))), _wgslsmith_add_vec4_u32(vec4<u32>(4671u, 13449u, u_input.a, var_3.x) | ~vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(0u, 30u)], 41781u, var_2), vec4<u32>(25780u, u_input.a, _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(1u, 30u)], var_4, 0u), global1.b << (20528u % 32u)))), u_input.b.x, _wgslsmith_clamp_i32(-25346i, i32(-1i) * -u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yx & u_input.c, vec2<i32>(u_input.c.x, 2147483647i))) | u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global1.a.x, _wgslsmith_f_op_f32(max(1142f, -1476f)), _wgslsmith_f_op_f32(ceil(-1191f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(664f, global2.x, global2.x, -877f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, -1175f, var_1.x, global1.a.x))))));
}

