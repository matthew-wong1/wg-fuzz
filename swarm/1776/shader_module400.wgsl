struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32 = 34971u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    let var_0 = firstLeadingBit(58525i & arg_1.b.x);
    global0 = select(arg_0.d, select(select(vec3<bool>(true, true, false), !arg_0.d, !arg_0.d), select(!(!arg_0.d), !(!arg_0.d), arg_0.d), !arg_0.d), global0.x);
    var var_1 = Struct_3(global0.x, _wgslsmith_mult_vec2_i32(-(~(-arg_1.b)), arg_1.b), arg_0, ~max(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.e, 0u, arg_0.e), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.e, arg_0.e), vec3<u32>(0u, 1749u, 1u)))), vec2<bool>((u_input.a <= _wgslsmith_add_u32(70041u, 59443u)) | true, global0.x));
    let var_2 = Struct_2(vec2<bool>(var_1.b.x > 52016i, !arg_1.a), vec3<f32>(arg_0.c.x, -914f, arg_0.c.x), 47957u);
    let var_3 = arg_1;
    return 1u;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    let var_0 = arg_1.c.c;
    let var_1 = ~vec3<i32>(arg_1.b.x, arg_1.b.x & min(-38123i, _wgslsmith_div_i32(arg_1.b.x, 0i)), arg_1.b.x);
    var var_2 = reverseBits(min(-2147483647i, ~(-(~arg_2.a))));
    var var_3 = arg_1;
    var_3 = arg_1;
    return firstTrailingBit(_wgslsmith_clamp_u32(arg_1.c.e, func_3(Struct_1(var_1.x, any(vec3<bool>(arg_2.d.x, arg_1.e.x, true)), vec2<f32>(1f, 1f), select(arg_2.d, vec3<bool>(true, false, false), var_3.c.d), 120998u), Struct_4(var_3.c.b, _wgslsmith_clamp_vec2_i32(arg_1.b, vec2<i32>(51633i, 15365i), arg_1.b), all(vec4<bool>(arg_1.a, arg_1.c.d.x, true, false)))), 1u));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = Struct_3(true, -reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(20683i, 21880i) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), vec2<i32>(-8188i, 0i))), Struct_1(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(0i, -2147483647i, 36065i, 6790i)), vec4<i32>(~(-1i), 1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2080i), vec2<i32>(-42153i, 1i)))), false, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 1240f), vec2<f32>(377f, arg_0)), select(!select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true)), vec3<bool>(global0.x, !global0.x, true), true), ~firstLeadingBit(firstTrailingBit(0u))), u_input.a, vec2<bool>(!global0.x & true, false));
    var var_1 = Struct_3(true, var_0.b, Struct_1(-1i, false, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, _wgslsmith_div_f32(arg_0, var_0.c.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-771f, var_0.c.c.x), var_0.c.c)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-387f, 981f)))))), vec3<bool>(!(!global0.x), -var_0.b.x <= 10013i, var_0.c.d.x), func_2(var_0.b.x, Struct_3(true, select(var_0.b, vec2<i32>(28265i, var_0.c.a), vec2<bool>(true, true)), Struct_1(var_0.c.a, var_0.a, vec2<f32>(-1224f, arg_0), var_0.c.d, 13490u), 1u, !var_0.c.d.yx), Struct_1(_wgslsmith_sub_i32(var_0.b.x, 1i), global0.x && true, vec2<f32>(-1021f, arg_0), !vec3<bool>(false, global0.x, global0.x), ~var_0.d))), ~(~1u), !(!global0.yx));
    let var_2 = abs(~(~(i32(-1i) * -var_0.b.x)));
    var_1 = var_0;
    let var_3 = Struct_4(!any(var_1.c.d) && var_0.a, _wgslsmith_mult_vec2_i32(-firstTrailingBit(var_1.b >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), var_1.b), any(!select(vec4<bool>(var_0.e.x, global0.x, var_1.e.x, false), !vec4<bool>(true, false, global0.x, true), var_1.c.e >= 46706u)));
    return -select(_wgslsmith_mod_vec2_i32(var_0.b, var_3.b), reverseBits(~var_0.b), var_1.c.d.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(1f);
    let var_1 = _wgslsmith_clamp_vec2_i32(var_0, vec2<i32>(~firstLeadingBit(var_0.x), _wgslsmith_div_i32(~min(var_0.x, var_0.x), 1i)), var_0);
    var var_2 = Struct_2(select(global0.yz, global0.xy, !vec2<bool>(global0.x & global0.x, all(vec4<bool>(true, global0.x, false, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-100f, -876f, -1852f))) + vec3<f32>(110f, -959f, 1249f)) - vec3<f32>(1f, 1f, 1f))), ~_wgslsmith_sub_u32(u_input.a & 1u, reverseBits(u_input.a)) & _wgslsmith_add_u32(~1u, abs(63325u) & func_2(var_1.x, Struct_3(false, var_0, Struct_1(var_0.x, global0.x, vec2<f32>(1000f, 1603f), vec3<bool>(false, true, false), u_input.a), 43737u, vec2<bool>(global0.x, global0.x)), Struct_1(var_1.x, true, vec2<f32>(-1374f, -1703f), vec3<bool>(false, global0.x, false), 87563u))));
    let var_3 = Struct_3(!var_2.a.x, vec2<i32>(-1i, _wgslsmith_mult_i32(abs(~(-1i)), -(~var_1.x))), Struct_1(-var_0.x, true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b.x, -1023f))), -356f), vec3<bool>(var_2.a.x, !(true && var_2.a.x), u_input.a != 4294967295u), ~(~(~var_2.c))), 1u, !global0.zy);
    var var_4 = 38553i;
    let var_5 = !select(select(vec2<bool>(var_2.a.x, var_2.b.x < var_2.b.x), select(vec2<bool>(var_2.a.x, false), select(vec2<bool>(true, global0.x), var_2.a, global0.x), true), global0.xx), select(vec2<bool>(var_3.a, !var_3.a), select(var_3.c.d.xy, vec2<bool>(var_3.c.b, false), any(vec3<bool>(false, var_3.a, global0.x))), var_2.a), select(var_2.a, !var_3.e, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.yy), _wgslsmith_f_op_vec2_f32(abs(var_3.c.c))))) + _wgslsmith_f_op_vec2_f32(var_2.b.zz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b.x, var_3.c.c.x))) - _wgslsmith_f_op_vec2_f32(var_2.b.xz + var_3.c.c)))), _wgslsmith_f_op_f32(var_3.c.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_2.b.x)))))), -min(var_3.b, vec2<i32>(21532i >> (var_3.d % 32u), -11990i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.c.x, -569f, -423f, -153f) * vec4<f32>(var_3.c.c.x, var_2.b.x, var_2.b.x, 1302f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, -122f, var_2.b.x, 104f))))), ~(max(vec2<u32>(4294967295u, var_3.c.e), vec2<u32>(0u, var_2.c)) >> (~vec2<u32>(23799u, var_3.d) % vec2<u32>(32u))) & reverseBits(vec2<u32>(u_input.a, _wgslsmith_div_u32(11116u, var_2.c))));
}

