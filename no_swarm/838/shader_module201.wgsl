struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<i32>, 11>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_4(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(940f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.x))))), global0.a.b.e.xy);
    global0 = var_0;
    global1 = array<vec3<i32>, 11>();
    var var_1 = Struct_4(Struct_2(min(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a.x, var_0.a.a.x, 4294967295u), var_0.a.a), (vec3<u32>(71649u, 4294967295u, global0.a.a.x) >> (vec3<u32>(6686u, u_input.c, var_0.a.a.x) % vec3<u32>(32u))) >> ((var_0.a.a << (vec3<u32>(global0.a.a.x, global0.a.a.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_1(vec3<bool>(true, true, u_input.a != 4294967295u), !global0.a.b.d, select(select(global0.a.c.c, vec2<bool>(true, false), true), select(vec2<bool>(false, true), global0.a.b.c, false), 584f > global0.c.x), global0.a.b.b, _wgslsmith_f_op_vec3_f32(-var_0.a.b.e)), global0.a.c, all(vec4<bool>(!global0.a.b.d, true && global0.a.d, any(vec4<bool>(true, true, false, global0.a.d)), var_0.a.c.a.x && global0.a.b.a.x)), arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.e.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_f_op_f32(var_0.b - 1538f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-929f, 741f) * global0.a.c.e.yy))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1031f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-698f, 440f)), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.c.e.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.b.e.x, global0.b, global0.a.b.e.x)))) * vec3<f32>(_wgslsmith_f_op_f32(605f - 219f), -2450f, var_1.a.c.e.x)), !(!var_1.a.d) || true)), var_1.a, var_0.a.a, var_1.a.b.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-347f, global0.b) * 2256f);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_3 {
    let var_0 = global0.a.a.yz;
    var var_1 = global0.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-global0.a.b.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_1, 45862i, arg_1, 19960i), vec4<f32>(128f, global0.a.c.e.x, global0.c.x, global0.c.x))) + global0.a.b.e.x)))));
    let var_3 = !(false & (global0.a.b.b & true));
    let var_4 = countOneBits(countOneBits(select(vec2<i32>(arg_1, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.e, -28897i), vec2<i32>(arg_1, 8640i)), any(vec4<bool>(global0.a.b.c.x, false, true, var_3))))) & abs(vec2<i32>(2147483647i, arg_1));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.a.c.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.e.x, 147f, 718f))), vec3<f32>(_wgslsmith_f_op_f32(-1447f * global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1151f), _wgslsmith_f_op_f32(trunc(-739f))), _wgslsmith_dot_vec3_u32(global0.a.a, global0.a.a) == arg_0.x))), global0.a, vec3<u32>(~_wgslsmith_mult_u32(var_0.x, ~global0.a.a.x), _wgslsmith_sub_u32(arg_0.x, firstLeadingBit(_wgslsmith_add_u32(u_input.c, 28467u))), min(1194u, _wgslsmith_sub_u32(var_0.x, var_0.x) >> (min(var_0.x, 29600u) % 32u))), any(!vec3<bool>(global0.a.d, global0.a.b.c.x, false)) | global0.a.b.b);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec2<u32> {
    global0 = Struct_4(func_2(~arg_1.b.a.yz, abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -11709i), abs(vec2<i32>(42053i, global0.a.e))))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2(u_input.b >> (global0.a.a.xx % vec2<u32>(32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(3026i, global0.a.e, 13919i), global1[_wgslsmith_index_u32(global0.a.a.x, 11u)])).a.x, _wgslsmith_f_op_f32(-1471f + _wgslsmith_f_op_f32(exp2(arg_0))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f * global0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(537f - arg_0), _wgslsmith_f_op_f32(-arg_0)), any(global0.a.b.a)))), _wgslsmith_f_op_vec2_f32(sign(global0.c)));
    global0 = Struct_4(func_2(min(vec2<u32>(firstTrailingBit(u_input.b.x), 0u), _wgslsmith_add_vec2_u32(global0.a.a.yz, ~global0.a.a.xz)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(global0.a.e, arg_1.b.e, arg_1.b.e, arg_1.b.e), reverseBits(vec4<i32>(-103509i, -53876i, 0i, -2147483647i))), countOneBits(vec4<i32>(2147483647i, global0.a.e, -1i, 39404i)))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1389f - 1000f))))), arg_1.a.yy);
    let var_0 = Struct_4(func_2(vec2<u32>(_wgslsmith_clamp_u32(~14900u, 46840u, 4529u), global0.a.a.x), global0.a.e).b, -732f, _wgslsmith_f_op_vec2_f32(global0.c + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * 160f), _wgslsmith_f_op_f32(arg_1.b.c.e.x * global0.a.b.e.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1574f, 842f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(628f, arg_1.b.c.e.x)), any(vec3<bool>(true, arg_1.d, arg_1.b.d)))))));
    let var_1 = true;
    global1 = array<vec3<i32>, 11>();
    return global0.a.a.zx;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(global0.b + -873f), func_2(vec2<u32>(4294967295u, abs(1u)), global0.a.e));
    let var_1 = global0.a;
    let var_2 = func_2(u_input.b, _wgslsmith_mod_i32(global0.a.e, _wgslsmith_mod_i32(-var_1.e, abs(-2147483647i))) ^ -global0.a.e).d;
    let var_3 = Struct_3(var_1.c.e, global0.a, func_2(vec2<u32>(85799u & (4294967295u & global0.a.a.x), u_input.c), 14570i).b.a, global0.a.c.d & true);
    global0 = Struct_4(func_2(_wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(var_1.a.xy, vec2<u32>(21843u, var_0.x)), vec2<u32>(1u, 4294967295u)), 44902i).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.e.x + _wgslsmith_f_op_f32(max(var_1.b.e.x, _wgslsmith_f_op_f32(trunc(-536f)))))), _wgslsmith_f_op_vec2_f32(-var_3.a.zy));
    return func_2(_wgslsmith_sub_vec2_u32(~(~var_3.c.xx), _wgslsmith_mult_vec2_u32(max(global0.a.a.yz, var_1.a.zx), vec2<u32>(0u, u_input.b.x))) >> (~vec2<u32>(select(18159u, 1u, global0.a.c.b), 12967u) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_mult_i32(54940i, _wgslsmith_mult_i32(var_3.b.e, var_1.e)) ^ -22969i)).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    var_0 = Struct_1(vec3<bool>(global0.a.c.e.x <= _wgslsmith_f_op_f32(-var_0.e.x), (-2147483647i != ~global0.a.e) != true, all(vec4<bool>(!global0.a.b.d, var_1.d, global0.a.d, all(vec4<bool>(var_1.c.x, var_1.d, var_0.b, true))))), any(select(!vec4<bool>(true, global0.a.d, var_1.b, false), !vec4<bool>(false, var_0.c.x, var_0.d, true), global0.a.b.e.x == var_0.e.x)) && !func_2(vec2<u32>(50839u, 72811u), global0.a.e).b.c.c.x, select(func_2(vec2<u32>(u_input.c, 0u), _wgslsmith_div_i32(32767i, max(38643i, 0i))).b.c.c, func_2(vec2<u32>(global0.a.a.x, u_input.b.x), 1i).b.c.c, !select(select(var_0.c, vec2<bool>(true, true), true), func_2(global0.a.a.yz, global0.a.e).b.c.c, !global0.a.c.a.x)), !global0.a.b.c.x, global0.a.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(var_0.e.x, -1666f), _wgslsmith_f_op_f32(trunc(457f)), func_2(global0.a.a.yz, -2147483647i).a.x))))), global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-345f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * var_1.e.x), ~(~global0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(755f)), var_1.e.x)));
}

