struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3>;

var<private> global1: array<vec2<i32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    global1 = array<vec2<i32>, 25>();
    global0 = array<Struct_5, 3>();
    let var_0 = select(~arg_0.yzw, _wgslsmith_add_vec3_i32(vec3<i32>(-17125i, abs(~8392i), arg_0.x), _wgslsmith_sub_vec3_i32((vec3<i32>(arg_0.x, arg_0.x, 2147483647i) | arg_0.wzz) >> (countOneBits(vec3<u32>(1u, 1u, u_input.a.x)) % vec3<u32>(32u)), arg_0.yzy)), false);
    global0 = array<Struct_5, 3>();
    let var_1 = _wgslsmith_clamp_vec4_u32(~abs(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, 16886u, u_input.a.x, u_input.a.x)), u_input.a)), u_input.a, vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(18411u, 1u), abs(u_input.a.x))), firstTrailingBit(1u)));
    return u_input.a.ywz;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 1f) * arg_1), select(_wgslsmith_add_vec3_u32(func_3(vec4<i32>(1i, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mod_vec3_u32(reverseBits(u_input.a.zwy), u_input.a.zyw << (u_input.a.zzw % vec3<u32>(32u)))), u_input.a.yyy, vec3<bool>(true, true, true)), 32786u);
    global0 = array<Struct_5, 3>();
    let var_1 = 57636u;
    return vec4<u32>(77508u, 5336u, ~0u, var_0.b.x);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 50616u), u_input.a) ^ func_2(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, 28150u, 42271u, 0u), vec4<u32>(u_input.a.x, 18309u, 62147u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), func_2(global1[_wgslsmith_index_u32(0u, 25u)], 2287f)))));
    var var_1 = vec3<u32>(~var_0 ^ u_input.a.x, 4294967295u, 4294967295u << (select(min(30308u, var_0), 52840u, true) % 32u));
    var var_2 = Struct_2(arg_1.x, !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1334f, -2110f)) * -531f)), _wgslsmith_f_op_f32(trunc(219f)), -1000f), Struct_1(vec3<u32>(reverseBits(27883u), u_input.a.x << (u_input.a.x % 32u), u_input.a.x)));
    var_2 = Struct_2(var_2.c.x, select(!select(!var_2.b, !var_2.b, vec2<bool>(var_2.b.x, var_2.b.x)), select(var_2.b, select(select(var_2.b, vec2<bool>(false, true), var_2.b.x), select(var_2.b, vec2<bool>(true, true), var_2.b.x), vec2<bool>(true, var_2.b.x)), !var_2.b), !var_2.b), vec4<f32>(-1708f, var_2.a, -805f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1837f, -1675f, var_2.b.x)), _wgslsmith_f_op_f32(select(1244f, arg_0, var_2.b.x))))))), var_2.d);
    global1 = array<vec2<i32>, 25>();
    return _wgslsmith_f_op_f32(-var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 3>();
    global1 = array<vec2<i32>, 25>();
    global0 = array<Struct_5, 3>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(201f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(421f)), _wgslsmith_f_op_f32(-345f * -272f)))) * _wgslsmith_f_op_f32(250f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-221f - 525f), _wgslsmith_f_op_f32(floor(-333f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-973f, vec2<f32>(687f, -302f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f - 488f)))));
    global1 = array<vec2<i32>, 25>();
    var var_1 = Struct_2(-1063f, select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true), all(vec3<bool>(false, true, false))), vec2<bool>(true, true), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, !any(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1125f, var_0, var_0, var_0))), Struct_1(firstTrailingBit(u_input.a.zxw)));
    let var_2 = Struct_3(819f, u_input.a.wwx, ~(~(reverseBits(var_1.d.a.x) | _wgslsmith_mult_u32(var_1.d.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-263f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1218f * var_2.a), var_1.c.zw)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f - -267f) + _wgslsmith_f_op_f32(func_1(444f, vec2<f32>(var_2.a, var_2.a))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1040f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a * 184f))))), -_wgslsmith_mod_i32(_wgslsmith_mult_i32(firstTrailingBit(-47707i), i32(-1i) * -2494i), (-24978i << (var_1.d.a.x % 32u)) ^ ~2147483647i));
}

