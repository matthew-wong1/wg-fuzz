struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(939f, 190f, -1362f, 204f, 328f, 573f, 177f, -1134f, -1000f, 743f, 829f, -348f, -1225f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: bool) -> u32 {
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    let var_0 = Struct_5(Struct_1(arg_1, firstLeadingBit(min(11354i, 1i))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(firstLeadingBit(24504u >> (u_input.c.x % 32u))), 13u)]));
    var var_1 = vec2<bool>(false && ((true | !var_0.a.a) | true), var_0.a.a);
    let var_2 = Struct_4(~(~u_input.a), vec3<bool>(all(select(select(vec4<bool>(arg_1, var_0.a.a, var_0.a.a, arg_1), vec4<bool>(true, true, var_0.a.a, var_0.a.a), vec4<bool>(var_0.a.a, var_0.a.a, true, arg_1)), !vec4<bool>(false, var_1.x, true, arg_1), vec4<bool>(true, var_0.a.a, true, true))), false, false), any(vec4<bool>(true, false || !arg_1, true, any(select(vec3<bool>(var_0.a.a, false, arg_1), vec3<bool>(arg_1, arg_1, var_0.a.a), var_0.a.a)))), abs(~(~vec4<i32>(var_0.a.b, var_0.a.b, var_0.a.b, 0i))));
    return 1u;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    let var_0 = arg_0.c.wzy;
    var var_1 = ~(~_wgslsmith_add_vec2_u32(arg_0.a >> (~vec2<u32>(arg_3.x, 40308u) % vec2<u32>(32u)), arg_3.yz));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1556f - global0[_wgslsmith_index_u32(1u, 13u)]))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~func_2(_wgslsmith_sub_u32(u_input.b.x, arg_0.x), false && var_0)), 13u)]);
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1051f - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(49882u, 13u)], global0[_wgslsmith_index_u32(38755u, 13u)])))))), _wgslsmith_f_op_f32(round(1256f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(~countOneBits(11176u), 13u)], global0[_wgslsmith_index_u32((~u_input.c.x >> (func_2(arg_0.x, var_0) % 32u)) | 87471u, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 13u)] - -1828f))))) - vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_div_u32(1u, u_input.a.x)), 13u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 13u)])) * _wgslsmith_f_op_f32(f32(-1f) * -627f))), global0[_wgslsmith_index_u32(~46748u, 13u)], global0[_wgslsmith_index_u32(~77743u, 13u)]));
    let var_3 = vec4<i32>(~10925i ^ select(-1i, 1i, false || any(vec2<bool>(var_0, true))), 2147483647i, 2147483647i, select(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(49844i, 1i, -22307i, 67204i), vec4<i32>(0i, -3973i, -2147483647i, -2147483647i))), ~(~select(-11626i, -2147483647i, false)), var_0));
    return select(vec2<bool>(var_0, any(vec4<bool>(true, false, var_0, true)) || (_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.yw, vec3<f32>(756f, -456f, -876f), var_3, Struct_1(false, 77312i), Struct_1(var_0, var_3.x)), vec3<bool>(true, var_0, false), 0u, u_input.a)) == var_2.x)), select(!select(select(vec2<bool>(var_0, true), vec2<bool>(true, true), vec2<bool>(var_0, var_0)), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), var_0), all(vec4<bool>(var_0, var_0, true, var_0))), select(vec2<bool>(true, var_0 & var_0), vec2<bool>(var_0, any(vec2<bool>(var_0, var_0))), any(vec4<bool>(true, false, var_0, false))), !any(!vec4<bool>(false, false, true, var_0))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 13>();
    var var_0 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), u_input.a.x <= u_input.b.x), func_1(vec2<u32>(0u, 37515u)), true), vec2<bool>(true, all(vec4<bool>(true, false, false, false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.c.x, 13u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], -1436f), global0[_wgslsmith_index_u32(18205u, 13u)]), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 485f, 682f, -1000f))), false)))));
    var var_2 = -(-2147483647i >> (func_2(4294967295u, any(vec4<bool>(true, var_0.x, false, false)) || (u_input.a.x >= u_input.b.x)) % 32u));
    var_2 = ~countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-15275i, -1i, -40886i), vec3<i32>(11839i, -1i, -13156i)), vec3<i32>(1i, 23220i, 4862i) >> (vec3<u32>(u_input.a.x, 0u, u_input.c.x) % vec3<u32>(32u))));
    var var_3 = Struct_3(Struct_1(false, abs(_wgslsmith_div_i32(min(1i, 5824i), firstTrailingBit(0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(vec2<i32>(reverseBits(var_3.a.b), var_3.a.b >> (u_input.a.x % 32u)))), var_1.x, ~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(14173i, var_3.a.b), ~vec2<i32>(1i, var_3.a.b)), ~vec2<i32>(var_3.a.b, 71047i)), vec2<f32>(-598f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(303f, global0[_wgslsmith_index_u32(u_input.c.x, 13u)]) + _wgslsmith_f_op_f32(-139f + 606f)) - _wgslsmith_f_op_f32(step(1811f, _wgslsmith_f_op_f32(exp2(var_1.x)))))), _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.a.wxy, countOneBits(vec3<u32>(u_input.b.x, 0u, 1u)), u_input.b.zxw), abs(~u_input.a.zyx)));
}

