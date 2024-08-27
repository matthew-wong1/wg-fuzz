struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<i32, 1> = array<i32, 1>(-1i);

var<private> global2: vec2<f32> = vec2<f32>(550f, -1000f);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_3, 3>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> f32 {
    global4 = array<Struct_3, 3>();
    global3 = vec4<f32>(arg_2.a, -597f, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a))) * -744f));
    return global2.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_1.b.x;
    var var_1 = global4[_wgslsmith_index_u32(7468u, 3u)];
    var var_2 = vec4<f32>(-1235f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-905f, -1306f)) - _wgslsmith_f_op_f32(sign(global3.x)))))), var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x + -308f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(func_3(var_1.b.x, 57113i, global4[_wgslsmith_index_u32(u_input.b.x, 3u)]))))))));
    var var_3 = Struct_2(max(_wgslsmith_add_vec4_u32(select(~arg_1.a, vec4<u32>(arg_1.a.x, arg_1.a.x, u_input.b.x, 0u) | arg_1.a, vec4<bool>(true, false, true, true)), arg_1.a), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(select(arg_1.a, arg_1.a, vec4<bool>(true, false, true, arg_1.b.x)), ~vec4<u32>(81387u, u_input.b.x, 1u, 0u)), _wgslsmith_mod_vec4_u32(arg_1.a, arg_1.a >> (arg_1.a % vec4<u32>(32u))))), vec4<bool>(~u_input.b.x <= (~36648u >> (select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25611u, 10u)], 10u)], 10u)], arg_0, false) % 32u)), !(!(false | var_1.b.x)), true, all(!(!var_1.b.yx))));
    let var_4 = arg_1;
    return Struct_3(_wgslsmith_f_op_f32(exp2(global2.x)), !vec3<bool>(true && !arg_1.b.x, (u_input.e.x | 1i) <= ~2147483647i, !any(vec2<bool>(var_4.b.x, false))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec3_i32(select(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 72931i, 1i), u_input.c.wxz) & (vec3<i32>(-1i, 22146i, global1[_wgslsmith_index_u32(arg_0.a.x, 1u)]) | vec3<i32>(-1i, u_input.a, -7180i)), ~(~u_input.e.yxy)), -reverseBits(~u_input.c.ywz), true), u_input.e.wwz, vec3<i32>(u_input.d.x, u_input.e.x, _wgslsmith_add_i32(~(~u_input.e.x), reverseBits(15250i))));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(arg_0.a.x, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(47612u | u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12206u, 10u)], 10u)] ^ global0[_wgslsmith_index_u32(4294967295u, 10u)], 71739u), 10u)]), abs(~(1u & arg_0.a.x)) & arg_0.a.x), 3u)];
    var var_2 = global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 10u)], 3u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-368f, 574f)) * -976f);
    var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -139f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f))), !var_1.b);
    return vec4<bool>(!all(select(vec3<bool>(arg_1.b.x, true, true), !arg_0.b.yyz, vec3<bool>(false, true, var_1.b.x))), !var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))) < -1185f, false);
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~vec3<i32>(49282i, global1[_wgslsmith_index_u32(66528u << (_wgslsmith_sub_u32(u_input.b.x, 0u) % 32u), 1u)], u_input.e.x);
    let var_1 = u_input.d;
    var var_2 = u_input.d.x;
    let var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(var_1.zz << (_wgslsmith_add_vec2_u32(vec2<u32>(139u, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<u32>(arg_1.x, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])) % vec2<u32>(32u))), firstTrailingBit(countOneBits(vec2<i32>(var_0.x, -46845i))), vec2<i32>(max(2147483647i, var_1.x), 2147483647i)), reverseBits(vec2<i32>(var_1.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-26034i, var_0.x), u_input.e.wy), -global1[_wgslsmith_index_u32(u_input.b.x, 1u)]))));
    global0 = array<u32, 10>();
    return Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), 1u, 33552u ^ arg_2, _wgslsmith_div_u32(46483u, 2927u)) << (~vec4<u32>(arg_2, 1u, 0u, 48879u) % vec4<u32>(32u)), vec4<u32>(~(~0u), ~1u, min(~1u, ~22932u), arg_1.x)), !vec4<bool>(true, false, all(arg_3.b), arg_0));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_5(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), func_4(Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(334u, 10u)], 10u)], 0u), vec4<bool>(false, false, true, true)), func_2(1u, Struct_2(vec4<u32>(33064u, 0u, u_input.b.x, u_input.b.x), vec4<bool>(false, true, false, true)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 10u)])), u_input.b.zx) >> (u_input.b.xy % vec2<u32>(32u)), abs(28146u), global4[_wgslsmith_index_u32(min(max(~u_input.b.x, u_input.b.x), firstTrailingBit(firstLeadingBit(u_input.b.x))), 3u)]);
    global0 = array<u32, 10>();
    var var_1 = global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(26164u, 10u)], 3u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(-548f, _wgslsmith_f_op_f32(-global2.x))), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global3.x) + -916f))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(100f * 206f) + _wgslsmith_f_op_f32(-global3.x))))));
    var var_3 = var_0.a.xx;
    return StorageBuffer(-_wgslsmith_sub_i32(u_input.e.x, _wgslsmith_sub_i32(42683i ^ u_input.e.x, -1i)), _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(-select(0i, 2147483647i, false), countOneBits(-global1[_wgslsmith_index_u32(55887u, 1u)]), firstLeadingBit(0i << (0u % 32u))), _wgslsmith_mult_i32(u_input.c.x, -17001i)), countOneBits(u_input.c.ww), vec3<f32>(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 62737u, u_input.b.x), var_0.a), var_0).a, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(632f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, global3.x, global3.x)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(var_2.zwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -2824f, 1099f)))), vec3<f32>(_wgslsmith_f_op_f32(step(global3.x, 338f)), _wgslsmith_f_op_f32(-113f - 310f), 508f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false)))), vec3<bool>(!((global0[_wgslsmith_index_u32(8972u, 10u)] | global0[_wgslsmith_index_u32(u_input.b.x, 10u)]) == 1u), all(vec2<bool>(true, true)), true), true);
    var var_1 = u_input.d;
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = !var_0.xy;
    var var_4 = -308f;
    var var_5 = _wgslsmith_f_op_vec2_f32(-global3.yz);
    var_5 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -901f) + vec2<f32>(-1098f, 641f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1094f, global3.x) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, global3.x)))), vec2<f32>(_wgslsmith_div_f32(global2.x, global3.x), -261f), vec2<bool>(true, all(vec4<bool>(var_0.x, true, var_0.x, var_3.x))))))));
    let x = u_input.a;
    s_output = func_1();
}

