struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<i32>(2147483647i, 8859i, -33088i)), Struct_1(vec3<i32>(-1i, 0i, -1i)), Struct_1(vec3<i32>(-7808i, 1i, 0i)), Struct_1(vec3<i32>(1i, 1i, 2147483647i)), Struct_1(vec3<i32>(15478i, 2147483647i, 1i)), Struct_1(vec3<i32>(i32(-2147483648), 3096i, i32(-2147483648))), Struct_1(vec3<i32>(52927i, 2147483647i, 7894i)), Struct_1(vec3<i32>(50553i, -1i, 1i)), Struct_1(vec3<i32>(2147483647i, -32297i, 0i)), Struct_1(vec3<i32>(-1i, 2147483647i, 1i)), Struct_1(vec3<i32>(-24044i, -15911i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), 32793i, -55295i)), Struct_1(vec3<i32>(-1i, -31765i, 1i)), Struct_1(vec3<i32>(26i, -1i, -1782i)), Struct_1(vec3<i32>(-69787i, 2147483647i, 44287i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(14754i, 0i, 12825i)), Struct_1(vec3<i32>(2147483647i, -1i, -6573i)), Struct_1(vec3<i32>(-7947i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(12739i, 60631i, -76294i)), Struct_1(vec3<i32>(7095i, 14697i, 4209i)), Struct_1(vec3<i32>(1719i, i32(-2147483648), -12906i)), Struct_1(vec3<i32>(i32(-2147483648), 10034i, -1i)), Struct_1(vec3<i32>(-79435i, 20860i, 0i)), Struct_1(vec3<i32>(15744i, 2147483647i, 21916i)), Struct_1(vec3<i32>(2147483647i, 1i, -77114i)), Struct_1(vec3<i32>(-31398i, 40712i, -32301i)), Struct_1(vec3<i32>(0i, -1i, -45327i)), Struct_1(vec3<i32>(0i, 0i, -38162i)), Struct_1(vec3<i32>(0i, -7157i, -42079i)), Struct_1(vec3<i32>(1i, 47847i, 2147483647i)), Struct_1(vec3<i32>(1i, 1i, 1i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f * -1691f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(max(-217f, _wgslsmith_f_op_f32(round(global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, global0.x, global0.x))) + vec3<f32>(1828f, _wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(step(-420f, 717f)))) * vec3<f32>(929f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_div_f32(1064f, -1041f), _wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = select(vec2<i32>(arg_3.a.x, _wgslsmith_sub_i32(~1i, -_wgslsmith_clamp_i32(arg_3.a.x, -7282i, u_input.d))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(arg_2.a.x), -1i), vec2<i32>(29412i, arg_1.x) ^ select(vec2<i32>(1i, arg_0.b.a.x), vec2<i32>(arg_1.x, 2147483647i), false))), select(true, true, true));
    let var_2 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), true));
    var var_3 = true;
    var var_4 = ~vec4<u32>(4294967295u, u_input.b.x, countOneBits(~reverseBits(u_input.b.x)), ~min(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 2100u), vec4<u32>(64u, 17568u, 18280u, u_input.b.x))));
    return 1u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global1 = array<Struct_1, 32>();
    var var_0 = firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(59162u, countOneBits(u_input.b.x)), ~func_3(Struct_2(vec4<i32>(1i, 17360i, u_input.a.x, -13543i), Struct_1(vec3<i32>(u_input.d, u_input.a.x, 3723i)), global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<i32>(u_input.d, -1i, 0i), Struct_2(vec4<i32>(u_input.c, u_input.d, u_input.a.x, -1i), Struct_1(vec3<i32>(u_input.a.x, -2460i, -1i)), global1[_wgslsmith_index_u32(45812u, 32u)]), global1[_wgslsmith_index_u32(u_input.b.x, 32u)])));
    let var_1 = all(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, global0.x < -1844f)), !vec2<bool>(true, any(vec3<bool>(true, true, true))), false));
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, u_input.d), -firstLeadingBit(35264i)), 34654i, abs(_wgslsmith_add_i32(-2303i, 2147483647i))) | (vec3<i32>(~0i << (1u % 32u), _wgslsmith_add_i32(1i, abs(2677i)), -2147483647i) >> ((_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.b), ~vec3<u32>(u_input.b.x, 41409u, 2749u)) | vec3<u32>(select(u_input.b.x, 73290u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, 4294967295u, 29815u, u_input.b.x)), 40716u)) % vec3<u32>(32u)));
    var var_3 = var_1;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, 4294967295u)), ~(_wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, u_input.b.x)) ^ ~u_input.b.yx)), vec2<u32>(max(min(0u, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 954u)), 0u) ^ countOneBits(u_input.b.xx)), 32u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1223f, global0.x, 343f)))))));
    var var_0 = Struct_2(vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(~arg_1.yw, vec2<i32>(2147483647i, 0i))), 2147483647i, -(~(-9765i) & u_input.d), 0i), Struct_1(max(vec3<i32>(20087i, 83230i, _wgslsmith_div_i32(arg_1.x, -2147483647i)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(0i, arg_1.x, u_input.c)), -vec3<i32>(-1i, arg_1.x, u_input.a.x)))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, -517f, global0.x) + vec3<f32>(-177f, 420f, global0.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1385f, 1918f), -130f, _wgslsmith_f_op_f32(1665f + global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(990f, 2325f, global0.x))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1302f, -676f, global0.x)))) + vec3<f32>(global0.x, -301f, -581f))))));
    var var_1 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(var_0.a), var_0.a, var_0.a), abs(var_0.a)), Struct_1(vec3<i32>(min(0i, ~(-13669i)), -12547i, ~(-33375i))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x)));
    global1 = array<Struct_1, 32>();
    return Struct_2(_wgslsmith_div_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(arg_1, select(vec4<i32>(var_1.b.a.x, 8937i, -2147483647i, 21857i), vec4<i32>(0i, 2147483647i, -4865i, 7729i), false))), ~firstTrailingBit(vec4<i32>(-2147483647i, var_0.a.x, var_0.c.a.x, var_1.b.a.x))), Struct_1(vec3<i32>(arg_1.x, abs(u_input.a.x), -16540i) ^ ((vec3<i32>(12740i, var_1.b.a.x, 0i) | arg_1.zzw) | vec3<i32>(u_input.d, arg_1.x, var_0.a.x))), Struct_1(-var_0.c.a | var_1.a.wzz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(2147483647i);
    var var_1 = u_input.b.x;
    var var_2 = func_1(~(~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) >> (max(vec4<u32>(u_input.b.x, u_input.b.x, 52028u, 1u), vec4<u32>(0u, u_input.b.x, 14702u, 0u)) % vec4<u32>(32u)))), max(vec4<i32>(countOneBits(1i), u_input.c, u_input.c, ~u_input.a.x), firstTrailingBit(~vec4<i32>(1i, -23554i, u_input.d, 25662i) ^ abs(vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, 38719i)))), false);
    global1 = array<Struct_1, 32>();
    global0 = vec3<f32>(-446f, global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - global0.x)))));
    var var_3 = 29882u;
    let var_4 = Struct_2(var_2.a, global1[_wgslsmith_index_u32(~19574u, 32u)], Struct_1(var_2.c.a ^ vec3<i32>(-7505i, u_input.a.x, 40108i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1775f)), _wgslsmith_f_op_f32(-global0.x), all(vec2<bool>(true, false)))) + _wgslsmith_f_op_f32(select(-1095f, global0.x, select(true, false, false))))), firstLeadingBit(~(~abs(u_input.b.zz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-204f + -1362f), _wgslsmith_f_op_f32(step(-414f, global0.x))))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(639f, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f - global0.x))))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ abs(vec4<u32>(35507u, 49675u, u_input.b.x, 1030u)), min(vec4<u32>(u_input.b.x, u_input.b.x, 61963u, 21824u), vec4<u32>(u_input.b.x, 0u, 4294967295u, 4294967295u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.b.x), vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x)) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x - global0.x))), -487f));
}

