struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = global0.x;
    var_0 = i32(-1i) * -(~(i32(-1i) * -global0.x));
    let var_1 = global1.b;
    var var_2 = select(vec2<bool>(!any(vec3<bool>(true, true, true)), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, true)), true), all(vec4<bool>(true, true, true, true))), !all(vec3<bool>(false, true, true))), true);
    return ~(~(-14498i));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> Struct_5 {
    global0 = vec4<i32>(1i, reverseBits(global1.c.x), -34188i, global0.x);
    let var_0 = Struct_5(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, arg_1), 22u)], -abs(global0.x), Struct_4(global1.a, min(~_wgslsmith_mult_vec3_i32(global1.b, vec3<i32>(1173i, 2147483647i, arg_0.x)), vec3<i32>(global0.x << (u_input.a % 32u), -16888i, firstTrailingBit(-8453i))), firstLeadingBit(max(~arg_0, global1.b))), Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.x, arg_0.x), 1i))), _wgslsmith_mod_i32(-func_3() ^ abs(max(30932i, global1.c.x)), abs(-32044i)));
    global2 = array<Struct_2, 22>();
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1455f - 193f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1322f)))));
    return Struct_5(var_0.d, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_1.a.a, global0.x, -1i, 31418i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 33308i, var_0.d.a.a), vec4<i32>(var_1.c.x, global0.x, global1.a.a, arg_0.x))), firstLeadingBit(-vec4<i32>(-14408i, var_0.b, -27733i, var_1.b.x))), -27061i, -select(_wgslsmith_sub_i32(global0.x, var_0.c.a.a), i32(-1i) * -2394i, all(vec2<bool>(false, false)))), var_0.c, var_0.d, ~(-9867i));
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2(global0.xww, ~_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, firstTrailingBit(38969u)), ~_wgslsmith_div_u32(u_input.a, 19334u)), ~(1u | u_input.a));
    global2 = array<Struct_2, 22>();
    var_0 = func_2(global1.c, select(u_input.a, u_input.a, global1.c.x <= ((global0.x & -2147483647i) & ~global1.b.x)), _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4451u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), ~firstLeadingBit(101881u) << (u_input.a % 32u)));
    global2 = array<Struct_2, 22>();
    global2 = array<Struct_2, 22>();
    return -(~(~(~vec4<i32>(41824i, -7953i, 32427i, global0.x) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 4408u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = vec4<i32>(i32(-1i) * -2147483647i, firstTrailingBit(~(~arg_3.x)), 2147483647i, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(i32(-1i) * -56857i, global1.c.x, ~(-2147483647i), ~arg_0.x))));
    global1 = Struct_4(Struct_1(arg_0.x), max(firstTrailingBit(arg_3.yyw), -_wgslsmith_clamp_vec3_i32(global0.xzw, arg_0, -vec3<i32>(arg_0.x, arg_2.x, -2147483647i))), vec3<i32>(func_2(arg_2.xxz, _wgslsmith_div_u32(abs(u_input.a), ~u_input.a), _wgslsmith_add_u32(u_input.a, ~1u)).b, _wgslsmith_sub_i32(~44392i | (global1.b.x & global0.x), 2474i), 1i));
    var var_0 = vec4<i32>(14131i, 1i, -12850i, 42792i);
    global0 = -firstLeadingBit(select(~vec4<i32>(var_0.x, 2147483647i, 0i, arg_3.x), arg_2, vec4<bool>(false, true, false, true)) << (firstTrailingBit(~vec4<u32>(0u, 5611u, 1u, 70823u)) % vec4<u32>(32u)));
    var var_1 = ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 59081u);
    return func_2(vec3<i32>(func_1().x, 1i, 0i) << (abs(~_wgslsmith_add_vec3_u32(var_1.yxz, var_1.yzx)) % vec3<u32>(32u)), 4294967295u, abs(1u)).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)))));
    global1 = Struct_4(func_4(vec3<i32>(_wgslsmith_mod_i32(-2049i, 19889i), reverseBits(~global1.a.a), global0.x), var_0, func_1(), _wgslsmith_add_vec4_i32(vec4<i32>(-1854i, -global1.c.x, global1.a.a, max(2147483647i, -1i)), -(vec4<i32>(global0.x, global0.x, 1i, -30279i) & vec4<i32>(0i, global1.a.a, global0.x, 2147483647i)))), ~global1.c, global1.b);
    var var_1 = -1068f;
    var var_2 = Struct_3(Struct_1(global0.x), true);
    let var_3 = false;
    let var_4 = Struct_3(Struct_1(~17107i & ((global1.a.a >> (0u % 32u)) >> (u_input.a % 32u))), !(!var_3));
    let var_5 = Struct_5(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 37712u, 0u), vec3<u32>(1u, u_input.a, u_input.a)), _wgslsmith_add_u32(1u, u_input.a)), reverseBits(~vec4<u32>(u_input.a, u_input.a, 9390u, u_input.a))), 22u)], ~(~(~804i)), Struct_4(Struct_1(global1.b.x), global0.zzx, vec3<i32>(global1.a.a, var_2.a.a, -2147483647i)), Struct_2(var_2.a), -12618i);
    var var_6 = var_5.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(-182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * 996f))) + 282f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1412f, 198f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 442f, 1188f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-871f, var_0, 950f) - vec3<f32>(var_0, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 373f, 853f) + vec3<f32>(-557f, -1968f, 1347f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1239f));
}

