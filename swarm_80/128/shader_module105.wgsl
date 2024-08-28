struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: vec4<i32> = vec4<i32>(-9764i, -23531i, 18591i, 1i);

var<private> global3: f32;

var<private> global4: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool) -> i32 {
    global4 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-2420f, _wgslsmith_f_op_f32(515f * 678f))), arg_1)) > arg_1);
    global2 = ~vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), firstTrailingBit(21042i), global2.x, ~u_input.a);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(max(arg_1, 1987f))))))));
    global2 = ~(vec4<i32>(-1i) * -vec4<i32>(global2.x, -33155i, select(u_input.b, 35367i, global4.a), 13172i));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0 - 568f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, -755f))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(i32(-1i) * -18045i, _wgslsmith_sub_i32(u_input.c.x, -11588i)), _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(global2.x, u_input.a, global2.x))), vec3<i32>(global2.x, 72808i, u_input.a) & (vec3<i32>(global2.x, u_input.a, global2.x) << (vec3<u32>(global0.x, 34391u, 0u) % vec3<u32>(32u)))), -2147483647i), ~min(_wgslsmith_mult_vec3_i32(global2.xwx, -vec3<i32>(global2.x, global2.x, global2.x)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 16755i, -2147483647i), global2.yxz, global2.wxy), global2.yzw, u_input.b != global2.x)));
}

fn func_2() -> u32 {
    var var_0 = vec4<i32>(-u_input.a, firstLeadingBit(~func_3(true, 1000f, false)), _wgslsmith_mod_i32(~countOneBits(30002i), u_input.a << (~global0.x % 32u)), firstTrailingBit(_wgslsmith_add_i32(1i, global2.x) | -1i)) >> (~vec4<u32>(firstLeadingBit(0u), 49724u, firstTrailingBit(87214u), global0.x) % vec4<u32>(32u));
    var var_1 = -1931f;
    let var_2 = global0.zzx << (vec3<u32>(select(1u, abs(67869u & global0.x), !(!global4.a)), global0.x & (global0.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 40488u), global0.xwz) % 32u)), 1u) % vec3<u32>(32u));
    let var_3 = vec3<bool>(true, true, false);
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-723f, -3120f), _wgslsmith_f_op_f32(abs(-430f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1217f))))), _wgslsmith_f_op_f32(1f - -439f)) + vec2<f32>(459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(783f)) + -322f))));
    return ~min(4294967295u, var_2.x << (~46634u % 32u));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    var var_0 = arg_1.x;
    global0 = vec4<u32>(min(global0.x, global0.x), global0.x, _wgslsmith_add_u32(global0.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global0.x, 1u) & global0.wy), vec2<u32>(~48185u, _wgslsmith_add_u32(4294967295u, 0u)))), ~global0.x);
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -781f), 1197f)), _wgslsmith_f_op_f32(-132f * _wgslsmith_f_op_f32(floor(-1346f)))) < 1048f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    global0 = select(~select(vec4<u32>(global0.x, 80178u, global0.x, 13022u) >> (vec4<u32>(global0.x, 0u, global0.x, 1u) % vec4<u32>(32u)), countOneBits(vec4<u32>(29480u, global0.x, 31866u, global0.x)), !vec4<bool>(true, false, global4.a, false)) << (vec4<u32>(13063u, min(func_2(), 1u), ~firstTrailingBit(28845u), ~93921u) % vec4<u32>(32u)), vec4<u32>(62143u, ~_wgslsmith_mod_u32(global0.x, _wgslsmith_mod_u32(89830u, global0.x)), _wgslsmith_add_u32(62026u, global0.x), ~_wgslsmith_dot_vec2_u32(~global0.zy, select(global0.xx, vec2<u32>(global0.x, 113505u), vec2<bool>(arg_0, true)))), !(arg_0 | (var_2.x < _wgslsmith_f_op_f32(1000f - var_2.x))));
    return 1050f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f + _wgslsmith_f_op_f32(func_1(global4.a, vec2<i32>(u_input.c.x, 14326i))))), _wgslsmith_f_op_f32(func_1(global4.a, min(-u_input.c.xx, _wgslsmith_mod_vec2_i32(global2.wx, global2.yx)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1558f, 1162f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-2309f)))))));
    var var_1 = Struct_4(!vec2<bool>(true, !(global4.a && global4.a)), Struct_1(var_0.a), firstLeadingBit(~firstLeadingBit(-vec4<i32>(-71777i, -2147483647i, u_input.c.x, u_input.c.x))), any(select(vec3<bool>(global4.a, true, global4.a), select(select(vec3<bool>(global4.a, global4.a, true), vec3<bool>(true, true, global4.a), global4.a), select(vec3<bool>(global4.a, false, true), vec3<bool>(false, global4.a, true), false), !vec3<bool>(true, global4.a, true)), true)));
    var var_2 = Struct_1(var_0.a);
    var_0 = global1[_wgslsmith_index_u32(global0.x << (global0.x % 32u), 24u)];
    var var_3 = vec3<bool>(any(!var_1.a), true, var_1.d);
    var_1 = Struct_4(vec2<bool>(true, true), var_1.b, vec4<i32>(~(~1i), 13866i, -17292i, global2.x), any(vec2<bool>(false, global2.x == -21229i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32((u_input.c.xx | (vec2<i32>(global2.x, global2.x) >> (global0.xy % vec2<u32>(32u)))) | global2.zx, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a), var_1.c.yz >> (vec2<u32>(global0.x, 66242u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(-489f - -640f), _wgslsmith_sub_i32(var_1.c.x, abs(global2.x) >> (global0.x % 32u)), global2.yzy);
}

