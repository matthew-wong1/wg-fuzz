struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(1i, 1i, 0i), vec3<i32>(14616i, 2147483647i, 3717i), vec3<i32>(-30608i, 1i, 54481i), vec3<i32>(51087i, 16810i, 1i), vec3<i32>(9915i, -42769i, -58047i));

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 7>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = ~(~vec2<i32>(1i, 0i));
    global1 = Struct_1(vec4<u32>(~((global1.a.x << (global1.a.x % 32u)) | ~global1.a.x), 4294967295u, max(74494u, 16861u), abs(global1.a.x) & ~2909u));
    var_0 = u_input.c;
    var var_1 = Struct_1(~min(global1.a, select(~global1.a, ~vec4<u32>(23252u, global1.a.x, global1.a.x, 0u), u_input.b == var_0.x)));
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global1.a, _wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, global1.a.x, var_1.a.x, var_1.a.x), global1.a), vec4<u32>(8449u, 0u, 18866u, var_1.a.x))), ~vec4<u32>(global1.a.x | var_1.a.x, reverseBits(1484u), var_1.a.x, global1.a.x)));
    return var_1.a;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -278f), vec3<f32>(_wgslsmith_f_op_f32(step(-443f, -1000f)), _wgslsmith_f_op_f32(step(-1324f, -742f)), 749f)));
    global2 = array<vec2<i32>, 7>();
    var var_0 = select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), select(false, true, false)), false), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), false)), select(vec3<bool>(5969u >= global1.a.x, true, false), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), any(vec4<bool>(true, true, true, all(vec3<bool>(false, false, false))))), vec3<bool>(true, false, true));
    global2 = array<vec2<i32>, 7>();
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(33307i, 50368i)), -27299i, u_input.c.x), -(~abs(vec3<i32>(23941i, u_input.a, -1i)))), firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(reverseBits(u_input.a), ~7919i), firstLeadingBit(u_input.c.x))), ~min(-18491i, _wgslsmith_sub_i32(reverseBits(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, -35344i, -7471i), vec4<i32>(u_input.b, 14806i, u_input.d, u_input.b)))));
    return Struct_1((global1.a & ~global1.a) >> (global1.a % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = abs(~(~vec4<i32>(~1i, u_input.d & u_input.c.x, u_input.c.x, _wgslsmith_div_i32(u_input.c.x, 30888i))));
    global1 = Struct_1(global1.a);
    global0 = array<vec3<i32>, 5>();
    global1 = Struct_1(abs(~global1.a));
    global1 = func_2();
    return 736f;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_1(~abs(vec4<u32>(~8071u, ~global1.a.x, func_3(arg_1, vec3<f32>(arg_1, arg_1, 566f)).x, ~arg_2)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, -301f, arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1607f, -331f, -282f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -686f, 1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 782f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1474f, 738f)))))))));
    let var_2 = 54513u;
    global2 = array<vec2<i32>, 7>();
    return Struct_2(func_2(), func_2(), func_2(), vec3<bool>(true, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), true != (_wgslsmith_mod_i32(u_input.c.x, 5262i) <= ~u_input.d)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) + 1f) > _wgslsmith_f_op_f32(sign(-755f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(1u, ~select(arg_1.a.x, 0u, arg_0.d.x)), ~global1.a.x);
    let var_1 = true;
    let var_2 = arg_1;
    let var_3 = arg_0.d.xx;
    global2 = array<vec2<i32>, 7>();
    return Struct_1(vec4<u32>(abs(abs(arg_0.c.a.x)), reverseBits(_wgslsmith_dot_vec2_u32(arg_1.a.yw, vec2<u32>(var_0, 44828u))), ~(~36839u), 0u) & arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_add_vec3_u32(vec3<u32>(30413u & global1.a.x, 61361u, 0u), ~(~vec3<u32>(global1.a.x, global1.a.x, global1.a.x))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, -470f, -930f, 450f)))), ~_wgslsmith_clamp_u32(max(global1.a.x, 0u), global1.a.x | 9267u, _wgslsmith_add_u32(16549u, 23u))), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(4294967295u), 1u, _wgslsmith_mult_u32(127604u, 0u), ~21394u), ~_wgslsmith_clamp_vec4_u32(global1.a, vec4<u32>(4294967295u, 0u, global1.a.x, global1.a.x), vec4<u32>(58286u, 0u, global1.a.x, 4294967295u)))), 276f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec2_u32(var_0.a.xy, _wgslsmith_mod_vec2_u32(var_0.a.zx, vec2<u32>(global1.a.x, global1.a.x)))));
}

