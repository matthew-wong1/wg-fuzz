struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global3: vec3<f32> = vec3<f32>(3296f, -930f, -1168f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<u32> {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, -473f), vec3<f32>(-1591f, global3.x, global3.x)), vec3<f32>(-249f, global3.x, 495f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(856f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -372f)), 1000f), select(vec3<bool>(false, all(vec2<bool>(true, arg_1.c.x)), select(arg_1.d.b.a, arg_1.c.x, true)), select(vec3<bool>(true, arg_1.b, true), global1.b.c.wzy, true), !select(arg_1.c.wyx, arg_1.c.zzz, false)))) + vec3<f32>(global3.x, 233f, _wgslsmith_f_op_f32(global3.x * -748f)));
    global3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(740f, _wgslsmith_f_op_f32(-1000f * global3.x), _wgslsmith_f_op_f32(global3.x + global3.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1157f, -495f) * vec3<f32>(global3.x, global3.x, global3.x))))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1191f));
    var var_1 = ((~arg_2 >> (vec2<u32>(max(arg_1.a, arg_0), arg_2.x) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_u32(~global1.b.e.xx, ~arg_1.e.ww, vec2<u32>(global1.b.e.x ^ global1.b.e.x, arg_2.x))) << ((select(countOneBits(vec2<u32>(arg_0, 24635u)), ~vec2<u32>(79783u, 88217u), arg_1.d.a.a) ^ arg_2) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2054f))) + -685f)));
    return countOneBits(arg_1.e ^ _wgslsmith_mod_vec4_u32(~(global1.b.e | global1.b.e), min(vec4<u32>(0u, 0u, var_1.x, 67684u), vec4<u32>(global1.b.e.x, global1.b.a, arg_1.a, arg_1.a)) & arg_1.e));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_u32(select(_wgslsmith_mult_vec2_u32(~vec2<u32>(global1.b.a, arg_0.c.x), arg_1.e.xz) << (vec2<u32>(~1u, _wgslsmith_add_u32(0u, arg_0.c.x)) % vec2<u32>(32u)), ~max(~arg_1.e.xy, abs(vec2<u32>(0u, arg_1.e.x))), arg_1.c.zw), vec2<u32>(~57785u | _wgslsmith_mult_u32(arg_0.c.x, 43689u), arg_0.c.x) | countOneBits(~global1.b.e.zx));
    var var_1 = global1.a;
    var_1 = firstLeadingBit(vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(select(23970i, -26844i, arg_0.b.x), ~(-1i))), -1i, ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, var_1.x), -37147i), _wgslsmith_mult_i32(abs(-8572i), 34932i)));
    var var_2 = _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(sign(global3.x)));
    var_1 = firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -_wgslsmith_div_i32(global1.a.x, -5853i), -1i, -_wgslsmith_clamp_i32(var_1.x, -2147483647i, -7485i)), abs(global1.a)));
    return select(var_0.x, global1.b.e.x, all(!arg_0.e));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(Struct_1(global1.b.d.b.a), select(select(select(select(global1.b.c.ww, global1.b.c.ww, global1.b.d.c.a), select(vec2<bool>(true, global1.b.d.c.a), global1.b.c.xz, global1.b.b), true), select(vec2<bool>(true, global1.b.b), global1.b.c.wx, true), any(global1.b.c) | global1.b.c.x), vec2<bool>(false, any(global1.b.c)), 1u < ~(global1.b.e.x >> (4944u % 32u))), vec2<u32>((~0u >> (~global1.b.a % 32u)) ^ reverseBits(4294967295u), func_4(Struct_5(Struct_1(global1.b.c.x), vec2<bool>(true, global1.b.c.x), global1.b.e.xx << (global1.b.e.wx % vec2<u32>(32u)), Struct_2(global1.b.d.a, Struct_1(false), Struct_1(false)), select(global1.b.c.xzy, global1.b.c.zxz, global1.b.c.wyw)), Struct_3(0u, 4294967295u != global1.b.a, global1.b.c, global1.b.d, func_3(global1.b.e.x, global1.b, vec2<u32>(global1.b.a, global1.b.a))), true)), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(global1.b.e.x, _wgslsmith_div_u32(global1.b.a, 1u)) | 0u), 23u)], select(!vec3<bool>(global1.b.b, false, true), global1.b.c.wxy, select(vec3<bool>(any(global1.b.c), !global1.b.d.a.a, false | global1.b.d.c.a), !vec3<bool>(global1.b.b, true, true), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1578f, global3.x, global3.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x))), global3.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, -454f, global3.x))) * vec3<f32>(global3.x, 2193f, global3.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -164f, global3.x)) + vec3<f32>(global3.x, global3.x, 174f)))));
    let var_2 = Struct_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global1.a.x, 1i | u_input.a, reverseBits(_wgslsmith_add_i32(1i, u_input.a))), global1.a), Struct_3(_wgslsmith_div_u32(global1.b.e.x, 35180u), global1.b.d.b.a, !global1.b.c, Struct_2(Struct_1(any(vec4<bool>(var_0.b.x, var_0.d.b.a, global1.b.b, false))), global2[_wgslsmith_index_u32(29647u, 26u)], Struct_1(all(vec3<bool>(var_0.b.x, global1.b.c.x, true)))), firstTrailingBit(~vec4<u32>(global1.b.e.x, global1.b.a, 0u, 49078u))));
    var var_3 = Struct_5(Struct_1(var_2.b.d.b.a), select(!(!select(vec2<bool>(true, var_2.b.b), vec2<bool>(var_2.b.d.b.a, var_2.b.b), vec2<bool>(false, var_2.b.d.a.a))), select(vec2<bool>(var_0.b.x, true), !vec2<bool>(global1.b.c.x, global1.b.d.c.a), var_0.b), var_0.a.a), ~countOneBits(~func_3(global1.b.a, Struct_3(0u, global1.b.b, vec4<bool>(global1.b.c.x, global1.b.c.x, true, var_0.d.b.a), Struct_2(Struct_1(var_2.b.b), Struct_1(global1.b.d.c.a), var_0.a), global1.b.e), var_2.b.e.yz).wz), Struct_2(global2[_wgslsmith_index_u32(91912u, 26u)], Struct_1(false), Struct_1(all(vec3<bool>(true, global1.b.d.a.a, true)) && var_0.e.x)), select(!select(global1.b.c.wxy, global1.b.c.zzw, vec3<bool>(true, true, true)), select(select(select(var_0.e, vec3<bool>(true, false, true), global1.b.c.xwz), !vec3<bool>(true, true, global1.b.b), select(vec3<bool>(true, var_2.b.d.b.a, var_0.b.x), vec3<bool>(var_0.e.x, true, global1.b.d.b.a), vec3<bool>(global1.b.c.x, var_2.b.d.c.a, var_2.b.c.x))), vec3<bool>(!global1.b.c.x, var_2.b.b | false, !var_0.b.x), vec3<bool>(true, false, false)), global1.b.c.xyy));
    return Struct_3(var_2.b.a, !any(!global1.b.c.yzw), global1.b.c, global1.b.d, var_2.b.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: u32) -> vec2<u32> {
    let var_0 = func_2();
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_1 = func_2().d.c;
    var var_2 = Struct_3(var_0.a, true, select(select(var_0.c, select(select(arg_1, vec4<bool>(var_0.c.x, false, arg_1.x, false), vec4<bool>(arg_2.e.x, var_1.a, var_1.a, true)), vec4<bool>(false, false, var_1.a, false), vec4<bool>(var_1.a, arg_2.e.x, var_0.c.x, arg_1.x)), all(!arg_2.e)), vec4<bool>(var_0.c.x, false, true, !(arg_1.x == arg_2.d.b.a)), var_0.c), func_2().d, var_0.e);
    return vec2<u32>(select(var_2.e.x, func_2().e.x | arg_3, !(arg_0.x < arg_0.x) | ((26586u == global1.b.a) | false)), ~arg_2.c.x);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>) -> vec3<f32> {
    global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(251f, global3.x, -1197f))) * vec3<f32>(_wgslsmith_f_op_f32(global3.x + global3.x), global3.x, global3.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, global3.x, global3.x), vec3<f32>(1316f, 418f, global3.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(635f, global3.x, global3.x), vec3<f32>(global3.x, 683f, -885f), global1.b.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1714f, 1328f, global3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(660f, global3.x, -1417f), vec3<f32>(119f, global3.x, -142f), global1.b.d.c.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 100f))), vec3<f32>(_wgslsmith_f_op_f32(select(-203f, global3.x, global1.b.c.x)), -609f, _wgslsmith_f_op_f32(select(global3.x, global3.x, global1.b.c.x))), global1.b.c.wxw)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-691f, global3.x, 1227f))))));
    let var_0 = global3.zx;
    var var_1 = Struct_2(Struct_1(true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~max(global1.b.e.wzy, vec3<u32>(arg_1.x, 43595u, global1.b.e.x) & vec3<u32>(arg_1.x, 1u, 1u)), global1.b.e.wyy), 26u)], global2[_wgslsmith_index_u32(arg_1.x, 26u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))));
    var var_3 = select(vec3<bool>(false, var_1.a.a, var_1.a.a && true), !global1.b.c.zwy, vec3<bool>(!(true && (global1.b.b && true)), !all(vec4<bool>(global1.b.c.x, true, false, false)), var_1.b.a));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2157f, -400f, global3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, -538f, global3.x))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2131f, global3.x))), 300f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1043f, 1434f, -1000f) - vec3<f32>(global3.x, -767f, global3.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -1242f, 565f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, global3.x, global3.x)))))), func_2().c.ywz));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_div_i32(-2147483647i, u_input.a), func_1(_wgslsmith_f_op_vec2_f32(-global3.yy), global1.b.c, Struct_5(global2[_wgslsmith_index_u32(~(~41405u), 26u)], vec2<bool>(true, true), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 28584u), global1.b.e.zy) | abs(global1.b.e.wz), global1.b.d, !(!global1.b.c.ywx)), ~global1.b.a)));
    let var_0 = select(true, all(global1.b.c.xyy), global1.b.d.b.a);
    let var_1 = ~(~21817u);
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.e.wxx, 4294967295u, ~(~0u), _wgslsmith_div_f32(-620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))));
}

