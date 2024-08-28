struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    var var_0 = Struct_1(18258u, _wgslsmith_div_i32(arg_1.d.b, ~(-(~(-17i)))), vec4<u32>(0u, ~1u, ~_wgslsmith_mult_u32(1u, u_input.a), 1u >> (u_input.a % 32u)) ^ firstTrailingBit(~vec4<u32>(26130u, 29436u, 622u, 31304u)));
    return (arg_1.a >> (27587u % 32u)) | ~firstTrailingBit(_wgslsmith_div_u32(var_0.c.x, select(u_input.a, arg_1.b.x, false)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    global1 = u_input.b;
    global0 = array<bool, 27>();
    let var_0 = arg_2.a;
    var var_1 = vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1224f, _wgslsmith_f_op_f32(-arg_3.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x) * arg_0) - arg_0), true);
    global1 = ~(~(vec3<i32>(-1i) * -vec3<i32>(-29697i, u_input.b.x, 13115i))) ^ -reverseBits(u_input.b);
    return _wgslsmith_f_op_f32(-1027f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-842f, _wgslsmith_f_op_f32(sign(arg_1.x)))))) - -2209f));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    let var_0 = select(82251u, _wgslsmith_sub_u32(u_input.a | u_input.a, u_input.a), true);
    var var_1 = ~select(global1.yz, -min(firstTrailingBit(u_input.b.yz), ~vec2<i32>(u_input.b.x, global1.x)), any(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(7382u, 27u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_0, 27u)], global0[_wgslsmith_index_u32(var_0, 27u)]), vec2<bool>(true, true))));
    var var_2 = ~_wgslsmith_add_u32(0u, var_0);
    let var_3 = vec4<u32>(countOneBits(4294967295u), _wgslsmith_sub_u32(func_1(Struct_3(global0[_wgslsmith_index_u32(37002u, 27u)], false), Struct_4(var_0, vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u), u_input.b, Struct_2(4729u, arg_1)), vec4<i32>(1i, 2147483647i, 62864i, global1.x), true), countOneBits(1u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 3300u))), u_input.a, 4294967295u);
    let var_4 = Struct_3(global0[_wgslsmith_index_u32(0u, 27u)], all(!vec3<bool>(global0[_wgslsmith_index_u32(var_0, 27u)], arg_0.x <= arg_0.x, all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 27u)])))));
    return 214f;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -355f)) + _wgslsmith_div_vec3_f32(arg_1.wwy, arg_1.zzx)))) + arg_1.wxz);
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(1u, ~(~_wgslsmith_add_i32(25664i, 37714i)) ^ min(arg_2.c.x, u_input.b.x), _wgslsmith_sub_vec4_u32(min(countOneBits(firstTrailingBit(vec4<u32>(0u, 106602u, 44376u, 1u))), arg_2.b), arg_2.b));
    let var_3 = vec3<bool>(arg_3, false, arg_3);
    var var_4 = max(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(0i, u_input.b.x)) ^ -global1.xx, vec2<i32>(_wgslsmith_mod_i32(10104i, u_input.b.x), firstLeadingBit(var_2.b))), i32(-1i) * -47825i);
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.c.xw, vec2<u32>(u_input.a, arg_2.a)), u_input.a, 1u, ~u_input.a), _wgslsmith_clamp_vec4_u32(max(arg_2.b, vec4<u32>(1u, arg_2.b.x, 0u, var_2.c.x)), var_2.c, var_2.c & vec4<u32>(4294967295u, arg_2.a, arg_2.d.a, arg_2.d.a))), ~(~arg_2.b.x)), ~select(3645i, max(-16042i ^ global1.x, _wgslsmith_mod_i32(0i, -2147483647i)), !any(vec2<bool>(true, true))), ~vec4<u32>(39902u | var_2.c.x, 0u, 1u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, global0[_wgslsmith_index_u32(min(4294967295u, func_1(Struct_3(global0[_wgslsmith_index_u32(29313u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]), Struct_4(u_input.a, vec4<u32>(104887u, 1u, 49573u, 86912u), vec3<i32>(-2147483647i, u_input.b.x, global1.x), global2[_wgslsmith_index_u32(37521u, 10u)]), vec4<i32>(-1i, u_input.b.x, -51194i, 2147483647i), true) & u_input.a), 27u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)] || global0[_wgslsmith_index_u32(87364u, 27u)], true)), any(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)])) || false);
    let var_1 = Struct_3(any(!(!vec3<bool>(false, var_0.x, true))), (u_input.a | u_input.a) < _wgslsmith_mod_u32(abs(u_input.a), ~_wgslsmith_div_u32(0u, u_input.a)));
    let var_2 = u_input.a;
    let var_3 = func_4(52410u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(802f, _wgslsmith_f_op_f32(1403f + 1000f), _wgslsmith_f_op_f32(func_2(-1000f, vec2<f32>(-667f, -673f), global2[_wgslsmith_index_u32(8207u, 10u)], vec2<f32>(-1025f, 383f))), _wgslsmith_f_op_f32(730f - 483f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1383f, -593f, -861f, -721f) * vec4<f32>(1000f, 626f, 1792f, -1073f))), vec4<f32>(_wgslsmith_f_op_f32(384f - -1480f), 604f, _wgslsmith_f_op_f32(func_3(u_input.b.yy, -2147483647i)), _wgslsmith_f_op_f32(1990f - -148f)))))), Struct_4(reverseBits(0u), ~(vec4<u32>(55653u, 64363u, var_2, u_input.a) >> (vec4<u32>(var_2, 1u, var_2, u_input.a) % vec4<u32>(32u))) >> ((vec4<u32>(0u, 82956u, 1u, 4294967295u) & select(vec4<u32>(4294967295u, u_input.a, u_input.a, var_2), vec4<u32>(var_2, u_input.a, 52414u, var_2), false)) % vec4<u32>(32u)), u_input.b, Struct_2(17622u, _wgslsmith_mult_i32(~0i, global1.x))), global0[_wgslsmith_index_u32(2993u, 27u)]);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

