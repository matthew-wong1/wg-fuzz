struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1i, vec2<f32>(502f, 115f), vec3<u32>(0u, 0u, 5908u), -1275f, false);

var<private> global1: i32 = -1i;

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = ~(~global2.a.x);
    var var_1 = true;
    let var_2 = Struct_1(~(global0.c | ~(~vec3<u32>(63122u, global0.c.x, 50949u))), 1u, vec4<f32>(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1937f))), -323f, global0.b.x), _wgslsmith_mult_i32(u_input.d.x, firstLeadingBit(~(global0.a >> (global2.a.x % 32u)))));
    return -firstLeadingBit(global0.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = !(!(!vec4<bool>(false, arg_0.x, true, arg_0.x | true)));
    var var_1 = ~_wgslsmith_div_i32(-(~u_input.d.x), select(1i, global0.a, !global0.e)) ^ firstTrailingBit(min(global0.a, -1i));
    var_0 = vec4<bool>(true, !arg_0.x, true, arg_0.x);
    global1 = firstLeadingBit(abs(-(~global0.a)));
    global1 = 1i;
    return Struct_1(~global0.c, u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1611f, global0.d, true))), _wgslsmith_f_op_f32(max(-242f, _wgslsmith_f_op_f32(round(-394f)))), 1351f, -719f)), _wgslsmith_clamp_i32(func_3(), global0.a, min(-_wgslsmith_div_i32(-2299i, global0.a), u_input.d.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_u32(1u, ~global0.c.x);
    var var_1 = vec4<bool>(global0.e, global0.e, -1519f >= arg_1.c.x, all(select(vec3<bool>(all(vec3<bool>(arg_0.e, false, false)), true, 550f >= global0.b.x), !select(vec3<bool>(global0.e, global0.e, global0.e), vec3<bool>(true, true, false), global0.e), select(!vec3<bool>(false, arg_0.e, false), vec3<bool>(global0.e, global0.e, false), true))));
    global0 = arg_0;
    var_1 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.e, global0.e, global0.e, global0.e), vec4<bool>(global0.e, arg_0.e, false, true), arg_0.e), select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(var_1.x, true, false, false), global0.e)), vec4<bool>(-1i < u_input.e.x, true, arg_0.e, !global0.e), true), vec4<bool>(true, global0.e, select(arg_0.e, true, true), any(select(!var_1.xyz, !var_1.xwz, !var_1.wwx))), vec4<bool>(false, arg_0.e, !(!arg_0.e), !global0.e));
    let var_2 = Struct_3(91376i, _wgslsmith_div_vec2_f32(arg_1.c.xw, arg_0.b), ~(~vec3<u32>(global2.a.x | 23345u, ~global0.c.x, arg_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_2(vec2<bool>(global0.e, var_1.x), 4294967295u).c.x)) + _wgslsmith_div_f32(-395f, _wgslsmith_f_op_f32(-global0.b.x))))), any(vec3<bool>(~global0.c.x != 37932u, !(arg_0.a < arg_0.a), !(global0.d >= arg_0.b.x))));
    return countOneBits(_wgslsmith_div_u32(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(97444u, var_0, 1u, var_0) | vec4<u32>(1u, global0.c.x, 4294967295u, var_2.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(6390u, 43437u, 4294967295u, global0.c.x), vec4<u32>(global0.c.x, global2.a.x, 0u, 4294967295u)))) << (~1u % 32u));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = ~4294967295u >> (~_wgslsmith_mult_u32(~global2.a.x & _wgslsmith_mult_u32(global0.c.x, arg_0.c.c.x), 66747u) % 32u);
    global0 = Struct_3(max(global0.a, 1i), vec2<f32>(-1257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.b.x, -1000f))) * arg_0.c.b.x)), abs(countOneBits(_wgslsmith_div_vec3_u32(arg_0.c.c >> (global0.c % vec3<u32>(32u)), ~arg_0.c.c))), _wgslsmith_f_op_f32(-arg_0.c.b.x), global0.e || true);
    global0 = Struct_3(1i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(971f, global0.b.x))) * vec2<f32>(arg_0.c.b.x, 860f))))), vec3<u32>(~(~firstLeadingBit(1u)), arg_0.a.x, 4294967295u), arg_0.c.b.x, true);
    global0 = arg_0.c;
    var var_1 = global0.d;
    return Struct_1(_wgslsmith_add_vec3_u32(select(_wgslsmith_mult_vec3_u32(global0.c, ~arg_0.c.c), vec3<u32>(~1u, _wgslsmith_add_u32(var_0, arg_0.a.x), ~1u), any(arg_0.b)), _wgslsmith_sub_vec3_u32(global0.c, ~arg_0.c.c)), func_4(arg_0.c, func_2(vec2<bool>(false, global0.e & arg_0.b.x), global2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-756f, 899f, arg_0.c.d, arg_0.c.b.x) * vec4<f32>(-349f, global0.d, global0.b.x, global0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2243f, -1000f, arg_0.c.d, global0.b.x)))))), -(~arg_0.c.a));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = global0.c.x;
    var_0 = 30616u;
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~abs(vec2<u32>(global0.c.x, 4294967295u)), global2.a), _wgslsmith_add_vec2_u32(arg_1.a.zz << (~global0.c.yz % vec2<u32>(32u)), global2.a)));
    let var_3 = arg_1.c;
    return abs(vec3<u32>(1u, global0.c.x, global0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.e.x, _wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1447f, 960f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, global0.b.x), vec2<f32>(754f, global0.b.x), select(vec2<bool>(true, false), vec2<bool>(true, false), true))))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~global0.c, vec3<u32>(u_input.a, 0u, 13136u) ^ vec3<u32>(4294967295u, u_input.c, u_input.c)) ^ ~vec3<u32>(u_input.c, global2.a.x, 1700u), _wgslsmith_sub_vec3_u32(global0.c, func_5(global0.e, func_1(Struct_4(vec2<u32>(global0.c.x, global2.a.x), vec4<bool>(true, false, global0.e, false), Struct_3(2147483647i, global0.b, global0.c, global0.b.x, true)))))), _wgslsmith_f_op_f32(-global0.d), true);
    var var_1 = vec4<i32>(firstTrailingBit(global0.a), -2147483647i, _wgslsmith_mod_i32(-_wgslsmith_sub_i32(var_0.a, max(global0.a, global0.a)), abs(u_input.e.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-29553i, _wgslsmith_mod_i32(i32(-1i) * -1i, 24245i ^ var_0.a)), func_3()));
    var var_2 = !(!select(!vec3<bool>(false, global0.e, false), vec3<bool>(true, true, true), !select(vec3<bool>(true, global0.e, var_0.e), vec3<bool>(var_0.e, global0.e, false), true)));
    global1 = global0.a;
    var var_3 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, var_0.e), vec3<bool>(var_2.x, true, false), true), select(global0.e, true, false))), select(select(!(!vec3<bool>(global0.e, false, true)), select(select(vec3<bool>(var_2.x, false, false), vec3<bool>(false, true, true), vec3<bool>(false, var_2.x, true)), vec3<bool>(false, true, true), vec3<bool>(true, var_2.x, var_0.e)), vec3<bool>(false, select(var_2.x, var_2.x, var_0.e), true)), vec3<bool>(true, ~0u <= (var_0.c.x << (1u % 32u)), true), any(!select(vec4<bool>(false, global0.e, false, var_2.x), vec4<bool>(var_2.x, global0.e, var_0.e, true), false))), vec3<bool>(var_2.x, var_2.x, all(!(!vec4<bool>(false, global0.e, global0.e, true)))));
    let var_4 = vec4<u32>(reverseBits(u_input.c), abs(1u), _wgslsmith_add_u32(u_input.c, ~_wgslsmith_add_u32(global0.c.x, global2.a.x) & ~u_input.b), countOneBits(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(-51323i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1838f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.d, var_0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -405f, 483f, 411f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, global0.b.x, -740f, 642f) * vec4<f32>(global0.b.x, -664f, var_0.d, 678f)))), select(vec4<bool>(true, 1u != var_4.x, var_3.x, var_3.x), !(!vec4<bool>(global0.e, var_0.e, true, var_2.x)), any(!vec4<bool>(global0.e, false, var_0.e, var_0.e))))), vec3<i32>(func_3(), 2147483647i, i32(-1i) * -_wgslsmith_mult_i32(global0.a, -2147483647i)), _wgslsmith_clamp_u32(var_0.c.x, func_4(Struct_3(u_input.e.x, _wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(var_0.b.x, -1000f)), var_4.yzw, _wgslsmith_f_op_f32(-global0.d), !global0.e), Struct_1(vec3<u32>(global0.c.x, 1u, 42356u), var_0.c.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, -141f, 830f, 2555f), vec4<f32>(-124f, var_0.b.x, var_0.b.x, global0.d))), -1i)), var_4.x << (global0.c.x % 32u)), global0.c.x);
}

