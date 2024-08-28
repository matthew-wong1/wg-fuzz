struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-38123i, i32(-2147483648), -1i, i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> vec3<bool> {
    global2 = arg_0;
    let var_0 = ~firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(17446u, 0u), 40709u, global2.e, _wgslsmith_div_u32(arg_1.e, global1.e))) & select(vec4<u32>(~11266u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e, global2.e, u_input.c), min(vec3<u32>(0u, 6480u, arg_1.e), vec3<u32>(arg_0.e, global1.e, u_input.c))), 1u, 1u), firstTrailingBit(abs(vec4<u32>(arg_0.e, global1.e, global1.e, global1.e))) | vec4<u32>(~0u, 26751u, ~u_input.c, 1u), select(vec4<bool>(false, global2.a != -1337f, arg_2.x, any(vec4<bool>(true, arg_2.x, false, global2.b))), vec4<bool>(false, any(vec4<bool>(false, true, true, false)), false, true), !(!vec4<bool>(false, global2.b, arg_1.d.x, arg_2.x))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + arg_1.a)), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1581f))), _wgslsmith_f_op_f32(floor(-1570f))) - vec2<f32>(-553f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f - -1000f) + arg_1.a))), vec2<bool>(any(vec4<bool>(true, false, arg_1.d.x, false)) || (_wgslsmith_dot_vec3_i32(global0.wxy, vec3<i32>(1i, -66887i, 2147483647i)) >= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -4186i, u_input.a, -1i), vec4<i32>(-2147483647i, -46425i, u_input.a, 17345i))), all(select(vec4<bool>(true, false, global2.b, arg_2.x), !vec4<bool>(false, true, global1.d.x, true), vec4<bool>(false, global1.b, global2.d.x, false)))), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, 1u), ~arg_1.e), firstTrailingBit(9523u))));
    let var_1 = arg_1;
    var var_2 = ~0u;
    return !vec3<bool>(true, true && !select(global2.d.x, false, arg_0.b), true);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    global2 = Struct_1(global2.a, any(select(func_3(Struct_1(arg_0, true, arg_1.yx, vec2<bool>(global2.b, false), global1.e), Struct_1(global2.c.x, false, vec2<f32>(1547f, global1.a), vec2<bool>(true, true), u_input.c), global1.d, -global0.x), vec3<bool>(true, all(vec3<bool>(global1.b, global1.d.x, global1.b)), true), select(vec3<bool>(false, true, arg_3.x), vec3<bool>(false, true, global1.d.x), !global2.b))), vec2<f32>(1429f, _wgslsmith_f_op_f32(-arg_1.x)), !select(!func_3(Struct_1(1557f, false, vec2<f32>(134f, global1.a), global1.d, global1.e), Struct_1(814f, global2.b, vec2<f32>(global2.c.x, -1078f), arg_3, 72580u), arg_3, arg_2.x).xy, !vec2<bool>(global2.d.x, false), _wgslsmith_f_op_f32(f32(-1f) * -521f) <= _wgslsmith_f_op_f32(step(149f, -242f))), _wgslsmith_sub_u32(1u << (~select(4294967295u, 982u, false) % 32u), _wgslsmith_mod_u32(max(4294967295u, global2.e) >> (~1765u % 32u), 1u)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), global1.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-957f, global1.c.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1506f, 461f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.zx) * vec2<f32>(arg_0, 1535f)), vec2<bool>(global1.b || false, global2.e < 4294967295u)))), !select(global1.d, vec2<bool>(arg_2.x == arg_2.x, false), true), ~global1.e);
    global1 = Struct_1(_wgslsmith_f_op_f32(floor(2103f)), var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2123f + -854f)), -796f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.yy)))), !global1.d, ~1u ^ ~_wgslsmith_mult_u32(0u, global1.e & 11515u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.c.x)), arg_0, global2.a))), _wgslsmith_f_op_vec3_f32(trunc(arg_1))) + vec3<f32>(arg_1.x, -1324f, _wgslsmith_f_op_f32(ceil(arg_0))));
    let var_2 = abs(_wgslsmith_dot_vec2_i32(firstTrailingBit(global0.ww), firstTrailingBit(arg_2)));
    return Struct_1(global1.a, true, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-2715f * global2.a))))), select(vec2<bool>(true, var_0.d.x), select(select(!vec2<bool>(var_0.d.x, false), !var_0.d, vec2<bool>(true, false)), global2.d, !var_0.d.x), vec2<bool>(any(vec4<bool>(false, false, var_0.d.x, false)), true)), 21389u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> f32 {
    global2 = func_2(2062f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_1.x, -1660f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-619f, -1108f, arg_0.x), arg_0, true))), true)))), vec2<i32>(23148i, -2147483647i), global2.d);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-335f))), global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, _wgslsmith_f_op_f32(-164f + 1041f))), vec2<bool>(any(select(select(vec3<bool>(global2.d.x, false, false), vec3<bool>(false, false, true), global2.d.x), select(vec3<bool>(true, global1.b, false), vec3<bool>(global2.d.x, false, global2.b), global1.b), select(vec3<bool>(global2.d.x, true, false), vec3<bool>(true, false, true), global1.b))), global1.d.x), global2.e);
    var var_1 = select(~(~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 0u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.e, 72806u, u_input.c), vec3<u32>(1u, 0u, 0u)))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(global2.e, 1u, 26995u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, global1.e), vec3<u32>(4294967295u, var_0.e, u_input.c)), !vec3<bool>(global1.d.x, false, global1.b)), max(vec3<u32>(u_input.c, u_input.c, global2.e), vec3<u32>(global1.e, 0u, 4294967295u)) >> (abs(vec3<u32>(var_0.e, var_0.e, var_0.e)) % vec3<u32>(32u))) ^ abs(~vec3<u32>(global1.e, 14616u, var_0.e)), true);
    global2 = func_2(-278f, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global2.c.x, _wgslsmith_f_op_f32(trunc(266f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.c.x)))), arg_0.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, 580f, -1482f), vec3<f32>(986f, global1.a, global1.c.x)))))))), global0.zx, vec2<bool>(false, true && all(select(vec3<bool>(var_0.d.x, true, false), vec3<bool>(global1.d.x, global2.d.x, var_0.d.x), vec3<bool>(false, var_0.b, true)))));
    global2 = func_2(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(arg_1.x, vec3<f32>(1823f, 1535f, 819f), vec2<i32>(2147483647i, global0.x), vec2<bool>(var_0.d.x, global1.b)).c.x + _wgslsmith_f_op_f32(-arg_0.x)), -282f, _wgslsmith_f_op_f32(-var_0.a))), reverseBits(~(vec2<i32>(-1i) * -global0.wz)), vec2<bool>(select(true | func_2(209f, arg_0, global0.xz, vec2<bool>(false, var_0.d.x)).d.x, false, true), false));
    return global2.c.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.c))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -1011f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.a), 1978f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global2.c.x) - global2.c))), false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(global2.a)), 656f, var_0.x));
    let var_3 = global1.b;
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.xyw)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(668f, var_0.x, -320f), vec3<f32>(259f, 1594f, var_2.x)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(var_2.ywy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, -422f, 866f)))))), select(_wgslsmith_mult_vec2_i32(countOneBits(global0.xx), ~vec2<i32>(-1i, global0.x)) << (vec2<u32>(0u, _wgslsmith_mult_u32(global1.e, 42062u)) % vec2<u32>(32u)), -(~global0.xy), arg_0.x), func_2(1055f, vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -1248f)), 622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))), global0.yw, global2.d).d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(vec3<bool>(true, true, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-552f, global2.c.x, -1313f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 1162f) + vec2<f32>(705f, 205f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, global1.a)))), 1u);
    let var_0 = Struct_1(-199f, all(!select(vec4<bool>(false, false, global2.d.x, global2.d.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, global2.b, global2.d.x, false), vec4<bool>(global1.b, global1.b, global1.b, true)), global1.c.x <= global2.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(global1.c)), global2.c)), global1.d, 83086u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<f32>(var_0.a, var_0.a, global1.c.x), _wgslsmith_f_op_vec2_f32(global2.c * vec2<f32>(global2.a, 426f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f * global2.c.x)), true)))), _wgslsmith_f_op_f32(-965f * global1.c.x), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -123f, global2.a) + vec3<f32>(global2.c.x, 1353f, global2.a)), _wgslsmith_f_op_vec2_f32(-global2.c)))))));
    let var_2 = ~(~1u);
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-47848i, vec4<i32>(global0.x, -2147483647i, global0.x, u_input.b >> (abs(~var_0.e) % 32u)));
}

