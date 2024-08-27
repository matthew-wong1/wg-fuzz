struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1063f;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: array<vec3<i32>, 31>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -871f), -1864f)), global3.x, -131f);
    let var_1 = vec3<f32>(-117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1048f)), -547f);
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_clamp_vec3_u32(~arg_0.a.zxz, abs(_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0.a.x, arg_0.b, arg_0.b), vec3<u32>(arg_0.a.x, 0u, 56783u), global1.yxy) | vec3<u32>(u_input.a.x, arg_0.a.x, 0u), arg_0.a.wxx)), ~vec3<u32>(1u, u_input.a.x, ~firstTrailingBit(arg_0.b)));
    var var_4 = Struct_3(arg_0.e, Struct_1(true, 0i, -reverseBits(_wgslsmith_mult_i32(94064i, arg_0.e.b)), ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.a.x, 78037u, 4294967295u), arg_0.a))), select(select(vec3<bool>(false, !global1.x, false), !vec3<bool>(global1.x, false, global1.x), select(!global1.yzz, !vec3<bool>(arg_0.c, global1.x, global1.x), select(global1.zyy, vec3<bool>(arg_0.c, global1.x, true), global1.x))), select(vec3<bool>(arg_0.c, true, true), global1.yyy, select(select(vec3<bool>(global1.x, global1.x, global1.x), global1.yxx, global1.x), vec3<bool>(true, true, true), all(global1.xw))), vec3<bool>(global1.x, global1.x, false && any(global1.yx))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-747f, _wgslsmith_f_op_f32(-var_0.x))))));
    return arg_0.a;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_4(0u, ~(~func_3(Struct_5(vec4<u32>(1u, u_input.a.x, 73267u, u_input.a.x), u_input.a.x, true, 692f, Struct_2(vec2<i32>(30i, -18839i), 2147483647i)))));
    global2 = array<vec3<i32>, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(463f, global3.x, -1553f, -1587f)))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 814f, global3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 1000f, global3.x) - vec4<f32>(-881f, 748f, -357f, -2590f)))))));
    let var_2 = all(!global1.zz);
    var_1 = vec4<f32>(1077f, -1051f, -1721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(835f * 1f))));
    return -32863i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_5) -> i32 {
    let var_0 = Struct_1(select(all(vec3<bool>(true, arg_3.c, false & global1.x)), arg_3.c, global1.x), 6075i, abs(_wgslsmith_mult_i32(~arg_3.e.b, ~(-40668i) & ~arg_3.e.b)), arg_3.a.x);
    global1 = vec4<bool>(func_2(!(var_0.d > 0u)) != (56844i << (u_input.a.x % 32u)), false, select(-func_2(global1.x) <= abs(arg_2.x), any(arg_0), arg_0.x), !(!any(vec3<bool>(arg_3.c, true, global1.x))));
    var var_1 = min(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(arg_3.b, ~(~0u), _wgslsmith_sub_u32(max(25639u, 4294967295u), 25005u)), _wgslsmith_mod_u32(var_0.d, ~_wgslsmith_clamp_u32(u_input.a.x, 19846u, var_0.d)), u_input.a.x), arg_3.a);
    global1 = vec4<bool>(!(!global1.x) || any(select(!vec4<bool>(false, arg_0.x, var_0.a, true), vec4<bool>(false, global1.x, true, arg_3.c), false)), !arg_3.c, true, !(global1.x & var_0.a));
    var var_2 = var_0;
    return ~(i32(-1i) * -(var_2.b ^ (var_2.c | arg_3.e.a.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    global2 = array<vec3<i32>, 31>();
    global0 = global3.x;
    var var_0 = global1.x;
    let var_1 = arg_2.b;
    var var_2 = ~arg_2.b.c;
    return Struct_1(!all(global1.xyx), -arg_2.a.a.x, -_wgslsmith_div_i32(i32(-1i) * -var_1.c, ~arg_2.a.a.x), ~1u);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = -(-vec4<i32>(arg_0.b, -arg_1.x, _wgslsmith_div_i32(arg_0.c, arg_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, 0i, arg_0.c), arg_1)) & -min(vec4<i32>(arg_0.b, 37574i, arg_0.b, arg_0.c) ^ vec4<i32>(0i, arg_1.x, arg_1.x, -10712i), vec4<i32>(4766i, arg_1.x, arg_1.x, -2147483647i) ^ vec4<i32>(arg_0.c, arg_1.x, -10339i, -1i)));
    var var_1 = !(!vec4<bool>(any(vec2<bool>(false, global1.x)), true, global1.x, true));
    let var_2 = abs(-arg_0.b);
    let var_3 = vec3<bool>(false, all(select(!(!vec3<bool>(arg_0.a, arg_0.a, global1.x)), vec3<bool>(global1.x, !global1.x, !var_1.x), select(!vec3<bool>(true, arg_0.a, arg_0.a), global1.wxy, vec3<bool>(var_1.x, false, true)))), true);
    var_0 = _wgslsmith_add_vec4_i32(select(vec4<i32>(_wgslsmith_sub_i32(1i, firstTrailingBit(0i)), 1i, _wgslsmith_sub_i32(-26646i, _wgslsmith_mod_i32(46531i, arg_0.b)), -2147483647i), select(max(max(vec4<i32>(var_0.x, arg_1.x, 28898i, arg_0.b), vec4<i32>(15865i, -1i, 70947i, -1i)), vec4<i32>(2147483647i, 1i, var_2, arg_1.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-16502i, 0i, var_0.x, -15083i), countOneBits(vec4<i32>(var_0.x, arg_0.b, arg_1.x, var_0.x))), global1.x), vec4<bool>(true, false, select(select(var_1.x, true, false), any(vec3<bool>(global1.x, false, global1.x)), arg_0.a), false)), firstTrailingBit(countOneBits(vec4<i32>(-24943i, -32360i, 4756i, 23174i) >> (vec4<u32>(1u, u_input.a.x, 84911u, 62657u) % vec4<u32>(32u))) >> (vec4<u32>(arg_0.d, u_input.a.x >> (arg_0.d % 32u), 1u << (u_input.a.x % 32u), 1u) % vec4<u32>(32u))));
    return Struct_1(all(!var_3.zx), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, var_2, -2147483647i), vec4<i32>(var_0.x, arg_1.x, -7630i, -2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2, var_2), vec2<i32>(var_0.x, -1i))) >> (4294967295u % 32u), var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, ~_wgslsmith_sub_u32(1u, u_input.a.x), 7505u), countOneBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 4294967295u, arg_0.d, arg_0.d)), ~vec4<u32>(u_input.a.x, 0u, 22330u, 93572u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(countOneBits(1u) <= ~(~u_input.a.x), Struct_4(23441u, max(vec4<u32>(u_input.a.x, 79037u, 30545u, u_input.a.x) << (vec4<u32>(1u, 0u, 73301u, 29680u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 8631u, 45113u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 0u, 71527u)))), Struct_3(Struct_2(vec2<i32>(2147483647i, -1i), func_1(global1.zzw, vec4<f32>(global3.x, global3.x, global3.x, 286f), vec2<i32>(3147i, -3386i), Struct_5(vec4<u32>(17323u, u_input.a.x, u_input.a.x, 1u), 42359u, false, global3.x, Struct_2(vec2<i32>(-10905i, 8273i), 8716i)))), Struct_1(global1.x, ~73986i, 1i, abs(74171u)), global1.xxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, -142f)) + _wgslsmith_f_op_f32(-global3.x)))), ~(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(-9190i, 5489i, -4366i), vec3<i32>(1i, -17772i, -2147483647i) << (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(8783u, 31u)])));
    var var_1 = var_0.c ^ -1i;
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32(reverseBits(~(-vec2<i32>(0i, var_0.c))), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(var_0.c, var_0.c), ~vec2<i32>(-25484i, var_0.b))), -46855i);
    var var_3 = Struct_1(var_0.a, 72868i, var_0.c & reverseBits(_wgslsmith_mult_i32(var_2.b, 2147483647i) | func_4(global1.x, Struct_4(47291u, vec4<u32>(18143u, 42839u, 13023u, var_0.d)), Struct_3(Struct_2(vec2<i32>(2147483647i, -2147483647i), var_0.b), var_0, global1.wyx, global3.x)).b), ~u_input.a.x << (~_wgslsmith_div_u32(u_input.a.x, 16598u) % 32u));
    global2 = array<vec3<i32>, 31>();
    global3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(502f, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(413f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x)) * -696f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global3.x)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-491f, global3.x, -413f, global3.x)))))), true));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global3.x, -409f, global3.x))), vec4<f32>(global3.x, 181f, global3.x, _wgslsmith_f_op_f32(min(-1000f, global3.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -107f, global3.x, global3.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 300f, global3.x, -857f), vec4<f32>(global3.x, global3.x, 466f, -448f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(var_0.d, var_0.d, 1u, u_input.a.x), vec4<u32>(~(u_input.a.x << (var_3.d % 32u)), 14721u, var_3.d, select(1u, 53587u, !global1.x))), vec3<u32>(47249u, ~var_3.d, ~(~21854u)), _wgslsmith_mod_vec2_u32(u_input.a | ~countOneBits(vec2<u32>(var_3.d, var_3.d)), firstTrailingBit(u_input.a)), vec4<i32>(_wgslsmith_div_i32(var_3.b, abs(1i)), _wgslsmith_mult_i32(~var_0.b, var_2.a.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_0.c, 36424i), reverseBits(global2[_wgslsmith_index_u32(var_3.d, 31u)])), ~(~(var_3.c & -2147483647i)), var_0.c), _wgslsmith_f_op_vec3_f32(-global3.yyw));
}

