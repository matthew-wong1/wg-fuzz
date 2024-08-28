struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -6197i, i32(-2147483648), 51630i);

var<private> global1: array<Struct_4, 18>;

var<private> global2: array<Struct_3, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_3, 28>();
    global2 = array<Struct_3, 28>();
    let var_0 = countOneBits(_wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(global0.x, -2147483647i, -14572i)), countOneBits(vec3<i32>(-u_input.a.x, abs(-2147483647i), -17736i)), global0.xzz));
    var var_1 = false;
    global0 = vec4<i32>(_wgslsmith_sub_i32(reverseBits(i32(-1i) * -3500i), var_0.x), u_input.a.x, _wgslsmith_sub_i32(-64163i, ~(~(u_input.a.x & global0.x))), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(32312i, -54682i, 34581i, -58054i), vec4<i32>(-36798i, u_input.a.x, 0i, -53234i)) | -10882i));
    return Struct_1(_wgslsmith_mod_i32(global0.x, -(~var_0.x)), -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, var_0.x, var_0.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, -11306i, global0.x), vec4<i32>(1i, global0.x, -2147483647i, u_input.a.x))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(10961i, 46457i, -2147483647i, u_input.a.x)), vec4<i32>(16552i, var_0.x, 2147483647i, 46805i))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(881f, _wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1378f, -817f)) * 629f))), -364f, -325f), vec4<bool>(any(vec4<bool>(true, true, true, true)), -(~2147483647i) >= _wgslsmith_dot_vec4_i32(-vec4<i32>(-15918i, -2147483647i, -35869i, 12437i), -vec4<i32>(var_0.x, 0i, 47286i, u_input.a.x)), true, true), vec2<i32>(u_input.a.x, -1i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(1332f, arg_0));
    let var_1 = Struct_1(-34477i, arg_2.a.b.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.b.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b.c.x, arg_2.c.c.x, arg_0)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1428f - 1000f), 474f) * arg_2.b.b.c)), arg_2.b.b.d, abs(-firstLeadingBit(vec2<i32>(global0.x, 10574i)) | select(vec2<i32>(u_input.a.x, -11952i), countOneBits(vec2<i32>(u_input.a.x, global0.x)), vec2<bool>(arg_2.c.d.x, true))));
    var var_2 = _wgslsmith_sub_u32(firstTrailingBit(arg_1.x), _wgslsmith_add_u32(45552u, _wgslsmith_mod_u32(4294967295u & arg_1.x, ~1u) << (~arg_1.x % 32u)));
    global1 = array<Struct_4, 18>();
    let var_3 = select(arg_1.x, 29417u >> (~arg_1.x % 32u), all(!(!select(vec2<bool>(var_1.d.x, arg_2.b.a.x), arg_2.b.a.xx, vec2<bool>(var_1.d.x, true)))));
    return 10543i;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = ~(~(~(~vec2<u32>(43915u, 4294967295u)) >> (~(vec2<u32>(arg_1, 19124u) << (vec2<u32>(1451u, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = max(max(917u >> (_wgslsmith_mult_u32(arg_1 | 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(arg_1, 4294967295u, 60980u))) % 32u), var_0.x), ~min(_wgslsmith_div_u32(var_0.x, var_0.x), firstLeadingBit(8902u >> (arg_1 % 32u))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~reverseBits(vec2<u32>(var_0.x, var_0.x)) | _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(2194u, 0u)), ~vec2<u32>(var_0.x, arg_1))), ~vec2<u32>(~(~arg_1), _wgslsmith_mult_u32(~1u, 0u))), 18u)];
    let var_3 = global1[_wgslsmith_index_u32(26874u >> (countOneBits(1u) % 32u), 18u)];
    global0 = vec4<i32>(u_input.a.x, ~0i, global0.x, var_2.a.b.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.c.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    global0 = vec4<i32>(~2147483647i, 0i, -_wgslsmith_add_i32(~(-5643i), ~u_input.a.x | ~u_input.a.x), -u_input.a.x);
    var var_0 = global2[_wgslsmith_index_u32(1u, 28u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-1853f, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 1u), vec3<u32>(13733u, 1u, 0u)), any(select(vec2<bool>(arg_0.x, arg_0.x), select(vec2<bool>(false, false), arg_0, arg_0), select(var_0.b.d.wy, arg_0, arg_0.x))), func_3(_wgslsmith_f_op_f32(2489f - _wgslsmith_f_op_f32(var_0.b.c.x * -1574f)), vec3<u32>(1u, 1u, 1u), Struct_4(global2[_wgslsmith_index_u32(~46752u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)], func_2())))));
    var_0 = global2[_wgslsmith_index_u32(abs(~0u), 28u)];
    var var_2 = ~(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(37692u, 21635u, 0u, 14323u), vec4<u32>(72119u, 0u, 20188u, 4294967295u))) >> (65253u % 32u)) == reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(29356u, 30005u)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 1u, 77198u)), ~vec3<u32>(1u, 1u, 1u)) == 1u;
    global0 = vec4<i32>(u_input.a.x, select(_wgslsmith_mod_i32(-func_1(vec2<bool>(var_0, false), 443f), 2147483647i), 1i, var_0 || all(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0))), _wgslsmith_add_i32(-1i, u_input.a.x), u_input.a.x);
    let var_1 = func_2();
    let var_2 = -reverseBits(vec4<i32>(_wgslsmith_add_i32(var_1.a, firstTrailingBit(u_input.a.x)), -global0.x, _wgslsmith_mod_i32(~77549i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.a)), -5428i));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(6338u, 22480u, min(_wgslsmith_add_u32(45865u << (_wgslsmith_clamp_u32(43014u, 1u, 1u) % 32u), _wgslsmith_mult_u32(~0u, 1u)), 1u)), 18u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.b.c.x - 1961f))), 1f, _wgslsmith_f_op_f32(min(1349f, _wgslsmith_f_op_f32(-1f))), var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(1u, 1u, 1u) ^ vec3<u32>(70955u, _wgslsmith_clamp_u32(0u, 89619u, 16679u), ~1u)), 1u | _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(11224u, 17375u)), select(vec2<u32>(5844u, 4294967295u), vec2<u32>(23106u, 44131u), var_1.d.xz), ~vec2<u32>(16375u, 4294967295u)), ~vec2<u32>(1u, 39685u)), _wgslsmith_f_op_f32(-var_4.x));
}

