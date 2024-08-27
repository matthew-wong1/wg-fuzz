struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(42421u, 24905u, 1u));

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 23u)];
    var var_1 = vec2<i32>(~u_input.b.x, _wgslsmith_div_i32(-2147483647i, 29950i));
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a >> (global0.a % vec3<u32>(32u)), ~global1.xyy), vec3<u32>(1u, ~1u, ~(~41875u)), global1.wwx));
    let var_3 = abs(vec2<i32>(8197i, min(_wgslsmith_sub_i32(-21989i, 4880i), -56960i >> (global1.x % 32u)))) & (~vec2<i32>(3478i, 0i) >> (~(vec2<u32>(4294967295u, 3089u) | ~vec2<u32>(1u, global0.a.x)) % vec2<u32>(32u)));
    var_1 = countOneBits(select(var_3, u_input.b.yx, vec2<bool>(var_0.x, !(u_input.b.x > 25864i))));
    return vec3<bool>(true || !(global1.x >= _wgslsmith_mult_u32(var_2.a.x, 32643u)), true, u_input.b.x >= -u_input.b.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec3_u32(global1.xyz, vec3<u32>(70855u & ~(~global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~51115u, countOneBits(18328u), 31193u), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 1u, u_input.c)), ~global1.yyw)), 1u));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(9428i, u_input.d ^ u_input.b.x, select(1i, -654i, true), u_input.d), u_input.b);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))))));
    var var_3 = _wgslsmith_f_op_f32(-arg_1);
    global2 = array<vec3<bool>, 23>();
    return arg_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> vec4<u32> {
    var var_0 = vec4<bool>(!all(select(vec3<bool>(arg_3.x, true, false), func_1(), arg_1.x)), !(true | arg_3.x), true, false);
    global0 = Struct_1(_wgslsmith_mult_vec3_u32(max(~(~vec3<u32>(u_input.a, arg_2.x, u_input.a)), global1.zyx), ~global1.yxy));
    var var_1 = Struct_1(~global0.a);
    var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~18990u, var_1.a.x, _wgslsmith_dot_vec2_u32(arg_2.xy, vec2<u32>(4294967295u, global0.a.x) & vec2<u32>(arg_2.x, 56900u))), select(vec3<u32>(4294967295u, 1u, 2212u), global1.xzz, false), reverseBits(arg_2.xyz)));
    let var_2 = _wgslsmith_f_op_f32(ceil(503f));
    return vec4<u32>(var_1.a.x, _wgslsmith_mod_u32(38233u, 42474u), 47072u, arg_2.x);
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.e, 23u)];
    global1 = ~func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1752f, -1629f, _wgslsmith_f_op_f32(f32(-1f) * -909f))), func_1(), abs(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 47072u, global1.x, 0u), vec4<u32>(global1.x, u_input.e, global0.a.x, 0u)), ~vec4<u32>(70794u, 47542u, 27026u, 0u))), func_3(!var_0.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2089f))), Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(21050u, 0u, 73612u, 4294967295u), vec4<u32>(arg_1, u_input.e, u_input.e, global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f - -246f))));
    global0 = Struct_1(~countOneBits(min(global1.ywz, global0.a) >> (global1.xwz % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f));
    var var_2 = Struct_2(firstLeadingBit(~vec4<u32>(4294967295u, ~77918u, ~2189u, u_input.c << (38327u % 32u))));
    return Struct_1(vec3<u32>(arg_1, ~(~(~global1.x)), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    let var_0 = func_2(any(select(vec3<bool>(u_input.c <= 4294967295u, true, true), func_1(), vec3<bool>(true, true, any(vec4<bool>(false, true, false, true))))), 1u);
    global1 = _wgslsmith_sub_vec4_u32(~(~(~(~vec4<u32>(var_0.a.x, global1.x, global0.a.x, global1.x)))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, 59904u, 26070u, u_input.c)), ~min(vec4<u32>(global0.a.x, var_0.a.x, 86686u, 38277u), vec4<u32>(56654u, global1.x, 12234u, global0.a.x))), abs(firstLeadingBit(max(vec4<u32>(0u, u_input.c, 22963u, 73930u), vec4<u32>(var_0.a.x, 4294967295u, global0.a.x, 61947u))))));
    var var_1 = true;
    let var_2 = vec2<bool>(all(!func_1().xx), true);
    global0 = Struct_1(~abs(~vec3<u32>(var_0.a.x, 0u, var_0.a.x)));
    var var_3 = func_1();
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, 1036f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(895f, 1600f) + vec2<f32>(222f, 222f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1318f, 1106f))) + vec2<f32>(122f, -1221f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-881f, -727f) * vec2<f32>(-779f, 241f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -2128f) * vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(926f + 251f), -341f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(153f, -1039f) * vec2<f32>(386f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, -352f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~countOneBits(5189u), _wgslsmith_mult_u32(~(~var_0.a.x), 10210u)), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b.x, 1i, 7832i), u_input.b.yzz & _wgslsmith_sub_vec3_i32(u_input.b.zyy, u_input.b.ywz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) * _wgslsmith_f_op_f32(ceil(-512f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1218f, var_4.x)))), 1i);
}

