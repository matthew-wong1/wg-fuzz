struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3;

var<private> global2: Struct_4 = Struct_4(true, Struct_1(1340f, -33197i, i32(-2147483648)), Struct_3(Struct_1(1892f, -18641i, i32(-2147483648)), vec4<f32>(-809f, 1979f, -1241f, -1000f), -1598f, 22975u));

var<private> global3: u32;

var<private> global4: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    let var_0 = arg_1.x;
    let var_1 = true;
    var var_2 = global2.c.d;
    let var_3 = 3906i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(269f, global1.b.x));
    return arg_3;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = vec2<u32>(4294967295u, 4294967295u);
    var var_1 = vec2<u32>(~(~var_0.x), max(var_0.x, ~global1.d));
    let var_2 = global2.c;
    global4 = ~(~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.a))));
    return var_2.d;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.c.a.a), global0.x, global1.a.b >> (_wgslsmith_mult_u32(24430u, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.a, global2.b.a, global1.b.x, global1.a.a) - global2.c.b), ~vec4<i32>(-1i, u_input.b.x, 9772i, -2147483647i), _wgslsmith_div_i32(59250i, u_input.b.x), min(global2.b.b, u_input.b.x))) % 32u));
    let var_1 = vec3<bool>(arg_0.x <= ~(abs(29303u) ^ u_input.c.x), true || select(!(!global2.a), false, global2.a), any(vec3<bool>(false, true, global2.a)));
    let var_2 = 1u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-833f, global1.c), var_0.a)))), -10133i, -2147483647i);
    var var_4 = Struct_5(-_wgslsmith_div_i32(firstTrailingBit(14703i) << ((arg_0.x | 9921u) % 32u), ~_wgslsmith_mod_i32(var_3.c, 2147483647i)));
    return Struct_1(global2.b.a, -firstTrailingBit(~global0.x), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    let var_1 = global1.a;
    global2 = Struct_4(all(!(!(!vec4<bool>(global2.a, true, global2.a, false)))), func_2(vec3<u32>(~func_1(-1913f, vec2<f32>(-2042f, var_0.a), vec4<bool>(false, false, true, true), 1u), global2.c.d, global2.c.d)), Struct_3(Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-643f, global1.b.x)), global1.a.b, -5761i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f) - _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-var_0.a), 253f, var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(422f, global2.b.a)), _wgslsmith_div_f32(var_1.a, 1105f)), _wgslsmith_div_f32(global2.c.a.a, var_0.a))), global1.d));
    global3 = 4294967295u & reverseBits(~_wgslsmith_add_u32(global1.d, _wgslsmith_clamp_u32(global1.d, 71542u, global2.c.d)));
    let var_2 = Struct_4(global2.a & true, global2.b, global2.c);
    global3 = global2.c.d;
    var var_3 = Struct_2(vec3<u32>(4294967295u, 375u, ~1u), Struct_1(-576f, -(func_2(u_input.c).b | 43699i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-u_input.b.zx, global0.yy | u_input.b.yz), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.a.a, var_2.b.a)), u_input.d.x & 48914u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.b.a, -1174f, var_0.a), vec3<f32>(-410f, -1542f, 261f))), _wgslsmith_div_vec3_f32(var_2.c.b.yyz, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, global2.b.a, global2.c.c) * vec3<f32>(global2.b.a, var_3.b.a, var_3.b.a))))))), abs(firstTrailingBit(min(vec4<i32>(-4194i, 2147483647i, -2147483647i, var_1.c), vec4<i32>(u_input.b.x, global2.b.b, var_0.c, -46086i)))) & reverseBits(~vec4<i32>(var_2.b.b, var_1.c, -30059i, global0.x) >> (reverseBits(vec4<u32>(global1.d, var_2.c.d, 4294967295u, 4294967295u)) % vec4<u32>(32u))), u_input.c.xy);
}

