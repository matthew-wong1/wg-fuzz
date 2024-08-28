struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec3<i32>(57823i, -87815i, i32(-2147483648)), true, vec2<f32>(775f, -1958f), vec3<i32>(30389i, 0i, 26260i))), Struct_2(Struct_1(vec3<i32>(-1i, 19452i, i32(-2147483648)), false, vec2<f32>(1412f, -1201f), vec3<i32>(2147483647i, 0i, -1i))), Struct_2(Struct_1(vec3<i32>(-20947i, 2147483647i, 46634i), true, vec2<f32>(438f, 369f), vec3<i32>(2147483647i, -22708i, 0i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), false, vec2<f32>(-838f, -227f), vec3<i32>(10065i, -30571i, 33058i))), Struct_2(Struct_1(vec3<i32>(-43822i, -1i, -22727i), true, vec2<f32>(1000f, -452f), vec3<i32>(1i, -256i, 6617i))), Struct_2(Struct_1(vec3<i32>(1i, 4568i, 1i), false, vec2<f32>(1325f, 230f), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(vec3<i32>(0i, -1i, 2147483647i), true, vec2<f32>(-332f, 149f), vec3<i32>(-1i, 125085i, 68277i))), Struct_2(Struct_1(vec3<i32>(-39226i, 11282i, 49403i), false, vec2<f32>(981f, -969f), vec3<i32>(-37669i, 6971i, -1i))), Struct_2(Struct_1(vec3<i32>(67881i, -1i, 72831i), true, vec2<f32>(-245f, -2397f), vec3<i32>(16418i, 0i, 2147483647i))));

var<private> global2: i32;

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = !select(select(!select(vec4<bool>(true, arg_0.a.b, arg_0.a.b, false), vec4<bool>(global4.b, global4.b, false, var_0.a.b), vec4<bool>(false, true, true, arg_0.a.b)), vec4<bool>(global4.b, var_0.a.a.x == 43504i, -18048i > global0.x, false), arg_0.a.b), select(!(!vec4<bool>(var_0.a.b, false, arg_0.a.b, false)), select(vec4<bool>(false, global4.b, true, true), select(vec4<bool>(var_0.a.b, arg_0.a.b, true, true), vec4<bool>(true, global4.b, false, arg_0.a.b), vec4<bool>(false, true, var_0.a.b, var_0.a.b)), any(vec3<bool>(true, var_0.a.b, true))), vec4<bool>(true, !var_0.a.b, true, false != arg_0.a.b)), vec4<bool>(var_0.a.b, select(!arg_0.a.b, select(var_0.a.b, true, arg_0.a.b), !arg_0.a.b), true, true));
    global3 = reverseBits(_wgslsmith_mult_i32(~reverseBits(0i << (u_input.b % 32u)), i32(-1i) * -62439i));
    let var_2 = 27451i << (u_input.a.x % 32u);
    let var_3 = Struct_1(vec3<i32>(~(~(-1i)), 2147483647i, 30198i), true, global4.c, ~global4.a);
    return select(false && global4.b, true, !(!any(var_1) && (-1085f != _wgslsmith_f_op_f32(var_3.c.x - -691f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> vec2<u32> {
    global1 = array<Struct_2, 9>();
    var var_0 = 10889u << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4187u, u_input.b, u_input.a.x), vec3<u32>(u_input.b, u_input.a.x, 6686u))) | u_input.a.x, ~countOneBits(5168u << (u_input.b % 32u))) % 32u);
    var var_1 = vec4<bool>(!func_3(global1[_wgslsmith_index_u32(~0u, 9u)]), global4.b != func_3(Struct_2(Struct_1(global4.a, global4.b, global4.c, global4.d))), all(!(!select(vec4<bool>(global4.b, false, true, global4.b), vec4<bool>(global4.b, true, false, false), vec4<bool>(false, false, global4.b, true)))), true);
    let var_2 = true;
    var var_3 = abs(_wgslsmith_mod_i32(-19729i, 1i));
    return select(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 40700u), firstLeadingBit(22017u))), ~u_input.a), vec2<u32>(~countOneBits(u_input.a.x), u_input.b), var_1.xy);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = -global4.d.x == firstTrailingBit(arg_0.d.x);
    let var_1 = 0u;
    let var_2 = 1837f;
    var var_3 = ~(-abs(-2147483647i)) == ~(~_wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, arg_0.a.x, 4843i, 2745i), vec4<i32>(global0.x, 2147483647i, arg_0.d.x, -2147483647i)), -vec4<i32>(0i, global0.x, 0i, 71770i)));
    var var_4 = vec3<bool>(global4.b, !global4.b, global4.b);
    return Struct_2(Struct_1(~min(min(vec3<i32>(arg_0.d.x, global0.x, -2147483647i), vec3<i32>(-7460i, -1i, global4.a.x)), -vec3<i32>(-55260i, global4.a.x, 45227i)), arg_1.x >= ~0u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 538f) - vec2<f32>(arg_0.c.x, -1492f))))), global4.d));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = func_4(arg_0.a, func_2(vec2<i32>(33828i, countOneBits(global0.x)), _wgslsmith_sub_i32(reverseBits(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.d.x, 0i), vec2<i32>(arg_0.a.a.x, 35598i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c.x, -1000f))))));
    global0 = max(firstLeadingBit(vec3<i32>(0i, ~arg_0.a.a.x, _wgslsmith_clamp_i32(max(1i, arg_0.a.a.x), reverseBits(global0.x), global0.x << (u_input.b % 32u)))), arg_0.a.a);
    global2 = 1i;
    var var_1 = _wgslsmith_dot_vec4_i32((-reverseBits(vec4<i32>(19151i, 59075i, global0.x, arg_0.a.a.x)) << (~(vec4<u32>(6142u, u_input.a.x, 0u, 0u) >> (vec4<u32>(26500u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(0u, ~countOneBits(79144u), 22428u, _wgslsmith_sub_u32(17363u, 31483u | u_input.b)) % vec4<u32>(32u)), firstLeadingBit(-max(~vec4<i32>(12449i, -2147483647i, -2147483647i, 1i), ~vec4<i32>(-1i, -1i, -23578i, global4.a.x))));
    let var_2 = Struct_2(var_0.a);
    return Struct_1(global4.d, true, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(395f)) - _wgslsmith_f_op_f32(select(-208f, 484f, true))), _wgslsmith_f_op_f32(2257f * _wgslsmith_f_op_f32(step(-394f, -134f)))))), abs(vec3<i32>(0i, i32(-1i) * -53447i, ~(-2147483647i & global4.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = func_1(global1[_wgslsmith_index_u32(~u_input.b, 9u)], 24582u);
    let var_2 = u_input.b;
    var var_3 = vec2<u32>(var_2, 20555u << (~u_input.a.x % 32u));
    let var_4 = Struct_1(var_1.d, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1730f, 444f, true)) * _wgslsmith_div_f32(528f, -253f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.c.x, 397f)))), var_1.c, var_1.a & _wgslsmith_mod_vec3_i32((global4.a << (vec3<u32>(var_2, 89232u, u_input.b) % vec3<u32>(32u))) << (vec3<u32>(32754u, 1u, var_2) % vec3<u32>(32u)), var_1.d));
    var var_5 = vec4<u32>(~abs(u_input.a.x), countOneBits(u_input.b), 47238u, 47413u);
    var var_6 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 0u), u_input.a) >> (reverseBits(_wgslsmith_mod_u32(20367u, u_input.a.x)) % 32u)), _wgslsmith_add_u32(~var_5.x ^ _wgslsmith_clamp_u32(u_input.b, ~var_5.x, ~u_input.b), _wgslsmith_mult_u32(var_5.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(15772u, u_input.a.x, 1u), countOneBits(var_5.xxy)))), -global4.a.x, _wgslsmith_mod_i32(2147483647i, firstLeadingBit(~global0.x)) | 0i, var_4.c.x);
}

