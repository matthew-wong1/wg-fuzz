struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), 0i, 0i, 24676i), 111532u, false, Struct_1(false));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: vec4<u32> = vec4<u32>(34691u, 145203u, 11390u, 11282u);

var<private> global4: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    global1 = arg_0.a;
    global4 = Struct_3(global4.a, arg_0.b);
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1205f)))), arg_3)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3, -1719f))) + global0.xy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1090f, global0.x), global0.yy, vec2<bool>(true, false)))))));
    var var_2 = global1.a.www;
    return 1099f;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_3 {
    global1 = global4.b;
    global4 = Struct_3(Struct_2(vec4<i32>(abs(_wgslsmith_mod_i32(u_input.c.x, -2147483647i)), 1i, _wgslsmith_add_i32(-global4.b.a.x, u_input.c.x), -4195i), u_input.b.x, true && global2.x, Struct_1(any(!vec3<bool>(global4.a.d.a, global4.b.d.a, false)))), global4.a);
    let var_0 = global3.yz;
    var var_1 = global4.a.d;
    let var_2 = Struct_2(global4.a.a, 4294967295u, !global4.a.c || true, global4.a.d);
    return Struct_3(Struct_2(~global1.a, 1u, _wgslsmith_f_op_f32(func_3(Struct_3(var_2, var_2), vec3<i32>(global4.a.a.x, 14674i, 3180i), vec4<u32>(42231u, global1.b, 0u, global1.b) ^ vec4<u32>(22946u, global3.x, u_input.d, 57934u), arg_1)) < 645f, global1.d), global4.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<bool> {
    global4 = func_2(~0u, global0.x, u_input.d);
    let var_0 = 349f;
    global4 = func_2(_wgslsmith_dot_vec3_u32(global3.xzw, _wgslsmith_add_vec3_u32(global3.wzx, ~vec3<u32>(global3.x, 1u, global4.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1513f, var_0))), true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(599f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-499f, -377f), global0.x))), 1u);
    var var_1 = !any(select(!select(vec2<bool>(global4.b.d.a, true), vec2<bool>(global2.x, global2.x), false), !vec2<bool>(global4.a.c, false), !(!vec2<bool>(false, global1.d.a))));
    var var_2 = 0i;
    return vec2<bool>(arg_1.d.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27088u;
    var var_1 = ~global4.a.a.yw;
    var_0 = max(~44937u, ~_wgslsmith_div_u32(1u, ~(global4.b.b & global4.b.b)));
    let var_2 = (var_1.x == -1i) | false;
    let var_3 = var_1.x;
    global2 = select(func_1(global4.b.a, global4.a), func_1(u_input.c, func_2(select(global1.b >> (39216u % 32u), ~70499u, global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) - _wgslsmith_f_op_f32(sign(global0.x))), func_2(global3.x, _wgslsmith_f_op_f32(-global0.x), global4.b.b).a.b).b), false);
    var var_4 = Struct_1(global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(min(vec4<i32>(_wgslsmith_clamp_i32(81207i, 20505i, 9216i), firstTrailingBit(-1i), ~global4.a.a.x, 0i), ~vec4<i32>(-20960i, global4.a.a.x, 0i, global4.a.a.x)), global4.a.a << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global3.x, 22736u, global1.b), vec4<u32>(global3.x, u_input.b.x, 26730u, global3.x), vec4<u32>(56448u, 1u, global3.x, global4.b.b)), vec4<u32>(0u, global3.x, global4.a.b, u_input.b.x), vec4<bool>(global2.x, true, var_2, true)) % vec4<u32>(32u))), var_1.x, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 17272u >> (~global1.b % 32u)), abs(firstTrailingBit(vec2<u32>(u_input.b.x, 1u)))));
}

