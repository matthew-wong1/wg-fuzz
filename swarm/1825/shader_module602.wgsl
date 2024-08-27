struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool>;

var<private> global2: array<bool, 15>;

var<private> global3: bool = true;

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = -(-_wgslsmith_add_vec3_i32(abs(global0.a), vec3<i32>(arg_1.b, arg_2.b, global0.a.x) << (arg_2.c.ywy % vec3<u32>(32u))) >> (u_input.d.wyy % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-1404f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3.x, -386f)))))));
    var var_2 = arg_2;
    let var_3 = ~reverseBits(global0.a);
    global0 = Struct_2(global0.a);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_3)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(450f, _wgslsmith_f_op_f32(round(arg_3.x)), _wgslsmith_f_op_f32(var_1 + -346f), _wgslsmith_div_f32(-371f, arg_3.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, var_1, arg_3.x, arg_3.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) - vec4<f32>(976f, var_1, arg_3.x, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1078f, 834f, 454f, -1231f) * arg_3)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-384f, _wgslsmith_div_f32(-191f, -830f), _wgslsmith_f_op_f32(arg_3.x + var_1), -1546f), arg_3)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = Struct_2(global0.a);
    let var_2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(1u, 10664u), select(arg_0.a.x, ~u_input.d.x, 832f != arg_1.x)), max(_wgslsmith_div_vec2_u32(~var_0.a.xz, arg_0.a.xx), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), var_0.c.wx, u_input.d.zx)));
    var var_3 = ~select(abs(vec3<i32>(firstLeadingBit(0i), arg_0.b, -77608i)), _wgslsmith_add_vec3_i32(var_1.a, select(~var_1.a, reverseBits(vec3<i32>(-2147483647i, global0.a.x, u_input.a)), !global4.xzy)), !global4.x);
    let var_4 = countOneBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.a.x, var_3.x) ^ var_3.x, -_wgslsmith_clamp_i32(1i, 5869i, global0.a.x)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.yx, _wgslsmith_f_op_vec2_f32(-arg_1.wz)), arg_1.wz) + vec2<f32>(-805f, -108f));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, 1116f)))) * vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1688f, -2334f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1495f, 223f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec3<u32>(4294967295u, 14205u, u_input.c), -2147483647i, vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(func_3(4294967295u, Struct_1(u_input.d.wxz, -23552i, vec4<u32>(6153u, 82637u, 1u, 41767u)), Struct_1(u_input.d.wzy, u_input.a, vec4<u32>(65939u, 7132u, 4294967295u, 0u)), vec4<f32>(129f, 1036f, -747f, 390f))))) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(u_input.d.yyw, -2147483647i, vec4<u32>(u_input.d.x, u_input.c, 4294967295u, u_input.c)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(932f, 650f, -379f, -525f))))))));
    global2 = array<bool, 15>();
    global2 = array<bool, 15>();
    global1 = vec3<bool>(false, (_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(min(-566f, -648f))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))) && !(!all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], global1.x))), !(!(!global2[_wgslsmith_index_u32(u_input.c, 15u)] == all(global4.xxx))));
    var var_1 = u_input.d.x;
    return -1542f;
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_2(firstLeadingBit(~(~arg_2)));
    global2 = array<bool, 15>();
    global1 = !vec3<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 * -1000f), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(u_input.d.wzx, var_0.a.x, u_input.d), vec4<f32>(758f, arg_1, -1610f, 1990f))).x)), true);
    let var_1 = -vec4<i32>(min(-34608i, _wgslsmith_dot_vec2_i32(arg_2.yx, -vec2<i32>(1i, 0i))), -17700i, ~(i32(-1i) * -arg_2.x), 0i);
    let var_2 = u_input.d.x;
    return Struct_2(-arg_2 & abs(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(27010i, 1i, u_input.a), global0.a), vec3<i32>(u_input.a, u_input.b.x, u_input.b.x))));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.c;
    var var_1 = -global0.a.x;
    var_0 = u_input.c & 0u;
    global2 = array<bool, 15>();
    let var_2 = -abs(4556i);
    return func_5(vec3<f32>(451f, -709f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(659f, 125f)) + 472f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1237f) + _wgslsmith_f_op_f32(func_2())))), global0.a, ~(-(~(-var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(vec3<i32>(_wgslsmith_mult_i32(-1i, global0.a.x), u_input.a, 30241i) >> (~(~u_input.d.wzy) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_i32(var_0.a, ~var_0.a), !(!vec3<bool>(false, false, global4.x))) << (_wgslsmith_clamp_vec3_u32(max(~reverseBits(u_input.d.xwx), ~(u_input.d.xxx | vec3<u32>(0u, 4294967295u, 0u))), ~(_wgslsmith_mult_vec3_u32(u_input.d.zww, vec3<u32>(37132u, 1u, u_input.c)) >> ((vec3<u32>(0u, u_input.d.x, u_input.c) ^ vec3<u32>(45353u, u_input.d.x, u_input.c)) % vec3<u32>(32u))), ~vec3<u32>(1u, 40578u, 1u) ^ _wgslsmith_clamp_vec3_u32(u_input.d.xyx << (vec3<u32>(u_input.d.x, 32131u, 11499u) % vec3<u32>(32u)), ~vec3<u32>(u_input.d.x, 5890u, u_input.d.x), vec3<u32>(u_input.c, u_input.d.x, 0u))) % vec3<u32>(32u));
    global3 = !(_wgslsmith_sub_i32(2147483647i, i32(-1i) * -30090i) <= ~global0.a.x);
    let var_2 = vec2<bool>(true, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), u_input.d.wwx), global0.a.x, firstLeadingBit(vec4<u32>(7693u, 28879u, u_input.d.x, 2568u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-710f, -1000f, 410f, -1612f) * vec4<f32>(-259f, 1000f, 1000f, -1580f))))).x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1738f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2133f))));
    global0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, -1560f, 180f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-145f)), _wgslsmith_f_op_f32(abs(-351f)), 761f), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -221f)))))), _wgslsmith_sub_vec3_i32(global0.a, ~var_1), global0.a.x);
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~select(~var_3 & ~u_input.c, 4294967295u, u_input.c <= var_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2945f, -418f, 453f), vec3<f32>(-117f, 1296f, 371f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1221f, 836f, -961f), vec3<f32>(-1000f, 839f, -764f), global4.zzw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1043f, 1021f, -414f)))), !global4.zxw)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1274f, -1116f, -187f), vec3<f32>(639f, -1571f, 1000f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(781f, 475f, 1000f))), true))))));
}

