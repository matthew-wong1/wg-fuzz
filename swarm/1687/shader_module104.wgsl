struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, false, false, true, true, false, true, false, false, true, false, true, false, false, true, true, false, true);

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<u32>(4294967295u, ~max(1u, max(~0u, min(1u, 13902u))), max(4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 7130u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(33310u, 4294967295u), vec2<u32>(79576u, 7883u)), 0u, firstTrailingBit(0u), 0u >> (0u % 32u)))), ~(0u & (~0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(26446u, 81032u), vec2<u32>(17160u, 4294967295u)) % 32u))));
    global1 = all(select(vec4<bool>(arg_1.a.x, !arg_1.a.x, false, false), select(!vec4<bool>(true, true, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_1.a.x), any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)]))), vec4<bool>(arg_1.a.x & arg_1.a.x, u_input.b < u_input.b, all(vec2<bool>(true, true)), false | arg_0.x))) || true;
    let var_1 = !select(arg_0, !vec3<bool>(all(vec2<bool>(false, true)), false, arg_0.x), arg_0);
    var var_2 = u_input.a;
    let var_3 = arg_1.a.x;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, firstLeadingBit(~30678u), var_0.x) ^ _wgslsmith_clamp_vec4_u32(var_0, vec4<u32>(~var_0.x, 1605u, var_0.x, 1u), ~(~var_0)), var_0 & countOneBits(vec4<u32>(0u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(296u, var_0.x), var_0.zz), max(var_0.x, 34544u))));
}

fn func_2() -> Struct_2 {
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(28722u, ~30115u), 18u)];
    let var_0 = func_3(vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 18u)], true, true)), global0[_wgslsmith_index_u32(min(1u, firstTrailingBit(23314u)), 18u)], all(vec2<bool>(global0[_wgslsmith_index_u32(47141u, 18u)], true)) != any(vec2<bool>(true, global0[_wgslsmith_index_u32(48410u, 18u)]))), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(29151u, 18u)] && global0[_wgslsmith_index_u32(1629u, 18u)], true))) > firstLeadingBit(29306u & _wgslsmith_mod_u32(firstTrailingBit(4294967295u), reverseBits(54436u)));
    global1 = global0[_wgslsmith_index_u32(32912u, 18u)];
    var var_1 = u_input.b;
    var_1 = u_input.a.x;
    return Struct_2(_wgslsmith_clamp_vec3_u32(min(max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(17692u, 1u, 15576u)), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, 86694u, 12485u)), ~vec3<u32>(1u, 19286u, 47464u))), firstTrailingBit(vec3<u32>(1u, 1u, 1u)), ~(~select(vec3<u32>(1u, 0u, 30919u), vec3<u32>(0u, 1u, 55334u), true))), ~abs(15180i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-851f, _wgslsmith_f_op_f32(1464f + 487f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1530f))))), !(true & var_0), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, -27290i)), firstTrailingBit(u_input.b)), ~vec2<i32>(u_input.a.x, -1i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), -(-6369i ^ (-2147483647i | u_input.a.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = -(~_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0.e, firstTrailingBit(-1i)), -1i));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1575f - _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1536f - -519f), _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, global0[_wgslsmith_index_u32(var_0.x, 18u)]))))) + -307f), -1259f, arg_0.c.x);
    var var_3 = select(-_wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.a.xy, u_input.a.zx), vec2<i32>(u_input.b, 1i)), -(vec2<i32>(-2147483647i, _wgslsmith_add_i32(-14508i, 6625i)) & vec2<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, u_input.b, arg_0.b, arg_0.b), vec4<i32>(1i, -2147483647i, 1i, u_input.b)))), arg_0.c.x == _wgslsmith_f_op_f32(f32(-1f) * -245f));
    var var_4 = Struct_1(vec2<bool>(any(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.x, 18u)])), (true != !arg_0.d) & arg_0.d));
    return Struct_1(select(!vec2<bool>(true, var_4.a.x), var_4.a, select(var_4.a, var_4.a, true)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    var var_0 = func_4(func_2());
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * arg_1);
    global1 = true;
    var var_3 = 1i;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(func_1(10386u, _wgslsmith_f_op_f32(-1f), max(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(-1i, 0i, 1i, u_input.a.x))), ~u_input.a.x);
    var var_1 = all(select(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false), vec2<bool>(false, true), false), func_4(Struct_2(vec3<u32>(1378u, 34711u, 4294967295u), var_0.x, vec2<f32>(129f, -2165f), global0[_wgslsmith_index_u32(1u, 18u)], -2147483647i)).a, global0[_wgslsmith_index_u32(~4294967295u, 18u)]), vec2<bool>(func_2().d || false, true), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(22014u, 18u)]), select(true, global0[_wgslsmith_index_u32(1u, 18u)], true))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(106262u, 14926u))), func_2().a.zy) ^ ~_wgslsmith_add_u32(firstTrailingBit(1u), 0u), 18u)];
    var var_2 = Struct_2(abs(min(~(~vec3<u32>(0u, 975u, 41781u)), vec3<u32>(select(0u, 12007u, global0[_wgslsmith_index_u32(1u, 18u)]), ~1u, 1u))), ~0i, vec2<f32>(628f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-130f * -223f), 1000f, global0[_wgslsmith_index_u32(1u, 18u)]))), false, -var_0.x);
    let var_3 = _wgslsmith_f_op_f32(exp2(var_2.c.x));
    var var_4 = var_2.a.x;
    let var_5 = -57403i;
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, max(var_2.b, ~(-22679i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, -203f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, -618f, var_3)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x) + vec3<f32>(var_3, 203f, -232f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(831f, var_2.c.x, -891f)))))));
}

