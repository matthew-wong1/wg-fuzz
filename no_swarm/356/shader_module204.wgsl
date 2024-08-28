struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<f32>;

var<private> global2: Struct_5 = Struct_5(Struct_2(Struct_1(4294967295u, -1i, vec3<f32>(889f, 153f, 1573f)), vec4<f32>(356f, 652f, -541f, -1280f)), Struct_1(35029u, 1i, vec3<f32>(-885f, 528f, -315f)), -69141i, vec2<bool>(false, false));

var<private> global3: Struct_4 = Struct_4(Struct_1(71514u, -1i, vec3<f32>(346f, -167f, 994f)), Struct_2(Struct_1(22773u, 1i, vec3<f32>(-988f, 604f, -1000f)), vec4<f32>(439f, -583f, 115f, 513f)), vec3<u32>(4294967295u, 5394u, 4294967295u), true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global2.a.a.c.x)))))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3.a.c.x, global1.x, global2.a.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f + _wgslsmith_f_op_f32(-global1.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    var var_0 = firstLeadingBit(_wgslsmith_mod_i32(arg_0.a.b, 0i));
    var var_1 = arg_0.a;
    var_1 = global3.a;
    let var_2 = true;
    global3 = Struct_4(Struct_1(_wgslsmith_clamp_u32(0u, 31231u, ~(~u_input.a.x)), 13193i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global2.b.c.x * global1.x), 1887f, _wgslsmith_f_op_f32(-arg_2.c.x))))), arg_0, (~(~vec3<u32>(u_input.a.x, 27708u, 1u)) & ~(~vec3<u32>(global2.a.a.a, arg_0.a.a, 32837u))) ^ (vec3<u32>(~1u, abs(arg_2.a), u_input.a.x) & (global3.c ^ global3.c)), all(select(vec4<bool>(!var_2, !global2.d.x, var_2, !var_2), vec4<bool>(global3.d, all(vec4<bool>(true, true, true, arg_3.d.x)), true, !var_2), vec4<bool>(any(vec2<bool>(false, true)), true, all(vec3<bool>(true, var_2, global3.d)), !global2.d.x))));
    return -1027f;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(28727u, arg_0.x, vec3<f32>(-472f, _wgslsmith_f_op_f32(func_4(Struct_2(global3.b.a, global2.a.b), func_2(global3.d), Struct_1(global3.c.x, 0i, global2.a.b.wzx), Struct_5(Struct_2(global2.b, vec4<f32>(395f, global2.a.b.x, -1584f, -889f)), Struct_1(global2.a.a.a, global3.a.b, vec3<f32>(global1.x, global1.x, 1134f)), -2147483647i, vec2<bool>(true, false)))), global2.b.c.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.c.x, arg_1.c.x, 354f, global2.a.b.x) * vec4<f32>(global3.a.c.x, arg_1.c.x, 507f, global1.x))))))));
    let var_1 = Struct_1(0u, global3.b.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, global1.x, 415f))) * var_0.b.wzz));
    let var_2 = func_2(global3.d);
    return Struct_3(vec2<f32>(arg_1.c.x, -1116f));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    global2 = Struct_5(global3.b, global3.b.a, -14710i, !arg_0.yx);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), -671f, _wgslsmith_f_op_f32(-global1.x), -241f);
    var var_0 = countOneBits(~(~1u) << (_wgslsmith_add_u32(~global2.b.a, 0u) % 32u));
    global1 = _wgslsmith_f_op_vec4_f32(-global2.a.b);
    global3 = Struct_4(global3.a, Struct_2(Struct_1(1u, 2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 256f, 1283f)))), global3.b.b), abs(vec3<u32>(~global2.a.a.a ^ global3.c.x, (global3.b.a.a << (24854u % 32u)) << (42161u % 32u), _wgslsmith_div_u32(55224u, global3.a.a))), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(37250i, 2147483647i, global2.c, global2.a.a.b)), ~(vec4<i32>(2147483647i, global2.a.a.b, 0i, global3.b.a.b) & vec4<i32>(global3.a.b, -1i, global3.b.a.b, global3.b.a.b))) == global2.a.a.b);
    return Struct_1(0u, -2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(arg_3))), _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(u_input.a.x);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(global1.x)));
    var var_1 = (global1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c.x))) == (true != (!(global3.b.a.b >= -1i) | false));
    var var_2 = Struct_5(global2.a, func_5(!(!vec3<bool>(global3.d, global2.d.x, true)), func_1(~(~vec4<i32>(1i, 0i, global2.b.b, 14209i)), global2.a.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(var_0, 295f)), _wgslsmith_f_op_f32(-862f - -2349f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(686f, 765f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b.c.x)) * -2091f)), global3.b.a.b, !select(!