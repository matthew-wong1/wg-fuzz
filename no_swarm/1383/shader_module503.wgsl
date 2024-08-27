struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 24>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(177f, vec2<bool>(true, false), 1590f), Struct_2(-797f, vec2<bool>(false, true), 2125f), Struct_2(-1000f, vec2<bool>(false, true), 524f), Struct_2(-567f, vec2<bool>(false, false), 892f), Struct_2(-795f, vec2<bool>(false, false), -343f), Struct_2(-1516f, vec2<bool>(false, true), 1000f), Struct_2(-594f, vec2<bool>(false, false), 763f), Struct_2(297f, vec2<bool>(true, true), -560f), Struct_2(799f, vec2<bool>(false, true), -175f), Struct_2(117f, vec2<bool>(false, false), -556f), Struct_2(1000f, vec2<bool>(false, false), 616f), Struct_2(-1794f, vec2<bool>(true, false), 1033f), Struct_2(-1000f, vec2<bool>(true, false), 1616f), Struct_2(-865f, vec2<bool>(false, false), -721f), Struct_2(-281f, vec2<bool>(false, true), 644f), Struct_2(695f, vec2<bool>(true, true), -1813f), Struct_2(1607f, vec2<bool>(false, false), -2563f), Struct_2(948f, vec2<bool>(true, true), 1079f), Struct_2(-1658f, vec2<bool>(true, false), 201f), Struct_2(-1267f, vec2<bool>(false, true), -1303f), Struct_2(-1224f, vec2<bool>(true, true), -1067f), Struct_2(-140f, vec2<bool>(false, false), -502f), Struct_2(1705f, vec2<bool>(false, true), 1072f), Struct_2(-1347f, vec2<bool>(true, true), -1466f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: bool) -> vec2<u32> {
    global0 = Struct_1(1u);
    let var_0 = _wgslsmith_f_op_f32(-909f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1327f + -1619f) - -1000f))));
    let var_1 = global2[_wgslsmith_index_u32(arg_1.x, 24u)];
    let var_2 = vec4<bool>(!(true & (!var_1.b.x & all(vec4<bool>(arg_2, arg_0, false, true)))), _wgslsmith_add_u32(_wgslsmith_add_u32(global0.a, arg_1.x) ^ global0.a, ~global0.a) == 34837u, true, !arg_0);
    var var_3 = Struct_1(12652u);
    return ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(18481u, 37140u) << (select(arg_1.yz, vec2<u32>(global0.a, 4294967295u), var_1.b) % vec2<u32>(32u)), select(max(arg_1.ww, vec2<u32>(var_3.a, arg_1.x)), min(vec2<u32>(1u, arg_1.x), vec2<u32>(var_3.a, var_3.a)), any(vec3<bool>(true, arg_0, var_1.b.x)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(global0.a, 24u)];
    let var_1 = max(max(_wgslsmith_div_vec2_u32(vec2<u32>(~7687u, 4294967295u), func_3(all(vec4<bool>(var_0.b.x, false, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 4294967295u, global0.a, arg_1.a), vec4<u32>(arg_1.a, arg_1.a, arg_3.a, arg_0), vec4<u32>(arg_1.a, arg_0, 1u, arg_0)), true)), vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(arg_0, arg_0)), arg_1.a)), ~(~vec2<u32>(arg_3.a, 27908u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2.zx))) + arg_2.zy);
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~1u), countOneBits(~arg_1.a), 0u ^ ~var_1.x), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(68590u, 4294967295u, 80814u)), vec3<u32>(var_1.x, 1u, arg_1.a) << (vec3<u32>(global0.a, 56095u, var_1.x) % vec3<u32>(32u)))) << (~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1u, 4294967295u, arg_3.a)), ~vec3<u32>(arg_1.a, arg_3.a, arg_3.a)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(56731u, arg_3.a, arg_0), vec3<u32>(arg_0, arg_1.a, arg_0)), ~vec3<u32>(global0.a, 1u, var_1.x))) % vec3<u32>(32u));
    let var_4 = reverseBits(_wgslsmith_mult_vec3_i32(min(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 63165i, u_input.a.x), -u_input.a), u_input.a));
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = firstTrailingBit(vec2<u32>(~32156u, ~14886u));
    let var_1 = !(!select(select(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), true), !vec2<bool>(false, arg_0), !vec2<bool>(false, arg_0)), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    global0 = func_2(~abs(~abs(10225u)), Struct_1(~abs(firstTrailingBit(var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-683f - arg_3), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 405f)))), arg_2);
    return arg_2;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(1u);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))), countOneBits(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, i32(-1i) * -2147483647i), countOneBits(-1i) | u_input.a.x, _wgslsmith_div_i32(20624i, 2147483647i))), arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 158f)), _wgslsmith_f_op_f32(sign(-1194f)))), Struct_2(1836f, select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), any(vec4<bool>(true, false, false, false))), vec2<bool>(false, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = vec3<bool>(!all(!select(vec3<bool>(false, false, var_0.e.b.x), vec3<bool>(var_0.e.b.x, true, false), false)), -1000f <= _wgslsmith_f_op_f32(var_0.e.c * _wgslsmith_f_op_f32(sign(-571f))), var_0.e.b.x);
    var var_2 = ~min(_wgslsmith_clamp_u32(~3528u, 0u, _wgslsmith_sub_u32(0u, global0.a)), 84503u) < arg_1.x;
    global0 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-138f, u_input.a, func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(444f)))), abs(~vec3<u32>(global0.a, 4294967295u, global0.a)) | (vec3<u32>(1u, global0.a, global0.a) & _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, 49648u, 8429u), vec3<u32>(4294967295u, global0.a, global0.a), vec3<u32>(global0.a, 1u, global0.a))), Struct_1(global0.a), func_1(all(vec4<bool>(true, false, true, true)), ~u_input.a.x, Struct_1(4294967295u), 223f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1001f, -1000f)))))), global2[_wgslsmith_index_u32(~27170u, 24u)]);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(~0u) & _wgslsmith_dot_vec4_u32(vec4<u32>(16483u, ~var_0.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.a, global0.a, 19196u, global0.a), vec4<u32>(var_0.c.a, global0.a, 13612u, 13544u)), _wgslsmith_mult_u32(0u, 4294967295u)), select(vec4<u32>(4294967295u, 0u, 1u, 57913u) << (vec4<u32>(var_0.c.a, global0.a, 1u, global0.a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.a, 23980u, global0.a, var_0.c.a), vec4<u32>(var_0.c.a, global0.a, global0.a, var_0.c.a)), vec4<bool>(true, true, true, true))), ~((reverseBits(29174u) ^ global0.a) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, var_0.c.a, var_0.c.a, global0.a), vec4<u32>(global0.a, var_0.c.a, var_0.c.a, global0.a))), 4548u), 24u)];
    global0 = var_0.c;
    global0 = Struct_1(_wgslsmith_add_u32(var_0.c.a, func_1(true, _wgslsmith_mod_i32(var_0.b.x << (var_0.c.a % 32u), _wgslsmith_sub_i32(var_0.b.x, var_0.b.x)), Struct_1(~var_0.c.a), _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(abs(var_1.c))))).a));
    global2 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(-var_1.c))) - var_1.c))));
}

