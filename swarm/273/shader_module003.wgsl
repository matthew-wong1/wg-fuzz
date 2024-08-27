struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1281i, 2147483647i);

var<private> global1: vec3<f32> = vec3<f32>(1293f, -2386f, 193f);

var<private> global2: Struct_3;

var<private> global3: u32;

var<private> global4: array<vec4<f32>, 26>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> vec2<bool> {
    var var_0 = vec2<bool>(true, select(true, true, true));
    let var_1 = -670f;
    var var_2 = !(!var_0.x);
    var var_3 = global2.a;
    var_2 = select(any(select(vec4<bool>(all(vec4<bool>(false, false, true, var_0.x)), true, false, true), !select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, var_0.x, true, false), false), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), false, all(vec2<bool>(false, var_0.x)), false))), true, false);
    return !vec2<bool>(var_0.x && false, false);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = u_input.a.x;
    global3 = firstTrailingBit(_wgslsmith_add_u32(abs(0u << (arg_0.x % 32u)), 38223u));
    let var_1 = abs(~(vec4<u32>(_wgslsmith_div_u32(27200u, arg_0.x), ~u_input.b.x, ~4294967295u, _wgslsmith_add_u32(1u, u_input.b.x)) ^ vec4<u32>(u_input.b.x, u_input.b.x >> (1u % 32u), arg_0.x, _wgslsmith_clamp_u32(arg_0.x, 4294967295u, u_input.b.x))));
    let var_2 = global2.a;
    var_0 = global0.x ^ u_input.a.x;
    return global2.c;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = global2.c.a.zx >> (~_wgslsmith_clamp_vec2_u32((arg_1.zx << (vec2<u32>(global2.c.a.x, global2.c.a.x) % vec2<u32>(32u))) & vec2<u32>(arg_1.x, global2.c.a.x), vec2<u32>(_wgslsmith_mod_u32(arg_1.x, 0u), select(u_input.b.x, 28050u, false)), ~countOneBits(vec2<u32>(arg_0, 12963u))) % vec2<u32>(32u));
    var var_1 = 2147483647i;
    let var_2 = func_2(reverseBits(vec4<u32>(abs(arg_1.x), abs(var_0.x | arg_1.x), select(firstLeadingBit(75673u), 26142u, true), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 35166u), arg_1.zy), 1u))), false, !vec3<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(global0.x, 2147483647i) > -2147483647i, true), func_1(Struct_3(func_2(firstTrailingBit(vec4<u32>(1u, arg_2.x, 36370u, 0u)), all(vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec2<bool>(false, false)), global2.b, func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c.a.x, arg_2.x, arg_2.x, 1u), vec4<u32>(33513u, var_0.x, 1089u, arg_0), vec4<u32>(19594u, 48751u, var_0.x, arg_0)), any(vec4<bool>(false, false, false, false)), vec3<bool>(true, true, true), vec2<bool>(true, true)), select(~global2.d, -vec4<i32>(-1i, -14800i, 0i, global2.d.x), false)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.c.a.x, u_input.b.x), select(global2.a.a, vec3<u32>(u_input.b.x, arg_0, 1u), false)), _wgslsmith_mult_u32(~global2.a.a.x, 34956u)))).a.x;
    var_1 = 2147483647i;
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.yy, vec2<f32>(global1.x, global1.x)) + _wgslsmith_f_op_vec2_f32(trunc(global1.xx))) - vec2<f32>(_wgslsmith_f_op_f32(sign(global2.b)), _wgslsmith_div_f32(global1.x, global1.x)))), global1.yx));
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!select(vec2<bool>(true, true), func_1(Struct_3(global2.a, -121f, global2.c, vec4<i32>(1i, 13916i, u_input.a.x, global0.x)), global2.a.a.x), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), func_1(Struct_3(global2.a, global1.x, func_2(countOneBits(vec4<u32>(45961u, 1u, global2.c.a.x, 1u)), any(vec3<bool>(false, true, false)), vec3<bool>(false, false, true), vec2<bool>(true, true)), vec4<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.x, 0i, global0.x, global0.x), vec4<i32>(global2.d.x, u_input.c.x, -4799i, -1i)), global0.x, ~(-1i))), _wgslsmith_sub_u32(~0u, _wgslsmith_div_u32(0u, 1u)) >> (((32977u << (0u % 32u)) | select(14126u, u_input.b.x, true)) % 32u)).x, 2331i, u_input.b.x, global1.xx);
    global0 = -_wgslsmith_add_vec2_i32(-((u_input.a.zx >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(50176u, 30807u) % vec2<u32>(32u))), abs(~global2.d.zz));
    global4 = array<vec4<f32>, 26>();
    let var_1 = !func_1(Struct_3(func_2(vec4<u32>(var_0.d, u_input.b.x, var_0.d, 4294967295u) ^ vec4<u32>(49725u, 53680u, var_0.d, var_0.d), true, vec3<bool>(true, var_0.a.x, var_0.b), vec2<bool>(false, var_0.a.x)), _wgslsmith_f_op_f32(global2.b + global2.b), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d, u_input.b.x, var_0.d), vec3<u32>(66731u, u_input.b.x, 45834u))), func_3(min(9597u, 35486u), vec3<u32>(4294967295u, 4294967295u, var_0.d), _wgslsmith_div_vec2_u32(global2.a.a.zx, vec2<u32>(33437u, 66301u)))), select(~firstTrailingBit(1u), _wgslsmith_sub_u32(var_0.d & 6092u, global2.a.a.x), var_0.a.x));
    global0 = vec2<i32>(-2147483647i, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-2147483647i, 17195i)), _wgslsmith_add_i32(global0.x, var_0.c)), 2824i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-2147483647i, 4604i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-14161i, -2147483647i), 0i, 10373i)));
}

