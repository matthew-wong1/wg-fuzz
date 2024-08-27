struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: array<vec2<u32>, 5>;

var<private> global2: Struct_1 = Struct_1(-1917f, vec4<f32>(-1028f, -553f, 198f, -232f), vec4<bool>(true, true, false, true), vec4<i32>(2147483647i, 2147483647i, -27106i, 26249i));

var<private> global3: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global4: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(44105u, 4294967295u, 1u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = abs(vec3<u32>(4294967295u, 1u, u_input.a));
    let var_1 = Struct_2(18721i, _wgslsmith_mod_vec4_i32(global2.d, global2.d));
    var var_2 = vec4<u32>(~_wgslsmith_clamp_u32(u_input.a, 13251u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(var_0.x, 5u)])), 61759u >> (var_0.x % 32u), min(~1u, 0u), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(27303u, 1u, 1u), vec3<u32>(0u, u_input.a, var_0.x)), abs(vec3<u32>(u_input.a, 28906u, 86894u)))) | ~vec4<u32>(~u_input.a | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 37204u), vec3<u32>(var_0.x, 1u, var_0.x)), var_0.x, var_0.x, 0u);
    var var_3 = vec3<bool>(!(!(_wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(f32(-1f) * -459f))), -arg_1 >= u_input.d.x, all(vec2<bool>(false, true)));
    let var_4 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(step(arg_0.x, -678f)), !var_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 530f))))));
    return Struct_2(_wgslsmith_mult_i32(~(max(u_input.b.x, global2.d.x) | _wgslsmith_mult_i32(global2.d.x, -1i)), firstTrailingBit(~(-1i))), var_1.b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = 31378i;
    var var_1 = firstLeadingBit(firstLeadingBit(~vec3<u32>(~58999u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0.x, arg_0.x)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_3.b.x)))))), -1028f);
    let var_3 = vec3<u32>(~firstTrailingBit(~(arg_0.x >> (28390u % 32u))), 102937u, ~(~(~var_1.x ^ 1u)));
    let var_4 = vec4<u32>(1u | var_3.x, arg_0.x, var_3.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(26464u, 69462u, 2896u), ~vec3<u32>(30585u, 0u, 14527u)), u_input.a));
    return select(select(!select(global2.c.ww, arg_3.c.yy, vec2<bool>(global2.c.x, true)), select(arg_3.c.xy, !global2.c.wz, arg_3.c.zz), any(vec3<bool>(true, select(false, true, global2.c.x), !arg_3.c.x))), !arg_3.c.yw, select(global2.c.wz, !global2.c.yz, arg_3.c.x));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    global1 = array<vec2<u32>, 5>();
    global0 = array<Struct_4, 18>();
    var var_0 = true;
    global4 = array<vec4<u32>, 1>();
    var_0 = !all(select(func_3(~vec4<u32>(42941u, 0u, arg_0.x, 1819u), Struct_2(u_input.b.x, global2.d), func_2(global2.b.zx, global2.d.x), Struct_1(-1256f, vec4<f32>(global2.b.x, global2.a, -1000f, global2.a), global2.c, global2.d)), global2.c.yw, any(select(vec4<bool>(global2.c.x, global2.c.x, true, false), global2.c, global2.c.x))));
    return ~max(_wgslsmith_sub_i32(2939i, firstTrailingBit(~(-16524i))), global2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    var var_1 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(func_1(vec3<u32>(u_input.a, 1452u, 2463u))), -2147483647i), select(-vec2<i32>(2147483647i, u_input.b.x), -vec2<i32>(global2.d.x, u_input.c), all(select(vec4<bool>(true, global2.c.x, global2.c.x, global2.c.x), global2.c, global2.c)))));
    let var_2 = vec3<i32>(func_2(global2.b.xw, (_wgslsmith_clamp_i32(var_1.x, 25309i, var_1.x) << ((u_input.a << (30174u % 32u)) % 32u)) | var_1.x).a, firstTrailingBit(firstTrailingBit(~(~(-19194i)))), _wgslsmith_div_i32(-1i, 1i));
    var var_3 = !global2.c.x;
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-231f)))), 125f));
    global4 = array<vec4<u32>, 1>();
    global4 = array<vec4<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_2), _wgslsmith_f_op_f32(min(var_4, global2.b.x)), -1781f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1469f, var_4) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -1636f))) + _wgslsmith_f_op_vec2_f32(exp2(global2.b.ww))));
}

