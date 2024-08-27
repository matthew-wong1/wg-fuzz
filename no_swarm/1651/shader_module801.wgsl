struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(true, -709f), Struct_4(false, -305f), Struct_4(false, -886f), Struct_4(false, -798f), Struct_4(true, 1000f), Struct_4(false, -1547f), Struct_4(true, 1000f));

var<private> global1: array<bool, 24> = array<bool, 24>(true, false, false, false, true, true, false, false, true, false, true, true, true, false, false, true, false, false, true, false, true, false, false, true);

var<private> global2: Struct_4;

var<private> global3: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.b)) - -1542f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) - -401f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b, 1855f, false))))), _wgslsmith_f_op_f32(step(global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1018f, global2.b)), _wgslsmith_f_op_f32(max(445f, global2.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.b, -1229f, -267f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, global2.b, global2.b) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(339f, 478f, -616f, 674f))))))), _wgslsmith_f_op_f32(-686f + 525f), Struct_1(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, global2.a, global2.a, global2.a), false)), global2.b));
    global2 = Struct_4(!any(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global2.a), select(var_0.d.a.zy, var_0.d.a.zw, vec2<bool>(false, false)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.b)))));
    global1 = array<bool, 24>();
    let var_1 = true;
    let var_2 = ~_wgslsmith_dot_vec3_i32(~firstTrailingBit(~vec3<i32>(-2147483647i, -20512i, -1i)), ~vec3<i32>(1i, 1i, 1i));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<i32>) -> u32 {
    global3 = any(select(select(select(!arg_0.d.a.ywy, !arg_0.d.a.xxx, select(vec3<bool>(global2.a, false, global1[_wgslsmith_index_u32(u_input.c, 24u)]), arg_0.d.a.yzy, vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, true))), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global2.a, false), vec3<bool>(false, false, global2.a)), !(!vec3<bool>(global2.a, true, arg_0.d.a.x)), global1[_wgslsmith_index_u32(u_input.c >> ((u_input.a ^ ~u_input.b) % 32u), 24u)]));
    var var_0 = _wgslsmith_f_op_f32(round(726f));
    let var_1 = select(!arg_0.d.a.wzy, !select(!(!arg_0.d.a.wxz), vec3<bool>(false, all(arg_0.d.a.ww), true), !arg_0.d.a.yyw), select(vec3<bool>(global2.a, any(vec2<bool>(false, false)), all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 24u)], global2.a))), vec3<bool>(true, arg_0.d.a.x, global1[_wgslsmith_index_u32(~u_input.c, 24u)]), !arg_0.d.a.wyw));
    global1 = array<bool, 24>();
    let var_2 = arg_0.d;
    return 32334u;
}

fn func_2() -> vec4<bool> {
    global3 = abs(1u) <= func_4(Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-491f, 633f, global2.b, global2.b), vec4<f32>(-114f, 1006f, global2.b, -104f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1701f, 441f, global2.b, 103f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -827f, 702f, global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b)) - _wgslsmith_f_op_f32(abs(-1081f))), Struct_1(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 24u)], false, global1[_wgslsmith_index_u32(u_input.a, 24u)], false), global2.b)), ~vec3<i32>(~2147483647i, _wgslsmith_div_i32(-1i, -2147483647i), i32(-1i) * -1i), vec2<i32>(func_3(), -30110i));
    let var_0 = ~(~1i);
    let var_1 = Struct_3(Struct_1(vec4<bool>(all(vec2<bool>(true, true)), true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), _wgslsmith_div_f32(global2.b, global2.b)), firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 83732u), ~vec2<u32>(1u, 58113u))), !(!any(!vec2<bool>(global2.a, false))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 843f, 564f) + vec3<f32>(global2.b, global2.b, global2.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(361f, 382f, -1000f) * vec3<f32>(-482f, 497f, global2.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, -1496f, 361f) + vec3<f32>(-132f, 796f, -1788f))) + vec3<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(-1023f + global2.b), _wgslsmith_f_op_f32(-global2.b))))));
    let var_2 = var_1.c;
    let var_3 = var_1.b;
    return !var_1.a.a;
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = Struct_1(func_2(), -763f);
    var var_1 = firstLeadingBit(reverseBits(select(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(13552i, -2147483647i, 23929i), vec3<i32>(1i, -7411i, 0i))), vec3<i32>(27757i, -2812i, -2147483647i) ^ select(vec3<i32>(2147483647i, -11296i, 12129i), vec3<i32>(-1i, -1i, 1i), arg_0.a.a.zwx), var_0.a.www)));
    var var_2 = global2.a & !(_wgslsmith_f_op_f32(-var_0.b) <= arg_0.a.b);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, -248f, 1737f, arg_0.a.b) + vec4<f32>(-2063f, 1055f, 1001f, global2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 2090f, -990f, -1220f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(781f, var_0.b, 771f, global2.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(664f, global2.b, 2501f, -888f))), true || !var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2193f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f + global2.b)), global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), Struct_1(vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 24u)], global2.a, global2.a)), false, !any(vec4<bool>(var_0.a.x, arg_0.c, arg_0.a.a.x, true)), arg_0.a.a.x), 1319f));
    var var_4 = arg_0;
    return select(vec2<u32>(34116u, _wgslsmith_sub_u32(countOneBits(var_4.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 17491u, u_input.a), vec4<u32>(var_4.b.x, u_input.a, 30980u, 11085u)), u_input.c)), _wgslsmith_add_vec2_u32(min(arg_0.b, var_4.b), vec2<u32>(var_4.b.x, 4294967295u << (u_input.c % 32u))), vec2<bool>(any(vec2<bool>(true, true && var_0.a.x)), (firstTrailingBit(var_1.x) != var_1.x) & global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min((~2147483647i ^ (-1i >> (u_input.c % 32u))) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~reverseBits(vec2<i32>(-36740i, 32558i))), 32710i);
    var var_1 = var_0;
    global1 = array<bool, 24>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(min(u_input.b, 33074u)), u_input.a) | _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, 20901u)) & vec2<u32>(1u, u_input.c), ~(func_1(Struct_3(Struct_1(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.c, 24u)]), global2.b), vec2<u32>(u_input.a, u_input.b), true, vec3<f32>(-352f, -1012f, global2.b))) | vec2<u32>(u_input.a, u_input.c))), 7u)];
    var var_3 = true;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 7u)];
    var var_4 = max(min(~vec2<u32>(4294967295u, u_input.a), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.c, u_input.c)))), ~abs(vec2<u32>(abs(u_input.c), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstLeadingBit(~vec3<i32>(var_0, 28180i, var_0))), -_wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -1i, -15823i, _wgslsmith_sub_i32(-20900i, var_0)), firstTrailingBit(~vec3<i32>(var_0, -6976i, var_0))));
}

