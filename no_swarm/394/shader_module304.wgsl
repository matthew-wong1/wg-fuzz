struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: vec3<f32>;

var<private> global2: u32;

var<private> global3: array<u32, 3> = array<u32, 3>(11866u, 0u, 4294967295u);

var<private> global4: array<vec2<bool>, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> f32 {
    global2 = 1u;
    let var_0 = Struct_2(true, arg_0, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(30649u, 1u, 6670u), _wgslsmith_div_vec3_u32(u_input.b.zzz, global0[_wgslsmith_index_u32(arg_0.a, 4u)])) >> (~14327u % 32u)));
    let var_1 = Struct_2(false, arg_0, Struct_1(83750u));
    let var_2 = !vec3<bool>(var_1.a, (global1.x >= arg_1) | true, var_1.a);
    let var_3 = vec4<i32>(max(_wgslsmith_clamp_i32(~(-u_input.a), u_input.a, u_input.c), ~2147483647i), ~abs(-(i32(-1i) * -11894i)), _wgslsmith_dot_vec2_i32(min(u_input.d.ww, vec2<i32>(u_input.d.x, -32442i)) & -vec2<i32>(u_input.a, u_input.c), u_input.d.wz), ~_wgslsmith_div_i32(u_input.d.x, u_input.d.x));
    return global1.x;
}

fn func_2() -> f32 {
    global1 = vec3<f32>(362f, global1.x, global1.x);
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(max(u_input.d, u_input.d), -u_input.d, reverseBits(vec4<i32>(u_input.d.x, 1641i, 2147483647i, u_input.a))));
    var var_1 = ~(~(vec4<u32>(63921u, select(u_input.b.x, u_input.b.x, false), 32459u, abs(global3[_wgslsmith_index_u32(4294967295u, 3u)])) ^ max(vec4<u32>(u_input.b.x, 4294967295u, 26896u, 0u), u_input.b >> (u_input.b % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.x, -1000f)), global1.x, false)));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global3[_wgslsmith_index_u32(1u, 3u)]), var_2, u_input.b.x)), _wgslsmith_f_op_f32(-var_2)), global1.x, 862f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(177f, var_2, global1.x), vec3<f32>(global1.x, var_2, var_2))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(185f, -858f, global1.x))))), true)) - vec3<f32>(_wgslsmith_f_op_f32(-var_2), global1.x, global1.x)), !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), false), all(vec4<bool>(false, false, false, false)))));
    return 410f;
}

fn func_1() -> vec2<u32> {
    var var_0 = vec3<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(906f)))), _wgslsmith_f_op_f32(func_2())), global1.x);
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1458f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_div_f32(467f, -310f))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_3(Struct_1(1u), global1.x, 0u))) - _wgslsmith_f_op_f32(func_3(Struct_1(19078u), -991f, ~u_input.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -2126f, global1.x) - vec3<f32>(var_0.x, 755f, -539f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 353f, var_0.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, global1.x, var_0.x), vec3<f32>(global1.x, global1.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 986f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -615f, var_0.x), vec3<f32>(-1234f, 152f, 188f)), vec3<f32>(469f, global1.x, global1.x)))));
    global4 = array<vec2<bool>, 11>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(sign(var_0.x))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(501f + _wgslsmith_f_op_f32(abs(-925f))), 744f))));
    let var_1 = var_0.zz;
    return vec2<u32>(0u, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 382f;
    let var_1 = var_0;
    let var_2 = _wgslsmith_sub_vec2_u32((vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 3u)], 68370u), vec4<u32>(u_input.b.x, 73601u, u_input.b.x, 0u)), _wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(global3[_wgslsmith_index_u32(5189u, 3u)], 1u))) >> (~(~vec2<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.b.x)) % vec2<u32>(32u))) & ((u_input.b.xz & ~vec2<u32>(0u, u_input.b.x)) | ~u_input.b.zy), abs(func_1()));
    global4 = array<vec2<bool>, 11>();
    var var_3 = ~select(reverseBits(u_input.b.zww), vec3<u32>(1u, global3[_wgslsmith_index_u32(56479u, 3u)], 51708u), !all(vec2<bool>(true, false)));
    let var_4 = _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1142f, global1.x))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(117f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.x)))))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | _wgslsmith_add_i32(u_input.c, _wgslsmith_add_i32(u_input.c ^ u_input.a, ~2147483647i)), abs(select(u_input.b, ~u_input.b | u_input.b, vec4<bool>(true, true, true, true))), ~max(1u, func_1().x));
}

