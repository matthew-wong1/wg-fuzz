struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

var<private> global2: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    var var_0 = arg_1;
    global0 = Struct_1(~vec2<u32>(~(u_input.b.x << (global0.a.x % 32u)), max(~1u, select(653u, 0u, arg_1.a.a))), ~global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(503f * 1683f) - 643f), 1i);
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(global0.b.x >> (4294967295u % 32u), u_input.c)), vec2<u32>(_wgslsmith_add_u32(8899u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14729u, 1u), vec3<u32>(u_input.c, 63982u, 75546u))), global0.a.x | 1u)), vec2<u32>(4294967295u, select(~reverseBits(u_input.b.x), _wgslsmith_mod_u32(global0.a.x, ~global0.b.x), global2.c)), global2.b, -_wgslsmith_sub_i32(15414i, 0i) << (1u % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-173f, var_0.b, arg_1.b)))) * vec3<f32>(var_1.c, -1267f, 1112f)))));
    var var_3 = arg_2.x;
    return -14829i;
}

fn func_2() -> vec2<i32> {
    var var_0 = !all(select(!vec2<bool>(global2.a.a, global2.c), vec2<bool>(true, true), 1u < u_input.b.x)) | true;
    var var_1 = select((~(~vec4<u32>(global0.a.x, 1u, u_input.b.x, 39118u)) & vec4<u32>(~global0.a.x, ~global0.a.x, 1u, max(72783u, u_input.c))) << (~abs(vec4<u32>(u_input.c, 58707u, 1u, 33493u)) % vec4<u32>(32u)), ~max(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 7336u, global0.b.x), vec4<u32>(global0.a.x, 15145u, global0.b.x, 4294967295u) >> (vec4<u32>(global0.a.x, 1u, 41967u, 8420u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(18875u, global0.b.x, global0.a.x, u_input.c), vec4<u32>(7693u, 4294967295u, 3608u, 49494u) & vec4<u32>(global0.a.x, global0.a.x, global0.b.x, global0.b.x))), select(vec4<bool>(!(!global2.a.a), true, !(global2.a.a & true), func_3(vec2<bool>(false, global2.c), Struct_3(global2.a, 280f, false), vec4<bool>(global2.c, true, global2.a.a, global2.c)) == (26767i >> (u_input.b.x % 32u))), vec4<bool>((true != global2.c) | select(global2.a.a, global2.c, false), global2.a.a, true && all(vec4<bool>(global2.a.a, true, true, true)), firstTrailingBit(u_input.b.x) == global0.b.x), !vec4<bool>(global2.a.a, select(global2.c, true, global2.c), true, select(global2.c, true, global2.a.a))));
    var_0 = !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b * global0.c), -591f, global2.a.a)))) >= 505f);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(exp2(global1.x)) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))));
    var var_3 = -vec3<i32>(10349i, select(1i, -2147483647i, true), ~global0.d);
    return firstLeadingBit(abs(var_3.zz));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = ~u_input.a >> (global0.b.x % 32u);
    var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -34794i), abs(-vec2<i32>(u_input.a, -56548i))), ~global0.d), global0.d);
    let var_1 = firstLeadingBit(~vec3<u32>(~u_input.b.x, global0.a.x, u_input.b.x | ~global0.b.x));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(global0.d, u_input.a), func_2());
    let var_3 = Struct_4(func_2(), Struct_1(select(global0.a, ~(~vec2<u32>(4294967295u, global0.b.x)), vec2<bool>(true, arg_0.x)), vec2<u32>(~(~68739u), abs(_wgslsmith_div_u32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.c)) + _wgslsmith_f_op_f32(max(-179f, global1.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-881f, 864f)), _wgslsmith_f_op_f32(f32(-1f) * -1459f)))), min(-(var_2.x ^ -2147483647i), -1i)), var_1.xz, reverseBits(vec4<i32>(35004i, ~_wgslsmith_clamp_i32(global0.d, u_input.a, -22163i), global0.d, global0.d >> (_wgslsmith_mod_u32(u_input.c, 92451u) % 32u))), vec4<bool>(!(arg_2.a & (global0.b.x != 69193u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) > _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1177f, global2.b)), _wgslsmith_f_op_f32(-global1.x)), false));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(global0.c * var_3.b.c)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x * global1.x))))) * vec3<f32>(-245f, -1579f, _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(select(global0.c, var_3.b.c, all(vec3<bool>(true, false, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(global2.a.a, _wgslsmith_f_op_f32(-global0.c) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)), false, all(vec3<bool>(true, global2.a.a, global1.x <= -1010f))));
    var var_1 = Struct_1(reverseBits(vec2<u32>(0u, 27861u)), global0.a, global2.b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.d, -1i), global0.d));
    var var_2 = global0.d;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(!select(!vec4<bool>(global2.c, false, true, true), !vec4<bool>(false, false, global2.a.a, global2.a.a), !vec4<bool>(false, global2.a.a, global2.a.a, global2.c)), global2.a, global2.a)));
    let var_3 = -(~(max(-vec2<i32>(-21892i, -1i), min(vec2<i32>(global0.d, global0.d), vec2<i32>(var_1.d, 25767i))) ^ -(vec2<i32>(global0.d, global0.d) ^ vec2<i32>(global0.d, -1i))));
    let var_4 = any(!select(select(select(vec2<bool>(true, global2.c), vec2<bool>(false, true), global2.a.a), vec2<bool>(global2.c, global2.a.a), select(vec2<bool>(global2.c, false), vec2<bool>(global2.c, global2.c), vec2<bool>(false, false))), vec2<bool>(!global2.c, global2.c), all(select(vec4<bool>(false, global2.c, false, global2.a.a), vec4<bool>(false, true, false, true), vec4<bool>(global2.a.a, global2.a.a, global2.c, false)))));
    var var_5 = ~global0.a.x;
    var var_6 = Struct_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(5163i, 1i), var_1.a.x, -reverseBits(vec4<i32>(~var_1.d, var_3.x, var_1.d, -1i)), global0.a);
}

