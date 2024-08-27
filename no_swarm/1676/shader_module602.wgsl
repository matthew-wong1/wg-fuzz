struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1809f;

var<private> global1: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    var var_0 = !select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, global1.x), global1.x), all(vec3<bool>(global1.x, true, global1.x))), !vec3<bool>(true != global1.x, any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), any(vec3<bool>(false, false, true))), true);
    let var_1 = Struct_1(u_input.b.x, 634f, 1i, select(select(select(!global1.zx, select(vec2<bool>(false, global1.x), vec2<bool>(false, false), vec2<bool>(false, true)), !global1.x), vec2<bool>(var_0.x | var_0.x, global1.x), any(vec3<bool>(var_0.x, false, false))), !select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, global1.x), vec2<bool>(true, false), global1.yz), global1.xx), select(vec2<bool>(true, false), vec2<bool>(true, 54954i < arg_0), !global1.xx)), ~vec3<u32>(arg_3, 76041u, ~min(u_input.c.x, u_input.a)));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(min(-31096i, -arg_0), _wgslsmith_sub_i32(~arg_2.x, 1451i), select(u_input.b.x, -1i, all(vec2<bool>(true, false))), 1i), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -263f)))), -20175i, var_0.zy, ~reverseBits(arg_1));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, var_2.b), vec2<f32>(130f, -817f))) - vec2<f32>(530f, 2157f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-525f, var_1.b), vec2<f32>(1084f, -1160f))) + vec2<f32>(616f, var_2.b))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(var_1.b - var_2.b)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-382f, 255f)), _wgslsmith_f_op_f32(1534f - var_1.b), !var_0.x))), -974f));
    let var_4 = ~(-8497i);
    return ~(select(min(4294967295u, 47444u), ~0u, global1.x) ^ ~1u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(-37426i, ~(~u_input.b.x)) ^ _wgslsmith_div_i32(u_input.b.x, u_input.b.x), -261f, u_input.b.x, global1.xy, _wgslsmith_mult_vec3_u32(~(~abs(vec3<u32>(u_input.c.x, u_input.a, u_input.a))), select(select(vec3<u32>(u_input.a, 590u, 24524u), vec3<u32>(19926u, u_input.c.x, 0u), false), select(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, u_input.a), global1.x), true) ^ vec3<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), firstTrailingBit(16626u), func_3(-2147483647i, vec3<u32>(u_input.a, 15670u, 4294967295u), vec2<i32>(u_input.b.x, u_input.b.x), u_input.c.x))));
    global1 = !(!select(vec3<bool>(var_0.d.x, true, all(vec4<bool>(global1.x, false, false, true))), select(!vec3<bool>(var_0.d.x, var_0.d.x, global1.x), select(vec3<bool>(global1.x, false, true), vec3<bool>(var_0.d.x, var_0.d.x, false), false), !vec3<bool>(var_0.d.x, true, global1.x)), true | !global1.x));
    global1 = !select(!select(select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, var_0.d.x, true), vec3<bool>(global1.x, global1.x, var_0.d.x)), !vec3<bool>(global1.x, var_0.d.x, var_0.d.x), !vec3<bool>(var_0.d.x, true, var_0.d.x)), select(select(select(vec3<bool>(true, var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, false, false), var_0.d.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, false, global1.x), global1.x), var_0.d.x), select(vec3<bool>(var_0.d.x, true, var_0.d.x), select(vec3<bool>(true, var_0.d.x, true), vec3<bool>(global1.x, var_0.d.x, global1.x), true), vec3<bool>(global1.x, var_0.d.x, true)), any(vec4<bool>(var_0.d.x, global1.x, false, var_0.d.x))), all(select(vec3<bool>(false, false, var_0.d.x), vec3<bool>(true, var_0.d.x, global1.x), true)));
    global1 = !select(vec3<bool>(false, true == (false && global1.x), true), !(!(!vec3<bool>(global1.x, var_0.d.x, true))), any(!(!global1.xy)));
    var var_1 = global1.xy;
    return Struct_1(37783i, _wgslsmith_f_op_f32(var_0.b - var_0.b), u_input.b.x, vec2<bool>(false & select(!var_1.x, global1.x == global1.x, any(vec4<bool>(var_1.x, global1.x, true, var_1.x))), true || var_1.x), _wgslsmith_clamp_vec3_u32(reverseBits(~(~var_0.e)), var_0.e, vec3<u32>(var_0.e.x >> (~62307u % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(65562u, 13168u), reverseBits(1u)), countOneBits(u_input.c.x))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = func_2();
    var var_1 = Struct_1(max(u_input.b.x, ~abs(u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b)))), 4718i, vec2<bool>(!(var_0.e.x == ~0u), global1.x), vec3<u32>(~firstLeadingBit(~u_input.a), ~1u, 0u));
    var var_2 = (~(~(u_input.c << (vec2<u32>(16795u, u_input.c.x) % vec2<u32>(32u)))) ^ var_0.e.xz) & reverseBits(~select(firstLeadingBit(var_0.e.yy), vec2<u32>(u_input.a, arg_0.e.x) & var_0.e.yy, all(vec4<bool>(true, true, var_1.d.x, true))));
    let var_3 = ~1u;
    let var_4 = func_2();
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(!(!(!vec3<bool>(global1.x, false, global1.x))), select(!vec3<bool>(global1.x, true, false), select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, false, true), global1.x), u_input.b.x < (2147483647i >> (u_input.a % 32u))), any(!vec4<bool>(true, false, global1.x, true)) != any(!vec4<bool>(true, false, global1.x, false)));
    var var_0 = _wgslsmith_mod_vec2_i32(u_input.b.zx, ~vec2<i32>(func_1(Struct_1(u_input.b.x, 291f, 23587i, global1.yz, vec3<u32>(6939u, u_input.a, u_input.a))), 0i) | _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(18795i, u_input.b.x), vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, 2147483647i)) & u_input.b.ww, _wgslsmith_mult_vec2_i32(-u_input.b.ww, u_input.b.yx << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f - 1480f));
    var var_1 = func_2();
    var_0 = ~(~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(var_1.c, -2147483647i)), firstTrailingBit(u_input.b.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(-23360i), var_0.x), _wgslsmith_mod_i32(-8447i, var_0.x) ^ 1i)), vec2<f32>(_wgslsmith_f_op_f32(-func_2().b), -409f), _wgslsmith_f_op_f32(-var_1.b));
}

