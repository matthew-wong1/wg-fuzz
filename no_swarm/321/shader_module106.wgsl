struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-12149i, -22729i, 0i, 0i), vec4<i32>(33730i, 69094i, -18718i, 2147483647i), vec4<i32>(-62130i, -1i, 5446i, 2147483647i), vec4<i32>(-2584i, -25997i, 2147483647i, -41014i), vec4<i32>(1i, -16514i, 18421i, -75585i), vec4<i32>(-5085i, i32(-2147483648), 8353i, 1i), vec4<i32>(46880i, 2147483647i, 1i, 2147483647i), vec4<i32>(-23526i, -2599i, -75195i, 34341i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    var var_0 = true;
    global2 = array<vec4<i32>, 8>();
    var_0 = false;
    let var_1 = Struct_1(vec4<bool>(global0.b.b.x, 0u != global0.e.a, any(!vec4<bool>(false, global0.c.x, true, false)), all(!(!vec4<bool>(false, global0.b.b.x, global0.b.a.x, false)))), select(select(!global0.c.yyz, vec3<bool>(false, all(vec2<bool>(arg_1, arg_1)), !arg_1), vec3<bool>(arg_1, false, true)), select(global0.d.zxz, !select(global0.d.yxy, vec3<bool>(false, true, arg_1), arg_1), true), true), abs(vec3<u32>(8597u, 1u, _wgslsmith_clamp_u32(u_input.b.x, select(u_input.a, 21720u, true), 8457u))));
    let var_2 = Struct_3(select(!vec4<bool>(true, select(true, arg_1, true), !var_1.b.x, all(var_1.a.yzw)), select(select(global0.a, vec4<bool>(true, false, arg_1, global0.d.x), !vec4<bool>(true, var_1.a.x, false, arg_1)), select(select(vec4<bool>(true, var_1.b.x, true, var_1.b.x), vec4<bool>(global0.a.x, true, arg_1, var_1.b.x), global0.a.x), var_1.a, vec4<bool>(false, arg_1, var_1.a.x, global0.d.x)), true), select(vec4<bool>(any(vec2<bool>(var_1.b.x, true)), arg_1, global0.b.a.x, false), !global0.a, select(!vec4<bool>(arg_1, false, global0.d.x, arg_1), !vec4<bool>(false, true, arg_1, false), global0.c.x))), Struct_1(!vec4<bool>(arg_1 || global0.b.b.x, u_input.b.x >= u_input.a, all(vec3<bool>(var_1.a.x, arg_1, false)), global0.d.x), select(select(!vec3<bool>(var_1.b.x, global0.b.b.x, arg_1), var_1.a.wzw, !global0.a.xxz), select(vec3<bool>(false, arg_1, arg_1), var_1.b, any(vec2<bool>(true, global0.d.x))), global0.c.x), ~vec3<u32>(max(u_input.b.x, 4294967295u), ~4294967295u, var_1.c.x)), select(vec4<bool>(var_1.a.x, any(select(global0.a.yzw, vec3<bool>(global0.d.x, arg_1, true), vec3<bool>(true, var_1.a.x, true))), select(false, true, false) & true, all(var_1.a.yw)), var_1.a, arg_1), var_1.a, global0.e);
    return abs(~arg_0);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    var var_0 = ~vec4<i32>(-2147483647i, 0i, 1i, 7576i);
    let var_1 = Struct_2(global0.e.a);
    let var_2 = -(~_wgslsmith_mod_i32(_wgslsmith_div_i32(1261i << (0u % 32u), u_input.c.x), var_0.x));
    let var_3 = _wgslsmith_mod_i32(var_0.x, -func_3(u_input.c.x, arg_3, var_0.xzy));
    var_0 = vec4<i32>((u_input.c.x & (-var_2 << ((arg_1 << (0u % 32u)) % 32u))) << (76433u % 32u), _wgslsmith_dot_vec2_i32(abs(var_0.yw), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(2147483647i, var_0.x)), max(u_input.c, reverseBits(vec2<i32>(3863i, -2147483647i))))), -5381i, func_3(1i, global0.c.x, vec3<i32>(-1i) * -vec3<i32>(16106i, var_0.x, 24445i)));
    return _wgslsmith_f_op_f32(614f - -764f);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_4) -> StorageBuffer {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, -1622f, -390f, 2432f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, -749f, arg_3.b.x, -267f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1379f, 1080f, -404f, arg_0)), vec4<f32>(-1569f, -1759f, arg_2, -413f))))))));
    var var_0 = !vec2<bool>(true, (4294967295u > arg_3.a.b.c.x) | select(true, false, all(vec3<bool>(true, true, false))));
    let var_1 = -abs(abs(vec3<i32>(arg_3.c.x << (0u % 32u), _wgslsmith_add_i32(arg_3.c.x, 0i), abs(11978i))));
    var var_2 = select(arg_3.a.d, !vec4<bool>(any(!arg_3.a.b.a), arg_1.x, any(vec4<bool>(global0.c.x, false, false, arg_1.x)), select(true, all(arg_3.a.b.a), all(vec4<bool>(true, false, true, false)))), global0.a);
    let var_3 = Struct_4(Struct_3(!vec4<bool>(!arg_1.x, true, any(vec2<bool>(var_2.x, false)), global0.a.x), Struct_1(global0.a, vec3<bool>(!var_2.x, true, true), u_input.d | arg_3.a.b.c), select(global0.c, select(select(global0.c, vec4<bool>(arg_1.x, var_0.x, false, var_0.x), arg_3.a.c.x), vec4<bool>(true, arg_3.a.c.x, arg_1.x, true), global0.b.a), !arg_3.a.b.b.x != var_2.x), !vec4<bool>(true, false, false, !arg_3.a.a.x), global0.e), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -610f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1320f, -502f, arg_1.x))), global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_3.b)) * _wgslsmith_f_op_vec3_f32(select(global1.wzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2)), any(vec4<bool>(false, true, true, arg_3.a.b.a.x)))))), var_1.zx);
    return StorageBuffer(~(~firstTrailingBit(37507i)), _wgslsmith_f_op_f32(-global1.x), vec2<u32>(_wgslsmith_sub_u32(0u, select(44595u, var_3.a.b.c.x, true)), ~countOneBits(26206u)) ^ firstLeadingBit(~vec2<u32>(global0.e.a, arg_3.a.b.c.x)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> StorageBuffer {
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(global0.c.x, arg_3.x >> (41465u % 32u), vec2<bool>(true, global0.d.x), arg_3.x < 1u))))), global0.a.xwy, _wgslsmith_f_op_f32(abs(arg_1.x)), Struct_4(Struct_3(select(!vec4<bool>(false, global0.c.x, true, global0.b.a.x), global0.a, vec4<bool>(false, true, true, true)), global0.b, select(!global0.b.a, select(global0.d, global0.b.a, vec4<bool>(true, global0.d.x, global0.b.a.x, global0.d.x)), global0.c), global0.c, global0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-863f, global1.x, _wgslsmith_f_op_f32(round(-700f)))), (vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, arg_2.x)) & u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-243f + global1.x);
    let x = u_input.a;
    s_output = func_1(var_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global1.yxx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -987f), _wgslsmith_f_op_f32(535f * var_0), _wgslsmith_f_op_f32(-global1.x)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.wwy)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-175f, var_0, global1.x))))), vec3<bool>(_wgslsmith_f_op_f32(round(-930f)) <= -2228f, global1.x == _wgslsmith_f_op_f32(-var_0), all(vec3<bool>(false, global0.a.x, true))))), abs(-(~(-vec3<i32>(-3441i, u_input.c.x, u_input.c.x)))), ~vec2<u32>(~u_input.a, global0.b.c.x));
}

