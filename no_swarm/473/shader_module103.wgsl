struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(14137i, vec2<bool>(true, false), false), Struct_1(1i, vec2<bool>(false, true), true), Struct_1(42634i, vec2<bool>(true, true), true), Struct_1(-1i, vec2<bool>(true, true), false), Struct_1(21344i, vec2<bool>(true, false), false), Struct_1(-11478i, vec2<bool>(false, true), false), Struct_1(46410i, vec2<bool>(false, false), false), Struct_1(-5989i, vec2<bool>(false, true), true), Struct_1(-25337i, vec2<bool>(false, false), true), Struct_1(i32(-2147483648), vec2<bool>(true, false), true), Struct_1(-2457i, vec2<bool>(true, false), false), Struct_1(29095i, vec2<bool>(true, true), true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(21623i, arg_0.a, 15902i, arg_0.a), vec4<i32>(0i, u_input.b, u_input.b, -16832i) & vec4<i32>(812i, u_input.b, 2147483647i, -1i), any(vec4<bool>(arg_0.c, arg_0.c, arg_0.b.x, true))), reverseBits(vec4<i32>(u_input.b, u_input.b, -1i, 1i)))), -vec4<i32>(15840i, firstLeadingBit(arg_0.a), arg_0.a, u_input.b));
    let var_1 = select(select(select(select(arg_0.b, !arg_0.b, !arg_0.b), !arg_0.b, any(vec4<bool>(arg_0.c, false, true, arg_0.b.x))), vec2<bool>(false, true), any(select(select(vec4<bool>(false, false, arg_0.c, true), vec4<bool>(arg_0.c, false, true, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.c, false)), select(vec4<bool>(true, false, true, arg_0.c), vec4<bool>(false, arg_0.b.x, false, arg_0.b.x), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x)), arg_0.b.x))), vec2<bool>(select(false, true, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(111f, arg_1)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1346f - 137f))), all(select(vec4<bool>(arg_0.b.x, arg_0.b.x | arg_0.c, any(vec3<bool>(arg_0.c, false, true)), select(true, false, false)), select(!vec4<bool>(arg_0.b.x, arg_0.c, arg_0.c, false), vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), arg_1 == arg_1), select(!vec4<bool>(arg_0.b.x, false, true, arg_0.c), vec4<bool>(arg_0.c, true, false, true), all(vec3<bool>(true, arg_0.b.x, arg_0.b.x))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c.x, 32984u, 4294967295u), ~vec3<u32>(u_input.a.x, arg_2, u_input.c.x)), _wgslsmith_mod_vec3_u32(arg_3.zwy, u_input.c) << (vec3<u32>(u_input.c.x, 0u, arg_2) % vec3<u32>(32u))) & ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 15112u), u_input.c), ~u_input.c.x), arg_3.x), 12u)];
    let var_3 = _wgslsmith_div_u32(min(4294967295u, 31419u), ~u_input.a.x);
    global0 = array<Struct_1, 12>();
    return ~vec4<i32>(max(-47790i, u_input.b) << (~19062u % 32u), u_input.b ^ countOneBits(-15258i), reverseBits(~u_input.b), u_input.b) << ((reverseBits(arg_3) << (select(~u_input.a, reverseBits(vec4<u32>(51243u, 1u, var_3, 18041u)), !select(vec4<bool>(arg_0.b.x, true, var_1.x, true), vec4<bool>(false, false, var_1.x, arg_0.b.x), false)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = array<Struct_1, 12>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b << (u_input.c.x % 32u), ~u_input.b | 0i, 81551i, _wgslsmith_mod_i32(0i, -6284i)), -reverseBits(func_3(Struct_1(u_input.b, vec2<bool>(arg_0.x, false), arg_0.x), -731f, 62319u, u_input.a))), !arg_0, arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f))))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 12u)];
    global0 = array<Struct_1, 12>();
    return -712f;
}

fn func_1() -> vec2<f32> {
    let var_0 = vec4<bool>(all(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), (32211i > u_input.b) && true, false, false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(634f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1241f, 500f), vec2<f32>(264f, var_1)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) - vec2<f32>(var_1, var_1)), vec2<f32>(_wgslsmith_f_op_f32(step(var_1, var_1)), _wgslsmith_f_op_f32(func_2(var_0.wz))), (i32(-1i) * -1i) < (u_input.b | -1i)))) * vec2<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(253f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_mult_u32(~(~firstLeadingBit(25153u)), min(u_input.a.x, 115481u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1512f, -1194f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(645f, 301f)), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-671f, -707f, -141f), vec3<f32>(1475f, 492f, -855f), vec3<bool>(false, true, true))) - vec3<f32>(-171f, 581f, -456f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1041f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(769f + 772f), _wgslsmith_div_f32(2272f, 394f), _wgslsmith_f_op_f32(round(-664f)))))));
}

