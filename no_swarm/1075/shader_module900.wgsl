struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_3,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1i, 4294967295u, 4294967295u, vec4<i32>(12466i, i32(-2147483648), i32(-2147483648), -59324i));

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, true, true, true, false, false, false, true, true, false, true, true, true, true, true, true, false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    global1 = array<bool, 21>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1175f)));
    var var_1 = global0.a;
    var var_2 = vec4<i32>(-37887i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a, 7197i, 17476i), vec3<i32>(max(global0.a, -8978i), global0.a, global0.a)), -2147483647i), max(firstTrailingBit(_wgslsmith_div_i32(-32996i, global0.d.x)), min(~_wgslsmith_dot_vec4_i32(global0.d, global0.d), firstTrailingBit(-25782i))), _wgslsmith_sub_i32(0i, global0.d.x) << (max(~4294967295u, ~1u) % 32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(128f)) + 673f);
    return vec4<u32>(firstLeadingBit(~u_input.a.x & ~5658u), _wgslsmith_dot_vec2_u32(u_input.b | (~u_input.b ^ abs(vec2<u32>(global0.c, global0.b))), vec2<u32>(global0.c, ~(global0.c & 1u))), select(_wgslsmith_add_u32(global0.b, abs(u_input.b.x)), _wgslsmith_sub_u32(global0.b, ~u_input.b.x) >> (88667u % 32u), !global1[_wgslsmith_index_u32(~0u, 21u)]), global0.c);
}

fn func_2() -> vec4<f32> {
    let var_0 = min(func_3(), vec4<u32>(global0.c << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b, u_input.b.x), u_input.a)) % 32u), reverseBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.b, 4294967295u), select(u_input.a.x, 52134u, true))), u_input.b.x, 66591u));
    global0 = Struct_4(~(-42596i), 4294967295u, u_input.b.x, vec4<i32>(select(-(~0i), _wgslsmith_sub_i32(global0.a, select(global0.a, global0.d.x, global1[_wgslsmith_index_u32(global0.c, 21u)])), all(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec3<bool>(false, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(51225u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)])))), countOneBits(-24296i), -global0.a, -2147483647i));
    var var_1 = global0.d.yx ^ (vec2<i32>(-1i) * -global0.d.yy);
    var var_2 = min(global0.a & 23383i, _wgslsmith_add_i32(-56733i, global0.d.x));
    var_1 = global0.d.yx;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -372f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), -1367f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2308f)), -1615f, all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, global1[_wgslsmith_index_u32(global0.b, 21u)], global1[_wgslsmith_index_u32(global0.b, 21u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(761f + -1465f) + _wgslsmith_f_op_f32(abs(-1590f)))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    var var_0 = vec3<u32>(~0u, u_input.b.x, 62612u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-462f, 168f, 1020f, -1550f), vec4<f32>(-340f, -1236f, -858f, 1535f), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], false, global1[_wgslsmith_index_u32(1u, 21u)], true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-399f, 593f, 229f, -186f))) + _wgslsmith_f_op_vec4_f32(func_2())), !vec4<bool>(global1[_wgslsmith_index_u32(global0.c, 21u)], arg_1.x, false, true))), _wgslsmith_div_vec4_f32(vec4<f32>(717f, -244f, 414f, _wgslsmith_f_op_f32(f32(-1f) * -190f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(488f, 104f, 209f, 732f), vec4<f32>(-2159f, 688f, 770f, -1706f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2()))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1640f, -1425f, 1153f, 1000f)), vec4<f32>(-1137f, -994f, -819f, _wgslsmith_f_op_f32(-318f - -533f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    return 878f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1676f * -2190f), _wgslsmith_f_op_f32(func_1(Struct_3(33498i), vec2<bool>(global1[_wgslsmith_index_u32(20239u, 21u)], global1[_wgslsmith_index_u32(global0.c, 21u)]))), _wgslsmith_f_op_f32(1000f + 1396f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2()).zzz))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(895f, 1614f, 1031f))))))));
    var var_1 = Struct_3(global0.d.x);
    let var_2 = Struct_2(vec2<bool>(true, true));
    let var_3 = Struct_4(~_wgslsmith_clamp_i32(abs(13563i), min(global0.a, -1i), reverseBits(-var_1.a)), ~1u, 1u, reverseBits(global0.d));
    let var_4 = select(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], (abs(_wgslsmith_mult_u32(1u, 1u)) ^ var_3.b) == 0u, !var_2.a.x);
    var var_5 = var_2;
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-307f, var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_3(var_1.a), vec2<bool>(var_4, var_5.a.x))), var_0.x)))))));
    var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(firstTrailingBit(-8211i), var_3.d.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_add_u32(0u ^ var_3.c, ~15406u), 4294967295u), _wgslsmith_add_vec3_u32(min(vec3<u32>(67628u, global0.c, 4294967295u), ~vec3<u32>(global0.c, 4294967295u, global0.c)), u_input.a), ~vec3<u32>(~4294967295u, 43174u, 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, var_0.x, -2584f) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1000f), vec3<f32>(var_0.x, var_0.x, 1367f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-399f * 1562f), _wgslsmith_f_op_f32(f32(-1f) * -149f))));
}

