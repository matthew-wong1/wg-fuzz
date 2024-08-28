struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-61076i, 2147483647i, i32(-2147483648), 2147483647i), vec3<u32>(65377u, 57493u, 4294967295u), vec4<bool>(true, false, false, false), 44536u);

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: array<bool, 31>;

var<private> global3: array<i32, 20>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global2 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-992f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_div_f32(1180f, -457f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), -564f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2123f, -118f)) + vec2<f32>(759f, 159f))))), !select(!global0.c.zz, !select(vec2<bool>(global2[_wgslsmith_index_u32(global0.d, 31u)], false), global1[_wgslsmith_index_u32(39648u, 27u)], true), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -224f, -345f, var_0.x) * vec4<f32>(-825f, var_0.x, -400f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, 285f, -303f, -296f)))))));
    var var_2 = Struct_1(global0.a, global0.b, select(vec4<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, global0.b.x), u_input.d.xyx) <= u_input.a, select(true, true, global0.c.x), select(false, true, true) && global0.c.x), global0.c, select(global0.c, select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0.b.x, 31u)], true, false), select(global0.c, global0.c, global0.c), global2[_wgslsmith_index_u32(~u_input.a, 31u)]), !select(global0.c, global0.c, global0.c))), global0.b.x);
    var var_3 = var_1.xxx;
    return ~(~(~(-1i)));
}

fn func_2() -> Struct_1 {
    var var_0 = !(!global0.c.zyz);
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(global0.a.xww, vec3<i32>(-1i) * -global0.a.wzz), _wgslsmith_clamp_i32(9476i, 12081i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global0.a.yxy, global0.a.xyz), _wgslsmith_mult_i32(0i, 2147483647i))), u_input.e, _wgslsmith_div_i32(~func_3(), global0.a.x)), vec3<u32>(~39076u, ~select(global0.d, 4294967295u, true), u_input.b), global0.c, u_input.c);
    global3 = array<i32, 20>();
    let var_2 = Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, u_input.a, 3801u)) ^ u_input.a, 20u)], var_1.a.x, -u_input.e, select(func_3(), ~firstLeadingBit(var_1.a.x), true)), abs(var_1.b), select(global0.c, global0.c, !global2[_wgslsmith_index_u32(33448u, 31u)]), var_1.b.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-110f)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 361f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, arg_1)))) * vec3<f32>(-678f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    global1 = array<vec2<bool>, 27>();
    global1 = array<vec2<bool>, 27>();
    global2 = array<bool, 31>();
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(4081u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 9526u, u_input.d.x), 4294967295u)), _wgslsmith_mod_vec3_u32(min(global0.b, ~u_input.d.zzw), vec3<u32>(func_2().d, 55100u, countOneBits(global0.d)))) >> (~(vec3<u32>(~arg_3.b.x, 11350u, ~1u) | ((arg_3.b << (arg_3.b % vec3<u32>(32u))) & vec3<u32>(36704u, arg_0.b.x, arg_0.d))) % vec3<u32>(32u));
    return arg_3;
}

fn func_1() -> bool {
    global0 = func_5(func_4(func_2(), firstLeadingBit(_wgslsmith_add_vec3_i32(~global0.a.yxw, ~vec3<i32>(u_input.e, -67717i, 2147483647i))), any(vec2<bool>(true, any(vec2<bool>(global0.c.x, false))))), _wgslsmith_f_op_f32(f32(-1f) * -205f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.d, ~(~0u)), 31u)], func_4(Struct_1(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.e), global0.a.x, 99677i, 1i), vec3<u32>(global0.b.x | global0.d, 16675u, countOneBits(56456u)), select(select(vec4<bool>(false, false, false, global0.c.x), global0.c, global0.c), global0.c, global0.b.x <= u_input.a), max(~global0.b.x, global0.b.x & 4294967295u)), (-vec3<i32>(-1i, 81564i, global3[_wgslsmith_index_u32(u_input.d.x, 20u)]) << (vec3<u32>(global0.d, 4294967295u, u_input.a) % vec3<u32>(32u))) << (~global0.b % vec3<u32>(32u)), false));
    var var_0 = 855f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u <= ((~(global0.b.x << (1u % 32u)) >> (_wgslsmith_sub_u32(~1u, u_input.a ^ u_input.d.x) % 32u)) & ~(~50362u));
    var var_1 = func_1();
    let var_2 = Struct_1(vec4<i32>(abs(_wgslsmith_clamp_i32(-2147483647i, global0.a.x, 16270i)), min(_wgslsmith_sub_i32(100248i, global0.a.x), 2147483647i), 1i, 1i) & vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(27261u, 20u)]), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global0.b.x, 20u)], 19036i), abs(1i), global0.a.x), firstTrailingBit(~u_input.d.yxx) ^ global0.b, global0.c, ~global0.d);
    global3 = array<i32, 20>();
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.d, _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(15494u, global0.d, u_input.d.x, 24767u))) << (~reverseBits(u_input.d) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(min(u_input.d, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(43887u, global0.d, 1u, global0.d), u_input.d))), vec4<u32>(min(~global0.b.x, abs(_wgslsmith_mod_u32(57122u, var_2.b.x))), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9278u, 13431u, global0.b.x), u_input.d)) >> (0u % 32u), firstTrailingBit(~26743u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.b.zy, vec2<u32>(global0.b.x, global0.b.x)), global0.b.zx)));
    var var_4 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(-2147483647i), global0.a.x, global0.a.x, global0.a.x), var_2.a), min(vec3<u32>(~(~10339u), global0.d & reverseBits(1u), select(91929u, countOneBits(var_2.b.x), all(vec2<bool>(false, var_2.c.x)))), _wgslsmith_mod_vec3_u32(global0.b, ~(~u_input.d.zzz))), func_5(func_2(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -221f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(823f)), _wgslsmith_f_op_f32(max(-872f, -362f)))))), any(!select(global1[_wgslsmith_index_u32(u_input.c, 27u)], vec2<bool>(false, true), vec2<bool>(true, false))), Struct_1(select(vec4<i32>(u_input.e, var_2.a.x, u_input.e, global3[_wgslsmith_index_u32(81720u, 20u)]), ~vec4<i32>(global0.a.x, var_2.a.x, u_input.e, 1i), true), vec3<u32>(~102191u, _wgslsmith_div_u32(u_input.c, 35721u), _wgslsmith_mod_u32(u_input.b, 47564u)), vec4<bool>(true, false, !global2[_wgslsmith_index_u32(global0.b.x, 31u)], true), ~4294967295u)).c, ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 69842u, 1u, var_2.b.x)), ~u_input.d));
    global1 = array<vec2<bool>, 27>();
    global0 = var_2;
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.zx, 1i, 71964u, _wgslsmith_mod_vec4_i32(var_4.a, vec4<i32>(24677i, func_4(func_5(var_5, -855f, false, Struct_1(var_4.a, global0.b, var_5.c, var_4.b.x)), vec3<i32>(global3[_wgslsmith_index_u32(61375u, 20u)], 0i, var_4.a.x) << (var_2.b % vec3<u32>(32u)), var_5.c.x).a.x, 1i, ~abs(global0.a.x))), _wgslsmith_f_op_f32(1386f + -244f));
}

