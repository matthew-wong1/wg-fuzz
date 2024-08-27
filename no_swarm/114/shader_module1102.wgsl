struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<bool>;

var<private> global2: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(27648u, 101861u), vec2<u32>(4294967295u, 15499u), vec2<u32>(67248u, 6645u), vec2<u32>(1u, 3657u), vec2<u32>(1u, 8168u), vec2<u32>(38991u, 1u), vec2<u32>(53712u, 4294967295u), vec2<u32>(4294967295u, 21423u), vec2<u32>(59146u, 4294967295u), vec2<u32>(7694u, 12832u), vec2<u32>(18196u, 38551u), vec2<u32>(18172u, 67710u), vec2<u32>(29796u, 97351u), vec2<u32>(45782u, 2248u), vec2<u32>(15511u, 37909u), vec2<u32>(36832u, 4294967295u), vec2<u32>(37906u, 0u), vec2<u32>(51914u, 0u), vec2<u32>(73596u, 14345u), vec2<u32>(61682u, 1u), vec2<u32>(150006u, 1u), vec2<u32>(71348u, 65409u), vec2<u32>(4294967295u, 11298u), vec2<u32>(80693u, 0u), vec2<u32>(21809u, 44109u), vec2<u32>(94312u, 0u), vec2<u32>(43200u, 21322u), vec2<u32>(0u, 17405u), vec2<u32>(0u, 0u), vec2<u32>(64639u, 4294967295u), vec2<u32>(997u, 0u), vec2<u32>(25431u, 1u));

var<private> global3: Struct_1 = Struct_1(-1i, false, vec4<f32>(1175f, -182f, 723f, -1107f));

var<private> global4: array<vec2<u32>, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global4 = array<vec2<u32>, 8>();
    let var_0 = _wgslsmith_mod_u32(5632u, max(8586u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(0u, 8u)], global4[_wgslsmith_index_u32(0u, 8u)]), ~25385u))) << (0u % 32u);
    global2 = array<vec2<u32>, 32>();
    let var_1 = _wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_0.a & 38286i, abs(2147483647i), max(4543i, arg_0.a), arg_0.a)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, arg_0.a, -1i, arg_0.a), select(vec4<i32>(u_input.a.x, 2147483647i, global3.a, u_input.a.x), vec4<i32>(-4035i, -27584i, 0i, arg_0.a), vec4<bool>(global3.b, false, global1.x, true)), vec4<i32>(u_input.a.x, -11411i, arg_0.a, -1376i))) ^ firstLeadingBit(vec4<i32>(~1i, 34816i, 1i, firstTrailingBit(-26394i))));
    var var_2 = Struct_1(_wgslsmith_mult_i32(u_input.a.x, -(~firstTrailingBit(global3.a))), any(!select(vec4<bool>(false, global3.b, global3.b, false), !vec4<bool>(arg_0.b, global3.b, false, true), all(vec4<bool>(arg_0.b, global3.b, false, global1.x)))), arg_0.c);
    return ~_wgslsmith_div_i32(-1i, (max(3121i, -6200i) & -u_input.a.x) >> (firstTrailingBit(var_0) % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    global2 = array<vec2<u32>, 32>();
    var var_0 = ~(~(~54554u));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global3.c.x)), -212f, false)), global3.c.x), global3.c.zx)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1593f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(-970f - -1852f))))), -877f);
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 0i, u_input.a.x), u_input.a), arg_1.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 36221i, arg_1.a, -2147483647i)), vec4<i32>(global3.a, global3.a, -6240i, 56382i) & vec4<i32>(u_input.a.x, 1i, global3.a, global3.a)))), select(_wgslsmith_sub_vec2_i32(u_input.a.yx ^ u_input.a.xz, -vec2<i32>(-12940i, global3.a)) >> (global4[_wgslsmith_index_u32(firstTrailingBit(select(4506u, 4294967295u, global3.b)), 8u)] % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-15376i, arg_0), _wgslsmith_add_vec2_i32(u_input.a.xx, u_input.a.zx)), true));
    return 1f;
}

fn func_2() -> u32 {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(func_4(func_3(Struct_1(-52485i, global3.c.x > global3.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.c.x, -634f, -892f, global3.c.x))) * vec4<f32>(global3.c.x, -373f, global3.c.x, 575f)))), Struct_1(_wgslsmith_mult_i32(-global3.a, u_input.a.x) & global3.a, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_div_f32(global3.c.x, global3.c.x), global3.c.x)))));
    var var_2 = _wgslsmith_div_f32(global3.c.x, 1000f);
    var var_3 = -select(-(max(vec4<i32>(global3.a, -2147483647i, u_input.a.x, global3.a), vec4<i32>(u_input.a.x, 0i, -2147483647i, global3.a)) >> (~vec4<u32>(77487u, 1u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -25362i, -u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x & u_input.a.x, 1i, -2147483647i), 0i), global3.c.x > 1f);
    let var_4 = _wgslsmith_div_vec4_u32(min(~(~(~vec4<u32>(20177u, 4294967295u, 1809u, 41495u))), vec4<u32>(0u, 0u, 1u, abs(4294967295u))), vec4<u32>(~abs(_wgslsmith_div_u32(0u, 92335u)), ~_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_mod_u32(~8050u, _wgslsmith_sub_u32(14300u, ~4294967295u)), ~2119u));
    return var_4.x;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-global3.c);
    return arg_1.x;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = 1i;
    var var_1 = func_5(-var_0 < (i32(-1i) * -1i), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 84994u), vec2<u32>(countOneBits(~1u), _wgslsmith_sub_u32(func_2(), _wgslsmith_mult_u32(1u, 4294967295u))), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-900f, global3.c.x)));
    global2 = array<vec2<u32>, 32>();
    var var_2 = _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(~1u, ~38876u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35201u, 12220u, 40596u), vec4<u32>(19213u, 4294967295u, 62813u, 4294967295u))) << (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 14115u, 1u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 51024u, 1u), select(vec4<u32>(0u, 17994u, 15603u, 0u), vec4<u32>(52991u, 4294967295u, 62613u, 1u), global1.x)))), ~firstTrailingBit(abs(~vec4<u32>(1u, 46396u, 4294967295u, 1u))));
    let var_3 = arg_0;
    return var_3.a;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-879f, var_0.c.x))))))), _wgslsmith_f_op_f32(global3.c.x * _wgslsmith_f_op_f32(floor(arg_1.c.x)))));
    global0 = !any(select(global1.yx, select(vec2<bool>(true, true), global1.xw, arg_1.b | global1.x), true));
    global4 = array<vec2<u32>, 8>();
    global4 = array<vec2<u32>, 8>();
    return Struct_1(-2147483647i, !any(select(select(vec2<bool>(global1.x, var_0.b), vec2<bool>(false, true), true), global1.xw, !vec2<bool>(arg_1.b, global3.b))), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(Struct_1(u_input.a.x, global3.b || global3.b, global3.c)), Struct_1(-min(-24952i, -u_input.a.x), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global3.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x), vec4<f32>(167f, global3.c.x, 923f, global3.c.x))), select(vec4<bool>(global3.b, global3.b, true, true), vec4<bool>(global3.b, true, true, true), vec4<bool>(true, global1.x, global1.x, false)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global3.c - vec4<f32>(-1605f, global3.c.x, global3.c.x, -442f)))), true || (global1.x || true)))));
    let var_1 = func_6(43476i, Struct_1(var_0.a, !((true | var_0.b) && any(vec4<bool>(false, global3.b, global3.b, global3.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1028f, -588f, 1483f, -912f), var_0.c, false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 4294967295u, 1u)), false), ~vec3<u32>(1u, 1u, 1u))), -211f);
}

