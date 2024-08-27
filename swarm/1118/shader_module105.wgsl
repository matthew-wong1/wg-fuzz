struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global4: array<u32, 13> = array<u32, 13>(87593u, 36013u, 33202u, 58523u, 0u, 1867u, 6690u, 31437u, 1u, 1962u, 2061u, 4294967295u, 22838u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(vec4<u32>(~(~0u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 65181u, 4294967295u, 1u), min(vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25557u, 13u)], 13u)], global0.a.x, u_input.c.x), vec4<u32>(24086u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 13u)], 13u)], global0.a.x))), abs(countOneBits(vec4<u32>(global4[_wgslsmith_index_u32(0u, 13u)], 32021u, u_input.a, 4294967295u)))), firstLeadingBit(u_input.c.x), ~global4[_wgslsmith_index_u32(~u_input.c.x, 13u)]), u_input.d, !global3.zy);
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, reverseBits(46681u), 4294967295u, var_0.a.x), vec4<u32>(~0u, ~49378u, min(4294967295u, 2307u), reverseBits(4294967295u)))), var_0.b, select(!select(var_0.c, !var_0.c, global3.wz), !(!global0.c), true));
    var var_2 = !(!any(vec2<bool>(true, all(vec4<bool>(var_1.c.x, true, global3.x, true)))));
    let var_3 = -(~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 7068i, global0.b.x), vec3<i32>(var_1.b.x, 1i, -868i)) & vec3<i32>(16034i, u_input.d.x, 2147483647i), abs(~vec3<i32>(0i, 30486i, -27766i))));
    var_2 = false;
    return vec2<i32>(_wgslsmith_div_i32(var_0.b.x & ~(~26421i), -(~(~(-2147483647i)))), _wgslsmith_add_i32(countOneBits(_wgslsmith_mult_i32(~0i, var_1.b.x | var_3.x)), 2147483647i));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_1(vec4<u32>(global0.a.x, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(0u, 13u)], 31u)], countOneBits(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(48689u, 13u)], 31u)] << (vec2<u32>(global0.a.x, 4294967295u) % vec2<u32>(32u)))), global0.a.x, ~(~global4[_wgslsmith_index_u32(17104u, 13u)] >> (~u_input.a % 32u))), func_3(), global3.xx);
    global4 = array<u32, 13>();
    var var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(51666u, ~global0.a.x), 0u));
    let var_2 = Struct_1(~(~vec4<u32>(28805u << (0u % 32u), u_input.a, 1u, ~arg_0)), u_input.d, !select(select(!global0.c, !vec2<bool>(global3.x, global3.x), vec2<bool>(true, true)), !global0.c, select(arg_0, 5076u, var_0.c.x) == u_input.a));
    var var_3 = select(~firstTrailingBit(~global0.a.xw << (~global2[_wgslsmith_index_u32(var_0.a.x, 31u)] % vec2<u32>(32u))), ~(~global2[_wgslsmith_index_u32(firstTrailingBit(4394u), 31u)]) ^ global0.a.zz, all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, global3.x, var_0.c.x), vec4<bool>(false, false, var_0.c.x, true), vec4<bool>(global0.c.x, var_2.c.x, true, var_2.c.x)), global0.c.x)));
    return var_3.x;
}

fn func_1(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = -max(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(38989i, 0i, u_input.b, -27316i), vec4<i32>(global0.b.x, -34144i, 33850i, u_input.d.x)), global0.b.x, -1i), -(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b.x, 12857i, 17096i), vec3<i32>(-37452i, 50595i, 0i)) & firstTrailingBit(vec3<i32>(global0.b.x, u_input.d.x, -16001i))));
    let var_1 = -345f;
    var var_2 = Struct_1(~vec4<u32>(_wgslsmith_mod_u32(func_2(arg_1), ~40101u), 52029u, firstTrailingBit(firstTrailingBit(11812u)), _wgslsmith_add_u32(~global4[_wgslsmith_index_u32(global0.a.x, 13u)], _wgslsmith_mult_u32(u_input.c.x, arg_0))), vec2<i32>(-26412i, 15252i), vec2<bool>(global0.c.x, true));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1131f, 850f, 347f, -408f))))));
    var var_4 = global1[_wgslsmith_index_u32(arg_0, 21u)];
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!vec4<bool>(false, global0.c.x, false, true)), !vec4<bool>(global0.c.x, global0.c.x & false, global0.c.x || false, true), vec4<bool>(func_1(global0.a.x, 427u) & false, !global0.c.x, global3.x, global3.x));
    var var_1 = Struct_1(~vec4<u32>(4294967295u << (abs(u_input.c.x) % 32u), _wgslsmith_mod_u32(global0.a.x << (global0.a.x % 32u), 0u), 26649u, global0.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.x, _wgslsmith_sub_i32(30972i, global0.b.x)), abs(_wgslsmith_div_vec2_i32(u_input.d, u_input.d)), ~u_input.d ^ ~vec2<i32>(-11781i, global0.b.x)) | global0.b, select(var_0.wx, !select(!var_0.yx, vec2<bool>(true, false), vec2<bool>(global0.c.x, global3.x)), !var_0.x));
    global2 = array<vec2<u32>, 31>();
    var_1 = global1[_wgslsmith_index_u32(~func_2(~11126u), 21u)];
    global4 = array<u32, 13>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1576f, 341f))), vec2<f32>(738f, 584f))))));
    let var_3 = global1[_wgslsmith_index_u32(16291u, 21u)];
    var_1 = Struct_1(global0.a, u_input.d, select(vec2<bool>(true, all(var_0.xwx)), vec2<bool>(var_0.x, !all(vec4<bool>(global0.c.x, true, var_1.c.x, false))), select(!(!vec2<bool>(var_3.c.x, false)), !global0.c, var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(var_2.x, 222f))))), min(vec3<i32>(global0.b.x, u_input.b, ~(-26737i)), vec3<i32>(~var_3.b.x, var_1.b.x, 0i)), var_3.a.yyx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(610f, 410f) * _wgslsmith_f_op_f32(var_2.x * -154f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -859f), _wgslsmith_div_f32(-149f, var_2.x), !global3.x)), var_2.x, var_2.x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-932f, 1062f, -1417f, var_2.x), vec4<f32>(426f, -909f, -673f, -971f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1721f, var_2.x, var_2.x, 301f) + vec4<f32>(-705f, 761f, var_2.x, var_2.x))))))), var_2);
}

