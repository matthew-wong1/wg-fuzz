struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4;

var<private> global2: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = -606f;
    global0 = u_input.a.x ^ 24979u;
    global0 = _wgslsmith_add_u32(219u, ~global2.a.x);
    var var_1 = !select(vec4<bool>(!global1.b.b.x, true, _wgslsmith_f_op_f32(sign(117f)) < _wgslsmith_f_op_f32(-var_0), true), vec4<bool>(!global1.b.b.x, !all(vec2<bool>(false, false)), !all(vec4<bool>(global2.b.b.x, false, true, true)), any(global1.b.b)), any(!select(global2.b.b, global1.b.b, global1.b.b.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(global2.b.a.zx, _wgslsmith_f_op_vec2_f32(max(global2.c.c.yx, vec2<f32>(var_0, _wgslsmith_f_op_f32(-global1.c.b)))))), _wgslsmith_f_op_vec2_f32(global2.c.c.xy * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1521f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-532f, global1.c.c.x) + global1.c.c.zy)))))));
    return ~global2.a;
}

fn func_2() -> bool {
    let var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global1.a, func_3()), func_3().x), -133f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, 2004f, 816f)))), 4294967295u);
    var var_1 = global2.b;
    global1 = Struct_4(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d, 4294967295u, 21037u, var_0.d), vec4<u32>(49112u, 4294967295u, var_0.d, global2.a.x))) >> (vec4<u32>(~1u << (global2.a.x % 32u), reverseBits(31208u), _wgslsmith_add_u32(~21434u, var_0.d), max(~var_0.d, ~73441u)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, global2.c.b, var_1.a.x)), var_1.a))), global1.b.b), global2.c);
    let var_2 = vec2<i32>(7161i, abs(u_input.b.x)) & vec2<i32>(~(-1i), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)));
    global0 = _wgslsmith_mod_u32(~var_0.a, ~u_input.a.x);
    return (_wgslsmith_f_op_f32(max(-354f, 1000f)) == _wgslsmith_div_f32(global1.c.c.x, 713f)) & (~u_input.a.x >= 0u);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    var var_0 = ~vec2<u32>(4294967295u, global1.a.x);
    global2 = Struct_4(_wgslsmith_div_vec4_u32(~countOneBits(global1.a), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_0.a.x, global1.a.x, 126574u), vec4<u32>(95646u, 4294967295u, global2.a.x, 48718u)), ~vec4<u32>(u_input.a.x, 4294967295u, global2.a.x, 9644u))) | _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 48310u, 1u, global2.c.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.a.x, 52335u), vec4<u32>(global1.c.a, 1u, u_input.a.x, arg_2.b.a), vec4<u32>(global2.c.d, var_0.x, global1.a.x, global1.c.d))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-306f, -1315f), -669f, _wgslsmith_f_op_f32(global2.c.c.x - global1.c.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.c + vec3<f32>(387f, 1028f, arg_0.b.c.x)))), select(select(!arg_0.c.xy, vec2<bool>(global1.b.b.x, true), select(arg_2.c.zy, arg_0.c.xz, arg_1)), arg_0.c.zz, true)), global1.c);
    let var_1 = !select(global2.b.b, !(!vec2<bool>(arg_0.c.x, false)), vec2<bool>(~4294967295u >= ~global2.c.d, arg_0.d));
    let var_2 = Struct_4(~(~countOneBits(vec4<u32>(arg_0.a.x, arg_2.a.x, global1.c.d, var_0.x))), global1.b, arg_0.b);
    global2 = var_2;
    return Struct_2(4294967295u, var_2.b.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.c.c.x - global1.c.b), _wgslsmith_f_op_f32(f32(-1f) * -1676f), _wgslsmith_div_f32(1000f, global1.c.c.x)), _wgslsmith_f_op_vec3_f32(global2.c.c * vec3<f32>(240f, 1745f, global1.b.a.x)), vec3<bool>(true, false, func_2()))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c.x, -156f, 1000f))))))), 49566u);
}

fn func_1() -> Struct_4 {
    global2 = Struct_4(global2.a, global2.b, func_4(Struct_3(~vec2<u32>(global1.a.x, u_input.a.x), Struct_2(reverseBits(global1.a.x), global2.c.b, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-256f, -638f, global1.b.a.x))), global2.c.a), !(!vec3<bool>(false, global1.b.b.x, global1.b.b.x)), func_2()), false, Struct_3(func_3().ww, Struct_2(firstTrailingBit(global2.c.a), global2.c.b, _wgslsmith_f_op_vec3_f32(exp2(global1.c.c)), 4294967295u), !(!vec3<bool>(true, global1.b.b.x, false)), !global1.b.b.x)));
    var var_0 = Struct_1(global2.c.c, vec2<bool>(func_2(), !(~11142u != (global2.a.x << (30489u % 32u)))));
    global2 = Struct_4(vec4<u32>(select(0u, 11997u, global2.b.b.x), 73367u, reverseBits(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(global2.a.x, u_input.a.x))), global1.c.d), global1.b, global1.c);
    global0 = _wgslsmith_clamp_u32(firstLeadingBit(~global2.c.d), countOneBits(~select(global2.c.d, ~0u, true)), global2.a.x);
    let var_1 = _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -u_input.b.x))) & ~((u_input.b & min(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(1i, 0i))) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(17587i, 7197i), u_input.b)));
    return Struct_4(global1.a, global1.b, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(global2.c.c, _wgslsmith_f_op_vec3_f32(-global2.b.a));
    let var_1 = vec4<i32>(u_input.b.x, 33886i, ~u_input.b.x, reverseBits(abs(_wgslsmith_sub_i32(u_input.b.x, -2147483647i))));
    global2 = func_1();
    var var_2 = firstLeadingBit(u_input.a.x) ^ 63422u;
    var var_3 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_0.x)), ~max(vec3<i32>(select(0i, 8980i, var_3.b.x), _wgslsmith_dot_vec2_i32(var_1.yy, var_1.wy), u_input.b.x ^ -16791i), -(var_1.yxw << (global2.a.www % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(global1.a.wzz, global2.a.yzz));
}

