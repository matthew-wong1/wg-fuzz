struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<bool, 31> = array<bool, 31>(true, false, true, false, true, true, true, false, false, true, true, false, false, false, false, false, true, true, true, false, true, true, true, false, true, true, true, true, true, false, true);

var<private> global3: array<bool, 12> = array<bool, 12>(true, true, true, false, false, false, true, true, false, true, false, false);

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = arg_1.b;
    var var_1 = arg_1.c;
    global3 = array<bool, 12>();
    var var_2 = _wgslsmith_clamp_u32(~(~1u), ~(arg_2 << (_wgslsmith_dot_vec3_u32(~u_input.b.ywz, abs(vec3<u32>(arg_2, u_input.b.x, 8079u))) % 32u)), ~(~u_input.a) ^ ~(~arg_1.d));
    var_1 = Struct_1(arg_1.c.a, ~var_1.b, -10577i);
    return 431f;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) - _wgslsmith_f_op_f32(-1540f * 1128f)), _wgslsmith_f_op_f32(sign(-733f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f - -1235f)), Struct_2(vec2<i32>(arg_0, 19624i), Struct_1(vec3<i32>(2147483647i, u_input.c, -32147i), u_input.d.x, -36772i), Struct_1(global0.b.a, arg_1, 3236i), _wgslsmith_sub_u32(28820u, global0.d)), u_input.b.x))));
    var var_1 = Struct_2(~vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -2147483647i), abs(41208i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(select(u_input.b.zy, u_input.b.zx, vec2<bool>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(32437u, 31u)])), min(vec2<u32>(1368u, 359u), vec2<u32>(u_input.b.x, 0u)), vec2<u32>(u_input.a, 52778u)), vec2<u32>(~global0.d, u_input.a), true), abs(vec2<u32>(63216u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, u_input.b.x, 4294967295u, u_input.b.x), u_input.b)))), 21u)], global0.b, _wgslsmith_mod_u32(1u, global0.d));
    var var_2 = global0.b;
    global3 = array<bool, 12>();
    var var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1500f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -103f), _wgslsmith_f_op_f32(round(1789f)))) == var_0.x);
    return Struct_1(select(~(~countOneBits(var_1.c.a)), var_2.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(var_1.d, 31u)]), false), select(vec3<bool>(false, true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 31u)], true))), select(!vec3<bool>(global2[_wgslsmith_index_u32(global0.d, 31u)], global2[_wgslsmith_index_u32(var_1.d, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]), !vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], false, global3[_wgslsmith_index_u32(52596u, 12u)]), !vec3<bool>(global3[_wgslsmith_index_u32(15545u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(3606u, 31u)])), !any(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(51551u, 31u)])))), i32(-1i) * -11160i, u_input.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(vec3<i32>(global0.a.x & -33876i, _wgslsmith_dot_vec3_i32(vec3<i32>(-5171i, _wgslsmith_mod_i32(arg_3.a.x, arg_1.c), 8959i & global0.c.a.x), vec3<i32>(reverseBits(7727i), _wgslsmith_mod_i32(arg_3.b.a.x, arg_1.a.x), 19592i)), abs(arg_1.c | global0.a.x) >> ((_wgslsmith_add_u32(0u, u_input.a) >> (global0.d % 32u)) % 32u)), 2147483647i, _wgslsmith_dot_vec2_i32(arg_3.b.a.yy << (select(~vec2<u32>(u_input.a, 57442u), vec2<u32>(arg_3.d, global0.d), arg_2) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.b, 12723i), vec2<i32>(10951i, arg_3.a.x)), ~u_input.d)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = reverseBits(-(~u_input.c));
    var var_1 = max(vec4<u32>(u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, global0.d >> (24651u % 32u)), global0.d), abs(~5667u), 56626u), _wgslsmith_div_vec4_u32(u_input.b, firstTrailingBit(u_input.b)));
    let var_2 = ~(~var_1.xw) ^ var_1.ww;
    let var_3 = 4294967295u;
    global1 = array<Struct_1, 21>();
    return func_4(false, func_2(u_input.e, u_input.d.x << (~1u % 32u)), !select(!select(vec2<bool>(true, false), vec2<bool>(arg_1, global3[_wgslsmith_index_u32(u_input.a, 12u)]), global2[_wgslsmith_index_u32(global0.d, 31u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec2<bool>(true, true), true), arg_1), Struct_2(vec2<i32>(_wgslsmith_sub_i32(var_0, firstTrailingBit(global0.c.a.x)), _wgslsmith_mod_i32(min(u_input.e, global0.c.a.x), -2147483647i)), func_2(_wgslsmith_dot_vec2_i32(-u_input.d, vec2<i32>(-1i, -2147483647i)), _wgslsmith_dot_vec3_i32(-global0.b.a, global0.b.a)), func_2(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-52974i, var_0), var_0, _wgslsmith_mult_i32(var_0, u_input.d.x)), ~0i), reverseBits(~var_1.x) ^ ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(842f, 636f, 410f, -1073f)))), !global3[_wgslsmith_index_u32(_wgslsmith_add_u32(57120u, min(~15737u, ~4294967295u)), 12u)]);
    global4 = all(vec3<bool>(any(!select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(0u, 31u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(18486u, 31u)]), true)), true, true));
    global4 = all(!select(vec4<bool>(2147483647i <= var_0.a.x, true, false, true), !vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(0u, 12u)]), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(u_input.b.x, 12u)], global3[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec4<bool>(false, false, true, true))));
    global3 = array<bool, 12>();
    var var_1 = _wgslsmith_add_vec3_u32(select(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 56229u, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.a), u_input.b.yzy), u_input.b.zzx >> (vec3<u32>(u_input.a, global0.d, global0.d) % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(40415u, 16843u, 4294967295u), u_input.b.yzw, u_input.b.xyy) ^ vec3<u32>(~global0.d, _wgslsmith_sub_u32(global0.d, 3168u), ~u_input.a), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.d ^ ~6053u, u_input.b.x), u_input.b.zxw, reverseBits(~abs(u_input.b.zxy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(510f + 449f)))));
}

