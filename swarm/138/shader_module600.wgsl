struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c) | vec3<u32>(1u, u_input.c, u_input.c)), select(vec3<u32>(1u, ~u_input.c, firstLeadingBit(1u)), abs(vec3<u32>(1u, u_input.c, u_input.c)), true));
    let var_1 = (select(~reverseBits(vec3<u32>(var_0, 0u, 1u)), select(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(var_0, var_0, 25287u), vec3<bool>(false, true, false)) >> (~vec3<u32>(14783u, var_0, var_0) % vec3<u32>(32u)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), false)) | _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(14418u, var_0, u_input.c), vec3<u32>(u_input.c, 0u, 12761u)), vec3<u32>(26225u, _wgslsmith_mod_u32(var_0, var_0), var_0))) | vec3<u32>(var_0, reverseBits(countOneBits(var_0 >> (12131u % 32u))), ~23117u);
    let var_2 = Struct_5(max(-2147483647i, 0i), Struct_1((var_0 <= (40555u & u_input.c)) && true, _wgslsmith_f_op_f32(-377f + -1507f), ~1i, vec2<u32>(min(~3042u, abs(var_1.x)), var_0 & var_1.x)), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -139f), -7862i, ~min(vec2<u32>(1u, var_1.x), vec2<u32>(14329u, u_input.c))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, var_1.x) & firstTrailingBit(var_0), 37242u), -520f, -2147483647i, 25203i));
    global0 = any(!vec2<bool>(var_2.c.a.a, var_2.b.a));
    var var_3 = select(!(!select(vec3<bool>(false, var_2.c.a.a, false), !vec3<bool>(var_2.c.a.a, var_2.c.a.a, var_2.c.a.a), !vec3<bool>(false, var_2.c.a.a, var_2.c.a.a))), select(select(!(!vec3<bool>(true, var_2.c.a.a, var_2.c.a.a)), !select(vec3<bool>(true, true, var_2.b.a), vec3<bool>(true, var_2.b.a, true), false), !(!vec3<bool>(var_2.b.a, var_2.b.a, false))), vec3<bool>(true, ~var_2.c.b < _wgslsmith_add_u32(23375u, u_input.c), all(!vec4<bool>(var_2.b.a, true, false, false))), !select(select(vec3<bool>(var_2.c.a.a, var_2.c.a.a, var_2.b.a), vec3<bool>(var_2.b.a, false, false), vec3<bool>(var_2.c.a.a, false, true)), vec3<bool>(true, true, true), !vec3<bool>(var_2.b.a, false, var_2.b.a))), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_2.c.a.a, var_2.b.a), vec3<bool>(var_2.c.a.a, var_2.c.a.a, var_2.c.a.a)), vec3<bool>(var_2.c.a.a, var_2.b.a, true), false), !vec3<bool>(true, 563f > var_2.b.b, false), true));
    return abs(~_wgslsmith_mod_vec2_u32(var_2.b.d, var_2.b.d | vec2<u32>(var_0, var_0)) << (_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(0u, 23u)], vec2<u32>(~var_0, select(var_1.x, var_2.c.a.d.x, var_2.b.a))) % vec2<u32>(32u)));
}

fn func_2() -> Struct_5 {
    global0 = true;
    let var_0 = u_input.b.ywy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * -1195f));
    let var_2 = Struct_1(all(select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), true)), -570f, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, ~var_0.x) >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 9299u, 12799u), vec4<u32>(u_input.c, 30565u, 6667u, u_input.c))) % 32u), u_input.a.x, var_0.x), vec2<u32>(countOneBits(4536u), 9745u));
    global0 = (var_2.a | false) | true;
    return Struct_5(u_input.a.x, var_2, Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), ~(2147483647i & var_0.x), func_3(-vec4<i32>(var_0.x, var_2.c, 2147483647i, var_0.x))), u_input.c, _wgslsmith_f_op_f32(trunc(-130f)), abs(~var_2.c), _wgslsmith_clamp_i32(~_wgslsmith_add_i32(var_2.c, 16511i), -u_input.a.x, 35062i)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.a.b * arg_2), 110f, 595f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_0.b.b, 1520f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(444f, arg_1.a.b, 185f) + vec3<f32>(1743f, 112f, 1137f)))), !select(!vec3<bool>(arg_0.b.a, arg_1.a.a, arg_0.b.a), select(vec3<bool>(arg_0.b.a, true, false), vec3<bool>(true, true, true), false), true))));
    let var_1 = -61893i;
    let var_2 = Struct_1(!(!(all(vec3<bool>(true, false, arg_0.b.a)) | true)), arg_1.a.b, _wgslsmith_mult_i32(arg_0.a, arg_1.d), vec2<u32>(u_input.c, ~(0u >> (0u % 32u)) >> (1u % 32u)));
    var var_3 = vec3<u32>(var_2.d.x, 4294967295u, arg_0.c.b);
    var var_4 = _wgslsmith_sub_u32(~arg_1.a.d.x, arg_0.c.b);
    return Struct_1(true, _wgslsmith_div_f32(arg_2, var_0.a.x), arg_0.c.d, ~(vec2<u32>(_wgslsmith_mod_u32(arg_1.a.d.x, u_input.c), arg_0.b.d.x) & min(firstTrailingBit(vec2<u32>(var_2.d.x, arg_1.a.d.x)), vec2<u32>(arg_1.b, 24264u))));
}

fn func_1(arg_0: Struct_4) -> StorageBuffer {
    let var_0 = func_4(func_2(), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-1475f * _wgslsmith_f_op_f32(trunc(arg_0.a.x))), _wgslsmith_add_i32(-27551i, u_input.a.x | u_input.b.x), vec2<u32>(27502u, max(u_input.c, u_input.c))), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1982f, -1173f)), -750f))), u_input.a.x ^ (~u_input.b.x & u_input.a.x), -_wgslsmith_mod_i32(~2413i, _wgslsmith_mod_i32(u_input.a.x, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2140f + arg_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, true)))) - arg_0.a.x));
    return StorageBuffer(_wgslsmith_div_u32(1u, firstLeadingBit(~_wgslsmith_add_u32(var_0.d.x, u_input.c))), max(var_0.c, countOneBits(firstLeadingBit(u_input.a.x))), -917f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = func_1(Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1903f, -193f)))))));
}

