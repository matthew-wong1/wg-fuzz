struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(159u, 34758u, 4294967295u, 60835u, 24138u, 0u, 14572u, 0u, 25980u, 64262u, 1u, 0u, 2797u, 0u, 65480u, 0u, 4294967295u, 2558u, 4294967295u, 0u);

var<private> global1: f32 = -827f;

var<private> global2: bool = true;

var<private> global3: Struct_2;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = arg_1.a.x;
    var var_2 = arg_1.a.x;
    let var_3 = firstLeadingBit(~vec2<i32>(-_wgslsmith_clamp_i32(0i, -16944i, u_input.a.x), arg_3.x));
    global2 = global4.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a.a.x))), 1830f))), global3.a.b);
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_2(global3.a);
    let var_1 = 37475i;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(global3.a.a.x, -1106f)));
    global0 = array<u32, 20>();
    let var_2 = select(select(select(select(select(vec3<bool>(true, global4.x, false), vec3<bool>(false, global4.x, true), false), !vec3<bool>(true, global4.x, global4.x), all(vec3<bool>(true, global4.x, false))), vec3<bool>(!global4.x, true, true), global4.x & global4.x), !(!(!vec3<bool>(global4.x, global4.x, global4.x))), vec3<bool>(true, !(!global4.x), arg_0.x >= 471f)), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, global4.x, true), false)), !(!select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(global4.x, true, false), vec3<bool>(global4.x, global4.x, true))), vec3<bool>(global4.x, !global4.x, global4.x)), !(!select(vec3<bool>(true, true, true), !vec3<bool>(false, false, global4.x), !global4.x)));
    return _wgslsmith_f_op_f32(-func_1(Struct_2(func_1(Struct_2(Struct_1(vec3<f32>(var_0.a.a.x, 1773f, global3.a.b.x), global3.a.b)), func_1(Struct_2(Struct_1(vec3<f32>(var_0.a.a.x, arg_0.x, arg_0.x), vec3<f32>(689f, 502f, var_0.a.b.x))), global3.a, 27477u, u_input.a.yz), abs(4294967295u), select(vec2<i32>(0i, 2147483647i), vec2<i32>(var_1, u_input.a.x), global4.x))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(898f, -201f, -1118f) - global3.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, -2103f, arg_0.x)))), vec3<f32>(var_0.a.a.x, 793f, _wgslsmith_f_op_f32(188f + global3.a.a.x))), 1u | (3162u & ~u_input.c), u_input.a.wx).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(Struct_2(global3.a), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global3.a.a.x - global3.a.a.x), 331f, global3.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(579f, global3.a.a.x, -983f), vec3<f32>(-1000f, -664f, -724f))))), ~35547u, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i) & vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yx | u_input.a.xw), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x) ^ u_input.a.yz, -u_input.a.yw))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_f_op_f32(abs(var_0.a.b.x))), -814f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec4<f32>(global3.a.b.x, var_0.a.b.x, -313f, 910f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(981f, 2346f)) * _wgslsmith_f_op_f32(min(-3638f, global3.a.b.x)))))));
}

