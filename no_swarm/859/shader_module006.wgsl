struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: Struct_1;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = vec4<f32>(292f, _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 + global2.b.x)))), _wgslsmith_f_op_f32(max(arg_0, -580f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1313f))) + -1328f)));
    var var_1 = false;
    var_1 = any(vec3<bool>(false, false, true));
    var var_2 = !select(!(!(!vec3<bool>(global3.x, false, false))), global2.a.zzx, !(!select(global2.c.x, global0.a.x, true)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1000f, 830f, _wgslsmith_f_op_f32(-global2.b.x));
    return 0i;
}

fn func_3() -> u32 {
    global1 = array<vec2<bool>, 8>();
    var var_0 = reverseBits(vec4<u32>(0u, firstTrailingBit(4294967295u), global0.e, countOneBits(_wgslsmith_div_u32(global2.e, _wgslsmith_mod_u32(39419u, global2.e)))));
    let var_1 = Struct_1(global0.a, vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b.x), global2.b.x)))), select(select(!select(global3.yy, vec2<bool>(global2.a.x, global2.c.x), false), select(!global0.a.zx, select(global0.c, global3.xy, vec2<bool>(true, global0.c.x)), false | global3.x), !(global2.a.x || true)), select(global0.a.zz, vec2<bool>(global3.x & global2.c.x, !global0.a.x), vec2<bool>(true, true)), global0.c.x), global2.d, u_input.d);
    var var_2 = !vec3<bool>(false, true, all(vec2<bool>(global2.a.x, var_1.c.x)));
    var_0 = firstTrailingBit(vec4<u32>(global0.e & ~u_input.a.x, 4294967295u, _wgslsmith_div_u32(abs(firstLeadingBit(1u)), max(var_1.e, var_1.e) | global2.e), ~(~u_input.a.x)));
    return var_0.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x)))))));
    global1 = array<vec2<bool>, 8>();
    var var_1 = u_input.b.zy;
    let var_2 = true;
    let var_3 = u_input.b.wxz;
    return Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b))), !global2.a.ww, _wgslsmith_clamp_i32(global0.d, -(firstTrailingBit(-2147483647i) & ~0i), func_2(276f, ~global0.e)), _wgslsmith_mult_u32(u_input.d, select(u_input.e, func_3(), all(global0.a)) >> (global2.e % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    var var_0 = 0i;
    var var_1 = arg_0;
    var var_2 = Struct_2(1467f, arg_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-734f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.x * -1677f), 161f, true))), -321f, arg_0.b.x), vec4<f32>(-866f, global2.b.x, var_1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(arg_0.b.x * global2.b.x), global2.d < 0i)))))));
    var var_4 = var_2.b.a;
    return !vec4<bool>(true, select(var_1.a.x, global0.a.x, func_1(true).c.x), !(!(!var_1.a.x)), any(var_2.b.a.zyy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.d;
    global1 = array<vec2<bool>, 8>();
    global1 = array<vec2<bool>, 8>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1183f - global2.b.x)), _wgslsmith_f_op_f32(ceil(751f)), 1000f, _wgslsmith_f_op_f32(-global0.b.x));
    var var_2 = ~vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(global2.e >> (global0.e % 32u), 1u)), global2.e, 1u, ~max(u_input.d, 16049u ^ global0.e));
    let var_3 = !func_4(func_1(all(global2.a.wzz)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_2.yy));
}

