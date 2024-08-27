struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1000f, -569f, -352f, 1035f), true, vec4<bool>(true, true, false, false), 0i);

var<private> global2: Struct_2;

var<private> global3: vec3<f32> = vec3<f32>(-183f, -338f, -1485f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(-1326f));
    global0 = true;
    let var_1 = vec2<f32>(global1.a.x, 254f);
    return global2.b;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    global2 = Struct_2(func_2().a.x, func_2(), min(~1u, select(1u, max(countOneBits(global2.c), ~global2.c), false)), global2.d);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(select(global3.x, -2706f, !(global1.b & (217f <= arg_1)))), _wgslsmith_div_f32(1259f, global1.a.x), _wgslsmith_f_op_f32(-260f * arg_1));
    let var_0 = Struct_2(arg_0.a.x, func_2(), ~(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 30483u), vec3<u32>(108707u, global2.c, 0u))) | ~_wgslsmith_mod_u32(6237u, global2.c)), func_2());
    var var_1 = global2.b;
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1646f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.x, arg_0.a.x)) * _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(2816f * _wgslsmith_f_op_f32(trunc(global2.b.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.wzy, global2.d.a.zzw) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-249f, global3.x, var_1.a.x), var_0.b.a.yyw)) - arg_0.a.ywz))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1382f), _wgslsmith_div_f32(-168f, arg_0.a.x), -763f))), global2.b.a.xxz, abs(~1u) != _wgslsmith_div_u32(var_0.c, ~global2.c))), true || select(true, true, !var_0.d.c.x)));
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f) * _wgslsmith_f_op_f32(global1.a.x - 457f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-global2.d.a), true, vec4<bool>(func_2().b & !arg_0.c.x, any(global2.d.c.wxw), global2.d.d >= global1.d, func_2().c.x && global2.d.c.x), _wgslsmith_sub_i32(abs(arg_0.d), -34777i)), 13765u, Struct_1(func_2().a, true, global1.c, 5756i));
    global0 = global1.b;
    global2 = var_0;
    var var_1 = true;
    var var_2 = var_0.d;
    return var_0.c | ~_wgslsmith_mult_u32(var_0.c, 4294967295u);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = global2.b;
    let var_1 = firstLeadingBit(~_wgslsmith_sub_u32(firstLeadingBit(54894u), 1u)) & func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 2543f, global3.x, global2.b.a.x) + var_0.a)), !var_0.c.x, var_0.c, func_3(func_2(), -1469f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(max(var_0.a, var_0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.a.x, 2084f, global1.a.x, -1048f))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, -144f, global2.d.a.x, _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(-global3.x))) + global2.d.a), any(select(func_2().c, var_0.c, true)), global1.c, global1.d);
    global0 = !global2.d.c.x;
    var var_3 = global2.d.a.x;
    return !func_2().c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global2.d.a - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(-1034f - global1.a.x)), global3.x, -1000f, global3.x)), false, vec4<bool>(any(!global1.c.wxy), any(vec3<bool>(global1.b, any(global2.d.c.yxz), global1.b || true)), 1i > firstTrailingBit(global1.d), func_1(global2.b.c.x)), -2147483647i);
    var_0 = func_2();
    global0 = false;
    global2 = Struct_2(1763f, func_2(), 39960u >> ((min(~1u, _wgslsmith_mult_u32(global2.c, 9198u)) & func_4(global2.b, vec4<f32>(global1.a.x, var_0.a.x, global3.x, var_0.a.x))) % 32u), func_2());
    var var_1 = _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(2243u, global2.c, 2120u, 4294967295u))), abs(vec4<u32>(~global2.c, firstTrailingBit(global2.c), 1u, 0u)) << (~(~vec4<u32>(global2.c, global2.c, 39931u, 39169u) & vec4<u32>(global2.c, 4294967295u, global2.c, 4294967295u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global3.xz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global3.yx, vec2<f32>(148f, -1586f))), global2.d.a.xx)), 19537u, 33098u, vec2<f32>(-213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
}

