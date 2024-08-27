struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: vec4<i32> = vec4<i32>(9995i, 28305i, 34790i, 0i);

var<private> global2: array<u32, 22>;

var<private> global3: array<vec4<f32>, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> i32 {
    var var_0 = true;
    let var_1 = vec3<f32>(-1127f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.b))))))), -1065f);
    let var_2 = ~(~(~1u));
    var_0 = arg_2.b.c.x;
    global3 = array<vec4<f32>, 25>();
    return abs(2147483647i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = u_input.d.x;
    var var_1 = true;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_0.c.xy, firstLeadingBit(abs(~vec2<i32>(global1.x, arg_0.c.x)))), reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.c.x, arg_2.a), arg_2.c.x)), -4800i);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(693f, -1591f, arg_2.b.b)), vec3<f32>(_wgslsmith_f_op_f32(ceil(2283f)), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(arg_3.x, arg_1.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_3.x, arg_0.b.b))), vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * arg_2.b.b), _wgslsmith_div_f32(arg_0.b.b, arg_0.b.b), _wgslsmith_f_op_f32(-531f * arg_2.b.b)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_2.b.c.x), false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.b, arg_1.b, arg_3.x), vec3<f32>(-233f, 705f, arg_0.b.b), vec3<bool>(arg_2.b.c.x, true, false))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.b, arg_0.b.b, arg_1.b), vec3<f32>(arg_1.b, arg_0.b.b, arg_2.b.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1104f, -2299f, -1000f), vec3<f32>(arg_1.b, -1269f, arg_2.b.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, 1443f, arg_1.b) * vec3<f32>(155f, arg_0.b.b, 1874f)))), !vec3<bool>(all(vec3<bool>(false, true, arg_0.b.c.x)), arg_0.b.c.x, true))));
    global0 = array<vec4<i32>, 18>();
    return vec2<u32>(886u, ~(_wgslsmith_mult_u32(arg_2.b.a, 114919u) & (~var_0 << (select(1u, global2[_wgslsmith_index_u32(4294967295u, 22u)], true) % 32u))));
}

fn func_2() -> f32 {
    global2 = array<u32, 22>();
    var var_0 = vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-20588i, -15603i), global1.yw));
    let var_1 = firstLeadingBit(func_4(Struct_3(func_3(Struct_2(Struct_1(1u, 1000f, vec2<bool>(true, true))), true, Struct_3(u_input.a.x, Struct_1(u_input.b.x, 888f, vec2<bool>(false, false)), global1.www)), Struct_1(~65281u, -744f, vec2<bool>(false, true)), global1.yzz), Struct_1(0u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -406f))), vec2<bool>(true, true)), Struct_3(firstLeadingBit(global1.x), Struct_1(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<bool>(false, false)), vec3<i32>(abs(var_0.x), firstLeadingBit(-28215i), ~var_0.x)), vec2<f32>(1000f, 439f)));
    var var_2 = true;
    var var_3 = select(vec3<bool>(false, true && (any(vec4<bool>(true, false, true, true)) || true), any(vec3<bool>(true, true, any(vec3<bool>(false, true, false))))), select(vec3<bool>(false, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, true)), select(true, false, true), true), vec3<bool>(true, true, true)));
    return 383f;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = u_input.b.ywy;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2300f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), 867f, _wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_vec4_f32(ceil(global3[_wgslsmith_index_u32(reverseBits(1u), 25u)])))));
    global1 = global0[_wgslsmith_index_u32(1u, 18u)];
    var var_2 = Struct_3(reverseBits(-(0i ^ _wgslsmith_clamp_i32(4012i, -1i, 24774i))), Struct_1(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, 1u) >> (_wgslsmith_sub_u32(u_input.d.x, 0u) % 32u), 22u)]), -1787f, select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false)))), _wgslsmith_clamp_vec3_i32(reverseBits(-vec3<i32>(-11018i, global1.x, 1i)), u_input.e.ywz, global1.xyz));
    var_1 = _wgslsmith_f_op_vec4_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(7669u), firstLeadingBit(abs(13257u))), 25u)], _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~21804u, 25u)])));
    return Struct_3(-2147483647i, Struct_1(35135u, 358f, !var_2.b.c), ~vec3<i32>(global1.x, abs(-17769i), var_2.c.x | global1.x) >> (vec3<u32>(1u, 4294967295u, firstTrailingBit(var_2.b.a) << (u_input.b.x % 32u)) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<u32>) -> bool {
    global2 = array<u32, 22>();
    let var_0 = !vec3<bool>(arg_2.b.c.x, arg_2.b.c.x, true);
    var var_1 = Struct_1(30772u, _wgslsmith_f_op_f32(-278f * arg_0.b.b), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_2.b.b, -880f, arg_0.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b, 520f)))))).b.c);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.b, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(856f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.b, 620f, arg_0.b.b) * vec3<f32>(410f, 1000f, arg_2.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -1000f, 424f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1345f, -866f, -1990f)))) * vec3<f32>(var_1.b, var_1.b, -148f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.b, arg_0.b.b, var_1.b), vec3<f32>(-761f, 1441f, -105f), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.b, var_1.b, 855f) - vec3<f32>(1017f, arg_2.b.b, 1206f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.b, var_1.b, -1170f) + vec3<f32>(-501f, 153f, var_1.b)) - vec3<f32>(1442f, arg_0.b.b, var_1.b)))));
    let var_3 = Struct_2(arg_2.b);
    return func_1(_wgslsmith_f_op_vec2_f32(var_2.yz - vec2<f32>(1094f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f))))).b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.e;
    global1 = u_input.e;
    let var_0 = vec3<bool>(func_5(func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-460f, 192f)))), vec2<u32>(43243u, 18709u), Struct_3(u_input.e.x, func_1(vec2<f32>(272f, 762f)).b, u_input.e.zwx), vec2<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(50130u, 22u)], 111417u), u_input.d.x)) | true, true, !(!func_5(Struct_3(29781i, Struct_1(4294967295u, 113f, vec2<bool>(true, true)), global1.zyz), vec2<u32>(u_input.d.x, 34132u), Struct_3(global1.x, Struct_1(4294967295u, -421f, vec2<bool>(false, true)), vec3<i32>(global1.x, global1.x, 58894i)), u_input.b.ww)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 114f)) + _wgslsmith_f_op_f32(step(-1610f, -230f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))), vec3<f32>(var_1, -715f, _wgslsmith_f_op_f32(step(-502f, -270f))), var_0.x))), vec3<f32>(307f, _wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)))), !(!var_0)));
    let var_3 = ~u_input.b.x;
    global2 = array<u32, 22>();
    var var_4 = vec4<f32>(var_2.x, var_2.x, var_2.x, -1000f);
    let var_5 = Struct_3(u_input.e.x, Struct_1(var_3, _wgslsmith_f_op_f32(round(var_1)), vec2<bool>(select(false, true, var_0.x), false)), -(_wgslsmith_add_vec3_i32(countOneBits(global1.wzy), abs(global1.xwx)) & u_input.e.zwz));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-18872i), _wgslsmith_add_u32(_wgslsmith_div_u32(~var_3, _wgslsmith_sub_u32(var_3, 14241u)), ~1u) ^ countOneBits(84272u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(trunc(444f)), var_5.b.b)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_5.b.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.b.a, global2[_wgslsmith_index_u32(1u, 22u)], var_5.b.a), vec3<u32>(global2[_wgslsmith_index_u32(46192u, 22u)], u_input.b.x, var_5.b.a))), 25u)])), ~(vec2<u32>(21197u, u_input.b.x) & _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, 1u) ^ vec2<u32>(global2[_wgslsmith_index_u32(0u, 22u)], 0u))));
}

