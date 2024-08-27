struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(32414u, 57092u));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(4993u, 14069u));

var<private> global2: array<Struct_1, 31>;

var<private> global3: vec4<i32>;

var<private> global4: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<u32>(1u, 136909u)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = 0i & _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(max(u_input.a.x, 8465i), -2147483647i >> (arg_2.a.x % 32u), _wgslsmith_mod_i32(3705i, 2147483647i)), 1018i, ~0i ^ reverseBits(global3.x)), u_input.a);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(select(countOneBits(vec4<i32>(-20348i, global3.x, u_input.a.x, global3.x)), vec4<i32>(-79820i, u_input.a.x, 12881i, 1i), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false))), vec4<i32>(-1i) * -(vec4<i32>(2147483647i, 2147483647i, -26114i, u_input.a.x) >> (vec4<u32>(u_input.b, 4294967295u, 43143u, u_input.b) % vec4<u32>(32u)))), select(var_0, 14778i, any(vec4<bool>(true, true, true, true))), 0i, 1i);
    var var_2 = true;
    global1 = Struct_1(vec2<u32>(4294967295u, 4294967295u));
    var var_3 = false;
    return global1.a.x < _wgslsmith_sub_u32(~(~(~45885u)), global0.a.x);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = ~firstLeadingBit(~(~30968u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(51531u, 34346u, global1.a.x, global1.a.x), vec4<u32>(1u, global0.a.x, global1.a.x, 0u))));
    let var_1 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), func_3(Struct_1(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, -947f, -1990f) - vec3<f32>(-550f, 133f, 356f)), Struct_1(vec2<u32>(global1.a.x, 0u)), -1620f) & select(select(false, false, true), true, false));
    var_0 = firstTrailingBit(u_input.b);
    global3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(2147483647i), -34151i ^ (u_input.a.x | _wgslsmith_mod_i32(-68078i, arg_0)), arg_0, global3.x), abs(-(~(-vec4<i32>(u_input.a.x, global3.x, -31093i, global3.x)))), vec4<i32>(_wgslsmith_div_i32(~global3.x, arg_0), _wgslsmith_mod_i32(0i, -(~(-32346i))), max(~_wgslsmith_sub_i32(-2147483647i, -1i), arg_0), max(~arg_0 & firstLeadingBit(arg_0), 25871i)));
    let var_2 = !(!(!vec3<bool>(!var_1.x, false, var_1.x)));
    return select(select(select(!var_2, var_2, var_2.x), var_2, var_2), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1327f, -1274f, var_1.x)) * _wgslsmith_f_op_f32(1100f * 636f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-461f)) * _wgslsmith_f_op_f32(abs(-2293f))), true, true), var_2.x);
}

fn func_1() -> Struct_1 {
    let var_0 = 8042i;
    var var_1 = _wgslsmith_div_f32(-437f, -398f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, -278f, 106f) * vec3<f32>(-1765f, -206f, 282f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, 966f, -584f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1501f, -775f, 162f)), vec3<f32>(1f, 1f, 1f), true)), func_2(~1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(251f - -692f), _wgslsmith_f_op_f32(floor(-126f)))))));
    let var_3 = Struct_1(select(vec2<u32>(_wgslsmith_mult_u32(abs(4294967295u), 1u), ~global1.a.x), reverseBits(~(~global0.a)), ~(~u_input.b) <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, u_input.b, global0.a.x), vec4<u32>(global0.a.x, 41580u, u_input.b, global0.a.x))));
    global2 = array<Struct_1, 31>();
    return global4[_wgslsmith_index_u32(_wgslsmith_add_u32(13450u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(110536u, 1u, 23097u)), reverseBits(vec3<u32>(4294967295u, 14566u, 40302u))), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_3.a.x, global0.a.x, 5747u), vec3<u32>(4294967295u, var_3.a.x, global1.a.x)), ~vec3<u32>(45185u, 4294967295u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(23641u, 0u, global0.a.x), vec3<u32>(27421u, global1.a.x, u_input.b)))), 51496u), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(491f, _wgslsmith_f_op_f32(round(661f)), 1100f, 1108f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1219f * 303f), _wgslsmith_f_op_f32(select(420f, 1445f, false)), true)), -767f, 1262f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) * -1202f))));
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(-1000f <= _wgslsmith_f_op_f32(var_0.x - var_0.x), false, any(vec4<bool>(true, true, true, true))), false);
    global2 = array<Struct_1, 31>();
    let var_2 = u_input.b;
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a.x, _wgslsmith_add_u32(51448u, _wgslsmith_add_u32(_wgslsmith_mult_u32(select(22741u, u_input.b, false), ~4294967295u), ~(~1u))), global1.a.x, vec3<i32>(~firstTrailingBit(1i), firstLeadingBit(firstLeadingBit(40460i)), 1i));
}

