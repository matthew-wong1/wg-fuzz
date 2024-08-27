struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: vec3<f32>;

var<private> global2: vec3<i32> = vec3<i32>(-37230i, 1i, -52203i);

var<private> global3: array<vec3<i32>, 9>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 73116u), u_input.a.yy), u_input.a.yx), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), abs(~1u), _wgslsmith_dot_vec2_i32(global2.xy, -(global2.zy << ((u_input.a.xz >> (u_input.a.yy % vec2<u32>(32u))) % vec2<u32>(32u)))));
    var var_1 = global1.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(466f)) - arg_1))), global1.x)), 396f);
    global2 = vec3<i32>(-26006i, -55746i, _wgslsmith_add_i32(countOneBits(-12615i), _wgslsmith_add_i32(41255i, i32(-1i) * -1i)));
    global3 = array<vec3<i32>, 9>();
    return ~3156u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = global1.x;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-602f + global1.x), -1095f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(-global1.x)), -1081f));
    let var_1 = Struct_5(vec4<f32>(1302f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-194f)), _wgslsmith_f_op_f32(-global1.x), true)) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -154f) * 258f)));
    global2 = select(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, arg_0, global2.x), vec3<i32>(48893i, -2147483647i, _wgslsmith_sub_i32(arg_0, arg_0))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(_wgslsmith_mod_i32(global2.x, 2147483647i), -1285f), u_input.a.x), 9u)], true) >> (u_input.a % vec3<u32>(32u));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) - global1.x), global1.x);
    return Struct_1(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -699f)));
}

fn func_1() -> vec3<i32> {
    let var_0 = u_input.a.x;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1970f, 128f, global1.x, -1000f)))))));
    global3 = array<vec3<i32>, 9>();
    global3 = array<vec3<i32>, 9>();
    let var_2 = Struct_2(u_input.a.yx, func_2(u_input.b), _wgslsmith_sub_u32(1u | u_input.a.x, u_input.a.x), ~u_input.b);
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_0), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c, var_0, 45633u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, var_2.a.x, 4294967295u) ^ vec4<u32>(u_input.a.x, 61612u, 4294967295u, 10233u)), ~vec4<u32>(var_2.a.x, _wgslsmith_div_u32(26675u, 34923u), var_2.c, select(4294967295u, 62183u, true)))), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = func_1();
    let var_1 = Struct_2(~min(_wgslsmith_mod_vec2_u32(u_input.a.zy, countOneBits(u_input.a.xx)), max(u_input.a.xy, _wgslsmith_sub_vec2_u32(u_input.a.yz, vec2<u32>(4294967295u, u_input.a.x)))), func_2(countOneBits(countOneBits(firstLeadingBit(-14817i)))), _wgslsmith_dot_vec2_u32(u_input.a.zz, max(vec2<u32>(4294967295u, u_input.a.x << (u_input.a.x % 32u)), firstTrailingBit(u_input.a.yy))), ~_wgslsmith_sub_i32(16678i, global2.x));
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, func_1().x, _wgslsmith_sub_i32(0i, global2.x)), -firstLeadingBit(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(20382i, 1i), global2.x, i32(-1i) * -2147483647i)), vec4<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(4294967295u, 9u)], vec3<i32>(-1i, -1i, -2147483647i)) >> (~31496u % 32u), -6589i), 27467i, min(17898i, reverseBits(_wgslsmith_sub_i32(27031i, -18081i)))));
    let var_3 = global1.x;
    var var_4 = min(-8509i, ~u_input.b) << (~(~firstTrailingBit(~var_1.a.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_1.c, 9u)]);
}

