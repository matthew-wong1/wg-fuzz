struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: array<vec4<f32>, 16>;

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 13> = array<i32, 13>(1i, -39245i, 0i, -1i, -10782i, -1i, -1i, -2906i, 5603i, -29388i, 15821i, 2147483647i, 26735i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> u32 {
    global0 = array<vec2<u32>, 10>();
    global1 = array<vec4<f32>, 16>();
    var var_0 = Struct_2(arg_0.e.a.wyw, Struct_1(select(!(!arg_0.e.a), !arg_1.b.a, any(vec2<bool>(arg_1.b.a.x, arg_1.b.a.x))), ~(vec2<u32>(global2.x, arg_0.d.b.b.x) << (vec2<u32>(11140u, arg_0.e.b.x) % vec2<u32>(32u))), vec4<i32>(-27877i, ~(-2147483647i) | (-57281i ^ arg_1.b.d), -_wgslsmith_mult_i32(arg_1.b.d, -2147483647i), firstLeadingBit(-2147483647i)), _wgslsmith_clamp_i32(arg_1.b.c.x << (1u % 32u), u_input.d ^ ~11853i, firstTrailingBit(~u_input.c))));
    var var_1 = vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.a.x, 260f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-507f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(890f * arg_0.a.x)))))));
    var var_2 = var_0.a.x;
    return ~_wgslsmith_mod_u32(~2313u, firstLeadingBit(global2.x));
}

fn func_2() -> vec4<u32> {
    global2 = vec4<u32>(global2.x, select(global2.x, _wgslsmith_sub_u32(select(0u, _wgslsmith_mult_u32(0u, 1u), true), reverseBits(1u)), true), ~(~32469u), global2.x & 13128u);
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u >> (func_3(Struct_3(vec3<f32>(924f, -1583f, -624f), u_input.a.yww, vec3<bool>(true, false, true), Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(global2.x, global2.x), u_input.a, -20071i)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(global2.x, global2.x), vec4<i32>(u_input.d, global3[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a.x, 1i), 91647i)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(global2.x, 4294967295u), u_input.a, 0i)), vec3<f32>(254f, 1239f, -536f), u_input.a.yw) % 32u), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 15027u, 0u, global2.x)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global2.x, 93143u, global2.x, 26608u)), vec4<u32>(global2.x, global2.x, 4294967295u, global2.x))), _wgslsmith_mult_u32(~global2.x, global2.x)), ~countOneBits(global2.zwx)), 13u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-862f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(663f - 631f) * 1323f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1445f)))) + _wgslsmith_f_op_f32(f32(-1f) * -2095f)), -586f));
    global1 = array<vec4<f32>, 16>();
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 1u ^ countOneBits(global2.x), _wgslsmith_dot_vec3_u32((global2.zzw >> (vec3<u32>(68385u, 45478u, 0u) % vec3<u32>(32u))) >> (firstLeadingBit(global2.zwx) % vec3<u32>(32u)), global2.zxx), 1u), ~((_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.x, 26500u, global2.x), vec4<u32>(38084u, 0u, global2.x, global2.x)) >> ((vec4<u32>(global2.x, 4294967295u, 25116u, global2.x) & vec4<u32>(global2.x, global2.x, global2.x, 41640u)) % vec4<u32>(32u))) ^ vec4<u32>(global2.x, 1u, 4049u, reverseBits(global2.x))));
    return vec4<u32>(firstTrailingBit(var_2.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~min(vec3<u32>(4294967295u, 35418u, 24748u), vec3<u32>(global2.x, 622u, var_2.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global2.x, global2.x), ~global2.xwz)), global2.zxx), _wgslsmith_mod_u32(firstTrailingBit(firstTrailingBit(~var_2.x)), ~firstTrailingBit(_wgslsmith_mod_u32(var_2.x, 1u))), global2.x);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = 443u;
    let var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.b.x, global2.x, global2.x, 80978u), reverseBits(vec4<u32>(global2.x, 86330u, 4294967295u, global2.x))) << ((~vec4<u32>(global2.x, arg_2.b.x, arg_2.b.x, arg_2.b.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.x, 14525u, 0u), vec4<u32>(1u, arg_2.b.x, 4294967295u, global2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_2.b.x, global2.x & 12972u, _wgslsmith_div_u32(4294967295u, arg_2.b.x), _wgslsmith_mult_u32(arg_2.b.x, arg_2.b.x)), min(func_2(), reverseBits(vec4<u32>(global2.x, arg_2.b.x, arg_2.b.x, 0u)))));
    var var_2 = vec4<i32>(i32(-1i) * -arg_0, -_wgslsmith_div_i32(1i, arg_0), -11674i, -_wgslsmith_mult_i32(max(-15676i, _wgslsmith_add_i32(2147483647i, arg_0)), arg_0));
    var var_3 = !vec3<bool>(true, all(vec3<bool>(false, true, arg_1)), all(vec2<bool>(false, arg_1)));
    var var_4 = arg_2;
    return 230f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.d, false, Struct_1(vec4<bool>(true, true, true, true), global2.wy, u_input.a, 0i))) * _wgslsmith_f_op_f32(-1920f - 483f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(select(240f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(2147483647i, false, Struct_1(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(global2.x, 10u)], vec4<i32>(global3[_wgslsmith_index_u32(0u, 13u)], 11719i, u_input.c, 1i), u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -482f), all(vec3<bool>(false, true, false)))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(2801f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f)))), ~countOneBits(_wgslsmith_sub_vec3_i32(-u_input.a.yww, u_input.a.zzw)), vec3<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))), Struct_2(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true)), Struct_1(vec4<bool>(false, all(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, false, false, false))), vec2<u32>(global2.x, 1u) & ~global2.yy, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, -37893i), vec4<i32>(u_input.c, 0i, 0i, 0i)), ~(~u_input.a.x))), Struct_1(vec4<bool>(abs(1i) < _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(20609u, 13u)], -2147483647i, 1i), all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(-296f, -527f) <= _wgslsmith_f_op_f32(trunc(1319f))), vec2<u32>(func_3(Struct_3(vec3<f32>(-681f, -389f, 2127f), vec3<i32>(u_input.d, u_input.a.x, -42347i), vec3<bool>(false, false, false), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<bool>(false, false, false, false), global2.xz, vec4<i32>(-37332i, 1i, u_input.b, -1i), global3[_wgslsmith_index_u32(global2.x, 13u)])), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(global2.x, global2.x), vec4<i32>(u_input.c, -15012i, u_input.a.x, 2147483647i), -2147483647i)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(global2.x, 4294967295u), vec4<i32>(-88687i, u_input.b, -1i, 990i), u_input.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1527f, 1295f, 691f)), vec2<i32>(global3[_wgslsmith_index_u32(0u, 13u)], u_input.c) | vec2<i32>(u_input.a.x, 0i)), 19206u), u_input.a, -2147483647i));
    global2 = vec4<u32>(~_wgslsmith_mod_u32(global2.x, 5758u), ~_wgslsmith_clamp_u32(reverseBits(0u), var_1.e.b.x, var_1.e.b.x) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(29387u, 1u, 50039u, 4294967295u), ~vec4<u32>(0u, 38862u, 1u, var_1.d.b.b.x)) % 32u), _wgslsmith_mod_u32(13690u, var_1.e.b.x), _wgslsmith_sub_u32(global2.x, ~4294967295u) >> (31717u % 32u));
    let var_2 = var_1.d.b;
    let var_3 = 1729f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, 1000f)))));
    global1 = array<vec4<f32>, 16>();
    global1 = array<vec4<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(select((_wgslsmith_clamp_vec2_i32(u_input.a.zx, var_1.b.zx, u_input.a.xz) | vec2<i32>(-54814i, -1i)) & vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(6316u, 13u)], 2147483647i, var_1.d.b.d), var_2.c)), var_2.c.zy, any(vec2<bool>(true, true))), -63588i);
}

