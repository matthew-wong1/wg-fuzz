struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32 = -1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> bool {
    let var_0 = true;
    global0 = _wgslsmith_clamp_vec3_i32(-u_input.b.zyw, max(-vec3<i32>(global0.x, min(u_input.a, -299i), 1i), vec3<i32>(max(u_input.a, 1i) << (_wgslsmith_mod_u32(8701u, 59991u) % 32u), -23052i, _wgslsmith_mult_i32(~6874i, min(u_input.a, global0.x)))), u_input.b.xyw);
    global1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(global0.x), global0.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~32897i, u_input.b.x, u_input.a), u_input.b.x));
    global0 = u_input.b.yxy;
    let var_1 = vec4<bool>(838f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1518f - -208f), _wgslsmith_div_f32(635f, 2172f), true)))), true, true, true);
    return var_1.x;
}

fn func_3(arg_0: f32) -> i32 {
    global1 = global0.x;
    var var_0 = Struct_4(_wgslsmith_mult_u32(52873u, _wgslsmith_clamp_u32(~32826u, 0u, 0u)) << (1u % 32u), Struct_3(Struct_1(min(vec3<u32>(4294967295u, 15696u, 4294967295u), vec3<u32>(1u, 1u, 1u)), vec4<bool>(true, false, false, false))));
    let var_1 = vec4<bool>(var_0.b.a.b.x, var_0.b.a.b.x, true || (all(select(var_0.b.a.b, var_0.b.a.b, vec4<bool>(var_0.b.a.b.x, true, false, var_0.b.a.b.x))) != var_0.b.a.b.x), false);
    global1 = firstTrailingBit(global0.x);
    var var_2 = Struct_4(var_0.a, Struct_3(var_0.b.a));
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, _wgslsmith_add_u32(1u, ~1u)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 4294967295u, 5921u), select(vec3<u32>(78346u, 1u, 20366u), vec3<u32>(37633u, 0u, 52319u), false)), max(abs(vec3<u32>(27013u, 47893u, 1u)), abs(~vec3<u32>(0u, 116027u, 2466u)))), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), !func_2()));
    let var_1 = var_0.b.x;
    global0 = ~vec3<i32>(0i, u_input.b.x, global0.x & func_3(_wgslsmith_f_op_f32(sign(510f))));
    let var_2 = Struct_3(Struct_1(abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a.x, var_0.a.x), vec3<u32>(var_0.a.x, 1u, var_0.a.x)) | var_0.a), var_0.b));
    var_0 = Struct_1(vec3<u32>(_wgslsmith_div_u32(~21622u, 155u) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 21297u, 64521u, 7696u), vec4<u32>(4294967295u, 20620u, 4073u, var_2.a.a.x)), 84991u, select(9283u, ~_wgslsmith_mod_u32(54287u, 83081u), var_2.a.b.x)), select(var_2.a.b, !vec4<bool>(!var_0.b.x, false, !var_0.b.x, true), 812f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(720f, arg_0.x)))));
    return Struct_4(~4294967295u, var_2);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> f32 {
    global1 = countOneBits(_wgslsmith_sub_i32(-2147483647i, u_input.a));
    let var_0 = global0.x;
    let var_1 = !select(vec3<bool>(-599i != arg_1.x, arg_0.b.a.b.x, true), select(!arg_0.b.a.b.xxw, vec3<bool>(true, all(arg_0.b.a.b.xw), 4294967295u >= arg_0.b.a.a.x), false), true);
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x ^ -1i, 1i, global0.x), u_input.b.zyy);
    var var_3 = min(vec2<i32>(~u_input.a, 0i), select(~global0.xy, arg_1, select(vec2<bool>(false, true), select(vec2<bool>(true, arg_0.b.a.b.x), var_1.zz, var_1.x), vec2<bool>(var_1.x, false))) | -select(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_2, global0.x)), firstLeadingBit(vec2<i32>(var_2, -2147483647i)), var_1.xz));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1245f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -402f), 1000f, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1654f, -783f)) + _wgslsmith_f_op_f32(-801f * -1808f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -8431i, 15496i), vec3<i32>(u_input.a, global0.x, -25761i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 4294967295u, 71595u), vec3<u32>(14462u, 43730u, 0u), vec3<bool>(true, false, false))) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 48229u, 91485u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u)) << (firstLeadingBit(firstLeadingBit(vec3<u32>(0u, 61068u, 67470u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_0 = Struct_2(min(u_input.b.x, min(u_input.a, 0i)));
    var var_1 = -231f;
    var_1 = _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1857f, -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -886f))))), reverseBits(select(_wgslsmith_mult_vec2_i32(vec2<i32>(15060i, -11202i), _wgslsmith_add_vec2_i32(global0.xy, global0.xy)), vec2<i32>(_wgslsmith_add_i32(22190i, var_0.a), _wgslsmith_div_i32(var_0.a, 6978i)), true))));
    var_1 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-u_input.b, u_input.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-434f)), _wgslsmith_f_op_f32(-815f + -1000f)) + 585f))), global0.x & (global0.x ^ var_0.a));
}

