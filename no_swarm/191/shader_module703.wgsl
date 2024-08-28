struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(2486u, 0u, 4294967295u, 1726u);

var<private> global1: u32 = 0u;

var<private> global2: vec4<f32> = vec4<f32>(-745f, -578f, 1596f, 228f);

var<private> global3: vec4<f32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = !vec3<bool>(any(vec4<bool>(!global4.x, global0.x != global0.x, false, global3.x <= 1052f)), all(select(select(vec2<bool>(global4.x, false), vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x)), select(vec2<bool>(true, false), vec2<bool>(global4.x, false), true), any(vec3<bool>(true, false, global4.x)))), global4.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2.xx)) * global2.zx);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~reverseBits(0u), ~1u, countOneBits(countOneBits(21572u))), vec3<u32>(min(abs(global0.x), firstLeadingBit(u_input.b.x)), reverseBits(min(0u, global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 51219u), global0.yxx) ^ global0.x)), select(!select(!vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(global4.x, true, false), global4.x || true), vec3<bool>(1i <= -u_input.d.x, true, global4.x), any(vec2<bool>(all(vec4<bool>(false, global4.x, global4.x, global4.x)), true))), global0.xyy, global0.wwy, _wgslsmith_div_u32(23274u, ~22725u));
    let var_3 = Struct_1(1u, vec3<bool>(!(all(vec2<bool>(false, var_0.x)) && var_2.b.x), global4.x, ~(1u | global0.x) >= u_input.b.x), reverseBits(global0.wzy & _wgslsmith_mult_vec3_u32(~var_2.d, select(global0.xwz, vec3<u32>(1u, var_2.c.x, u_input.b.x), true))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(14763u, global0.x, 4294967295u), var_2.c), firstLeadingBit(var_2.d)) ^ global0.zzx, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(firstLeadingBit(global0.wxz), ~vec3<u32>(59272u, 4294967295u, 10299u)), countOneBits(global0.zzy)), max(vec3<u32>(4294967295u, global0.x, var_2.a), select(vec3<u32>(var_2.e, 0u, 26754u), var_2.d, false)) & ~(~vec3<u32>(1u, 4294967295u, u_input.b.x))));
    var var_4 = var_3;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.xxw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.ywy, vec3<f32>(arg_0, global3.x, -612f))))) + _wgslsmith_f_op_vec3_f32(-global2.wwy));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    global0 = abs((select(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 94579u, 7260u, 51686u), vec4<u32>(var_0.c.x, arg_2.c.x, var_0.c.x, 4136u)), ~vec4<u32>(global0.x, arg_2.a, var_0.c.x, u_input.b.x), select(vec4<bool>(arg_2.b.x, false, false, var_0.b.x), vec4<bool>(true, arg_2.b.x, global4.x, true), vec4<bool>(global4.x, false, false, false))) >> (~(~vec4<u32>(var_0.c.x, 26463u, 1u, u_input.b.x)) % vec4<u32>(32u))) >> (vec4<u32>(1u, 33468u, 18028u, 0u) % vec4<u32>(32u)));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, global3.x, global2.x, arg_1.x));
    let var_1 = _wgslsmith_f_op_f32(-global3.x);
    global0 = firstLeadingBit(~(((vec4<u32>(u_input.b.x, 11210u, 47606u, 0u) & vec4<u32>(arg_2.a, global0.x, u_input.b.x, 1u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, 15247u, arg_2.c.x), vec4<u32>(4836u, var_0.d.x, 476u, 4294967295u), vec4<u32>(32224u, u_input.b.x, u_input.b.x, arg_2.a)) % vec4<u32>(32u))) & select(countOneBits(vec4<u32>(arg_2.e, arg_2.d.x, 1391u, 1u)), vec4<u32>(25238u, 0u, global0.x, 0u), !vec4<bool>(true, true, var_0.b.x, false))));
    return select(false, var_0.b.x, true);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(func_4(select(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.a.x, arg_0)), ~vec2<i32>(u_input.c.x, arg_0), select(vec2<bool>(true, false), vec2<bool>(global4.x, global4.x), global4.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(-1000f)), arg_1.zwy)), Struct_1(~u_input.b.x, select(vec3<bool>(false, true, false), vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, false, false)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(6620u, global0.x, global0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 50629u), global0.wzz), 1u)), global4.x, global4.x), select(vec3<bool>(global4.x, true, any(!vec4<bool>(global4.x, true, global4.x, false))), !select(vec3<bool>(true, true, true), vec3<bool>(global4.x, global4.x, global4.x), false), any(!select(vec2<bool>(true, global4.x), vec2<bool>(false, global4.x), vec2<bool>(true, false)))), false);
    global1 = u_input.b.x;
    global4 = select(vec2<bool>(!any(select(vec2<bool>(var_0.x, true), var_0.yx, var_0.xz)), (i32(-1i) * -27730i) < ((arg_0 >> (u_input.b.x % 32u)) << (40874u % 32u))), var_0.yx, vec2<bool>(global4.x, any(select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, global4.x, var_0.x, false), vec4<bool>(var_0.x, global4.x, global4.x, true)), vec4<bool>(true, true, false, global4.x), false))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1744f, _wgslsmith_f_op_f32(arg_1.x + -601f))), _wgslsmith_f_op_f32(f32(-1f) * -732f)), global2.x)));
    let var_1 = Struct_1(0u, !(!select(!vec3<bool>(global4.x, false, true), !vec3<bool>(global4.x, false, global4.x), global4.x)), min(min(_wgslsmith_add_vec3_u32(vec3<u32>(25113u, 1u, 0u), vec3<u32>(global0.x, 1u, u_input.b.x)), global0.wzw) ^ firstLeadingBit(vec3<u32>(global0.x, global0.x, 4294967295u)), vec3<u32>(~8897u, 0u, _wgslsmith_add_u32(94495u, global0.x))), reverseBits(global0.www), u_input.b.x);
    return Struct_1(var_1.c.x, !var_1.b, vec3<u32>(0u, firstTrailingBit(4294967295u), ~(~global0.x)), _wgslsmith_div_vec3_u32(global0.yww, ~global0.yzw), ~(~(~abs(var_1.e))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1692f, global2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global3.x, 695f, global3.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global2.x, global2.x, global2.x) * vec4<f32>(1306f, global2.x, -603f, -1210f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, -196f, 892f, global2.x) + vec4<f32>(global3.x, arg_0.x, arg_0.x, -275f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1239f)), arg_0.x, _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(abs(global3.x)))))));
    let var_0 = _wgslsmith_mult_vec3_u32(global0.zwy, abs(global0.zyz));
    global4 = vec2<bool>(true, global4.x);
    let var_1 = func_2(-(_wgslsmith_clamp_i32(~arg_1, -arg_1, u_input.a.x) ^ 3332i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -174f, arg_0.x, -2074f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.x, global2.x, -938f))))));
    global1 = _wgslsmith_mod_u32(1u, var_0.x);
    return 1651f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(global3.wy, 19266i)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, -1000f, global4.x)) - _wgslsmith_f_op_f32(select(global2.x, global3.x, true))))), -474f);
    global1 = func_2(abs(abs(-49325i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(var_0.zy - vec2<f32>(-1471f, global2.x)), 0i))), 143f, var_0.x, global2.x)).a;
    global0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 88851u, _wgslsmith_div_u32(u_input.b.x, 18579u), ~u_input.b.x), ~vec4<u32>(1u, ~global0.x, min(u_input.b.x, global0.x), ~global0.x)) | _wgslsmith_add_vec4_u32(vec4<u32>(~(~global0.x), _wgslsmith_mod_u32(u_input.b.x, 71644u), 46938u >> (_wgslsmith_sub_u32(38480u, global0.x) % 32u), ~global0.x), _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(65705u, 17996u, 4294967295u, 47478u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 1u), vec4<u32>(29465u, u_input.b.x, u_input.b.x, global0.x)) | select(vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 57918u, global0.x, u_input.b.x), vec4<bool>(global4.x, global4.x, global4.x, global4.x))));
    global1 = ~_wgslsmith_sub_u32(~(~(1u ^ u_input.b.x)), firstLeadingBit(1u ^ ~global0.x));
    global1 = 0u ^ ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 44158u), ~u_input.b), global0.x);
    var var_1 = select(select(!vec2<bool>(32905u != u_input.b.x, true), !(!(!vec2<bool>(false, global4.x))), func_2(_wgslsmith_mod_i32(-u_input.d.x, 1i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, 713f, 122f, var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, -1180f, var_0.x, 350f)))))).b.yz), select(select(select(func_2(u_input.c.x, vec4<f32>(-308f, 963f, var_0.x, global2.x)).b.xy, vec2<bool>(global4.x, global4.x), global4.x), select(select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, true), vec2<bool>(global4.x, global4.x)), !vec2<bool>(global4.x, global4.x), func_2(0i, vec4<f32>(835f, 524f, global3.x, var_0.x)).b.yz), global4.x | global4.x), !(!(!vec2<bool>(true, global4.x))), !select(!vec2<bool>(global4.x, false), select(vec2<bool>(false, global4.x), vec2<bool>(false, global4.x), true), vec2<bool>(global4.x, global4.x))), global3.x > _wgslsmith_f_op_f32(-1082f * -332f));
    let var_2 = Struct_1(global0.x, !(!vec3<bool>(!var_1.x, var_1.x, 41654u > u_input.b.x)), ~vec3<u32>(u_input.b.x, 4294967295u, ~(u_input.b.x ^ 44591u)), vec3<u32>(countOneBits(global0.x), 12220u, abs(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(global0.x, u_input.b.x, global0.x, u_input.b.x)), 1u))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(36733i, vec4<i32>(-17565i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.d.x, 2147483647i) << (var_2.c % vec3<u32>(32u))), u_input.a.x, _wgslsmith_sub_i32(u_input.d.x, 1i) ^ u_input.a.x) >> (vec4<u32>(4294967295u, var_2.a, ~var_2.e, select(1u, ~57176u, func_2(u_input.c.x, vec4<f32>(global2.x, 887f, global3.x, global3.x)).b.x)) % vec4<u32>(32u)), ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(31492u, global0.x), ~0u)), global0.x);
}

