struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: array<f32, 11> = array<f32, 11>(-762f, -216f, 962f, -1474f, -745f, 1000f, 219f, 1604f, -649f, -353f, 1012f);

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-473f, 1907f));

var<private> global4: bool = false;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = true | all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), select(false, true, true)));
    let var_1 = !vec4<bool>(var_0, var_0, _wgslsmith_mod_u32(0u, u_input.a.x) <= ~u_input.b.x, any(select(select(vec4<bool>(var_0, true, false, false), vec4<bool>(var_0, var_0, true, var_0), var_0), vec4<bool>(false, var_0, var_0, false), var_0)));
    var var_2 = Struct_4(~countOneBits(~(~u_input.b.ywz)), -(~(firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, 13920i)) << (u_input.b.wzw % vec3<u32>(32u)))));
    let var_3 = Struct_4(~reverseBits(_wgslsmith_clamp_vec3_u32(var_2.a >> (u_input.b.wyx % vec3<u32>(32u)), ~u_input.a, ~var_2.a)), var_2.b);
    global2 = array<f32, 11>();
    return all(select(!(!(!var_1.xz)), vec2<bool>(true, var_0), vec2<bool>(all(vec2<bool>(true, var_0)), true)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = !(!func_3(_wgslsmith_f_op_f32(-global3.a.x))) | all(!(!(!vec2<bool>(arg_3.a, false))));
    var var_0 = vec2<bool>(arg_3.a, true);
    var var_1 = Struct_3(arg_0, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.a.x) * arg_1.a)));
    var var_2 = arg_3.b.x;
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1737f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x & _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), -14681i | abs(u_input.c.x), ~u_input.c.x, abs(u_input.c.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, 2147483647i, -35909i, -2147483647i)), vec4<i32>(-2147483647i, 1i, 2430i, u_input.c.x)) >> (32032u % 32u), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, 30061i), u_input.c.x ^ -2147483647i)), u_input.c.x, select(u_input.c.x ^ -16440i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c.x, 0i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -5596i, 42055i)), false) >> (24258u % 32u)));
    global2 = array<f32, 11>();
    global1 = arg_1;
    let var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(u_input.c.x >> (14697u % 32u), -3102i), u_input.c.x), _wgslsmith_div_vec3_i32(~(-vec3<i32>(-18075i, u_input.c.x, u_input.c.x)), vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(arg_1.a, arg_1.a)))));
    return Struct_1(all(vec3<bool>(_wgslsmith_f_op_f32(floor(-1000f)) < 836f, true, true)), _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, -145f, arg_0.x))), arg_0)), min(var_1, vec3<i32>(1i, u_input.c.x, 21075i)));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(func_2(max(arg_0.c.x, u_input.c.x), Struct_2(_wgslsmith_div_vec2_f32(arg_0.b.yy, vec2<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), 920f))), ~(~(~119728u)), func_4(arg_0.b, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(1846f + 574f), _wgslsmith_f_op_f32(-282f - global2[_wgslsmith_index_u32(u_input.a.x, 11u)]))))));
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    global0 = all(arg_0.yxw);
    var var_0 = countOneBits(reverseBits(vec4<u32>(1u, u_input.b.x, u_input.a.x, 38815u)));
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.c, ~u_input.c);
    let var_2 = global3.a;
    var var_3 = _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(-2147483647i, Struct_2(global1.a), 1u, Struct_1(false, vec3<f32>(var_2.x, -155f, global2[_wgslsmith_index_u32(var_0.x, 11u)]), vec3<i32>(var_1, 2147483647i, u_input.c.x)))), global1.a.x, _wgslsmith_f_op_f32(-global3.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-global3.a))), -2147483647i));
    return StorageBuffer(1i, -370f, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1, u_input.c.x, 1i), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a.x, 915f, 393f), vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 11u)], -681f, 222f), arg_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -925f, -1383f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.x - 156f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -357f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -33714i;
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1188f, -1412f))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 694f) + global3.a)))), _wgslsmith_f_op_vec2_f32(select(global3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global1.a.x)), vec2<bool>(u_input.c.x < u_input.c.x, true))))));
    var_0 = 14120i;
    global3 = var_1;
    let x = u_input.a;
    s_output = func_1(vec4<bool>(!(!all(vec3<bool>(false, true, false))), true, _wgslsmith_add_i32(abs(1i), u_input.c.x) != (_wgslsmith_mult_i32(u_input.c.x, u_input.c.x) & select(2147483647i, u_input.c.x, true)), true));
}

