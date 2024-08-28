struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(132f, -1179f, -363f, 162f, -670f, -134f, -1774f, 1310f, -819f, -1151f);

var<private> global1: Struct_2 = Struct_2(2147483647i, vec3<u32>(83883u, 4294967295u, 58922u), Struct_1(vec3<u32>(77278u, 4294967295u, 20693u), vec4<f32>(-1232f, 1451f, -553f, 142f), vec2<i32>(0i, 25003i)));

var<private> global2: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_3(Struct_1(firstLeadingBit(_wgslsmith_mod_vec3_u32(global1.b << (global1.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(global1.b, global1.b))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-240f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1.c.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1809f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.b.x * global1.c.b.x))), vec2<i32>(global1.c.c.x, -2147483647i)), ~firstTrailingBit(vec4<u32>(~25812u, 0u, global1.b.x | global1.c.a.x, global1.c.a.x)), Struct_1(global1.c.a & firstLeadingBit(global1.b), _wgslsmith_f_op_vec4_f32(ceil(global1.c.b)), vec2<i32>(-1i) * -firstTrailingBit(global1.c.c)), Struct_2(-1i, select(firstTrailingBit(vec3<u32>(global1.c.a.x, 41893u, 4804u)), abs(global1.c.a), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))) | select(~global1.c.a, vec3<u32>(u_input.a, 23627u, u_input.a), true), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(45953u, 0u, 1u), ~global1.b, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), _wgslsmith_f_op_vec4_f32(round(global1.c.b)), global1.c.c)), global1.c);
    let var_1 = vec4<bool>(true, true, true, true);
    var_0 = Struct_3(global1.c, ~vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(4294967295u), ~u_input.a), u_input.a, var_0.e.a.x, firstTrailingBit(0u)), var_0.e, Struct_2(-abs(44087i), vec3<u32>(u_input.a, ~(~var_0.c.a.x), var_0.a.a.x), var_0.e), Struct_1(select(global1.b, vec3<u32>(38586u << (0u % 32u), ~u_input.a, _wgslsmith_mult_u32(0u, u_input.a)), var_1.xyx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.c.b, vec4<f32>(-436f, 440f, var_0.a.b.x, global0[_wgslsmith_index_u32(0u, 10u)]), var_1)))), vec2<i32>(-select(var_0.a.c.x, -2769i, var_1.x), global1.c.c.x)));
    let var_2 = abs(abs(firstTrailingBit(min(vec4<i32>(var_0.a.c.x, global1.c.c.x, 42035i, global1.a), vec4<i32>(2147483647i, 22544i, var_0.a.c.x, var_0.a.c.x))) << (~max(vec4<u32>(4294967295u, 103608u, global1.b.x, var_0.a.a.x), vec4<u32>(u_input.a, 5660u, var_0.a.a.x, 7429u)) % vec4<u32>(32u))));
    return vec4<i32>(_wgslsmith_div_i32(global1.c.c.x, max(0i, var_0.a.c.x)), 2147483647i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(~global1.a, firstLeadingBit(max(1i, var_0.e.c.x))), -global1.c.c));
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~59150u, 10u)] - _wgslsmith_f_op_f32(-global1.c.b.x)), _wgslsmith_f_op_f32(step(-226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c.b.x)) - _wgslsmith_div_f32(-369f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 10u)])))))));
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    global2 = true;
    let var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a, 2147483647i), global1.c.c), -1i, ~_wgslsmith_mult_i32(global1.c.c.x, global1.c.c.x), global1.c.c.x), func_3());
    return Struct_2(global1.c.c.x, global1.c.a, Struct_1(firstLeadingBit(vec3<u32>(global1.c.a.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(global1.c.a.x, u_input.a, global1.b.x, 1u)))), _wgslsmith_f_op_vec4_f32(-global1.c.b), var_1.zz));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-14760i, global1.c.c.x, global1.c.c.x, -_wgslsmith_mod_i32(arg_0, -22519i) & _wgslsmith_add_i32(arg_0 | -1i, global1.c.c.x)), ~(-vec4<i32>(arg_0, -1i, global1.c.c.x, _wgslsmith_clamp_i32(arg_0, global1.c.c.x, 2147483647i))));
    var var_1 = Struct_4(func_2());
    let var_2 = Struct_4(Struct_2(_wgslsmith_clamp_i32(var_0.x, -_wgslsmith_sub_i32(13160i, -42263i), _wgslsmith_div_i32(max(1i, -16165i), arg_0)), ~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 0u) >> (vec3<u32>(1u, var_1.a.c.a.x, 79259u) % vec3<u32>(32u))), var_1.a.c));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.b.x * 1199f) + _wgslsmith_f_op_f32(-764f * 794f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global1.c.b.x, -620f, false)))))), -1518f);
    let var_4 = var_2.a;
    return var_4.c.a;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    global1 = func_2();
    global0 = array<f32, 10>();
    global2 = false;
    let var_0 = func_2().c.b.xz;
    let var_1 = 277f;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c;
    let var_1 = func_4(Struct_2(global1.a, firstLeadingBit(func_1(_wgslsmith_div_i32(57150i, 37834i))), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.b)) * _wgslsmith_div_vec4_f32(global1.c.b, var_0.b)), vec2<i32>(-1i) * -global1.c.c)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(min(~var_0.c.x, var_0.c.x & -35041i), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(20236i, 22477i))), var_0.c.x));
    global1 = Struct_2(reverseBits(0i), global1.c.a, func_2().c);
    var var_2 = Struct_2(global1.c.c.x, vec3<u32>(select(~_wgslsmith_clamp_u32(69955u, global1.c.a.x, global1.b.x), ~u_input.a, true), _wgslsmith_clamp_u32(max(global1.b.x, var_0.a.x << (var_1.a.x % 32u)), ~(~var_0.a.x), global1.b.x), firstTrailingBit(var_0.a.x) & _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, 0u, global1.b.x, var_0.a.x), vec4<u32>(global1.c.a.x, 32770u, u_input.a, var_1.a.x))), func_4(Struct_2(abs(var_0.c.x), global1.c.a ^ var_1.a, var_1), -62049i));
    var_2 = func_2();
    var var_3 = var_0.b.x < -1539f;
    var var_4 = Struct_4(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

