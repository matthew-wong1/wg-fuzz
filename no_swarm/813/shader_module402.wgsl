struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32>;

var<private> global2: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = reverseBits(select(global0.b.c.xx, vec2<i32>(arg_0, -(~arg_1.b.c.x)), vec2<bool>(false, false)));
    var var_1 = arg_1.a;
    let var_2 = arg_1;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.d.wxx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.b.d.zzw, _wgslsmith_f_op_vec3_f32(-var_1.d.xwz), select(vec3<bool>(false, true, false), vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2)))))), var_2.b.d.wwx);
    let var_4 = var_2;
    return 0i;
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(global0.b.d.zy, u_input.b, ~(-global0.b.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1040f, -475f, 415f, 387f) * global0.b.d)), global0.b.d)), ~(~vec3<u32>(101822u, u_input.b.x, 4294967295u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xz * global0.a.a)) * _wgslsmith_f_op_vec2_f32(-global2.zy)), ~vec4<u32>(_wgslsmith_add_u32(53155u, global0.a.b.x), 85428u, ~33954u, ~global0.a.b.x), vec3<i32>(48237i, -global0.a.c.x, select(firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.c.x, -1i, -28706i, 2147483647i), vec4<i32>(global0.b.c.x, 1i, -31472i, u_input.c)), global1.x < 570f)), global0.a.d, ~vec3<u32>(45625u, ~global0.a.b.x, 4294967295u)));
    let var_1 = max(min(_wgslsmith_mult_i32(select(u_input.c, global0.a.c.x, true), 0i) << (max(0u, ~30189u) % 32u), ~global0.b.c.x), -9137i);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a.a)), _wgslsmith_f_op_vec2_f32(-global2.yx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yz) - global2.zz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(-global0.a.d.xz))), _wgslsmith_f_op_vec2_f32(sign(global2.zz)));
    let var_2 = global0.b.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x))))) + global1.x);
    return vec4<u32>(30923u, 4294967295u, _wgslsmith_dot_vec3_u32(select(global0.b.b.xwy, vec3<u32>(~u_input.b.x, _wgslsmith_mult_u32(var_0.a.b.x, var_0.a.b.x), reverseBits(65209u)), !all(vec3<bool>(false, false, true))), u_input.b.wyz), ~(u_input.b.x & ~56030u) & ~32400u);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.xz) + arg_0.a)))), ~countOneBits(min(vec4<u32>(4294967295u, arg_0.b.x, 108584u, u_input.b.x), arg_0.b)) << ((reverseBits(func_3(1000f)) & ~vec4<u32>(90336u, 1u, 69300u, u_input.b.x)) % vec4<u32>(32u)), firstTrailingBit(arg_0.c), arg_2, global0.b.e);
    let var_1 = select(4294967295u, 1u, !(any(vec2<bool>(true, true)) || select(true, true, true)));
    global2 = arg_0.d.wxw;
    let var_2 = -(vec4<i32>(-31864i, -global0.a.c.x & -47285i, _wgslsmith_add_i32(2147483647i, -arg_1), -2147483647i) ^ firstLeadingBit(firstTrailingBit(countOneBits(vec4<i32>(global0.a.c.x, 32399i, u_input.a, 10778i)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(global0.b.d, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, var_0.a.x, 584f, -302f), _wgslsmith_f_op_vec4_f32(trunc(arg_0.d)))))));
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = firstLeadingBit(countOneBits(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.d.x, 105f, true)))))));
    let var_1 = !(!(!vec4<bool>(any(arg_3), true, false, false)));
    let var_2 = _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(arg_2.x, _wgslsmith_sub_u32(4294967295u, arg_2.x)), _wgslsmith_mult_vec2_u32(u_input.b.xz, global0.a.e.xx), arg_3.x), vec2<u32>(arg_1.e.x, abs(arg_2.x) ^ arg_0.b.x), !var_1.x | !(!var_1.x)), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(4294967295u, global0.a.e.x)) ^ global0.a.e.xy, vec2<u32>(var_0.x, arg_2.x)) & (func_2(arg_1, -1988i, _wgslsmith_f_op_vec4_f32(round(global0.b.d))).e.yz << (global0.a.e.yx % vec2<u32>(32u))));
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a.d.x, -1982f))), _wgslsmith_clamp_vec4_u32(arg_0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 1u), ~arg_1.b), ~arg_1.b), _wgslsmith_mult_vec3_i32(-(arg_0.c | arg_0.c), -global0.a.c & global0.a.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.d) * vec4<f32>(arg_0.a.x, global1.x, -334f, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1250f, 1418f, -104f, -424f), vec4<f32>(-316f, 676f, global0.b.d.x, global1.x)))), vec3<u32>(_wgslsmith_mult_u32(~11608u, arg_0.b.x & global0.a.b.x), ~(var_2 >> (8499u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.x, 0u)), reverseBits(vec2<u32>(arg_2.x, 0u))))), global0.b.c.x, vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-1615f * -141f)) * _wgslsmith_f_op_f32(-global1.x)), arg_0.d.x, _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(step(func_2(Struct_1(arg_0.d.zz, vec4<u32>(0u, arg_0.b.x, 1u, 33894u), arg_1.c, arg_1.d, vec3<u32>(arg_1.e.x, 16204u, 13852u)), -1i, vec4<f32>(arg_0.a.x, global0.b.d.x, 1000f, 711f)).d.x, 256f))))).d.x;
    let var_4 = all(vec3<bool>(true, true, true));
    return arg_0.a;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = 342f;
    let var_1 = global0.a;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) + global2.x);
    var_0 = _wgslsmith_f_op_f32(exp2(global1.x));
    var_0 = 120f;
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_5(_wgslsmith_f_op_f32(sign(331f)), _wgslsmith_f_op_vec2_f32(func_4(global0.b, func_2(Struct_1(vec2<f32>(1045f, global0.b.a.x), vec4<u32>(global0.b.b.x, 16816u, 19131u, global0.b.e.x), vec3<i32>(u_input.a, global0.a.c.x, -15103i), vec4<f32>(1097f, -1000f, 1260f, 378f), global0.b.b.zxz), func_1(u_input.c, Struct_2(Struct_1(global2.zy, global0.b.b, global0.b.c, vec4<f32>(-1098f, -732f, 1205f, 126f), global0.a.e), Struct_1(global2.xx, vec4<u32>(0u, global0.b.e.x, u_input.b.x, 1u), vec3<i32>(-2147483647i, -2147483647i, 2240i), vec4<f32>(global1.x, 1454f, global0.a.d.x, 755f), global0.b.e)), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, global1.x, global0.b.a.x, -138f))), global0.a.e, vec2<bool>(true, true)))), global0.a);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global2 = _wgslsmith_f_op_vec3_f32(global0.b.d.wzx - vec3<f32>(_wgslsmith_f_op_f32(sign(global0.a.d.x)), global0.b.a.x, global1.x));
    var var_1 = global0.a.d;
    let var_2 = global0.b.d;
    let var_3 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, abs(1u | u_input.b.x)), ~(_wgslsmith_mod_u32(91985u, 36480u) << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-global0.b.c, ~4294967295u);
}

