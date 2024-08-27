struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1586u, 0u, 7113u, 1u), vec4<f32>(301f, -373f, -627f, -614f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32) -> bool {
    global0 = array<f32, 6>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(~50781u, u_input.e)), firstTrailingBit(global2.a.wy << (u_input.a.yx % vec2<u32>(32u))));
    var_1 = ~vec2<u32>(~_wgslsmith_mod_u32(~11671u, 23917u), 0u);
    var_1 = global2.a.yx;
    return false;
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = global1.x;
    let var_1 = 39745i;
    let var_2 = !vec4<bool>(true, all(vec4<bool>(false, false, true, true)) & func_3(true, ~global2.a.x, var_1 >> (64905u % 32u)), any(vec2<bool>(u_input.d > var_1, true)), any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false)))));
    global2 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x & arg_0.a.x, 1u << (1u % 32u), 36926u, global2.a.x), vec4<u32>(_wgslsmith_sub_u32(~507u, arg_0.a.x), _wgslsmith_sub_u32(~global2.a.x, u_input.a.x >> (74800u % 32u)), countOneBits(~13898u), u_input.a.x | global2.a.x)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.b.x, arg_0.b.x, var_2.x)), global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global1.x, -1000f));
    var var_3 = vec2<u32>(4294967295u, 0u);
    return (~select(vec4<u32>(29142u, 4294967295u, 116074u, global2.a.x) & arg_0.a, vec4<u32>(57232u, 138107u, 0u, 43321u), true) | countOneBits(vec4<u32>(u_input.e, var_3.x, arg_0.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x)))) ^ firstTrailingBit(vec4<u32>(max(global2.a.x, _wgslsmith_sub_u32(4294967295u, 0u)), ~(var_3.x | var_3.x), arg_0.a.x, ~67714u));
}

fn func_1() -> f32 {
    let var_0 = (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global1.x, global2.b.x)))) > _wgslsmith_f_op_f32(f32(-1f) * -1121f)) || !select(select(false, true, true), select(false, true, true) && true, true);
    global0 = array<f32, 6>();
    global2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.a.x, 11667u, u_input.e), countOneBits(4294967295u << (0u % 32u))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.e, 1u) | global2.a.x, _wgslsmith_mult_u32(u_input.e, 4294967295u) ^ global2.a.x, u_input.e), 4294967295u, 4294967295u), global2.b);
    global2 = Struct_1(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a.x, 66225u, u_input.a.x, 12335u), func_2(Struct_1(global2.a, global2.b)), select(vec4<u32>(global2.a.x, global2.a.x, 0u, global2.a.x), global2.a, vec4<bool>(var_0, var_0, true, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global2.b.x + 543f), global0[_wgslsmith_index_u32(~0u, 6u)], _wgslsmith_f_op_f32(select(-376f, global2.b.x, true)), -378f), global2.b, true))));
    let var_1 = _wgslsmith_f_op_f32(-1613f * _wgslsmith_f_op_f32(round(493f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(1167f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(697f - 667f))), _wgslsmith_f_op_f32(max(-1669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-640f)) - 591f))));
    return _wgslsmith_f_op_f32(-247f - -731f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-632f, global0[_wgslsmith_index_u32(41564u, 6u)], 877f))))) + vec3<f32>(647f, _wgslsmith_div_f32(-831f, 316f), _wgslsmith_f_op_f32(func_1()))));
    let var_0 = ~(vec2<u32>(~select(u_input.e, global2.a.x, false), _wgslsmith_mod_u32(~u_input.a.x, global2.a.x)) & u_input.a.yy);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1701f), global0[_wgslsmith_index_u32(u_input.a.x, 6u)]) * _wgslsmith_f_op_vec3_f32(sign(global2.b.xxy)))));
    let var_2 = vec3<i32>(~_wgslsmith_sub_i32(-1i, -u_input.d), u_input.b.x & (-(~(-8546i)) ^ -countOneBits(u_input.c)), u_input.c);
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, var_2.x, var_2.x, 1i), vec4<i32>(var_2.x, -2147483647i, 2147483647i, var_2.x)) >> (abs(global2.a) % vec4<u32>(32u))), 1199f);
}

