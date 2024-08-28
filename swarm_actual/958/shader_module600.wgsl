struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec3<u32>(26690u, 4294967295u, 0u), vec2<bool>(true, true), 1000f, 2787f), 41061u, 0u, vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec3<u32>(79830u, 28884u, 1u), vec2<bool>(false, false), 159f, -1368f), 0u, 4446u, vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 18644u, 4294967295u), vec2<bool>(false, false), -495f, 546f), 39559u, 78548u, vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec3<u32>(0u, 8820u, 19550u), vec2<bool>(false, true), -684f, -118f), 1u, 125298u, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec3<u32>(74652u, 0u, 59160u), vec2<bool>(false, false), -1321f, 260f), 1u, 0u, vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 27020u), vec2<bool>(true, false), -405f, 499f), 1u, 4294967295u, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec3<u32>(58550u, 71357u, 47769u), vec2<bool>(true, false), -556f, 711f), 17994u, 60223u, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec3<u32>(56400u, 1u, 28000u), vec2<bool>(false, false), -862f, -1010f), 0u, 0u, vec4<bool>(false, true, true, true)));

var<private> global3: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(513f, -337f, 577f, -356f), vec4<f32>(-1518f, -978f, -1279f, -393f), vec4<f32>(-314f, 1209f, 1095f, -810f), vec4<f32>(-1355f, -241f, -111f, 1218f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global2 = array<Struct_2, 8>();
    global3 = array<vec4<f32>, 4>();
    global0 = arg_0.a;
    global2 = array<Struct_2, 8>();
    global2 = array<Struct_2, 8>();
    return !vec4<bool>(true, any(select(select(global1.d.d, vec4<bool>(arg_0.d.x, false, arg_0.a.b.x, arg_0.a.b.x), true), global1.d.d, false & global1.d.a.b.x)), any(global1.d.d.xwy), global1.b.x);
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    global2 = array<Struct_2, 8>();
    global1 = Struct_3(countOneBits(u_input.b >> (~1u % 32u)) | global1.a, !global1.d.d.wyx, Struct_1(~(~(vec3<u32>(global1.c.a.x, 1u, global0.a.x) | global1.c.a)), vec2<bool>(!global0.b.x, true), _wgslsmith_f_op_f32(333f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f))), global1.d.a.c), Struct_2(global1.c, global1.d.c, 1u, select(!func_3(global2[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(select(true, global1.b.x, global0.b.x), global1.d.a.b.x || true, -62274i != u_input.b, select(true, global1.d.a.b.x, false)), select(vec4<bool>(true, false, false, global0.b.x), global1.d.d, global1.d.d.x))));
    global2 = array<Struct_2, 8>();
    global0 = global1.c;
    var var_0 = ~global0.a;
    return !vec2<bool>(any(!global1.d.d.yyw), func_3(Struct_2(Struct_1(global1.c.a, vec2<bool>(global0.b.x, false), arg_0.x, -274f), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 14931u, u_input.d.x, 60452u), u_input.c), u_input.e.x | global1.d.a.a.x, !vec4<bool>(global1.d.d.x, true, global0.b.x, true))).x);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> bool {
    var var_0 = !(!select(vec2<bool>(true, all(global0.b)), func_2(arg_0), true));
    global3 = array<vec4<f32>, 4>();
    global3 = array<vec4<f32>, 4>();
    global3 = array<vec4<f32>, 4>();
    let var_1 = arg_0.zx;
    return 39992u >= (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.x, global1.c.a.x, 319u), vec4<u32>(0u, u_input.d.x, global0.a.x, 1u))) ^ global1.c.a.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_4(-604f, Struct_3(u_input.b, vec3<bool>(arg_0.x, false, all(vec4<bool>(false, false, true, arg_0.x))), global1.d.a, Struct_2(Struct_1(global1.d.a.a, !global1.b.yy, global1.c.c, global0.d), ~121676u, 20308u, global1.d.d)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1026f, _wgslsmith_f_op_f32(-global0.d))) * global1.c.d), 328f, _wgslsmith_f_op_f32(-global1.c.c)));
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(~(~u_input.e)), ((vec2<u32>(4294967295u, 0u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))) & select(u_input.e, var_0.b.c.a.xx, vec2<bool>(arg_1, true))) ^ ~u_input.c.yw), min(var_0.b.c.a.zz << (_wgslsmith_mult_vec2_u32(~global0.a.yy, select(u_input.c.wz, vec2<u32>(0u, 1u), arg_0.zx)) % vec2<u32>(32u)), global0.a.yx));
    let var_2 = global0.a.x;
    var var_3 = var_0.b.d.d;
    var var_4 = var_0.c;
    return global1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.x;
    var var_1 = 619f;
    var var_2 = false;
    let var_3 = global1.a << (45027u % 32u);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.d.a.d, global0.d, global0.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a.d)) - _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(ceil(global0.c)));
    let var_5 = func_4(select(vec3<bool>(!(global0.d < var_4.x), true, global0.b.x), !vec3<bool>(global1.d.d.x, all(global1.b), !global1.d.d.x), !vec3<bool>(!global1.b.x, true, global0.c < 1201f)), select(!(select(1u, 0u, global0.b.x) <= 1u), -1i < ~firstLeadingBit(u_input.b), select(global0.b.x, !(!global1.c.b.x), func_1(_wgslsmith_f_op_vec3_f32(-var_4), global0.b.x))));
    var var_6 = min(~min((vec2<i32>(2147483647i, 52366i) >> (global1.d.a.a.xz % vec2<u32>(32u))) >> ((vec2<u32>(0u, 0u) | global1.d.a.a.xx) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(global1.a, u_input.b) ^ vec2<i32>(-7834i, 0i), abs(vec2<i32>(var_3, 41714i)))), -min(vec2<i32>(_wgslsmith_div_i32(global1.a, global1.a), 2147483647i), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(12761i, 2147483647i), vec2<i32>(var_3, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(125u, 30511u ^ abs(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.a.x, 1u), 0u)), select(_wgslsmith_clamp_u32(u_input.c.x, ~1u, u_input.a), _wgslsmith_mult_u32(global0.a.x, 5839u), !any(select(global1.b, global1.b, global1.d.d.xxx))), ~(~vec4<i32>(~var_6.x, 1i >> (global1.d.a.a.x % 32u), global1.a, -var_6.x)));
}

