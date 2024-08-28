struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(11497u, vec3<f32>(103f, 731f, 1377f), 52416u, vec2<u32>(51416u, 56479u))), Struct_2(Struct_1(1u, vec3<f32>(912f, 682f, 1000f), 0u, vec2<u32>(25460u, 4294967295u))), Struct_2(Struct_1(4197u, vec3<f32>(-1952f, 1728f, -636f), 79530u, vec2<u32>(1u, 54405u))), Struct_2(Struct_1(0u, vec3<f32>(-459f, 887f, 440f), 4294967295u, vec2<u32>(85613u, 10452u))), Struct_2(Struct_1(30671u, vec3<f32>(695f, 267f, 2012f), 0u, vec2<u32>(1u, 1u))), Struct_2(Struct_1(1u, vec3<f32>(-1437f, -332f, -105f), 39523u, vec2<u32>(4294967295u, 7917u))), Struct_2(Struct_1(0u, vec3<f32>(-1160f, 1879f, 429f), 3445u, vec2<u32>(4294967295u, 1u))));

var<private> global1: vec4<bool>;

var<private> global2: vec2<u32> = vec2<u32>(57523u, 1u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = Struct_4(u_input.d.zx, arg_0, vec4<u32>(~u_input.d.x, _wgslsmith_mod_u32(~arg_2, 0u), abs(_wgslsmith_dot_vec3_u32(u_input.d.xwz, u_input.d.wxx)), countOneBits(_wgslsmith_add_u32(46818u, 0u))) << (reverseBits(_wgslsmith_sub_vec4_u32(~u_input.d, ~u_input.d)) % vec4<u32>(32u)), u_input.c, vec4<bool>(select(global1.x, !select(true, true, false), !global1.x), true == global1.x, true, true | any(select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, global1.x, true), vec4<bool>(false, arg_1.x, arg_1.x, true)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -349f);
    var_0 = Struct_4(select(vec2<u32>(4294967295u, arg_2), firstTrailingBit(u_input.d.yx), global2.x < countOneBits(arg_2)) >> (max(_wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(0u, global2.x)), min(_wgslsmith_mult_vec2_u32(u_input.d.yz, vec2<u32>(var_0.c.x, arg_2)), _wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(37062u, u_input.d.x)))) % vec2<u32>(32u)), arg_0, var_0.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~(~var_0.d), abs(countOneBits(var_0.d))), ~var_0.d | _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.x, 34892i, u_input.a), _wgslsmith_div_vec3_i32(var_0.d, vec3<i32>(u_input.a, var_0.d.x, -1i))), -vec3<i32>(0i, var_0.d.x, -29161i) << (vec3<u32>(reverseBits(12805u), 29390u, arg_2) % vec3<u32>(32u))), !(!vec4<bool>(arg_1.x || true, !var_0.e.x, true, true)));
    var var_2 = var_0.d.x;
    global2 = u_input.d.yz;
    return _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(ceil(-154f)));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_3(-211f, ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(global2.x, global2.x), _wgslsmith_mod_vec2_u32(u_input.d.yw, vec2<u32>(u_input.d.x, global2.x))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 55713u), u_input.d.xz), ~u_input.d.yx, ~vec2<u32>(1962u, u_input.d.x)), ~(~vec2<u32>(u_input.d.x, 0u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, _wgslsmith_f_op_f32(ceil(-524f)), 631f, 2234f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -489f, 256f, -1044f))) * vec4<f32>(-1442f, _wgslsmith_f_op_f32(func_3(-1759f, global1.zw, global2.x, -629f)), 984f, -907f)), !(!(u_input.b <= u_input.b)))));
    let var_1 = u_input.a;
    let var_2 = var_0.a;
    let var_3 = !vec4<bool>(global1.x, !any(!global1.yx), true, var_1 <= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(6871i, var_1)), ~u_input.c.xy));
    var var_4 = Struct_2(Struct_1(max(global2.x >> (var_0.b.x % 32u), select(u_input.d.x, 48069u, false)) & _wgslsmith_div_u32(33376u >> (u_input.d.x % 32u), ~var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), -292f, var_2), countOneBits(u_input.d.x), var_0.b));
    return max(vec2<i32>(max(var_1, 12678i), firstTrailingBit(1i)), -reverseBits(vec2<i32>(-29051i, u_input.c.x | 25589i)));
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var var_0 = vec4<i32>(-11593i, u_input.c.x, -26932i, _wgslsmith_dot_vec2_i32(~func_2(), countOneBits(_wgslsmith_clamp_vec2_i32(~u_input.c.zx, u_input.c.yy, firstLeadingBit(vec2<i32>(-35350i, -1i))))));
    var var_1 = true;
    var_1 = true != any(global1.zx);
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(func_1(), 4728u) & _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~1u, ~4294967295u, u_input.d.x), _wgslsmith_sub_u32(~305u, func_1())), select(1u, _wgslsmith_sub_u32(4294967295u, u_input.d.x), any(!global1.yx)));
    global2 = _wgslsmith_mod_vec2_u32(u_input.d.wy, u_input.d.yw);
    global0 = array<Struct_2, 7>();
    var var_1 = vec3<i32>(max(2147483647i, u_input.a), u_input.a, 8901i);
    let x = u_input.a;
    s_output = StorageBuffer(~40120i, 4294967295u, _wgslsmith_f_op_f32(floor(-904f)));
}

