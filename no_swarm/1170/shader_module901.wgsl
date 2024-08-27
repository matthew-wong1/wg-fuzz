struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(62761u, 66052u, 767u), vec3<u32>(1032u, 27017u, 141458u), vec3<u32>(4294967295u, 4294967295u, 45819u), vec3<u32>(9289u, 0u, 142226u), vec3<u32>(27240u, 0u, 4294967295u), vec3<u32>(57916u, 4294967295u, 0u), vec3<u32>(48416u, 16086u, 45677u), vec3<u32>(75668u, 84686u, 9012u), vec3<u32>(39706u, 0u, 1u), vec3<u32>(0u, 99650u, 2741u), vec3<u32>(4294967295u, 1u, 3640u), vec3<u32>(0u, 96224u, 1u), vec3<u32>(61041u, 23691u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    var var_0 = reverseBits(-abs(vec4<i32>(u_input.d, ~u_input.c.x, ~(-2147483647i), global0.x)));
    global2 = array<vec3<u32>, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -616f), vec2<f32>(arg_0, -554f), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, -118f), vec2<f32>(1132f, -1105f))))))));
    var_0 = countOneBits((_wgslsmith_mult_vec4_i32(vec4<i32>(32314i, 2147483647i, u_input.a.x, -14548i), vec4<i32>(13018i, -2147483647i, var_0.x, u_input.d)) >> (vec4<u32>(u_input.b, arg_1.x, arg_1.x, arg_1.x) % vec4<u32>(32u))) >> (~vec4<u32>(arg_1.x, 61003u, u_input.b, 4294967295u) % vec4<u32>(32u))) & vec4<i32>(~countOneBits(global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(41506i, u_input.a.x, -33198i) | var_0.ywz, _wgslsmith_sub_vec3_i32(u_input.a, var_0.www)), _wgslsmith_mod_i32(-abs(21803i), global0.x), global0.x);
    let var_2 = select(vec3<bool>(any(vec3<bool>(true, true, true)), false, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), !vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), all(vec4<bool>(true, true, false, false)) || all(vec4<bool>(true, false, false, true)), true), all(!vec2<bool>(3822u < u_input.b, true)));
    return 14769u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_2(~(~vec4<u32>(0u, 15294u, func_3(arg_0.b, vec4<u32>(u_input.b, u_input.b, 0u, 24020u), 0u), ~u_input.b)), ~(~min(arg_1.x, arg_1.x) | firstLeadingBit(~10067u)), arg_0, arg_0, vec4<i32>(-global0.x, global0.x, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, u_input.d), arg_0.a)), global0.x));
    var_0 = Struct_2(max(var_0.a, var_0.a), var_0.a.x, arg_0, Struct_1(var_0.d.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)), 938f))), var_0.e);
    let var_1 = Struct_2(~(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 32048u, 58439u, var_0.a.x), var_0.a) | var_0.a), u_input.b, Struct_1(abs(select(vec3<i32>(u_input.a.x, -1152i, global0.x) << (vec3<u32>(var_0.a.x, arg_1.x, 83467u) % vec3<u32>(32u)), -arg_0.a, vec3<bool>(false, true, false))), 1000f), Struct_1(~vec3<i32>(45524i, 2147483647i, arg_0.a.x) ^ -vec3<i32>(var_0.d.a.x, var_0.d.a.x, -2147483647i), -1000f), _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(arg_0.a.x, -20314i, var_0.d.a.x, var_0.e.x)), var_0.e) >> (~(~(vec4<u32>(var_0.b, arg_1.x, u_input.b, 0u) >> (var_0.a % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_2 = Struct_2(var_0.a, var_0.b, Struct_1(vec3<i32>(min(i32(-1i) * -1i, 21525i | arg_0.a.x), 1i, ~min(2147483647i, arg_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b - -601f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.b, var_0.d.b, false)) * var_0.d.b)))), var_0.c, var_0.e);
    global2 = array<vec3<u32>, 13>();
    return 0u;
}

fn func_1() -> u32 {
    var var_0 = ~vec3<u32>(abs(u_input.b), ~u_input.b, ~func_2(Struct_1(u_input.a, 1000f), vec3<u32>(61472u, u_input.b, 4294967295u)));
    global0 = vec3<i32>(_wgslsmith_mult_i32(0i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, global0.x), vec4<i32>(global0.x, 0i, global0.x, 23805i)) << (firstLeadingBit(12197u) % 32u))), max(global0.x, ~global0.x), _wgslsmith_div_i32(u_input.d, abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(-12274i, u_input.d), vec2<i32>(u_input.d, -2147483647i)))));
    var var_1 = Struct_1(max(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -13111i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2147483647i, u_input.c.x), u_input.a), _wgslsmith_div_i32(u_input.a.x, -22541i)), vec3<i32>(-11059i, ~u_input.c.x, _wgslsmith_sub_i32(global0.x, u_input.d)))), _wgslsmith_f_op_f32(f32(-1f) * -963f));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, var_0.x), _wgslsmith_clamp_u32(var_0.x, 0u, ~u_input.b) & select(60765u, _wgslsmith_add_u32(u_input.b, 4294967295u), true), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b ^ 50060u, 1u), 4294967295u)), ~global2[_wgslsmith_index_u32(21535u, 13u)], global2[_wgslsmith_index_u32(firstTrailingBit(1u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(21339u, u_input.b), vec2<u32>(1u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4294967295u), var_0.yx)) % 32u)), 13u)]);
    global1 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(~(~vec4<u32>(u_input.b, var_0.x, var_0.x, var_0.x))), ~(vec4<u32>(abs(4294967295u), 1u, 1u, var_0.x << (52098u % 32u)) << (firstTrailingBit(~vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u)) % vec4<u32>(32u))));
    return ~var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b & _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(4030u, 32491u >> (u_input.b % 32u)));
    var var_0 = vec4<i32>(u_input.d, global0.x, abs(_wgslsmith_mod_i32(-1i, -39253i)) << (_wgslsmith_mult_u32(abs(u_input.b ^ u_input.b), 4294967295u) % 32u), -2147483647i);
    let var_1 = abs(global2[_wgslsmith_index_u32(u_input.b, 13u)] & vec3<u32>(func_1(), 0u, u_input.b ^ min(9288u, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(abs(u_input.b), countOneBits(~var_1.x), _wgslsmith_mult_u32(u_input.b, ~var_1.x), reverseBits(~91342u)), select(select(vec4<u32>(u_input.b, var_1.x, 43666u, 33208u), vec4<u32>(u_input.b, 1u, var_1.x, 1u), vec4<bool>(false, true, true, false)) >> (~vec4<u32>(var_1.x, 4294967295u, var_1.x, u_input.b) % vec4<u32>(32u)), min(~vec4<u32>(39067u, 4294967295u, 1u, var_1.x), vec4<u32>(u_input.b, u_input.b, u_input.b, 2360u)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-922f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

