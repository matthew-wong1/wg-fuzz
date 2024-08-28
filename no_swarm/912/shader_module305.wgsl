struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<vec3<i32>, 28>;

var<private> global2: vec2<i32>;

var<private> global3: bool = true;

var<private> global4: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<bool> {
    let var_0 = firstTrailingBit(-(u_input.c & ~(~global2.x)));
    var var_1 = _wgslsmith_div_u32(arg_1, min(~arg_1, _wgslsmith_mult_u32(27368u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, 6695u, 4294967295u), vec4<u32>(arg_1, arg_1, 1u, arg_1))))));
    global0 = array<Struct_3, 20>();
    var var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, arg_1, ~42767u, arg_1), _wgslsmith_clamp_vec4_u32(~min(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(10834u, 26752u, 13980u, arg_1)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, 37164u)), _wgslsmith_div_u32(arg_1, arg_1), 4294967295u, min(arg_1, 106110u)), countOneBits(~vec4<u32>(5461u, arg_1, arg_1, arg_1)))) & vec4<u32>(1u, 78114u, firstLeadingBit(arg_1) >> (~arg_1 % 32u), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, arg_1), 0u));
    var var_3 = true;
    return !vec4<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 - -438f))) > _wgslsmith_f_op_f32(f32(-1f) * -328f), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) || all(vec2<bool>(true, true)));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2) -> bool {
    global1 = array<vec3<i32>, 28>();
    let var_0 = countOneBits(vec3<u32>(65618u, abs(0u), _wgslsmith_sub_u32(4294967295u, 4294967295u)) | ~vec3<u32>(arg_2.a.b.x, 1u, arg_2.a.b.x)) | ~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(7061u, arg_2.a.b.x), arg_2.e.wx), arg_2.a.b.x >> (0u % 32u), ~arg_2.e.x);
    var var_1 = u_input.b.x;
    var var_2 = vec2<u32>(reverseBits(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.b.x, 21128u, var_0.x, 86570u), vec4<u32>(25469u, 0u, 51884u, 0u)))), _wgslsmith_div_u32(arg_2.e.x, abs(firstLeadingBit(arg_2.a.b.x)))) << ((vec2<u32>(~(~107889u), ~_wgslsmith_add_u32(var_0.x, 1u)) >> (vec2<u32>(_wgslsmith_sub_u32(arg_2.c.b.x, _wgslsmith_dot_vec4_u32(arg_2.e, vec4<u32>(arg_2.c.b.x, var_0.x, arg_2.e.x, 1u))), var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)), 335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a.x) - -1178f))), arg_2.c.b);
    return all(arg_1) | all(vec4<bool>(!(arg_1.x == arg_2.b.x), !all(arg_2.b.wyz), any(arg_1.yzw), arg_2.a.a.x <= arg_2.c.a.x));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1292f, -1345f, _wgslsmith_f_op_f32(trunc(169f)), -1834f))), select(~vec4<u32>(1u, arg_0, arg_0, 54628u), min(~vec4<u32>(58365u, 27084u, 1u, 75443u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, arg_0, 0u), vec4<u32>(arg_0, arg_0, 4294967295u, arg_0))), true)), vec4<bool>(func_4(select(any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec4<f32>(320f, 1444f, 595f, 1275f), vec4<u32>(arg_0, arg_0, 33935u, 4294967295u)), func_3(-683f, arg_0), Struct_1(vec4<f32>(920f, 866f, 362f, -225f), vec4<u32>(arg_0, 1u, arg_0, arg_0)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(0i, u_input.c)), ~vec4<u32>(arg_0, arg_0, arg_0, arg_0))), false, all(vec4<bool>(true, true, arg_0 != arg_0, true)), min(global2.x, _wgslsmith_sub_i32(1i, 0i)) <= 1i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(514f, -941f, 1646f, 808f) - vec4<f32>(1000f, -744f, 1000f, -1990f)))), ~vec4<u32>(44480u, firstTrailingBit(1u), 4294967295u, _wgslsmith_mult_u32(0u, arg_0))), select(u_input.b.wy, vec2<i32>(_wgslsmith_mod_i32(u_input.c, -41519i), -2147483647i) & firstLeadingBit(u_input.b.yw), vec2<bool>(any(vec3<bool>(true, true, true)), false)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, arg_0, arg_0, arg_0), ~select(vec4<u32>(80805u, arg_0, arg_0, 23341u), vec4<u32>(arg_0, arg_0, 4294967295u, 1u), vec4<bool>(false, true, true, false))));
    let var_1 = false;
    var var_2 = ~countOneBits(~var_0.c.b);
    var var_3 = Struct_3(1i, ~_wgslsmith_mult_vec3_u32(max(firstTrailingBit(var_0.e.wzw), ~vec3<u32>(var_0.c.b.x, arg_0, arg_0)), vec3<u32>(4294967295u, firstTrailingBit(56096u), _wgslsmith_mod_u32(var_2.x, 4294967295u))), _wgslsmith_mod_i32(u_input.a.x, u_input.b.x), u_input.b.zwy);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -1457f, !any(var_0.b.wy))) - -938f);
    return _wgslsmith_clamp_u32(reverseBits(reverseBits(arg_0)), ~_wgslsmith_div_u32(firstTrailingBit(0u), 1u), _wgslsmith_add_u32(min(~13140u, ~arg_0), ~4294967295u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1727f, arg_1.x)) * arg_1.x), 278f)));
    let var_1 = arg_0.b;
    global1 = array<vec3<i32>, 28>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)) - -1000f))));
    global1 = array<vec3<i32>, 28>();
    return Struct_2(arg_0, !(!(!vec4<bool>(false, true, arg_2.x, false))), Struct_1(vec4<f32>(arg_1.x, arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-1096f - -324f))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, var_1.x, 2585u, var_1.x), arg_0.b) & arg_0.b)), vec2<i32>(~global2.x, i32(-1i) * -global2.x), vec4<u32>(func_2(arg_0.b.x), _wgslsmith_div_u32(max(26398u, max(4294967295u, 0u)), ~firstLeadingBit(71863u)), ~129776u, _wgslsmith_mult_u32(max(var_1.x, func_2(0u)), abs(4294967295u))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = vec3<i32>(i32(-1i) * -41418i, reverseBits(1i >> (_wgslsmith_sub_u32(arg_3.c.b.x, arg_3.c.b.x) % 32u)), u_input.c) & _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-max(vec3<i32>(1i, arg_3.d.x, arg_3.d.x), u_input.a.zxw), _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(arg_0.e.x, 28u)], vec3<i32>(29137i, u_input.b.x, -2147483647i) << (arg_0.e.wyx % vec3<u32>(32u)))), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_3.d.x, -22690i, -34831i), u_input.a.yyy >> (arg_0.c.b.zyx % vec3<u32>(32u)), vec3<i32>(36094i, global2.x, 88454i)));
    global2 = vec2<i32>(25305i, global2.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(func_1(arg_3.c, vec4<f32>(1000f, 579f, arg_2, arg_3.c.a.x), arg_3.b.zy, 13626u).a.a.x, _wgslsmith_f_op_f32(-arg_3.a.a.x)))), arg_0.a.a.x);
    var var_2 = 4294967295u;
    global2 = vec2<i32>(arg_0.d.x, -14162i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(1i, ~(~u_input.a.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))), -281f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2190f, -578f, -193f, -1001f), vec4<f32>(1033f, -2135f, 319f, -946f), true))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(1027f - -236f), _wgslsmith_f_op_f32(max(238f, 210f)), _wgslsmith_f_op_f32(round(-1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1211f))), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1632f), _wgslsmith_f_op_f32(611f * -1378f))), _wgslsmith_f_op_f32(ceil(1000f))), !func_5(func_1(Struct_1(vec4<f32>(1000f, -1101f, -997f, -630f), vec4<u32>(1u, 78959u, 0u, 12292u)), vec4<f32>(553f, 762f, 1306f, 516f), vec2<bool>(false, false), 28920u), false, -618f, Struct_2(Struct_1(vec4<f32>(-314f, 718f, 1590f, -528f), vec4<u32>(0u, 28183u, 28488u, 1u)), vec4<bool>(true, false, false, false), Struct_1(vec4<f32>(-181f, -300f, 927f, -198f), vec4<u32>(39697u, 0u, 12529u, 1u)), vec2<i32>(u_input.a.x, -34837i), vec4<u32>(2700u, 12047u, 1u, 1u))))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(countOneBits(87059u), firstTrailingBit(104587u), ~4294967295u, _wgslsmith_clamp_u32(1u, 4294967295u, 0u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(var_2.a.yxz)))))));
    let var_4 = func_1(Struct_1(func_1(var_2, _wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 569f, 636f) + var_2.a)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), select(func_2(42556u), var_2.b.x, true)).a.a, vec4<u32>(var_2.b.x, 21875u, ~1u, 30866u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1520f), var_2.a.x))), func_3(-1352f, abs(var_2.b.x)).zz, select(var_2.b.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.b.x << (4294967295u % 32u), ~448u), 4294967295u), true));
    global1 = array<vec3<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(abs(var_0) | var_0, ~var_4.d.x), var_0, _wgslsmith_dot_vec4_i32(u_input.a ^ ~vec4<i32>(global2.x, var_0, global2.x, 18715i), u_input.b), firstLeadingBit(_wgslsmith_add_u32(1u, reverseBits(~var_4.a.b.x))));
}

