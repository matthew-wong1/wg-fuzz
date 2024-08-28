struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(Struct_1(1139f, vec3<bool>(true, false, false)), Struct_1(-503f, vec3<bool>(true, true, false)), Struct_1(-1263f, vec3<bool>(false, false, true)));

var<private> global3: Struct_1 = Struct_1(500f, vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> vec2<bool> {
    global0 = -171f;
    global0 = _wgslsmith_f_op_f32(arg_0.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.a.a))))));
    global0 = global2.a.a;
    let var_0 = vec2<u32>(~(~arg_2.x), arg_2.x);
    var var_1 = vec4<u32>(arg_2.x, ~arg_2.x, reverseBits(arg_2.x), arg_2.x);
    return vec2<bool>(false, false);
}

fn func_2(arg_0: i32, arg_1: f32) -> f32 {
    global3 = global2.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.c.a, 109f))) * _wgslsmith_f_op_f32(1351f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1844f * _wgslsmith_f_op_f32(arg_1 - global2.a.a))))));
    let var_0 = select(select(abs(firstLeadingBit(abs(vec2<i32>(-20277i, 2147483647i)))), ~vec2<i32>(-37444i, u_input.a.x), vec2<bool>(!any(vec4<bool>(true, global2.b.b.x, global3.b.x, global3.b.x)), false)), ~(-_wgslsmith_mult_vec2_i32(countOneBits(u_input.a), countOneBits(vec2<i32>(arg_0, arg_0)))), true);
    var var_1 = ~(~(select(vec2<u32>(40076u, 62698u), vec2<u32>(0u, 1u), func_3(Struct_3(global2.b, Struct_1(global2.b.a, vec3<bool>(global3.b.x, false, false))), arg_0, vec4<u32>(11384u, 0u, 91050u, 1u), global2.b.b.x)) & vec2<u32>(reverseBits(58488u), _wgslsmith_dot_vec4_u32(vec4<u32>(10018u, 0u, 0u, 21508u), vec4<u32>(1u, 21952u, 4294967295u, 4294967295u)))));
    global2 = Struct_2(global2.b, Struct_1(-907f, vec3<bool>(!global3.b.x, true, !(global3.a <= global2.b.a))), Struct_1(219f, !select(select(vec3<bool>(true, true, global2.b.b.x), global3.b, true), vec3<bool>(false, true, true), select(global3.b, global2.c.b, global3.b.x))));
    return global2.b.a;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<u32>(~(abs(4294967295u) << (arg_1.x % 32u)) & arg_1.x, abs(~(1u & (arg_1.x ^ 0u))), min(arg_1.x, 62650u), arg_1.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a.x, global2.c.a)), global2.b.a)), vec3<bool>(global3.b.x, false, true)), Struct_1(global2.a.a, global2.a.b), global2.a);
    var var_2 = ~min(var_0.x << (firstLeadingBit(var_0.x) % 32u), ~arg_1.x | 0u);
    var var_3 = global2.b;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(var_3.a * -976f), global3.b);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -653f), !(!global3.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(any(global2.c.b.zz), _wgslsmith_sub_vec4_u32(max(~firstTrailingBit(vec4<u32>(55623u, 0u, 26676u, 1u)), ~(~vec4<u32>(0u, 22535u, 20619u, 4294967295u))), vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 15347u, 1u), vec3<u32>(1u, 36u, 15865u)), countOneBits(vec3<u32>(1u, 90708u, 21574u))), _wgslsmith_mod_u32(~1u, 4294967295u), ~19238u)));
    let var_0 = Struct_2(Struct_1(func_1((u_input.a.x > 0i) & true, ~(~vec4<u32>(99652u, 27952u, 9825u, 0u))).a, global3.b), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1060f, global3.a)), _wgslsmith_f_op_f32(f32(-1f) * -1545f)))), global2.c.b), global2.c);
    var var_1 = -438f;
    global1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(func_2(u_input.a.x, _wgslsmith_f_op_f32(global3.a + 203f)));
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(5484u, 12670u), 1u, _wgslsmith_mult_u32(0u, 32560u), 14899u), vec4<u32>(min(1u, 4294967295u), 38895u, _wgslsmith_clamp_u32(17029u, 0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(47376u, 1u, 16705u, 0u), vec4<u32>(0u, 1u, 8163u, 0u)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(2551u, 1u), vec2<u32>(1u, 1u)));
    var var_4 = Struct_3(func_1(var_0.c.b.x, vec4<u32>(var_3.x, min(countOneBits(var_3.x), 1u), 31946u, 1u)), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global2.c.a, 883f)), _wgslsmith_f_op_f32(sign(1000f)), var_0.c.b.x)), abs(5244u), -_wgslsmith_add_vec3_i32(max(firstLeadingBit(vec3<i32>(-64222i, u_input.a.x, u_input.a.x)), abs(vec3<i32>(u_input.a.x, u_input.a.x, 1i))), select(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(1i, -45461i, -1i), all(global2.a.b))));
}

