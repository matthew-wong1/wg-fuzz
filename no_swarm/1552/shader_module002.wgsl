struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: u32;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 0u, 30131u, 4294967295u);

var<private> global3: vec2<f32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec3<f32> {
    global2 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xx, vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(global2.x, u_input.d.x)), reverseBits(global2.x << (52279u % 32u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(55581u, 1u, ~1949u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.d.x, 41169u, global2.x), 1u)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(global2.x, 0u), ~vec2<u32>(32546u, 1u)), vec2<u32>(u_input.d.x << (u_input.d.x % 32u), ~86472u)), global2.x) & vec4<u32>(~84981u, firstLeadingBit(_wgslsmith_mod_u32(78952u, 29523u) | _wgslsmith_dot_vec3_u32(vec3<u32>(10272u, u_input.d.x, global2.x), vec3<u32>(u_input.d.x, 83018u, 0u))), ~(~48839u) & global2.x, u_input.d.x);
    global0 = vec4<bool>(!(_wgslsmith_mult_u32(firstTrailingBit(66758u), global2.x) == 0u), global0.x, global0.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x))) < global3.x));
    var var_0 = select(!(!vec4<bool>(global0.x, !global0.x, global0.x, global0.x)), vec4<bool>(true, global0.x, global0.x, global0.x), !vec4<bool>(true, true, true, (u_input.d.x < 4294967295u) & global0.x));
    return vec3<f32>(_wgslsmith_f_op_f32(157f * _wgslsmith_f_op_f32(global3.x * global3.x)), -1248f, 392f);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(-u_input.b.xz)) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x - global3.x))), _wgslsmith_f_op_vec3_f32(func_3(-vec2<i32>(-41898i, u_input.b.x))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-138f)), _wgslsmith_f_op_f32(-global3.x)))));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_clamp_u32(~(~(abs(global2.x) & 4294967295u)), 94153u, 0u | select(0u, u_input.d.x, all(vec4<bool>(true, true, false, global0.x))));
    let var_3 = Struct_1(~17978u, any(!global0.wwx), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-533f, global3.x, 847f, 847f), vec4<f32>(global3.x, -299f, global3.x, -603f), vec4<bool>(global0.x, global0.x, global0.x, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -562f, var_0.x) - vec4<f32>(649f, 2609f, -385f, var_0.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_0.x, 531f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, 2459f, 1084f, 117f)))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1846f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(213f - -337f)))), 1494f, _wgslsmith_f_op_vec3_f32(func_3(countOneBits(u_input.e))).x));
    global1 = min(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(46478u, global2.x), 12088u, ~0u, 4294967295u), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 20564u, var_3.a), vec4<u32>(u_input.d.x, 0u, 19719u, 4294967295u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_3.a, var_3.a, 2492u, var_3.a), min(vec4<u32>(var_3.a, global2.x, 40053u, 4294967295u), vec4<u32>(var_3.a, u_input.d.x, u_input.d.x, 65745u)))), ~22780u);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-770f, global3.x))), var_0.x))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(func_2()));
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x + -1387f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)), _wgslsmith_f_op_f32(-261f * -714f)))));
    global2 = vec4<u32>(4294967295u, ~countOneBits(_wgslsmith_dot_vec2_u32(global2.wz, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global2.x), global2.ww, vec2<u32>(51091u, u_input.d.x)))), _wgslsmith_mod_u32(select(~u_input.d.x & global2.x, 6970u, true), global2.x), 1u);
    return Struct_1(firstTrailingBit(1u), true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-521f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -513f) - _wgslsmith_f_op_f32(max(-757f, global3.x))), _wgslsmith_f_op_f32(round(-526f)), 1955f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global3.x, global3.x, global3.x)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_clamp_vec2_i32(u_input.a.wy, vec2<i32>(2147483647i, 2147483647i), ~arg_0.xz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.e.x, u_input.a.x, 0i), -u_input.a.zxw, vec3<bool>(true, global0.x, global0.x)), -_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(u_input.c, 18501i, u_input.a.x))), -(~u_input.a), ~(-u_input.a.x));
    let var_1 = !var_0.b;
    let var_2 = global2.x;
    let var_3 = u_input.d.x;
    var var_4 = false;
    var var_5 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 245f)), -671f, -1005f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1650f, global3.x, -320f, global3.x)), !vec4<bool>(var_0.b, false, global0.x, true)))) - func_1(u_input.a.xwz, ~vec4<i32>(u_input.a.x, 6953i, -6924i, u_input.c), _wgslsmith_mod_i32(30451i, u_input.b.x >> (var_3 % 32u))).c)));
    let x = u_input.a;
    s_output = StorageBuffer(1u & _wgslsmith_mult_u32(0u, ~(~u_input.d.x)), vec4<i32>(reverseBits(-2147483647i), u_input.e.x, i32(-1i) * -1i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, -8577i), ~0i, 43139i), countOneBits(~(-1i)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.d.x)))), -198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))));
}

