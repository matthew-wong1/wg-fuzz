struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 0u));

var<private> global2: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    return vec2<bool>(false, _wgslsmith_f_op_f32(-151f * -456f) != _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-469f)))));
}

fn func_1() -> f32 {
    global0 = countOneBits(max(global1.a.x, (~global1.a.x >> (max(1u, 0u) % 32u)) | ~51351u));
    var var_0 = !any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), func_2(Struct_1(global1.a)), vec2<bool>(true, true)), func_2(Struct_1(vec3<u32>(global1.a.x, global1.a.x, 52818u)))));
    let var_1 = _wgslsmith_mult_i32(-1i, max(firstTrailingBit(u_input.a), u_input.a));
    var var_2 = true;
    global2 = global1.a.x;
    return 1151f;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = !select(true, all(vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), true);
    global2 = _wgslsmith_mult_u32(~global1.a.x, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, 10575u)) | countOneBits(21306u), 4294967295u));
    let var_1 = _wgslsmith_f_op_f32(1241f * _wgslsmith_f_op_f32(f32(-1f) * -1199f));
    var var_2 = Struct_2(Struct_1(arg_1.a), u_input.a, Struct_1(~vec3<u32>(~26309u, global1.a.x, _wgslsmith_mult_u32(global1.a.x, global1.a.x))), abs(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-18084i, 10593i, 14341i), vec3<i32>(18487i, -18078i, u_input.b))));
    let var_3 = arg_1;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = false;
    var var_1 = arg_0;
    var var_2 = !(select(~0i | u_input.a, ~(-32285i), arg_0) <= _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a, u_input.b, u_input.b, 12313i) << (vec4<u32>(1u, global1.a.x, arg_2.a.x, global1.a.x) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.b, -28653i, u_input.a), vec4<i32>(u_input.a, u_input.b, u_input.a, 1i))));
    let var_3 = vec4<i32>(-29118i, -22529i, 1i, u_input.b);
    var var_4 = true;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(~1i == (~u_input.a & (i32(-1i) * -4865i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f - -1329f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))), Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.a.x, 19940u, global1.a.x), global1.a)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_u32(min(vec2<u32>(32274u, 4786u), vec2<u32>(1u, global1.a.x)), ~global1.a.zz), Struct_1(vec3<u32>(global1.a.x, 4294967295u, 8375u) << (global1.a % vec3<u32>(32u)))))), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a ^ u_input.b, 1i, u_input.a, u_input.b), ~vec4<i32>(0i, -1i, 29081i, _wgslsmith_mult_i32(u_input.a, -33379i))), func_4(false, _wgslsmith_f_op_f32(exp2(1f)), func_4(!all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f + 1649f)), func_4(true, -767f, Struct_1(global1.a), _wgslsmith_f_op_f32(f32(-1f) * -427f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a.xx, Struct_1(vec3<u32>(0u, 23557u, 4294967295u)))))), 192f), ~firstLeadingBit(0i));
    let var_1 = func_2(Struct_1(~(~(~vec3<u32>(var_0.c.a.x, global1.a.x, 1u))))).x;
    global0 = _wgslsmith_dot_vec2_u32(~(var_0.a.a.xz << (~(vec2<u32>(19378u, 1u) & global1.a.xy) % vec2<u32>(32u))), var_0.a.a.yy);
    var var_2 = Struct_1(max(var_0.a.a, var_0.c.a));
    var_2 = Struct_1(vec3<u32>(var_0.a.a.x, global1.a.x, _wgslsmith_add_u32(global1.a.x, 31791u)));
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1085f + _wgslsmith_f_op_f32(868f * 536f)), _wgslsmith_f_op_f32(select(-908f, _wgslsmith_f_op_f32(floor(-1000f)), all(vec3<bool>(true, true, false)))))), _wgslsmith_sub_vec2_u32(var_2.a.xz, ~global1.a.xz));
}

