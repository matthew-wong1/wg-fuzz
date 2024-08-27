struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(true, -1371f), Struct_3(false, 1000f), Struct_3(true, 1000f), Struct_3(true, -467f), Struct_3(true, 1647f), Struct_3(false, 208f), Struct_3(true, -542f), Struct_3(true, -326f));

var<private> global2: Struct_1 = Struct_1(-2148f);

var<private> global3: i32 = 43372i;

var<private> global4: bool;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = vec2<i32>(u_input.a.x, 0i);
    let var_1 = max(u_input.d.ww, vec2<u32>(global0.x, ~(~1u))) << (max(abs(~u_input.d.xw) & ~u_input.d.zw, u_input.d.zx) % vec2<u32>(32u));
    let var_2 = var_1.x;
    let var_3 = u_input.b.xz;
    var var_4 = !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(false, false))));
    return 30412i;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = vec2<i32>(u_input.b.x ^ _wgslsmith_mult_i32(func_3(Struct_2(Struct_1(arg_1.x))), 2147483647i), u_input.b.x);
    var var_1 = false;
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, 1i, -2726i), vec4<i32>(u_input.a.x, 17457i, 0i, u_input.b.x)), -var_0.x, max(u_input.b.x, 2147483647i)) << (~vec4<u32>(global0.x, 0u, global0.x, 35811u) % vec4<u32>(32u)), ~reverseBits(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x))));
    global3 = -10178i;
    var var_3 = -firstLeadingBit(-abs(vec4<i32>(var_0.x, u_input.a.x, var_0.x, u_input.b.x))) >> (u_input.d % vec4<u32>(32u));
    return Struct_2(Struct_1(global2.a));
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_3, 8>();
    let var_0 = u_input.d.xz;
    global4 = false || all(vec2<bool>(true, true));
    var var_1 = func_2(-1383f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a, global2.a), vec2<f32>(-355f, 147f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1550f, global2.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-297f, -1227f) * vec2<f32>(1000f, 1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a, 228f), vec2<f32>(-1037f, 2051f), vec2<bool>(true, false)))))));
    var var_2 = var_1.a;
    return StorageBuffer(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, global2.a, -1078f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1534f, 742f, -2207f) - vec3<f32>(var_1.a.a, -710f, var_2.a)))))), -(_wgslsmith_mod_vec3_i32(-u_input.b, u_input.a) << (u_input.d.xyy % vec3<u32>(32u))), 1027f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true)), true, all(vec3<bool>(any(vec2<bool>(false, true)), firstTrailingBit(global0.x) <= _wgslsmith_clamp_u32(global0.x, 0u, u_input.d.x), true)), all(vec3<bool>(false, true, !(1i < u_input.a.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(-1757f)));
    global4 = true;
    var var_2 = select(vec2<bool>(var_0.x, true), vec2<bool>(true, any(var_0.xw)), vec2<bool>(var_0.x, all(select(var_0.yxy, !vec3<bool>(true, var_0.x, var_0.x), global2.a != global2.a))));
    global3 = ~_wgslsmith_dot_vec3_i32(abs(u_input.a), _wgslsmith_mult_vec3_i32(reverseBits(-vec3<i32>(u_input.a.x, 8081i, 2147483647i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(0i, 19020i)), 2147483647i, 1i)));
    let x = u_input.a;
    s_output = func_1();
}

