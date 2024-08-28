struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(939f, 1764f, -322f, 1186f, -206f, 1434f, 1550f, 170f, -1586f, 116f, 256f, -1409f, 1332f, -527f, -1000f, 768f, -1012f, -765f, 681f, 1025f, 1632f, -1000f, 436f, 527f, -194f, -1000f);

var<private> global1: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    global0 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1277f, -1203f, global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(global1.c, 26u)]))))))))));
    global0 = array<f32, 26>();
    var var_1 = vec3<u32>(~(~(select(47540u, global1.c, true) | arg_1.d.a.x)), u_input.a, _wgslsmith_mult_u32(49147u, firstLeadingBit(46617u)));
    var var_2 = arg_1;
    return ~(max(min(1i, 1i), i32(-1i) * -75387i) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global1.b << (arg_1.d.a % vec4<u32>(32u)), ~u_input.c), min(2147483647i, u_input.c.x) >> (~23227u % 32u)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-748f, -426f, global0[_wgslsmith_index_u32(37037u, 26u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1823f, global0[_wgslsmith_index_u32(12531u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]) + vec3<f32>(-678f, -814f, global0[_wgslsmith_index_u32(8574u, 26u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(157f, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(global1.c, 26u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], 276f))))));
    var var_1 = Struct_3(-vec2<i32>(func_3(~vec3<u32>(global1.c, global1.c, u_input.a), Struct_2(Struct_1(vec4<u32>(u_input.a, global1.c, u_input.a, global1.c)), global0[_wgslsmith_index_u32(0u, 26u)], vec2<bool>(true, false), Struct_1(vec4<u32>(0u, 25408u, u_input.a, u_input.a)), vec4<bool>(true, false, true, true))), abs(u_input.b.x)), global1.b, select(_wgslsmith_sub_u32(min(u_input.a, u_input.a) << (~4011u % 32u), ~u_input.a), u_input.a, 395f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-570f - var_0.x)))), ~(~u_input.b.x));
    let var_2 = global0[_wgslsmith_index_u32(34580u, 26u)];
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(4294967295u | u_input.a), 26u)]) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(493f * _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(38423u, var_1.c) << (var_1.c % 32u), 26u)]))), _wgslsmith_f_op_f32(694f * -1164f));
    var var_3 = min(u_input.b.yy ^ u_input.b.yz, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, u_input.c.x), ~vec2<i32>(global1.b.x, -36567i)) << (~firstTrailingBit(vec2<u32>(var_1.c, var_1.c)) % vec2<u32>(32u)), var_1.a));
    return 1u;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = ~(min(~(-46623i), ~u_input.c.x) << ((1u | func_2()) % 32u));
    var var_1 = -(~vec4<i32>(abs(abs(59584i)), -59309i, global1.a.x | func_3(arg_1, Struct_2(Struct_1(vec4<u32>(global1.c, global1.c, u_input.a, 1u)), global0[_wgslsmith_index_u32(arg_1.x, 26u)], vec2<bool>(true, true), Struct_1(vec4<u32>(0u, arg_0.c, 27702u, 4294967295u)), vec4<bool>(false, true, true, false))), -5965i));
    let var_2 = -var_1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global1.c, 26u)], global0[_wgslsmith_index_u32(arg_1.x, 26u)])) * -1937f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1451f)))), -1290f))));
    let var_4 = abs(countOneBits(arg_0.b.zyw));
    return vec3<u32>(func_2(), (min(48164u, arg_1.x) | u_input.a) & arg_0.c, firstLeadingBit(arg_0.c >> (42750u % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = array<f32, 26>();
    global1 = Struct_3(~(-countOneBits(-u_input.b.zz)), u_input.c, ~(~(~select(1u, arg_0.a.x, true))), global1.a.x);
    var var_0 = vec4<u32>(~u_input.a, arg_2.a.x, 27378u, _wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(71598u, _wgslsmith_mod_u32(1u, arg_3.a.a.x))), _wgslsmith_mult_u32((arg_1 >> (0u % 32u)) << (arg_1 % 32u), select(arg_2.a.x, 9755u, arg_3.c.x) ^ global1.c)));
    let var_1 = Struct_3(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.b.x, global1.d), vec2<i32>(1i, global1.a.x), global1.a) | countOneBits(u_input.c.yy), _wgslsmith_add_vec2_i32(~global1.a, u_input.c.zx << (vec2<u32>(global1.c, 49180u) % vec2<u32>(32u))), !vec2<bool>(arg_3.c.x, arg_3.e.x)) >> (var_0.wy % vec2<u32>(32u)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(func_3(arg_0.a.zwz << (arg_0.a.ywz % vec3<u32>(32u)), Struct_2(arg_3.d, global0[_wgslsmith_index_u32(arg_1, 26u)], vec2<bool>(arg_3.c.x, arg_3.c.x), arg_2, arg_3.e)), u_input.b.x), i32(-1i) * -4953i, global1.d), ~countOneBits(abs(countOneBits(12405u))), global1.a.x >> (firstLeadingBit(var_0.x) % 32u));
    let var_2 = arg_3;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(vec2<i32>(-23341i, abs(-2147483647i)), -(firstTrailingBit(~vec4<i32>(global1.d, u_input.b.x, u_input.c.x, global1.b.x)) ^ u_input.c), ~abs(~u_input.a) & func_4(Struct_1(vec4<u32>(31740u, u_input.a, global1.c, u_input.a) << (vec4<u32>(1u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(81929u, 1u, global1.c), func_1(Struct_3(u_input.c.xz, vec4<i32>(-1i, u_input.b.x, 9459i, u_input.b.x), u_input.a, -1i), vec3<u32>(u_input.a, 45781u, u_input.a))), Struct_1(abs(vec4<u32>(global1.c, global1.c, u_input.a, 1u))), Struct_2(Struct_1(vec4<u32>(global1.c, 103342u, global1.c, global1.c)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.a, global1.c, global1.c, global1.c)), vec4<bool>(true, false, false, false))), ~abs(u_input.c.x) ^ u_input.c.x);
    global0 = array<f32, 26>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1.c, 56557u << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1.c, global1.c), vec3<u32>(global1.c, u_input.a, 34362u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(5975u, 4294967295u, 1438u, u_input.a) & vec4<u32>(1u, global1.c, global1.c, 46903u), reverseBits(vec4<u32>(u_input.a, 118383u, global1.c, u_input.a)), vec4<u32>(1u, 4294967295u, 33648u, global1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(~global1.c), 26u)])), vec2<bool>(-1022f == global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 26u)], !(~global1.c != 1u)), Struct_1(reverseBits(vec4<u32>(u_input.a, 37350u, 1u, 4294967295u))), !select(vec4<bool>(false, true, false, any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)));
    global1 = Struct_3(-firstLeadingBit(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-2147483647i, global1.a.x)), global1.a ^ vec2<i32>(global1.d, global1.b.x))), vec4<i32>(u_input.b.x, ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, global1.b.xyz, vec3<i32>(-25551i, 15759i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, 1i), global1.b.xxz)), 4534i, global1.a.x), func_2(), u_input.b.x);
    var var_1 = select(select(select(var_0.e, vec4<bool>(all(vec3<bool>(var_0.c.x, true, false)), all(var_0.e.wwz), any(vec2<bool>(true, false)), var_0.e.x & var_0.e.x), vec4<bool>(false, var_0.b == -151f, true, all(var_0.e.xyy))), select(vec4<bool>(true, var_0.e.x, select(var_0.c.x, true, var_0.c.x), var_0.c.x), !select(vec4<bool>(false, var_0.e.x, var_0.c.x, true), var_0.e, vec4<bool>(false, true, var_0.e.x, true)), !var_0.c.x), vec4<bool>(!(!var_0.c.x), var_0.b <= -1756f, var_0.e.x, !any(vec4<bool>(var_0.e.x, var_0.c.x, var_0.e.x, var_0.e.x)))), var_0.e, _wgslsmith_f_op_f32(-var_0.b) == var_0.b);
    var var_2 = vec3<bool>(any(var_0.e), all(select(var_0.e.yxy, var_1.xwz, true)), all(vec2<bool>(true, var_1.x)));
    let var_3 = Struct_3(_wgslsmith_sub_vec2_i32(abs(~vec2<i32>(-19102i, -49481i)), vec2<i32>(select(2147483647i, -23333i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(0i, -2147483647i)))) ^ global1.b.zx, vec4<i32>(-1i) * -(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, 14159i), global1.b) << (~var_0.a.a % vec4<u32>(32u))), var_0.d.a.x, u_input.c.x);
    var_2 = select(vec3<bool>(var_2.x, var_1.x, !var_0.e.x), var_1.xzz, !all(vec4<bool>(true, any(var_0.e.xxw), any(vec3<bool>(var_2.x, false, false)), var_0.c.x)));
    var var_4 = var_0.c.x & var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(328f, abs(83436u) << (0u % 32u), ~_wgslsmith_clamp_vec3_u32(var_0.a.a.xxy, func_1(var_3, var_0.d.a.xzz), vec3<u32>(45821u, 42376u, var_0.a.a.x) ^ func_1(Struct_3(global1.b.xw, vec4<i32>(var_3.b.x, -2147483647i, 1i, u_input.b.x), 29757u, 33926i), vec3<u32>(0u, u_input.a, 4294967295u))));
}

