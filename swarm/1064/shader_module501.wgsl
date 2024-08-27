struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> u32 {
    return ~(~u_input.b.x);
}

fn func_2(arg_0: i32) -> Struct_4 {
    global2 = Struct_1(!global1.x, global2.b, false || global2.a, global2.d, _wgslsmith_mult_u32(4294967295u ^ global2.e, u_input.b.x));
    var var_0 = ~3056u;
    var_0 = _wgslsmith_mod_u32(40611u, 4294967295u);
    let var_1 = vec2<u32>(max(~4477u, _wgslsmith_mod_u32(global2.e, 22286u)), 0u);
    return Struct_4(u_input.b.x, 226f, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, global2.b, -1375f) + vec3<f32>(263f, -680f, 466f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.b, global2.b, -426f))), !vec3<bool>(true, global2.c, true))), vec3<bool>(true, false, false == global2.a), Struct_1(!global1.x, _wgslsmith_f_op_f32(-global2.b), true, u_input.c.zzx, func_3(vec4<f32>(877f, 1676f, global2.b, 903f), global0[_wgslsmith_index_u32(35069u, 27u)], vec3<bool>(global2.a, false, false)))), reverseBits(firstTrailingBit(firstLeadingBit(-14295i))), _wgslsmith_f_op_f32(-570f * _wgslsmith_f_op_f32(min(global2.b, _wgslsmith_f_op_f32(step(-2585f, 1401f)))))), Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b * global2.b), _wgslsmith_div_f32(-1000f, global2.b)), global2.b, _wgslsmith_f_op_f32(floor(355f))), select(vec3<bool>(global1.x, true, true), !vec3<bool>(global1.x, global1.x, false), vec3<bool>(!global2.a, false, true)), Struct_1(false, global2.b, global2.c, global2.d, select(_wgslsmith_add_u32(1u, 1u), abs(u_input.a.x), true || global2.c))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(4766i | (firstLeadingBit(arg_1.d.c.d.x) | reverseBits(_wgslsmith_mult_i32(-1i, 2147483647i))), i32(-1i) * -(max(2147483647i, arg_1.c.b) & (2147483647i >> (u_input.b.x % 32u))));
    global1 = !arg_3.b.yx;
    let var_1 = vec2<u32>(_wgslsmith_mod_u32((select(0u, 9995u, global2.a) | firstLeadingBit(arg_1.a)) ^ global2.e, ~arg_3.c.e & 3974u), ~_wgslsmith_mod_u32(37300u, _wgslsmith_sub_u32(arg_3.c.e, arg_1.c.a.c.e)));
    let var_2 = arg_1.d.c;
    var var_3 = true && arg_1.c.a.b.x;
    return arg_1.c;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec3<u32> {
    global2 = Struct_1(global1.x, _wgslsmith_f_op_f32(-arg_1.a.x), global1.x, vec3<i32>(abs(~u_input.c.x), 1i, ~(-44118i)), firstLeadingBit(~u_input.d.x) | min(~arg_0, _wgslsmith_div_u32(~u_input.b.x, ~arg_1.c.e)));
    var var_0 = func_4(global2.e, func_2(firstTrailingBit(~(-global2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1503f * _wgslsmith_div_f32(global2.b, 326f))) - _wgslsmith_f_op_f32(-1035f * 1181f)), arg_1);
    global0 = array<vec2<f32>, 27>();
    return reverseBits(abs(~vec3<u32>(arg_0, arg_0, 23907u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~(min(u_input.b.xxw, vec3<u32>(4294967295u, u_input.d.x, 8402u)) >> (_wgslsmith_mod_vec3_u32(u_input.b.wwx, u_input.b.zwx) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(~u_input.d.x, u_input.a.x), abs(select(1u, u_input.a.x, true)), ~(8461u & global2.e)), func_1(firstTrailingBit(1u), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(663f, -1471f, global2.b), vec3<f32>(global2.b, global2.b, -286f)), select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global2.c, global1.x), global2.a), Struct_1(false, -1000f, false, vec3<i32>(0i, u_input.c.x, 18592i), global2.e)))), ~vec3<u32>(abs(global2.e), 1u, 9902u));
    let var_1 = ~1i;
    var var_2 = abs(reverseBits(~(~_wgslsmith_mod_u32(global2.e, 0u))));
    var var_3 = ~vec4<u32>(1u, ~4294967295u, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(reverseBits(u_input.d.x), ~0u)), global2.e);
    let var_4 = Struct_4(~18153u, global2.b, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.b, global2.b)), vec3<bool>(any(vec3<bool>(global1.x, false, true)), func_2(-6828i).d.b.x, global2.a), Struct_1(true, global2.b, var_3.x <= var_3.x, u_input.c.yzx, u_input.b.x)), -(1i | _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 649i, 12469i, global2.d.x), u_input.c)), global2.b), func_2(-44191i & firstTrailingBit(61338i)).c.a);
    global1 = !(!(!select(vec2<bool>(true, var_4.c.a.b.x), var_4.d.b.zy, false)));
    global2 = Struct_1(false, var_4.c.a.c.b, all(vec2<bool>(true, false)) && global2.c, vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2218i, func_2(-2147483647i).c.b, global2.d.x), vec3<i32>(var_4.d.c.d.x & 34706i, -14810i, 11269i)), abs(_wgslsmith_mult_i32(2147483647i, reverseBits(var_1)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~var_3.ywz, select(vec3<u32>(1955u, 14902u, 1u), min(u_input.b.zzx, vec3<u32>(1u, u_input.d.x, 0u)), true)), u_input.a.x));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_4.d.a.xy, vec2<f32>(global2.b, global2.b)))), global0[_wgslsmith_index_u32(max(~(u_input.a.x | var_4.a), ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), 27u)], true)) * _wgslsmith_f_op_vec2_f32(-func_4(func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.c.a.c.b, var_4.d.c.b, global2.b, 1000f), vec4<f32>(var_4.d.a.x, 1141f, global2.b, 395f))), global0[_wgslsmith_index_u32(func_4(global2.e, Struct_4(u_input.b.x, 1065f, var_4.c, var_4.c.a), var_4.c.c, var_4.c.a).a.c.e, 27u)], select(vec3<bool>(var_4.c.a.b.x, global2.c, global1.x), var_4.d.b, var_4.d.b)), func_2(-2147483647i), -460f, func_4(~52156u, Struct_4(var_4.c.a.c.e, -752f, Struct_3(Struct_2(vec3<f32>(826f, 2330f, 949f), var_4.d.b, Struct_1(var_4.c.a.b.x, 926f, false, vec3<i32>(-1i, var_1, global2.d.x), var_3.x)), -1i, var_4.b), var_4.c.a), _wgslsmith_f_op_f32(var_4.c.c - -758f), func_4(var_3.x, var_4, var_4.c.a.a.x, Struct_2(var_4.c.a.a, vec3<bool>(false, global2.a, global1.x), Struct_1(global2.c, global2.b, false, var_4.d.c.d, u_input.a.x))).a).a).a.a.yx));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_4.d.a.x)), global2.b, true)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_4.b, -1000f)), var_4.d.a.x) - _wgslsmith_f_op_f32(-var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.x << (var_3.x % 32u)), _wgslsmith_add_u32(~23761u, firstLeadingBit(~(~var_0.x))));
}

