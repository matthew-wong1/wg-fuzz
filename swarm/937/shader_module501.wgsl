struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(850f, 206f), vec2<f32>(-1000f, 1000f));

var<private> global2: array<Struct_1, 30>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-443f, -313f), vec2<f32>(1128f, 112f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(-1244f, _wgslsmith_div_f32(global3.a.x, global3.b.x), all(!select(!vec4<bool>(global0.x, global0.x, false, true), select(vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, false, true, true), global0.x), 2147483647i >= arg_1.x))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.b))), _wgslsmith_f_op_vec2_f32(exp2(global1.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1000f, var_0)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(676f, 1000f, global0.x)), -376f, _wgslsmith_f_op_f32(var_0 - 574f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-107f, 1074f, var_0), vec3<f32>(-1300f, -1562f, -995f)))))))));
    global1 = global2[_wgslsmith_index_u32(17439u, 30u)];
    var var_2 = u_input.a;
    return select(!vec2<bool>(global0.x, false), vec2<bool>((true && any(vec2<bool>(global0.x, true))) | global0.x, any(vec2<bool>(global0.x, global0.x)) || true), !select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x), !(!vec2<bool>(global0.x, false)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), global0.x), vec2<bool>(false, global0.x), !vec2<bool>(global0.x, false))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.b.x))), global3.a);
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.x))) * -783f), _wgslsmith_f_op_f32(f32(-1f) * -467f)), var_0.b);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global3.a, arg_3.b, vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(global3.a, global3.a), global0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, 673f), vec2<f32>(arg_3.a.x, global1.b.x))), vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x))))), global1.b);
    let var_2 = -(~_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(3813i, 0i, -54582i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, 1i), vec3<i32>(0i, 1i, 0i)))));
    let var_3 = arg_0;
    return -1603f;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-global1.b.x))))), global1.a);
    global1 = global2[_wgslsmith_index_u32(~(~u_input.b.x), 30u)];
    let var_1 = Struct_1(global1.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.a.x)) + global3.b.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(238f)), -1227f, false))), global3.a.x));
    global2 = array<Struct_1, 30>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, countOneBits(71292u)), 30u)];
    return u_input.b.x >= ~42704u;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(255f, -426f) * _wgslsmith_f_op_vec2_f32(global3.a * vec2<f32>(global3.a.x, -794f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(216f, global3.b.x), vec2<f32>(-1257f, 1407f))) + _wgslsmith_f_op_vec2_f32(exp2(global1.a)))))));
    let var_1 = !(!select(vec2<bool>(true, global0.x | false), !func_2(-7908i, vec3<i32>(-2147483647i, 15061i, -7887i)), !vec2<bool>(global0.x, global0.x)));
    global0 = vec2<bool>(func_4(!(!(!vec3<bool>(true, var_1.x, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f + 417f) * _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(8040u, 30u)], Struct_1(global1.a, vec2<f32>(-1720f, global3.b.x)), global2[_wgslsmith_index_u32(39469u, 30u)], Struct_1(vec2<f32>(global1.a.x, 294f), vec2<f32>(676f, global1.a.x))))), _wgslsmith_f_op_f32(trunc(1760f))))), true);
    var var_2 = Struct_1(vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(-845f * 1209f)), vec2<f32>(-655f, var_0.b.x));
    var var_3 = vec2<i32>(~1i, ~44289i);
    return var_3.x;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), arg_1);
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(~arg_0 << (~u_input.b.x % 32u)), abs(_wgslsmith_sub_i32(arg_2, ~arg_0)), ~arg_2), -(~vec3<i32>(arg_0, -2147483647i, arg_2) << (u_input.a.xyz % vec3<u32>(32u))) & (vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -30380i), vec2<i32>(arg_2, -874i)), i32(-1i) * -1i, i32(-1i) * -20350i) & (~vec3<i32>(4747i, arg_2, arg_2) | select(vec3<i32>(arg_0, -2147483647i, arg_2), vec3<i32>(arg_0, -1i, 1i), vec3<bool>(global0.x, false, global0.x)))));
    global1 = Struct_1(global3.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(911f)), _wgslsmith_f_op_f32(-global1.a.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1342f, global3.b.x)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 450f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-102f, var_0.x))), _wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(-1353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.x))))));
    var var_3 = vec2<bool>(func_4(select(!vec3<bool>(global0.x, global0.x, global0.x), select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, false)), true), _wgslsmith_f_op_f32(var_2.a.x + arg_1) >= _wgslsmith_f_op_f32(abs(global1.b.x))), arg_1), all(!vec3<bool>(true, global0.x, false)) && !func_2(1i << (u_input.a.x % 32u), ~vec3<i32>(var_1.x, -54772i, -23817i)).x);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b.x, func_5(~1i, global3.b.x, _wgslsmith_mod_i32(func_1(), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 0i, 29696i)))), ~1u);
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    var var_1 = u_input.a.x;
    global2 = array<Struct_1, 30>();
    var_1 = _wgslsmith_add_u32(u_input.b.x, ~((4294967295u ^ u_input.a.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(u_input.b.x, var_0.x)))) & 33152u;
    var var_2 = select(global1.b.x != _wgslsmith_div_f32(500f, 536f), func_2(93078i, vec3<i32>(~(-35607i) & (12891i >> (var_0.x % 32u)), 14792i, ~(~39760i))).x, global0.x);
    var var_3 = !vec4<bool>(any(vec2<bool>(false, !global0.x)), true | global0.x, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 0u), u_input.a.wxx))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), ~(~vec2<u32>(0u, 1u))) | 4294967295u, vec3<i32>(-(~(-48888i)), ~(~max(45605i, -2147483647i)), -_wgslsmith_clamp_i32(max(-12323i, -2430i), _wgslsmith_mult_i32(5031i, 672i), reverseBits(37073i))), global1.a.x, _wgslsmith_mult_i32(i32(-1i) * -func_1(), firstLeadingBit(-8254i)));
}

