struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, true, true, false, true, false, false, false, true, false, true, true, true);

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-2277i, -1i, -53265i, -1i), vec4<i32>(2147483647i, -8812i, i32(-2147483648), 3497i), vec4<i32>(i32(-2147483648), 15393i, -13022i, 0i), vec4<i32>(16388i, 0i, -43783i, 52355i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 10476i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-1i, -62049i, -1i, i32(-2147483648)), vec4<i32>(8951i, -19893i, 8642i, 2147483647i), vec4<i32>(-65987i, 2147483647i, 0i, -1i), vec4<i32>(15874i, i32(-2147483648), 50966i, 1i), vec4<i32>(12568i, 18529i, 1i, 2489i), vec4<i32>(6912i, 0i, -19875i, i32(-2147483648)), vec4<i32>(-1i, 48939i, 1i, -22944i), vec4<i32>(0i, 0i, i32(-2147483648), 3487i), vec4<i32>(59452i, -20070i, 0i, -27016i), vec4<i32>(-930i, -14346i, 2147483647i, -15997i), vec4<i32>(42897i, 1i, i32(-2147483648), 0i), vec4<i32>(14226i, 1i, 12993i, 71976i), vec4<i32>(3763i, -39645i, -36571i, 43051i), vec4<i32>(-35387i, -1i, i32(-2147483648), 5439i), vec4<i32>(505i, i32(-2147483648), 1i, -23639i), vec4<i32>(-6186i, 1i, 0i, -4441i), vec4<i32>(2147483647i, -1i, 9262i, 2147483647i), vec4<i32>(41920i, i32(-2147483648), 36157i, 2147483647i), vec4<i32>(-20765i, 2147483647i, i32(-2147483648), -401i), vec4<i32>(-1i, 43107i, -1i, 27504i), vec4<i32>(6916i, 0i, -1i, 1i), vec4<i32>(4208i, 4994i, i32(-2147483648), -1i), vec4<i32>(-4880i, 13713i, 0i, i32(-2147483648)), vec4<i32>(-48430i, -909i, -34100i, 960i), vec4<i32>(i32(-2147483648), 10350i, -1i, 1i));

var<private> global2: u32;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = 32075i;
    var var_1 = Struct_3(global3.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(global3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -604f), true)), global3.b.x, 714f))), global3.c, global3.d << (~global3.d % vec2<u32>(32u)), global3.a.c.x);
    return ~1u;
}

fn func_3() -> vec3<f32> {
    global3 = Struct_3(global3.a, global3.a.b, global3.a.d.yx, vec2<u32>(~u_input.a, 70341u), max(min(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.e, global3.a.c.x, global3.a.c.x), abs(global3.a.a.zwz)), global3.a.c.x), 57345i));
    let var_0 = -407f;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.a, 64167u), abs(u_input.a)), _wgslsmith_div_u32(global3.d.x, u_input.a), ~u_input.a, ~(~(u_input.a ^ global3.a.e))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(53627u, u_input.a, 1u, global3.d.x)), vec4<u32>(reverseBits(global3.a.e), global3.a.e | 12777u, 14838u, 2504u)), min(reverseBits(vec4<u32>(u_input.a, 0u, global3.a.e, 4294967295u)), countOneBits(vec4<u32>(u_input.a, u_input.a, 19472u, u_input.a) | vec4<u32>(global3.d.x, 0u, u_input.a, 1821u)))));
    var var_2 = _wgslsmith_f_op_f32(1009f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b.x - 821f) - -1068f)))) <= _wgslsmith_f_op_f32(step(382f, global3.a.b.x));
    let var_3 = var_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(global3.b.x, 769f), _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(exp2(global3.b.x))), -158f), vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 - global3.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(683f, global3.a.b.x) - global3.a.b.x)), vec3<bool>(true, !global3.a.d.x == (var_0 <= global3.b.x), all(global3.a.d.wxx)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = 1u;
    let var_0 = max(abs(vec3<u32>(reverseBits(global3.a.e) << (~0u % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a)), ~u_input.a)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~33052u, ~u_input.a), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(122203u, 4294967295u), global3.d), 1u)), _wgslsmith_mult_u32(u_input.a, u_input.a << (37780u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global3.d, vec2<u32>(59889u, 40579u)), global3.d), global3.d)));
    global3 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(~(var_0.x | u_input.a) >> (_wgslsmith_add_u32(4294967295u, func_2(arg_0, 2147483647i)) % 32u), 31u)], _wgslsmith_f_op_vec3_f32(min(global3.a.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global3.a.b)))))), firstLeadingBit(firstTrailingBit(-vec4<i32>(global3.a.c.x, global3.a.a.x, 0i, 1i))), global3.a.d, ~_wgslsmith_add_u32(~var_0.x, global3.a.e)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -1276f, -1255f)))) - _wgslsmith_f_op_vec3_f32(-global3.a.b))), global3.c, abs(vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.a), ~u_input.a), ~countOneBits(63297u))), ~39891i);
    var var_1 = Struct_3(Struct_1(global3.a.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(global3.b)), _wgslsmith_f_op_vec3_f32(func_3()))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, -154f, _wgslsmith_f_op_f32(-global3.a.b.x)), arg_0)), vec4<i32>(_wgslsmith_div_i32(-1i, ~global3.e), global3.e, global3.a.c.x, abs(global3.a.a.x)), select(global3.a.d, !(!global3.a.d), arg_0), u_input.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global3.a.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1010f)), -369f, _wgslsmith_f_op_f32(max(global3.b.x, global3.b.x)))), global3.a.d.zzw)), vec2<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(31336u, ~4294967295u), 14u)], global0[_wgslsmith_index_u32(11459u, 14u)]), var_0.yy, -1i);
    let var_2 = -210f;
    return Struct_1(_wgslsmith_clamp_vec4_i32(select(global3.a.a, global1[_wgslsmith_index_u32(~18761u, 31u)], var_1.a.d.x) | global3.a.c, ~vec4<i32>(_wgslsmith_mult_i32(global3.e, var_1.e), global3.e | var_1.a.a.x, global3.e, i32(-1i) * -13391i), ~(_wgslsmith_mod_vec4_i32(var_1.a.a, var_1.a.a) ^ var_1.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(-1257f)), var_2, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(func_3())))), vec4<i32>(1i, -(_wgslsmith_dot_vec4_i32(global3.a.a, vec4<i32>(0i, var_1.a.c.x, 1i, var_1.e)) << (reverseBits(53096u) % 32u)), -2147483647i, _wgslsmith_div_i32(var_1.a.a.x, _wgslsmith_sub_i32(1i, var_1.a.c.x))), !global3.a.d, _wgslsmith_add_u32(var_1.a.e, ~(~var_0.x & var_0.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<bool, 14>();
    let var_0 = func_1(true).d.ywy;
    var var_1 = vec2<bool>(true, arg_3.d.x);
    var var_2 = ~global3.d;
    var var_3 = vec3<i32>(-(~_wgslsmith_add_i32(arg_3.a.x, 0i)), global3.a.c.x, select(select(arg_1.a.c.x, countOneBits(50865i), var_1.x), arg_1.e, any(select(vec4<bool>(global3.c.x, true, true, true), vec4<bool>(true, true, arg_3.d.x, arg_3.d.x), global0[_wgslsmith_index_u32(global3.a.e, 14u)])))) ^ vec3<i32>(reverseBits(arg_1.a.a.x), abs(_wgslsmith_mod_i32(27170i, arg_1.a.a.x)) << (~(~u_input.a) % 32u), -1i);
    return func_1((1724f > _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.b.x, global3.b.x) * arg_2.x)) && any(vec4<bool>(!var_1.x, arg_3.d.x, global0[_wgslsmith_index_u32(37197u, 14u)], true))).d.wz;
}

fn func_5(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(select(6237i, 24312i, arg_0.x), global3.a.c.x >> (0u % 32u), global3.e, _wgslsmith_mult_i32(global3.a.a.x, global3.a.c.x)), ~(-global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<i32>(global3.e, -global3.e, -1i << (u_input.a % 32u), ~global3.e)), _wgslsmith_f_op_vec3_f32(-global3.a.b), select(firstLeadingBit(global1[_wgslsmith_index_u32(global3.d.x, 31u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.a.a.x, global3.e, global3.a.a.x, global3.a.a.x) << (vec4<u32>(38393u, u_input.a, u_input.a, 15369u) % vec4<u32>(32u)), firstTrailingBit(global1[_wgslsmith_index_u32(26411u, 31u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(global3.a.e, 14u)], arg_0.x, false && global0[_wgslsmith_index_u32(4294967295u, 14u)])), func_1(true).d, 21826u), vec3<bool>(func_1(global3.a.d.x).d.x, true, all(global3.a.d.zyz)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -195f))), -776f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - _wgslsmith_f_op_f32(abs(-175f))), -1782f), vec4<f32>(830f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.a.b.x * -283f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1443f, global3.a.b.x)), 742f)));
    let var_1 = var_0.a;
    let var_2 = -_wgslsmith_add_vec2_i32(-global3.a.c.zx >> (firstLeadingBit(global3.d) % vec2<u32>(32u)), global3.a.a.wz);
    var var_3 = Struct_2(var_1, var_0.a.d.zxx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(global3.b.x, -733f, -1640f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-var_0.c)))));
    global1 = array<vec4<i32>, 31>();
    return firstTrailingBit(var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(max(global3.e, global3.a.a.x)), global3.a.a.x), firstLeadingBit(~abs(global3.a.c.zw))), abs(-15741i), _wgslsmith_sub_i32(-reverseBits(global3.e) >> (global3.d.x % 32u), func_5(func_4(global3.a.d, Struct_3(global3.a, global3.a.b, global3.c, global3.d, 10503i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-167f, -616f, global3.b.x, -458f), vec4<f32>(global3.a.b.x, 1000f, global3.a.b.x, global3.b.x))), func_1(global3.c.x)))));
    let var_1 = func_1(true);
    let var_2 = global3.a.b.x;
    var var_3 = Struct_3(Struct_1(global3.a.a, vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1512f * global3.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.x)))), vec4<i32>(global3.e, var_1.a.x ^ 2147483647i, 1589i, -1i), var_1.d, ~(func_1(global3.c.x).e << (_wgslsmith_add_u32(29539u, 0u) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-780f, -1667f)) - 2041f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)) + -1078f)), func_4(var_1.d, Struct_3(var_1, var_1.b, vec2<bool>(!global3.a.d.x, global3.c.x), vec2<u32>(u_input.a, u_input.a), i32(-1i) * -1670i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, global3.a.b.x)), -1000f, var_1.b.x, _wgslsmith_f_op_f32(-413f - 639f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, -801f, global3.a.b.x, 2529f)) - _wgslsmith_div_vec4_f32(vec4<f32>(379f, global3.a.b.x, var_1.b.x, global3.b.x), vec4<f32>(global3.b.x, var_1.b.x, var_1.b.x, -1644f)))), func_1(!var_1.d.x)), global3.d, -(reverseBits(_wgslsmith_add_i32(2147483647i, var_1.a.x)) >> (~1253u % 32u)));
    global1 = array<vec4<i32>, 31>();
    var_3 = Struct_3(Struct_1(firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(var_1.c.x, global3.a.c.x), 33546i, ~var_3.a.c.x, -var_0.x)), vec3<f32>(-1451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.b.x * 543f) + _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(694f - _wgslsmith_f_op_f32(-global3.a.b.x))), var_1.c, var_1.d, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.b.x), var_1.b.x, global3.a.b.x)), vec2<bool>(true, true), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.a.e, func_1(false).e), vec2<u32>(_wgslsmith_mult_u32(var_1.e ^ 1u, countOneBits(global3.a.e)), 0u)), _wgslsmith_div_i32(abs(var_3.a.a.x), var_1.c.x >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(2316u, var_3.a.e, 39505u, var_1.e), vec4<u32>(4294967295u, 4294967295u, 14643u, 1u), var_1.d), vec4<u32>(1u, 0u, global3.a.e, var_1.e)) % 32u)));
    global1 = array<vec4<i32>, 31>();
    global3 = Struct_3(func_1(((var_3.a.c.x > 1i) | func_4(var_1.d, Struct_3(var_1, global3.b, vec2<bool>(false, false), vec2<u32>(global3.d.x, u_input.a), 2147483647i), vec4<f32>(global3.a.b.x, -616f, var_1.b.x, var_1.b.x), Struct_1(vec4<i32>(0i, global3.a.a.x, global3.e, 0i), vec3<f32>(var_3.a.b.x, 600f, var_1.b.x), vec4<i32>(1i, var_1.c.x, -79061i, var_1.c.x), vec4<bool>(global0[_wgslsmith_index_u32(var_1.e, 14u)], global0[_wgslsmith_index_u32(var_3.a.e, 14u)], false, var_1.d.x), u_input.a)).x) || false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a.b + var_3.a.b) * vec3<f32>(_wgslsmith_f_op_f32(-688f * _wgslsmith_f_op_f32(var_1.b.x - -347f)), 475f, -1468f)), !vec2<bool>(any(vec4<bool>(false, var_1.d.x, true, true)), select(false, false, true)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, u_input.a)) | vec2<u32>(var_3.d.x, 20789u), ~vec2<u32>(var_3.d.x, u_input.a)) ^ ~(~global3.d), global3.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_div_vec4_i32(~var_1.c, -select(var_1.c, -var_3.a.c, true)), vec2<u32>(global3.a.e, 4294967295u), u_input.a, ~(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e, u_input.a), global3.d), ~29800u, _wgslsmith_div_u32(global3.d.x, 1u)) ^ ~abs(vec3<u32>(var_3.a.e, 81358u, 4294967295u))));
}

