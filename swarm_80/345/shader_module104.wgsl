struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<f32> = vec4<f32>(-509f, -2155f, 1484f, -2072f);

var<private> global2: bool = true;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec4<u32>(17225u, 37639u, 41033u, 4294967295u), 1000f), Struct_2(1u, vec2<f32>(270f, 624f), Struct_1(vec4<u32>(16550u, 1u, 50216u, 4294967295u), 101f)), false, vec3<f32>(-997f, -270f, -1430f), vec3<f32>(1176f, 1813f, 665f));

var<private> global4: Struct_2 = Struct_2(4294967295u, vec2<f32>(-199f, -927f), Struct_1(vec4<u32>(1u, 26295u, 24452u, 57248u), 131f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = global3.b;
    let var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, u_input.a.x), 1u, ~1u, 6671u), min(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.a.x, 40431u, 62215u, global0.a), vec4<u32>(56904u, 7252u, global3.a.a.x, global4.c.a.x)), vec4<u32>(global3.a.a.x, global0.c.a.x, 37569u, 76525u))) != global3.b.a;
    let var_2 = var_0.c;
    let var_3 = firstLeadingBit(-56698i ^ -max(-1i, _wgslsmith_clamp_i32(2147483647i, 1422i, 1i)));
    let var_4 = Struct_3(global4.c, Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, global3.b.a, 4294967295u), var_2.a.yww) | min(15033u, global4.c.a.x), ~select(u_input.a.x, global0.c.a.x, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_div_f32(var_0.b.x, 1000f))), global3.a), global3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.yzz + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.x, -722f, var_0.b.x) - global3.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.zzw))), global3.d);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(860f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.e.x)), global4.c.b) + vec4<f32>(-228f, _wgslsmith_f_op_f32(global3.a.b * _wgslsmith_f_op_f32(min(-1100f, 894f))), _wgslsmith_f_op_f32(f32(-1f) * -415f), global3.d.x)) + vec4<f32>(var_2.b, _wgslsmith_f_op_f32(1f - var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(653f - -761f) + _wgslsmith_f_op_f32(round(var_4.b.c.b)))), global3.d.x));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> f32 {
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, -120f) + -373f), _wgslsmith_f_op_f32(-global3.b.b.x)), global4.b.x, global4.b.x, _wgslsmith_f_op_f32(global4.b.x + -365f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) + vec4<f32>(arg_2.c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(-global0.c.b))), _wgslsmith_f_op_f32(exp2(1f)), 652f)));
    var var_0 = global0.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3()).wxy;
    let var_2 = _wgslsmith_clamp_u32(arg_2.a, ~1u, global3.b.a);
    global3 = Struct_3(Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(18147u, 0u, global4.c.a.x, 0u), vec4<u32>(4294967295u, arg_2.c.a.x, var_0.a.x, var_2)), _wgslsmith_f_op_f32(-1f)), Struct_2(~(~18525u >> (global3.b.a % 32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1255f, -1000f) - vec2<f32>(global4.b.x, -1000f)) * _wgslsmith_f_op_vec2_f32(-arg_2.b)))), Struct_1(~vec4<u32>(0u, u_input.a.x, global3.b.a, arg_2.a), _wgslsmith_f_op_vec4_f32(func_3()).x)), global3.c, var_1, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.c.b, _wgslsmith_f_op_f32(global4.c.b - global3.e.x))), var_1.x)), _wgslsmith_f_op_f32(-179f - _wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.b.c.b))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - global0.b.x))) * _wgslsmith_f_op_f32(f32(-1f) * -291f));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2260f - global4.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global4.b.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1384f)))), _wgslsmith_f_op_f32(max(-161f, global3.d.x))))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec4_u32(~global4.c.a, max(select(global3.b.c.a, ~(~vec4<u32>(51904u, arg_2.a.x, arg_1, global3.b.c.a.x)), vec4<bool>(true, true, true, true)), firstTrailingBit(var_1.c.a)));
    let var_3 = Struct_2(u_input.a.x, vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1724f)), arg_2);
    return Struct_2(var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.b, 404f), var_3.b)) * _wgslsmith_f_op_vec4_f32(func_3()).xz))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global1.x))) - global0.b)), global3.a);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global2 = global3.c;
    var var_0 = ~vec2<u32>(~(0u >> (_wgslsmith_dot_vec4_u32(global4.c.a, vec4<u32>(15363u, global3.a.a.x, 45929u, global0.a)) % 32u)), arg_0.c.a.x);
    global3 = Struct_3(Struct_1(~vec4<u32>(~arg_0.a, reverseBits(global0.c.a.x), 0u, firstTrailingBit(0u)), global1.x), func_4(func_4(func_4(func_4(arg_0, 7013u, global3.b.c, vec3<u32>(global0.a, 0u, global0.c.a.x)), var_0.x, Struct_1(global3.a.a, arg_0.b.x), _wgslsmith_add_vec3_u32(global3.b.c.a.zxy, global4.c.a.zxx)), 22841u, arg_0.c, reverseBits(~vec3<u32>(var_0.x, global0.a, u_input.a.x))), var_0.x, func_4(Struct_2(_wgslsmith_add_u32(global4.c.a.x, 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b, -2916f)), arg_0.c), global3.a.a.x, global4.c, global4.c.a.xww | abs(global4.c.a.xxy)).c, arg_0.c.a.www), global3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.zxy, vec3<f32>(207f, arg_0.b.x, global3.b.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.e - vec3<f32>(-315f, global3.d.x, -1404f)) - _wgslsmith_f_op_vec3_f32(ceil(global3.e)))))), _wgslsmith_div_vec3_f32(global3.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(134f, -181f, 725f))) * global3.e))));
    let var_1 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_div_u32(27676u, 44906u), (global4.c.a.x << (4294967295u % 32u)) & ~global0.a, 137u, global4.a), arg_0.b.x), func_4(func_4(func_4(Struct_2(64885u, global1.wz, global3.b.c), ~var_0.x, Struct_1(arg_0.c.a, 469f), vec3<u32>(21445u, 0u, 1u) ^ global0.c.a.wwz), func_4(Struct_2(u_input.a.x, global3.e.xy, arg_0.c), 35153u, arg_0.c, global0.c.a.zxx).a << (5360u % 32u), global3.a, ~(global0.c.a.yxz << (arg_0.c.a.wwz % vec3<u32>(32u)))), 0u, func_4(func_4(Struct_2(40676u, vec2<f32>(-116f, global4.c.b), Struct_1(vec4<u32>(13557u, u_input.a.x, var_0.x, 19411u), global0.b.x)), _wgslsmith_sub_u32(4294967295u, 0u), arg_0.c, vec3<u32>(4294967295u, 4294967295u, 24806u) ^ vec3<u32>(global3.b.a, global4.a, var_0.x)), 1u, global0.c, select(global0.c.a.xyy ^ vec3<u32>(4294967295u, 4294967295u, 39005u), vec3<u32>(arg_0.c.a.x, arg_0.a, var_0.x), true)).c, vec3<u32>(~_wgslsmith_clamp_u32(47047u, u_input.a.x, 12770u), var_0.x, global3.a.a.x)), !(!global3.c) && !(!(!global3.c)), vec3<f32>(840f, 1790f, -293f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-324f, _wgslsmith_f_op_f32(-967f * 187f), global4.b.x)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f), 1807f);
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    global3 = func_5(func_4(Struct_2(~u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(func_2(global3.c, 0u, global3.b)), _wgslsmith_f_op_f32(-arg_1.x)), global4.c), global4.a, Struct_1(~_wgslsmith_div_vec4_u32(global0.c.a, global4.c.a), -818f), firstLeadingBit(~vec3<u32>(global4.a, arg_0.x, 4294967295u))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global4.c.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global3.b.c.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0.b)) * vec2<f32>(-1063f, 1779f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(func_3())) + arg_1);
    let var_1 = _wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(~arg_0.x, global3.a.a.x));
    var var_2 = func_5(Struct_2(~1u ^ global4.c.a.x, vec2<f32>(_wgslsmith_f_op_f32(-362f - _wgslsmith_f_op_f32(1547f * -1000f)), global4.c.b), global3.a)).b;
    return func_4(global3.b, ~(~func_5(global3.b).a.a.x), Struct_1(global3.a.a, _wgslsmith_f_op_f32(func_2(select(all(vec3<bool>(global3.c, global3.c, false)), global3.c, false), 38529u, func_5(func_4(Struct_2(4294967295u, vec2<f32>(global4.b.x, global1.x), Struct_1(var_2.c.a, -101f)), 28067u, global0.c, vec3<u32>(32087u, global4.c.a.x, 16342u))).b))), global4.c.a.xxy << (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global0.a, global4.a), func_5(Struct_2(4294967295u, arg_1.wz, Struct_1(vec4<u32>(global3.b.a, 4294967295u, 57195u, 4294967295u), -450f))).b.c.a.yyz) % vec3<u32>(32u))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(global4.a);
    global3 = Struct_3(func_1(vec4<u32>(1u, firstLeadingBit(60721u), ~(~4294967295u), global4.c.a.x), vec4<f32>(_wgslsmith_f_op_f32(step(global0.c.b, _wgslsmith_f_op_f32(select(global3.e.x, global1.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)), global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.e.x)) * 1000f))), Struct_2(~(~u_input.a.x), _wgslsmith_f_op_vec2_f32(abs(global1.wx)), global0.c), !global3.c && true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-593f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-global0.b.x)) - _wgslsmith_f_op_vec4_f32(func_3()).zwx) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global0.c.b, _wgslsmith_f_op_f32(global1.x + global3.d.x)), vec3<f32>(_wgslsmith_f_op_f32(-global3.e.x), global3.b.b.x, _wgslsmith_f_op_f32(abs(global1.x))), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global3.d, _wgslsmith_f_op_vec3_f32(-global1.zyz))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global3.d)))) * vec3<f32>(410f, _wgslsmith_f_op_f32(round(-497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)))));
    var var_1 = firstTrailingBit(reverseBits(-(~min(7954i, -6022i))));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_mult_i32(abs(0i), _wgslsmith_mod_i32(63348i, 1i)), firstTrailingBit(-(~(-9773i)))), _wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(ceil(global3.a.b))));
}

