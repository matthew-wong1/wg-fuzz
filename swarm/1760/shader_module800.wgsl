struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: u32 = 0u;

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(17607u, vec2<bool>(true, false), 4294967295u), Struct_3(7463u, vec2<bool>(true, true), 14348u), Struct_3(4294967295u, vec2<bool>(false, true), 4294967295u), Struct_3(0u, vec2<bool>(false, false), 1u), Struct_3(1204u, vec2<bool>(true, false), 0u), Struct_3(1u, vec2<bool>(true, false), 30545u), Struct_3(62802u, vec2<bool>(true, true), 4294967295u), Struct_3(1u, vec2<bool>(true, true), 38252u), Struct_3(0u, vec2<bool>(true, false), 19161u), Struct_3(4294967295u, vec2<bool>(false, false), 31774u), Struct_3(4294967295u, vec2<bool>(true, false), 9670u), Struct_3(0u, vec2<bool>(true, false), 22306u), Struct_3(0u, vec2<bool>(true, true), 71817u), Struct_3(1u, vec2<bool>(false, true), 63737u), Struct_3(42432u, vec2<bool>(true, false), 1u), Struct_3(1u, vec2<bool>(true, false), 0u), Struct_3(4294967295u, vec2<bool>(false, true), 30264u), Struct_3(3651u, vec2<bool>(true, false), 56208u), Struct_3(1u, vec2<bool>(true, false), 0u), Struct_3(4294967295u, vec2<bool>(true, true), 44798u), Struct_3(0u, vec2<bool>(false, false), 1u));

var<private> global4: Struct_3 = Struct_3(30120u, vec2<bool>(true, true), 12623u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = true | !global0.d.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(855f * _wgslsmith_f_op_f32(487f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(843f - -569f), -395f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, -382f, 881f)))));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(min(u_input.a.x, ~0u), global4.a, global0.b.x, 15620u), u_input.a, ~(~u_input.a));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(step(-874f, _wgslsmith_f_op_f32(sign(584f)))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(1287f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(305f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-920f * -885f)))));
    var_1 = Struct_2(1f, vec3<f32>(1218f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -606f))));
    return (4294967295u >> (select(1u, 0u, !var_0) % 32u)) ^ (global4.a << (0u % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(func_3(), 21u)];
    var var_1 = Struct_1(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, -1i, global0.a.x), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 1i)) & global0.a.x, 1i, global0.a.x), global0.b, !select(vec3<bool>(all(vec2<bool>(false, global0.c.x)), !var_0.b.x, true), select(!global0.d.wzw, vec3<bool>(global4.b.x, false, var_0.b.x), global4.b.x), global4.b.x), select(select(global0.d, vec4<bool>(var_0.b.x || var_0.b.x, true, select(true, global4.b.x, true), true), !global0.d), global0.d, !vec4<bool>(!global0.d.x, select(global0.c.x, true, false), true, 131542u >= global4.c)));
    var_1 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(-2147483647i, 75027i, global0.a.x), var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, global0.a.x) >> (vec3<u32>(u_input.a.x, 0u, var_1.b.x) % vec3<u32>(32u)), abs(vec3<i32>(40720i, -95097i, 47665i)))), var_1.a), abs(~vec2<u32>(~1u, global0.b.x)), global0.d.zzy, !select(!vec4<bool>(var_1.c.x, global4.b.x, global0.d.x, true), global0.d, var_1.c.x));
    global3 = array<Struct_3, 21>();
    let var_2 = -1i;
    return Struct_1(vec3<i32>(_wgslsmith_add_i32(24890i, var_1.a.x), var_2, _wgslsmith_clamp_i32(-2147483647i, var_1.a.x, -19426i)), ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 17256u), vec2<u32>(75014u, 4294967295u)), global0.b), vec2<u32>(~global0.b.x, ~7940u)), vec3<bool>(false, 1153f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-889f)))), all(global0.d.zw)), vec4<bool>(!global4.b.x, !global4.b.x, any(!select(vec2<bool>(true, global4.b.x), var_1.c.zx, var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-214f, -1000f, global0.c.x)) - -150f) == _wgslsmith_f_op_f32(sign(-766f))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 496f;
    global4 = Struct_3(23623u, arg_0.c.yx, 12041u);
    var var_1 = u_input.a;
    var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(39778u, firstLeadingBit(max(var_1.x, arg_0.b.x))), ~func_2().b.x, u_input.a.x, ~0u), ~vec4<u32>(~firstLeadingBit(arg_0.b.x), ~_wgslsmith_mult_u32(var_1.x, u_input.a.x), 0u, var_1.x), u_input.a);
    var var_2 = true;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec3<bool> {
    global0 = func_4(func_2());
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(2233f, _wgslsmith_f_op_f32(2254f + _wgslsmith_f_op_f32(abs(-796f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-902f, -1000f)) - 1f)))));
    global1 = _wgslsmith_f_op_f32(-874f * 1f);
    let var_1 = -624f;
    return select(vec3<bool>(any(global0.d.yyx), false, false), vec3<bool>(true, any(global0.d.wwy), _wgslsmith_sub_i32(global0.a.x >> (0u % 32u), _wgslsmith_div_i32(0i, 1i)) != _wgslsmith_dot_vec4_i32(-vec4<i32>(38548i, global0.a.x, global0.a.x, global0.a.x), abs(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))), vec3<bool>(~0u == (~global4.c | ~u_input.a.x), false, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-firstTrailingBit(global0.a), ~vec2<u32>(u_input.a.x, 4294967295u) | vec2<u32>(max(_wgslsmith_dot_vec3_u32(u_input.a.yww, u_input.a.yzx), ~1381u), u_input.a.x), select(func_1(true, Struct_3(76340u, select(vec2<bool>(global0.d.x, global0.c.x), global0.d.xw, false), ~0u)), func_2().d.zyw, func_1(!(global4.c != 1u), global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, 40274u, 21364u), 21u)]).x), vec4<bool>(any(global0.d), global4.b.x, false, true | global0.c.x));
    global4 = Struct_3(u_input.a.x, vec2<bool>(true, global0.d.x), _wgslsmith_dot_vec4_u32(abs(u_input.a), ~min(firstTrailingBit(vec4<u32>(u_input.a.x, 1u, global0.b.x, u_input.a.x)), vec4<u32>(1u, global4.c, 1u, 1u))));
    var var_0 = vec2<u32>(0u, firstLeadingBit(u_input.a.x));
    var_0 = abs(func_2().b);
    var var_1 = vec4<i32>(0i, i32(-1i) * -1i, i32(-1i) * -2147483647i, ~(-32677i));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -985f), 712f)))));
    var_1 = (((countOneBits(vec4<i32>(-2147483647i, var_1.x, global0.a.x, var_1.x)) | select(vec4<i32>(1i, global0.a.x, -2147483647i, var_1.x), vec4<i32>(var_1.x, 1i, -33517i, -34156i), true)) >> ((u_input.a << (vec4<u32>(4294967295u, u_input.a.x, 4294967295u, global0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_sub_i32(global0.a.x, -global0.a.x), firstLeadingBit(global0.a.x >> (global4.a % 32u)), 0i, countOneBits(~var_1.x))) | ~vec4<i32>(-71789i, ~var_1.x >> ((1u >> (global0.b.x % 32u)) % 32u), -var_1.x << (var_0.x % 32u), global0.a.x);
    var_0 = firstTrailingBit(vec2<u32>(func_2().b.x, abs(_wgslsmith_dot_vec2_u32(global0.b ^ u_input.a.ww, ~vec2<u32>(0u, 0u)))));
    global4 = global3[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1262f, 463f, -1239f))))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2109f, 759f, 1268f, 1061f)))))))), global0.a.x, _wgslsmith_f_op_f32(round(480f)), 794f);
}

