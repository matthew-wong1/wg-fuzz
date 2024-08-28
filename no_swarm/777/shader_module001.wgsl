struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 15433u), vec2<u32>(6811u, 8240u), vec2<u32>(13699u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 20216u), vec2<u32>(70180u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(75393u, 0u), vec2<u32>(60627u, 56270u), vec2<u32>(44935u, 15771u), vec2<u32>(34407u, 89807u));

var<private> global1: f32 = 392f;

var<private> global2: array<vec3<i32>, 26>;

var<private> global3: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global4: vec3<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_4 {
    return Struct_4(u_input.a.x, reverseBits(global0[_wgslsmith_index_u32(4294967295u, 11u)]) | ~(reverseBits(vec2<u32>(4294967295u, arg_0)) ^ _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.a.yy, vec2<u32>(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, 224f, -1340f, 780f)), vec4<f32>(-417f, -1000f, 1606f, 331f), !global4.x)), vec4<f32>(_wgslsmith_f_op_f32(848f * -1000f), -1989f, 364f, _wgslsmith_f_op_f32(f32(-1f) * -585f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1483f, 1636f, 1171f, -1222f), vec4<f32>(1166f, -801f, -283f, 1647f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(422f, -2540f, -253f, 2060f) + vec4<f32>(-1000f, -129f, 981f, 679f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1044f, 1049f, 1262f, 1246f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-634f, -184f, -2351f, -627f), vec4<f32>(-564f, -2618f, -1000f, -481f), vec4<bool>(global4.x, true, global4.x, global4.x))), false)))));
}

fn func_3() -> f32 {
    var var_0 = -firstTrailingBit(-19221i);
    global0 = array<vec2<u32>, 11>();
    var var_1 = Struct_2(Struct_1(global4.x, ~u_input.a, select(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-53154i, 6563i, -1i, 1i), vec4<i32>(-7336i, -1i, 6624i, 9507i), true), all(!vec4<bool>(global4.x, global4.x, global4.x, global4.x))), u_input.a.yyx), global4.x);
    let var_2 = Struct_3(min(reverseBits(-(~vec4<i32>(var_1.a.c.x, var_1.a.c.x, 20554i, var_1.a.c.x))), ~(-(~vec4<i32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, var_1.a.c.x)))));
    let var_3 = ~firstLeadingBit(select(u_input.a.x, ~(~u_input.a.x), any(!vec4<bool>(true, global4.x, var_1.b, global4.x))));
    return -1000f;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_2(~u_input.a.x);
    var_0 = Struct_4(44387u, countOneBits(~select(vec2<u32>(var_0.b.x, u_input.a.x), ~u_input.a.zy, !global4.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-480f))) - _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(-619f, var_0.c.x)));
    var var_1 = Struct_3(vec4<i32>(-1i, arg_0.c.x, _wgslsmith_mod_i32(~abs(-59340i), -arg_0.c.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.c.x, -1i), arg_0.c.x << (arg_0.d.x % 32u)), arg_0.c.x)));
    let var_2 = var_0.c.wxx;
    global0 = array<vec2<u32>, 11>();
    return Struct_2(Struct_1(true, arg_0.b, vec4<i32>(-arg_0.c.x & ~arg_0.c.x, -30394i, min(arg_0.c.x, 41798i), ~_wgslsmith_mult_i32(var_1.a.x, var_1.a.x)), _wgslsmith_sub_vec3_u32(~(arg_0.b.xxz ^ vec3<u32>(var_0.a, 62192u, u_input.a.x)), arg_0.b.yyx)), true);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = !(!(!vec4<bool>(true, arg_1.b, arg_1.a.a, arg_1.b | global4.x)));
    global0 = array<vec2<u32>, 11>();
    let var_1 = Struct_3(firstTrailingBit(vec4<i32>(arg_2.a.x, _wgslsmith_mult_i32(arg_1.a.c.x, 13394i) & _wgslsmith_add_i32(-20836i, 11265i), firstLeadingBit(2147483647i), arg_2.a.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-831f)) * _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(floor(-574f)), !arg_1.b)))) + 527f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-2250f, -1280f));
    let var_1 = var_0;
    let var_2 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1396f, var_0, var_1))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_1, var_0)))))), func_1(Struct_1(true, u_input.a, vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec3_u32(u_input.a.yxy, u_input.a.xzz))), Struct_3(~vec4<i32>(-2147483647i, firstLeadingBit(-44167i), 3830i, _wgslsmith_mod_i32(-1i, 10650i))));
    var var_3 = func_2(var_2.a.b.x);
    var var_4 = global2[_wgslsmith_index_u32(var_2.a.d.x, 26u)];
    let var_5 = var_2.a.c & func_4(vec3<f32>(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1155f, var_3.c.x)), var_1), func_4(var_3.c.wxx, func_4(_wgslsmith_f_op_vec3_f32(select(var_3.c.zxw, var_3.c.xzy, global3[_wgslsmith_index_u32(var_2.a.b.x, 27u)])), func_4(var_3.c.zyz, Struct_2(var_2.a, global4.x), Struct_3(var_2.a.c)), Struct_3(vec4<i32>(var_4.x, -35588i, -25151i, -2147483647i))), Struct_3(var_2.a.c)), Struct_3(-var_2.a.c)).a.c;
    var_3 = func_2(4294967295u >> (_wgslsmith_dot_vec4_u32(var_2.a.b, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(var_2.a.b, vec4<u32>(u_input.a.x, 0u, 26438u, 0u)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 1u, 0u, 46508u)))) % 32u));
    var var_6 = vec4<bool>(var_2.b, var_3.a != 1u, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1983f) * _wgslsmith_f_op_f32(var_1 + 965f)) <= 852f) || true, (var_1 == _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1207f, 551f)), _wgslsmith_f_op_f32(round(-133f)))) == true);
    let var_7 = func_2(_wgslsmith_mod_u32(func_2(u_input.a.x).b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~91842u, min(4294967295u, u_input.a.x)), u_input.a.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(15322u, 38564u), -1318f, ~(u_input.a.xwx >> (select(vec3<u32>(var_3.b.x, var_2.a.d.x, var_2.a.b.x), var_2.a.d, var_2.a.c.x > var_2.a.c.x) % vec3<u32>(32u))));
}

