struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: array<Struct_4, 18>;

var<private> global2: array<Struct_3, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = u_input.c;
    var var_1 = 1300f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -114f) - _wgslsmith_f_op_f32(-arg_0))), 212f);
    global1 = array<Struct_4, 18>();
    global0 = arg_1;
    return vec2<bool>(arg_2.x, arg_2.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> u32 {
    global0 = ~(~(~(vec2<u32>(5868u, global0.x) >> ((vec2<u32>(32521u, global0.x) >> (vec2<u32>(0u, global0.x) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    global2 = array<Struct_3, 19>();
    let var_0 = _wgslsmith_sub_u32(select(0u, 39212u, arg_0.x) ^ (global0.x & ~countOneBits(1u)), ~1u >> (global0.x % 32u));
    var var_1 = Struct_2(!(!select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, false, true))), select(reverseBits(~vec3<u32>(global0.x, var_0, var_0) | min(vec3<u32>(0u, 7665u, var_0), vec3<u32>(4294967295u, 62788u, global0.x))), ~(~max(vec3<u32>(var_0, 1u, global0.x), vec3<u32>(4294967295u, global0.x, var_0))), arg_0.x), 1f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-980f + 1f), -1246f, _wgslsmith_f_op_f32(308f + -909f), _wgslsmith_f_op_f32(f32(-1f) * -347f)), select(vec3<bool>(all(vec3<bool>(false, arg_0.x, true)), arg_0.x, false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.x), true), vec3<bool>(true, arg_0.x, false), global0.x != var_0), !(!vec3<bool>(arg_0.x, true, arg_0.x))), arg_1.x, !vec2<bool>(arg_0.x | arg_0.x, arg_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(72989u, global0.x, var_0, 1u), vec4<u32>(0u, global0.x, global0.x, 0u)), _wgslsmith_div_u32(global0.x, 43338u), var_0, 1u), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 0u, 24831u, 1u), vec4<u32>(4294967295u, 19578u, 4294967295u, 4294967295u))), (vec4<u32>(11810u, 25361u, var_0, global0.x) >> (vec4<u32>(global0.x, 3994u, 46370u, global0.x) % vec4<u32>(32u))) << (vec4<u32>(var_0, global0.x, global0.x, 16186u) % vec4<u32>(32u)))));
    var var_2 = var_1.d.c;
    return ~min((var_0 & abs(1u)) << (var_0 % 32u), 68474u);
}

fn func_1() -> Struct_4 {
    global0 = vec2<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.x, global0.x), func_3(func_2(_wgslsmith_f_op_f32(663f * -1000f), select(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, 4294967295u), vec2<bool>(true, true)), vec3<bool>(true, true, true), reverseBits(u_input.e)), ~vec3<i32>(1i, -2147483647i, u_input.d.x))));
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1066f)) - _wgslsmith_div_f32(-281f, 912f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1182f - 825f) - -389f)), -802f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-773f * 2634f), _wgslsmith_f_op_f32(step(-331f, -767f)))))), vec3<bool>(true, any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), countOneBits(u_input.a) << (global0.x % 32u), select(func_2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(2330f + 110f)), vec2<u32>(_wgslsmith_mult_u32(0u, 12379u), _wgslsmith_mult_u32(global0.x, 74776u)), vec3<bool>(true, true, true), vec3<i32>(~u_input.b, ~0i, u_input.e.x)), vec2<bool>(select(global0.x, global0.x, false) != _wgslsmith_sub_u32(79989u, global0.x), false), false), _wgslsmith_mult_vec4_u32(~vec4<u32>(firstLeadingBit(4294967295u), global0.x | global0.x, global0.x, ~global0.x), vec4<u32>(global0.x >> (global0.x % 32u), 10253u, firstTrailingBit(global0.x), ~global0.x)));
    var var_1 = !(-1916f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(select(var_0.e, abs(var_0.e) ^ firstTrailingBit(var_0.e), false), ~select(select(vec4<u32>(global0.x, 1u, var_0.e.x, 75227u), vec4<u32>(global0.x, 0u, var_0.e.x, var_0.e.x), vec4<bool>(var_0.b.x, false, var_0.d.x, true)), var_0.e, !vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.d.x))), global0.x, abs(113078u) | _wgslsmith_dot_vec4_u32(var_0.e, select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 37971u), var_0.e), vec4<u32>(var_0.e.x, 4294967295u, global0.x, var_0.e.x), vec4<bool>(var_0.d.x, false, true, false))), global0.x);
    var var_3 = Struct_3(var_0, var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), var_0.a.x, var_0.a.x)), var_0.b, -1i, var_0.b.xz, ~abs(var_0.e)));
    return global1[_wgslsmith_index_u32(42397u, 18u)];
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> u32 {
    var var_0 = func_1().b;
    global1 = array<Struct_4, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b.d.a.x, -983f)))), arg_0.b.d.a.yw)));
    global2 = array<Struct_3, 19>();
    var var_2 = Struct_2(var_0.a, ~_wgslsmith_mod_vec3_u32(arg_0.a, select(vec3<u32>(arg_0.c.b.x, arg_0.c.b.x, 1u) ^ vec3<u32>(57602u, global0.x, 1u), var_0.d.e.xxy, !vec3<bool>(true, true, var_0.d.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x)), 886f)), Struct_1(var_0.d.a, func_1().b.a.zww, _wgslsmith_add_i32(arg_0.b.d.c, var_0.d.c), arg_0.c.a.ww, ~vec4<u32>(65050u, 47015u, 1u, 1u) ^ vec4<u32>(var_0.d.e.x, _wgslsmith_mod_u32(global0.x, 59403u), ~9566u, global0.x)));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(global0.x, global0.x, func_4(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1509f, 844f, 425f))))), 50937u);
    var_0 = select(firstTrailingBit(countOneBits(vec4<u32>(_wgslsmith_mod_u32(global0.x, var_0.x), ~0u, 64511u, ~var_0.x))), _wgslsmith_add_vec4_u32(func_1().c.d.e, ~select(~vec4<u32>(4250u, global0.x, var_0.x, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(124504u, var_0.x, 19281u, 4294967295u), vec4<u32>(var_0.x, global0.x, 0u, 4294967295u)), func_1().c.a)), any(!func_1().b.a.yyx));
    let var_1 = Struct_4(~min(~vec3<u32>(4085u, var_0.x, global0.x), var_0.xzx), Struct_2(select(vec4<bool>(func_2(-1000f, var_0.zw, vec3<bool>(true, false, true), vec3<i32>(u_input.b, u_input.e.x, u_input.c.x)).x, all(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), vec3<u32>(0u, global0.x, global0.x), _wgslsmith_div_f32(-457f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(f32(-1f) * -843f))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(1114f)), _wgslsmith_f_op_f32(sign(-182f)), _wgslsmith_f_op_f32(-475f * 1000f)), vec3<bool>(select(true, false, true), true, global0.x > 26796u), ~countOneBits(u_input.c.x), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, var_0.x, global0.x, 0u), vec4<u32>(57145u, var_0.x, 53656u, global0.x)), ~vec4<u32>(0u, global0.x, var_0.x, global0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))))), func_1().c);
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 19u)];
    let var_3 = Struct_2(var_1.b.a, var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)), func_1().b.d);
    var var_4 = select(i32(-1i) * -u_input.b, ~func_1().b.d.c, _wgslsmith_f_op_f32(1155f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2.c.a.x))))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.c.c)))));
    var var_5 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(var_1.b.d.a, _wgslsmith_f_op_vec4_f32(-var_1.b.d.a), select(var_1.b.a, var_1.c.a, u_input.c.x >= 19217i))), var_2.c.b, _wgslsmith_add_i32(~var_3.d.c, -25012i), var_3.d.b.zx, ~_wgslsmith_mult_vec4_u32(~var_2.c.e, vec4<u32>(var_0.x, var_1.a.x, var_0.x, var_1.a.x))), var_3.d, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 718f) + _wgslsmith_f_op_f32(exp2(var_3.c))), -141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.c * 1000f) - _wgslsmith_f_op_f32(exp2(var_3.d.a.x))), -1419f), vec3<bool>(true, var_3.a.x, func_2(var_3.d.a.x, abs(vec2<u32>(var_1.a.x, var_0.x)), !vec3<bool>(false, var_1.b.a.x, true), u_input.c.xzz).x), abs(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c) << (global0.x % 32u)), var_3.d.d, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_2.a.e.x, 1u), ~global0.x), countOneBits(var_2.a.e.x) << ((44917u & global0.x) % 32u), 1u, ~var_1.b.d.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.d.a.x, 561f, var_3.c))) + var_5.c.a.zxy), u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_5.a.a.xw) - _wgslsmith_f_op_vec2_f32(-var_5.c.a.xx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.c.d.a.yy * var_1.b.d.a.ww), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.c, var_5.b.a.x), vec2<f32>(var_5.a.a.x, -520f)))) - var_1.b.d.a.xz)));
}

