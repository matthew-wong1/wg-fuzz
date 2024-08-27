struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<i32>(-1i, 0i), vec3<i32>(-1i, 38069i, -18658i)), vec3<u32>(0u, 11425u, 29697u), Struct_2(1i, 1i, vec4<f32>(-332f, 850f, -752f, 131f), 701f, vec4<u32>(16089u, 4294967295u, 1u, 0u)), vec3<u32>(4294967295u, 42766u, 5337u));

var<private> global2: array<Struct_3, 18>;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec2<u32>, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<f32> {
    let var_0 = global1.c.e.zx;
    let var_1 = Struct_2(u_input.a, -_wgslsmith_div_i32(-2524i | u_input.a, 41841i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c.d, global1.c.c.x, global1.c.c.x, global1.c.c.x)))))))), -872f, ~(vec4<u32>(_wgslsmith_clamp_u32(43485u, 1093u, global1.d.x), var_0.x, 1u, ~var_0.x) << (~vec4<u32>(u_input.c, 1u, var_0.x, 80330u) % vec4<u32>(32u))));
    let var_2 = 15182u;
    var var_3 = Struct_2(_wgslsmith_mult_i32(u_input.b.x, -u_input.a), u_input.a, _wgslsmith_f_op_vec4_f32(-global1.c.c), _wgslsmith_f_op_f32(301f - -1000f), vec4<u32>(38851u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~0u, var_1.e.x), _wgslsmith_clamp_u32(u_input.c, countOneBits(16816u), var_2 | 22844u)), _wgslsmith_add_u32(u_input.c, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_1.e.x, 6347u)))), var_0.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835f + 784f)), 1598f))) - var_3.c.yzx);
}

fn func_2() -> Struct_2 {
    var var_0 = i32(-1i) * -1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(func_3()), (-global1.a.a.x >= firstTrailingBit(global1.a.b.x)) & global0.x)));
    let var_2 = !select(select(!(!vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, global0.x), true), global0.x & global0.x), vec3<bool>(global0.x, true, true)), vec3<bool>(all(vec4<bool>(global0.x, true, global0.x, global0.x)), all(vec2<bool>(false, global0.x)) & (global1.d.x > 0u), global0.x), global0.x);
    return global1.c;
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.c.x;
    var var_1 = true;
    global2 = array<Struct_3, 18>();
    let var_2 = func_2();
    let var_3 = Struct_2(firstLeadingBit(select(func_2().b, _wgslsmith_clamp_i32(global1.a.b.x, ~(-47356i), _wgslsmith_add_i32(u_input.b.x, var_2.b)), true)), -33499i, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 748f))), vec4<u32>(1u, 1u, reverseBits(33096u), var_2.e.x));
    return !(select(!any(vec4<bool>(true, true, global0.x, global0.x)), global0.x, !global0.x) & (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(113f * var_3.d))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d - 1536f), 1f))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global0 = !vec3<bool>(func_4(func_2()), !global0.x & any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, false))), true);
    var var_0 = abs(firstTrailingBit(u_input.b.yw));
    global2 = array<Struct_3, 18>();
    global4 = array<vec2<u32>, 21>();
    global4 = array<vec2<u32>, 21>();
    return Struct_3(arg_0, select(global1.d, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 25250u, 47579u), vec3<u32>(24634u, global1.b.x, global1.d.x)), ~vec3<u32>(global1.b.x, global1.c.e.x, u_input.c)), vec3<u32>(_wgslsmith_clamp_u32(17581u, 1u, u_input.c), ~u_input.c, 41725u ^ u_input.c)), vec3<bool>(true, false, false)), global1.c, vec3<u32>(8912u << (u_input.c % 32u), 23105u >> (abs(countOneBits(global1.d.x)) % 32u), 1u));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    global2 = array<Struct_3, 18>();
    global0 = select(select(vec3<bool>(!func_4(Struct_2(global1.a.b.x, arg_1.x, arg_0.c.c, global1.c.c.x, global1.c.e)), any(!vec3<bool>(true, true, global0.x)), true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), global0.x), vec3<bool>(true, !global0.x, any(global0.xx)), select(!vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x), global0.x)), !select(select(vec3<bool>(global0.x, false, false), vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, true, false), global0.x), vec3<bool>(true, false, true))), select(vec3<bool>(select(true, true, true), -571f <= _wgslsmith_f_op_f32(-971f + global1.c.c.x), global0.x), select(select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x), vec3<bool>(false, false, global0.x), !vec3<bool>(true, global0.x, global0.x)), !(!vec3<bool>(global0.x, global0.x, true)), global0.x), global0.x), true);
    return Struct_1(_wgslsmith_div_vec2_i32(~(~select(vec2<i32>(arg_1.x, arg_1.x), u_input.b.yw, global0.x)), ~select(arg_1 >> (arg_0.c.e.zw % vec2<u32>(32u)), arg_0.a.a ^ u_input.b.xy, true)), arg_0.a.b >> (global1.d % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.c.zzz;
    var var_1 = !(!global0.yy);
    let var_2 = _wgslsmith_f_op_vec3_f32(global1.c.c.yxx * global1.c.c.ywz);
    let var_3 = vec2<i32>(~select(~(~global1.a.b.x), select(_wgslsmith_mod_i32(u_input.a, global1.a.b.x), -u_input.b.x, true != global0.x), global0.x), abs(0i));
    var var_4 = func_5(func_1(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_3), -_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.b.x, 2147483647i, var_3.x), vec3<i32>(0i, 0i, global1.c.b)))), -select(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(global1.c.b, -25976i)), ~var_3), -u_input.b.zy ^ vec2<i32>(global1.a.b.x, -97512i), global0.zy));
    let var_5 = u_input.b;
    var var_6 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.c.c.yz)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1.d.x, u_input.c), global1.d), global1.c.e.zyy | global1.d) & func_2().e.wzz, _wgslsmith_mult_vec3_i32(select(select(~vec3<i32>(1i, global1.c.a, var_5.x), global1.a.b, select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, global0.x, var_1.x), vec3<bool>(false, true, true))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, global1.a.b.x, 41657i), _wgslsmith_clamp_vec3_i32(var_4.b, var_4.b, vec3<i32>(-2147483647i, 0i, global1.a.b.x))), var_1.x), ~countOneBits(vec3<i32>(1915i, -40400i, var_5.x)) >> (~global1.d % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1233f)) + var_6.x))) + -1104f));
}

