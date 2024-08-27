struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: vec3<i32> = vec3<i32>(12620i, -1i, 0i);

var<private> global2: Struct_4;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    global0 = array<Struct_4, 10>();
    var var_0 = _wgslsmith_mult_u32(firstLeadingBit(firstLeadingBit(firstLeadingBit(arg_0.b))), 0u);
    var var_1 = Struct_1(~((vec2<u32>(1u, u_input.b.x) >> (~vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u))) | vec2<u32>(~global2.a.b, 15618u)), _wgslsmith_f_op_f32(1117f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2366f))))), any(vec4<bool>(true, true, all(vec2<bool>(false, true)) && true, true)), max(select(_wgslsmith_clamp_u32(arg_0.b, ~u_input.c.x, u_input.c.x), 7109u, false), ~(~76607u)));
    var var_2 = Struct_4(Struct_3(arg_0.a, _wgslsmith_add_u32(81869u, global2.a.b), arg_0.c));
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, firstLeadingBit(38181u)), vec2<u32>(_wgslsmith_mod_u32(global2.a.b, global2.a.b), var_1.d) ^ ~u_input.b);
    return vec4<bool>(false, (var_2.a.c.x | -max(2147483647i, -22849i)) >= abs(u_input.d), var_1.c, var_1.c || true);
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = -19286i;
    global1 = global2.a.c;
    let var_1 = Struct_5(Struct_1(select(~firstTrailingBit(vec2<u32>(u_input.a, global2.a.b)), ~u_input.c.zx, arg_0.zy), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(103f, _wgslsmith_f_op_f32(sign(170f)))), arg_0.x, u_input.b.x), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(u_input.c.wx << (u_input.c.ww % vec2<u32>(32u)), reverseBits(vec2<u32>(u_input.a, 16011u)))), 389f, true, ~0u), global0[_wgslsmith_index_u32(abs(14116u >> (u_input.c.x % 32u)), 10u)]);
    var var_2 = true;
    global0 = array<Struct_4, 10>();
    return func_3(global2.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_div_i32(-_wgslsmith_sub_i32(global1.x, arg_2.x), min(~global2.a.c.x, _wgslsmith_dot_vec2_i32(global1.yz, vec2<i32>(23593i, global1.x)))), 76583u, vec3<i32>(2147483647i, _wgslsmith_div_i32(global1.x, u_input.d & u_input.d), global2.a.c.x)));
    let var_1 = Struct_4(Struct_3(-(~_wgslsmith_div_i32(48562i, arg_2.x)), ~(var_0.a.b ^ max(0u, 50067u)), -global2.a.c));
    var var_2 = 27426i | global2.a.a;
    let var_3 = select(arg_0.wy, func_3(var_0.a).wy, arg_0.zx);
    var var_4 = ~u_input.a;
    return Struct_1(u_input.c.zx, -825f, !var_3.x, ~global2.a.b);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    global0 = array<Struct_4, 10>();
    var var_0 = global2.a.a;
    var_0 = _wgslsmith_dot_vec3_i32(global2.a.c, -(_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, arg_0.a, arg_0.a), global2.a.c) << (vec3<u32>(39808u, u_input.a, u_input.a) % vec3<u32>(32u))));
    let var_1 = Struct_3(-2147483647i, ~abs(~arg_0.d.d ^ _wgslsmith_mult_u32(0u, 39563u)), abs(global2.a.c));
    let var_2 = func_2(func_3(global2.a)).x;
    return var_1.a;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec2<i32> {
    global1 = vec3<i32>(func_5(Struct_2(11886i, func_4(vec4<bool>(true, arg_0, arg_0, arg_0), func_2(vec4<bool>(false, arg_0, arg_0, false)), -vec2<i32>(global1.x, 2147483647i)), ~1u, func_4(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, arg_0, arg_0, true)), arg_1.xx)), !func_2(vec4<bool>(false, false, arg_0, arg_0)).x), 91225i, u_input.d | (i32(-1i) * -1i));
    global1 = abs(~vec3<i32>(min(global1.x, ~(-2147483647i)), i32(-1i) * -13258i, firstTrailingBit(~(-1i))));
    global2 = Struct_4(Struct_3(_wgslsmith_dot_vec4_i32(max(_wgslsmith_sub_vec4_i32(arg_1, vec4<i32>(arg_1.x, 0i, 36107i, u_input.d)), -arg_1), arg_1 | (arg_1 | vec4<i32>(u_input.d, 705i, 1i, arg_1.x))), func_4(!func_2(vec4<bool>(true, true, arg_0, arg_0)), !select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, false, false), true), _wgslsmith_div_vec2_i32(~global1.xz, select(vec2<i32>(-43944i, global1.x), vec2<i32>(global2.a.a, 2147483647i), arg_0))).d, firstLeadingBit(arg_1.yzz)));
    let var_0 = _wgslsmith_mult_i32(max(27093i, arg_1.x), _wgslsmith_dot_vec3_i32(-firstLeadingBit(abs(global2.a.c)), arg_1.wyw));
    var var_1 = vec2<i32>(var_0, -(i32(-1i) * -var_0));
    return firstLeadingBit(abs(global2.a.c.zz));
}

fn func_6(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = !vec4<bool>(all(select(func_2(vec4<bool>(true, true, false, true)).xz, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true)), true, true, true);
    var var_1 = global0[_wgslsmith_index_u32(~max(1u, u_input.a), 10u)];
    let var_2 = global2.a;
    var var_3 = _wgslsmith_add_i32(~global1.x, ~arg_0.x);
    global2 = Struct_4(Struct_3(-1i, 1u, ~vec3<i32>(reverseBits(global2.a.c.x), 2147483647i, func_5(Struct_2(-14458i, Struct_1(u_input.b, 1000f, false, 0u), 21973u, Struct_1(u_input.c.yx, 1000f, true, 4294967295u)), true))));
    return func_4(!func_2(var_0), !(!(!vec4<bool>(false, var_0.x, false, var_0.x))), vec2<i32>(reverseBits(firstTrailingBit(-1i)) << (4294967295u % 32u), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<Struct_4, 10>();
    var var_1 = _wgslsmith_mult_vec3_i32(firstLeadingBit(global2.a.c), global2.a.c);
    global0 = array<Struct_4, 10>();
    global2 = global0[_wgslsmith_index_u32(global2.a.b, 10u)];
    let var_2 = func_6(_wgslsmith_mod_vec2_i32(global2.a.c.zz, _wgslsmith_add_vec2_i32(vec2<i32>(~(-48401i), _wgslsmith_mult_i32(var_1.x, -2147483647i)), func_1(any(vec4<bool>(false, false, false, true)), vec4<i32>(-1i, u_input.d, -2147483647i, 6290i) & vec4<i32>(global2.a.a, 21406i, 63455i, -14002i), _wgslsmith_div_vec2_f32(vec2<f32>(261f, -2042f), vec2<f32>(117f, -367f))))));
    let var_3 = Struct_4(global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(~(-70399i), 1i, min(global2.a.a, 2147483647i)), var_1.x), -712f, var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(677f)), -785f, var_2.b, -921f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, var_2.b, -1107f, 474f) + vec4<f32>(-1000f, var_2.b, var_2.b, var_2.b)))))));
}

