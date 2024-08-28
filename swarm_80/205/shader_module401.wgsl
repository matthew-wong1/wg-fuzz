struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-1i, 25082i, 2147483647i, 1i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 37432i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, -8995i, 48061i, 1i), vec4<i32>(-3932i, 0i, 1i, 33401i), vec4<i32>(-1i, i32(-2147483648), -27022i, -3498i), vec4<i32>(14126i, 42148i, 11171i, -14636i), vec4<i32>(31293i, -2685i, 2147483647i, 17214i), vec4<i32>(33514i, 0i, 2147483647i, -9444i), vec4<i32>(6921i, 0i, 0i, 903i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 4992i, 16302i), vec4<i32>(1i, -48722i, -1i, -11301i), vec4<i32>(-1i, -50410i, -1i, 22704i), vec4<i32>(8922i, -26612i, 2147483647i, -33507i), vec4<i32>(6172i, -28048i, 1i, 1i), vec4<i32>(-14293i, 0i, -18852i, -7647i), vec4<i32>(1i, -14000i, 44475i, 0i), vec4<i32>(-11813i, 12379i, 2147483647i, 0i), vec4<i32>(0i, 10702i, 2147483647i, -364i), vec4<i32>(8198i, 0i, -19472i, -1i), vec4<i32>(0i, -1i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -1i, 24174i, -3620i), vec4<i32>(0i, 24745i, -52783i, -1i));

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(800f, -650f, 225f, -910f), vec4<f32>(1000f, -1390f, -961f, -217f), vec4<f32>(463f, 669f, -1942f, 558f), vec4<f32>(-1000f, 707f, 358f, -136f), vec4<f32>(-955f, -930f, -909f, -397f), vec4<f32>(1000f, -596f, 1144f, -643f), vec4<f32>(-741f, 1133f, 351f, -1574f), vec4<f32>(-426f, 236f, -1000f, 717f));

var<private> global2: array<u32, 1>;

var<private> global3: array<i32, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 24>();
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(u_input.a, 3u)] != global3[_wgslsmith_index_u32(~min(1u, u_input.a), 3u)], ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(97013u, 1u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 4294967295u), vec2<bool>(false, false)), ~vec2<u32>(u_input.a, 55664u)), ~vec2<u32>(u_input.a, 4294967295u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1119f, -397f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-604f + 1420f), 516f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1263f + -1376f), _wgslsmith_f_op_f32(trunc(1109f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2() -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(func_3()));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(503f);
    let var_1 = func_2();
    global0 = array<vec4<i32>, 24>();
    global2 = array<u32, 1>();
    global1 = array<vec4<f32>, 8>();
    return Struct_2(!(!all(vec3<bool>(false, false, true))), ~vec2<u32>(u_input.a, reverseBits(u_input.a & global2[_wgslsmith_index_u32(0u, 1u)])));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> vec4<i32> {
    let var_0 = 43535u;
    var var_1 = Struct_5(Struct_3(986f), min(global2[_wgslsmith_index_u32(abs(arg_2), 1u)], (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 25518u), 1u)] >> (1u % 32u)) & _wgslsmith_dot_vec2_u32(arg_0.b << (vec2<u32>(arg_3, global2[_wgslsmith_index_u32(var_0, 1u)]) % vec2<u32>(32u)), arg_0.b)), Struct_1(-_wgslsmith_add_i32(1i, ~arg_1.a.a), select(vec3<bool>(true, true, false || arg_0.a), select(arg_1.b.b, vec3<bool>(true, true, arg_0.a), !arg_1.a.b), arg_1.a.b.x), vec2<bool>(true, arg_1.b.c.x)));
    let var_2 = !vec4<bool>(arg_0.a, arg_0.a, !any(arg_1.a.b), any(!var_1.c.b.zy));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return ~vec4<i32>(var_1.c.a, ~var_1.c.a, var_1.c.a, -global3[_wgslsmith_index_u32(u_input.a, 3u)] & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.c.a, var_1.c.a, global3[_wgslsmith_index_u32(var_0, 3u)]), vec4<i32>(1865i, 18912i, 1i, -28585i))) & ~vec4<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(14360u, 1u), 3u)], _wgslsmith_mult_i32(-2147483647i, var_1.c.a)), countOneBits(global3[_wgslsmith_index_u32(var_1.b & 84429u, 3u)]), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(var_0, 3u)], 0i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_dot_vec4_i32(func_4(func_1(), Struct_4(Struct_1(2147483647i, vec3<bool>(true, true, false), vec2<bool>(false, true)), Struct_1(-1i, vec3<bool>(true, true, false), vec2<bool>(false, true))), 1u, 1u), firstTrailingBit(vec4<i32>(2147483647i, -1i, -27926i, global3[_wgslsmith_index_u32(u_input.a, 3u)]))) < global3[_wgslsmith_index_u32(u_input.a, 3u)]);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)), false)), _wgslsmith_f_op_f32(func_3()));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, 269f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -803f)))))) - vec2<f32>(1942f, -664f));
    global2 = array<u32, 1>();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(1u), vec4<f32>(-1183f, _wgslsmith_f_op_f32(func_3()), -571f, -158f), _wgslsmith_f_op_f32(sign(110f)));
}

