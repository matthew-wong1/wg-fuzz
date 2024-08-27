struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec2<i32>(1i, 1i), -1031f, -263f, 63894u), 1316f), Struct_2(Struct_1(vec2<i32>(0i, -28631i), 226f, -1425f, 0u), -152f), Struct_2(Struct_1(vec2<i32>(49290i, -1i), 589f, 390f, 4294967295u), -1000f), Struct_2(Struct_1(vec2<i32>(-4172i, -16697i), -1000f, 1000f, 79880u), -833f), Struct_2(Struct_1(vec2<i32>(9214i, i32(-2147483648)), 1000f, -948f, 7423u), -597f), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), -1000f, -339f, 41023u), 891f), Struct_2(Struct_1(vec2<i32>(10084i, -45099i), 1052f, 906f, 4195u), -1000f), Struct_2(Struct_1(vec2<i32>(-11875i, -5188i), 1087f, 1713f, 1u), 1307f), Struct_2(Struct_1(vec2<i32>(1i, 0i), 1102f, 627f, 22833u), 1000f), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), -313f, -1783f, 1u), 625f), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), -533f, 583f, 5466u), -965f));

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<u32>(1u, 0u, 0u), 1i, vec2<u32>(60632u, 114284u)), Struct_3(vec3<u32>(9978u, 6401u, 4294967295u), 0i, vec2<u32>(4294967295u, 1u)), Struct_3(vec3<u32>(13912u, 59727u, 26746u), 10448i, vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec3<u32>(0u, 1u, 1u), 73558i, vec2<u32>(0u, 78704u)), Struct_3(vec3<u32>(0u, 0u, 1u), 0i, vec2<u32>(1u, 0u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u), -53446i, vec2<u32>(2287u, 79878u)), Struct_3(vec3<u32>(20661u, 35371u, 0u), -8865i, vec2<u32>(0u, 0u)));

var<private> global2: array<f32, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(arg_0.b, u_input.a.x), vec2<i32>(arg_0.b, arg_0.b)), _wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, 1i)) >> (vec2<u32>(73945u, u_input.d.x) % vec2<u32>(32u))), ~(~_wgslsmith_div_vec2_i32(u_input.a.yy, u_input.a.xx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f), 1618f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(arg_0.a.x, 64012u)), 28u)]), 4294967295u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = -151f;
    var var_1 = global1[_wgslsmith_index_u32(~1u, 7u)];
    return 0u;
}

fn func_2() -> bool {
    global0 = array<Struct_2, 11>();
    let var_0 = 98221u;
    global2 = array<f32, 28>();
    var var_1 = select(vec2<bool>(true, _wgslsmith_mod_i32(-24647i, _wgslsmith_mod_i32(u_input.c, -1i)) >= 1i), select(vec2<bool>(true, true), vec2<bool>(true, true), false || all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), false);
    let var_2 = ~func_3(28025u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0, 28u)], -495f)), global2[_wgslsmith_index_u32(22288u, 28u)], global2[_wgslsmith_index_u32(var_0, 28u)]), vec3<bool>(true, true, !var_1.x));
    return (abs(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_2), u_input.d.zx))) >= u_input.d.x) | !(!all(!vec4<bool>(true, true, var_1.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(global1[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(-674f * global2[_wgslsmith_index_u32(6042u, 28u)]));
    let var_1 = select(true, !func_2(), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.b, -221f), vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.d, 28u)], 770f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -749f), vec2<f32>(-373f, var_0.a.b)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(81884u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]), vec2<f32>(global2[_wgslsmith_index_u32(39428u, 28u)], global2[_wgslsmith_index_u32(var_0.a.d, 28u)])))), vec2<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(func_1(Struct_3(vec3<u32>(u_input.b, 14420u, 4294967295u), 27457i, vec2<u32>(4294967295u, 4294967295u))).d, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -114f))), -1033f), vec2<bool>(!any(vec4<bool>(var_1, true, false, false)), var_1)))));
    global0 = array<Struct_2, 11>();
    global1 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1467f), -(~(~var_0.a.a.x) << (u_input.d.x % 32u)), vec4<i32>(~_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, u_input.a.x), 62054i), _wgslsmith_dot_vec2_i32(u_input.a.zy, -vec2<i32>(u_input.c, -46462i)) ^ -var_0.a.a.x, _wgslsmith_mod_i32(firstTrailingBit(~u_input.a.x), _wgslsmith_clamp_i32(-25494i, 1i, 2147483647i)), _wgslsmith_mult_i32(-27324i, u_input.c)), 36464i);
}

