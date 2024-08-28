struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool>;

var<private> global3: vec4<u32> = vec4<u32>(812u, 16206u, 27177u, 34640u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: bool, arg_3: u32) -> vec3<bool> {
    global0 = array<Struct_5, 5>();
    let var_0 = _wgslsmith_clamp_i32(2147483647i, ~u_input.e, 0i);
    var var_1 = arg_0.zww;
    return global1.wxw;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(-arg_0.c)))));
    var var_1 = ~(~(vec4<u32>(global3.x ^ 18771u, firstTrailingBit(global3.x), 44564u, _wgslsmith_sub_u32(arg_2.x, arg_0.a.b)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, arg_2.x, global3.x, arg_2.x), vec4<u32>(0u, global3.x, arg_2.x, 0u)) % vec4<u32>(32u))));
    let var_2 = select(vec4<bool>(!any(select(arg_0.b.xy, vec2<bool>(arg_1, arg_3.x), true)), true, false, global2.x), vec4<bool>(global1.x, any(select(!vec4<bool>(arg_0.b.x, false, false, false), !vec4<bool>(arg_3.x, true, global2.x, arg_3.x), !vec4<bool>(arg_0.b.x, true, arg_1, false))), arg_1, all(!select(vec4<bool>(true, true, global2.x, true), vec4<bool>(true, global2.x, true, arg_3.x), vec4<bool>(global1.x, arg_3.x, true, arg_0.b.x)))), any(!(!vec4<bool>(arg_0.b.x, false, false, false))) && !any(select(vec4<bool>(arg_0.b.x, arg_3.x, false, arg_0.b.x), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, arg_0.b.x, global1.x, global1.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-892f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.c)), _wgslsmith_f_op_f32(max(var_0.x, 286f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.a.c)))))));
    var var_4 = false;
    return 988f;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(1i, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, 1u), vec3<u32>(global3.x, 38271u, global3.x)), -1436f), select(func_3(u_input.a, -282f, global1.x, 0u), !global1.xww, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), (vec4<i32>(arg_1, arg_1, -22926i, u_input.b) << (vec4<u32>(0u, global3.x, 688u, global3.x) % vec4<u32>(32u))) ^ vec4<i32>(u_input.d, arg_1, u_input.c.x, 7562i)), false, vec2<u32>(0u, ~0u), vec3<bool>(false, !global1.x, any(!vec4<bool>(global1.x, global1.x, false, false))))));
    var var_1 = vec3<i32>(arg_1, -(-_wgslsmith_add_i32(-1i, arg_1) & 0i), max(max(arg_1, firstLeadingBit(1i)), u_input.c.x));
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = !(!all(!func_3(vec4<i32>(49819i, u_input.c.x, 53801i, 1i), arg_0, true, 16932u).yy));
    var var_4 = Struct_1(-2147483647i, ~(~83501u), arg_0);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1300f))))), _wgslsmith_f_op_f32(round(-780f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.c))), _wgslsmith_f_op_f32(ceil(arg_0))), Struct_2(Struct_1(_wgslsmith_div_i32(var_2 << (var_4.b % 32u), arg_1), ~global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0)), vec3<bool>(global3.x < 100854u, all(!global1.xxw), true), _wgslsmith_f_op_f32(select(arg_0, var_0, any(global2.zz))), -max(~u_input.a, vec4<i32>(31208i, var_2, 0i, var_2))), 358f, -_wgslsmith_mult_i32(~(36349i & var_1.x), -10222i), Struct_1(reverseBits(1i), ~(~(~var_4.b)), -1453f));
}

fn func_1() -> Struct_2 {
    global3 = ~firstTrailingBit(_wgslsmith_div_vec4_u32((vec4<u32>(global3.x, 27698u, global3.x, global3.x) << (vec4<u32>(global3.x, 58251u, 16801u, 58639u) % vec4<u32>(32u))) & ~vec4<u32>(4294967295u, 5519u, 488u, global3.x), vec4<u32>(~global3.x, reverseBits(global3.x), 22542u, 1u)));
    global1 = select(select(vec4<bool>(global2.x, global1.x, true, true), !(!vec4<bool>(global1.x, global1.x, false, global1.x)), !vec4<bool>(true, !global2.x, false, all(vec2<bool>(true, false)))), !vec4<bool>(true & any(vec2<bool>(global2.x, true)), global2.x, false, global1.x), any(global1.xww));
    global0 = array<Struct_5, 5>();
    var var_0 = ~_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(global3.x, global3.x, 1u, 11955u), vec4<u32>(global3.x, 19644u, global3.x, 74221u) << (vec4<u32>(4294967295u, global3.x, 4036u, global3.x) % vec4<u32>(32u)), select(vec4<bool>(false, global1.x, global2.x, global2.x), vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global1.x, global2.x, true))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, global3.x), vec4<u32>(global3.x, 53735u, global3.x, 1u))));
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1525f)) * _wgslsmith_f_op_f32(f32(-1f) * -183f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(651f, -133f), -1325f)) * 1f)), u_input.d);
    return func_2(var_1.e.c, var_1.d).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~_wgslsmith_clamp_vec3_i32(func_1().d.zzy, -u_input.a.ywx, vec3<i32>(-1i, func_1().d.x, -1i));
    var var_2 = reverseBits(_wgslsmith_add_u32(var_0.a.b, _wgslsmith_add_u32(countOneBits(0u), _wgslsmith_mult_u32(global3.x, 21014u)))) & _wgslsmith_mult_u32(56221u, var_0.a.b);
    let var_3 = var_0.b;
    let var_4 = !(!any(func_2(var_0.a.c, 50412i).b.b.yy));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global3.zy), var_0.a.a);
}

