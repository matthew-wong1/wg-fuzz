struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-3348i, Struct_1(vec2<f32>(-757f, 894f), -243f, vec3<i32>(-51391i, i32(-2147483648), -1i), vec2<f32>(1752f, -410f)));

var<private> global1: f32 = 147f;

var<private> global2: f32 = -243f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    global1 = 395f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(572f, _wgslsmith_f_op_f32(-global0.b.a.x)));
    global1 = global0.b.a.x;
    let var_0 = Struct_4(-u_input.c.x, global0.b);
    var var_1 = vec2<bool>(true | ((-2147483647i >> (u_input.a % 32u)) == -900i), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)));
    return u_input.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, 155f, arg_1.b.b.d.x, global0.b.a.x))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(142f, arg_1.b.a, 2439f, arg_1.b.b.d.x))))))), vec4<f32>(-201f, global0.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)), _wgslsmith_f_op_f32(max(arg_1.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.b.d.x))))))));
    let var_1 = true;
    let var_2 = func_3();
    let var_3 = Struct_4(firstLeadingBit(countOneBits(global0.a) >> (~(~arg_1.a) % 32u)), arg_1.b.b);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f)))) * arg_1.b.b.d.x));
    return var_3.b;
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = 1189f;
    let var_0 = ~abs(u_input.b);
    var var_1 = Struct_2(-214f, Struct_1(_wgslsmith_f_op_vec2_f32(-global0.b.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.b.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.b.b, -778f)))), global0.b.c, func_2(vec2<i32>(func_2(global0.b.c.yy, Struct_3(9925u, Struct_2(-1198f, global0.b, true), u_input.e.x), arg_0.c).c.x, arg_0.b.c.x), Struct_3(19621u, Struct_2(255f, global0.b, false), 0u), !(!arg_0.c)).a), select(false, !arg_0.c, arg_0.c));
    let var_2 = abs(u_input.e.zw);
    var var_3 = global0.b.d;
    return _wgslsmith_f_op_f32(arg_0.b.a.x + arg_0.b.d.x);
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-728f, global0.b.d.x)), 792f)) * global0.b.b))));
    global2 = global0.b.d.x;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.b.d), -1056f, global0.b.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b.d.x, 316f))), _wgslsmith_f_op_f32(func_4(Struct_2(-318f, func_2(vec2<i32>(-1903i, global0.a), Struct_3(u_input.e.x, Struct_2(global0.b.b, Struct_1(vec2<f32>(1247f, 1230f), 264f, vec3<i32>(global0.a, 2147483647i, 6648i), global0.b.d), arg_0.x), 0u), false), all(vec4<bool>(arg_0.x, false, arg_0.x, true)))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-405f, global0.b.a.x) * 1077f);
    global0 = Struct_4(firstLeadingBit(var_0.c.x), var_0);
    return Struct_4(~firstTrailingBit(global0.a), func_2(var_0.c.xz, Struct_3(min(1u, 140356u), Struct_2(212f, Struct_1(vec2<f32>(var_0.d.x, -1977f), global0.b.d.x, vec3<i32>(u_input.c.x, var_0.c.x, u_input.c.x), global0.b.a), arg_0.x), _wgslsmith_mult_u32(58471u, 26897u)), all(select(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), false), vec4<bool>(arg_0.x, true, arg_0.x, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -483f;
    global2 = _wgslsmith_f_op_f32(sign(-192f));
    global0 = func_1(vec2<bool>(true && all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)), true));
    let var_0 = -u_input.d.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.d * global0.b.a) + vec2<f32>(global0.b.d.x, global0.b.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.b.a)) - global0.b.a))), global0.b.a.x, abs(-abs(vec3<i32>(u_input.d.x, 0i, var_0))) | (max(u_input.d.yww, u_input.c.zzw) ^ func_2(u_input.d.xx, Struct_3(31742u, Struct_2(global0.b.d.x, global0.b, false), u_input.a), true).c), _wgslsmith_f_op_vec2_f32(-func_2(vec2<i32>(global0.b.c.x >> (u_input.e.x % 32u), ~2147483647i), Struct_3(u_input.a, Struct_2(global0.b.b, global0.b, true), u_input.e.x & u_input.e.x), !all(vec2<bool>(true, true))).d));
    let var_2 = Struct_4(var_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(218f, -362f), global0.b.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) + global0.b.d) + vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b * -590f))), abs(~(var_1.c << (u_input.e.yyx % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b) + -664f), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(func_4(Struct_2(1333f, Struct_1(global0.b.d, var_1.b, vec3<i32>(var_1.c.x, u_input.c.x, global0.b.c.x), global0.b.a), true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.yy, ~u_input.e);
}

