struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> i32 {
    let var_0 = all(vec4<bool>(!any(!vec3<bool>(false, true, arg_2.c)), false, arg_2.c, !all(vec2<bool>(arg_2.c, arg_2.c))));
    var var_1 = Struct_1(vec3<bool>(select(true, arg_2.c, !var_0), true && (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -29281i), vec2<i32>(-50960i, -16509i)) < _wgslsmith_div_i32(0i, 26417i)), any(vec4<bool>(true, true, true, false))));
    let var_2 = var_0;
    var var_3 = arg_2.b;
    var var_4 = var_3.a;
    return 28858i;
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = arg_0.xy;
    var var_1 = Struct_3(max(u_input.a.yy, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zy, u_input.b), u_input.b)) | (u_input.a.xy ^ reverseBits(vec2<u32>(u_input.b.x, u_input.b.x) >> (u_input.b % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(arg_0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(681f, var_0.x, arg_0.x, 536f), vec4<f32>(arg_0.x, var_0.x, var_0.x, 431f)))))), true, firstLeadingBit(_wgslsmith_clamp_vec3_u32(reverseBits(u_input.a), u_input.a, ~u_input.a) << (u_input.a % vec3<u32>(32u))));
    let var_2 = Struct_4(vec4<bool>(!var_1.c, all(select(vec3<bool>(false, var_1.c, true), vec3<bool>(var_1.c, false, var_1.c), vec3<bool>(false, true, var_1.c))) || (any(vec2<bool>(true, var_1.c)) && all(vec4<bool>(var_1.c, var_1.c, false, var_1.c))), var_1.c, true), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(176f)), _wgslsmith_f_op_f32(arg_0.x - -1739f), _wgslsmith_f_op_f32(-365f * var_0.x), _wgslsmith_f_op_f32(max(-1431f, var_1.b.a.x))))), -45859i >> (0u % 32u), _wgslsmith_mod_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, 0i, 1517i), vec4<i32>(-27483i, -1i, -27900i, 352i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -3147i, -66221i, -1i), vec4<i32>(-60504i, -56713i, 0i, -1i))), vec4<i32>(-2147483647i, -6919i, 0i, 0i) << (vec4<u32>(1u, 1u, 4294967295u, var_1.a.x) % vec4<u32>(32u))), abs(vec4<i32>(-2147483647i, i32(-1i) * -17529i, ~1i, _wgslsmith_mult_i32(-31755i, -42147i)))));
    var var_3 = ~0i;
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(53393i, 41124i, var_2.d.x)), vec3<i32>(var_2.d.x, 1i, firstTrailingBit(_wgslsmith_dot_vec3_i32(var_2.d.xzy, vec3<i32>(-42624i, -1i, var_2.c))))), ~var_2.d.x, 35577i | -_wgslsmith_mod_i32(-2147483647i, max(-1i, var_2.d.x)), ~(firstLeadingBit(var_2.c) << (804u % 32u)));
    return select(~firstTrailingBit(-8507i), var_2.c, true);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, 1i, _wgslsmith_mult_i32(firstTrailingBit(abs(-2147483647i)), func_2(firstLeadingBit(vec2<u32>(92624u, u_input.b.x)), _wgslsmith_f_op_f32(max(2326f, -1460f)), Struct_3(u_input.a.zy, Struct_2(vec4<f32>(-1887f, 1563f, -828f, -1000f)), true, u_input.a), -1583f)), _wgslsmith_dot_vec3_i32(vec3<i32>(~4907i, abs(18766i), firstLeadingBit(-6557i)), ~vec3<i32>(1i, 1i, 1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(2063i, 22445i, _wgslsmith_dot_vec3_i32(vec3<i32>(18946i, 32219i, 8198i), vec3<i32>(25100i, 2147483647i, -10806i)), -23872i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(6012i, 2147483647i, -1i, 11817i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 1u) % vec4<u32>(32u))), vec4<i32>(-1676i, func_3(vec4<f32>(-863f, 514f, -1571f, 1945f)), _wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_div_i32(1i, -2147483647i)) & firstTrailingBit(-vec4<i32>(-2147483647i, 0i, -20105i, 56931i))));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(-var_0, select(vec4<i32>(var_0.x, var_0.x, var_0.x, 13338i), var_0, vec4<bool>(true, true, false, true)))), _wgslsmith_mult_vec2_i32(-var_0.xy, vec2<i32>(-8680i, -8911i)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), -var_0.wy)), ~abs(_wgslsmith_mult_i32(func_2(vec2<u32>(68406u, u_input.a.x), -826f, Struct_3(vec2<u32>(u_input.a.x, 1u), Struct_2(vec4<f32>(-414f, -246f, 664f, -624f)), false, u_input.a), 818f), func_3(vec4<f32>(553f, 1449f, 859f, 1032f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(max(~u_input.a.zx, select(u_input.b, min(u_input.b, u_input.a.yz), vec2<bool>(true, true))) & select(u_input.b, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a.zz), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(1u, 0u), vec2<u32>(1u, 4434u))), true), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), true, ~abs(~abs(vec3<u32>(41185u, 37782u, u_input.a.x))));
    var var_1 = Struct_3(vec2<u32>(1u, firstLeadingBit(~firstLeadingBit(u_input.a.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.a.x, 1000f, 269f, 675f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-163f, -646f, var_0.b.a.x, var_0.b.a.x) - vec4<f32>(326f, 1090f, var_0.b.a.x, 100f))))), true, ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_0.d.x, 4294967295u, var_0.a.x)), ~var_0.d));
    var var_2 = func_1() << (0u % 32u);
    global0 = array<Struct_1, 26>();
    var var_3 = -697f;
    var var_4 = Struct_4(vec4<bool>(false, !all(select(vec3<bool>(false, var_1.c, var_0.c), vec3<bool>(var_0.c, var_0.c, var_1.c), vec3<bool>(true, true, false))), var_1.c, !all(!vec2<bool>(true, var_1.c))), var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -(~0i), 7844i >> (_wgslsmith_clamp_u32(10340u, 69529u, 24800u) % 32u)), ~((vec3<i32>(0i, -1i, -1i) >> (vec3<u32>(1u, 1u, var_0.a.x) % vec3<u32>(32u))) >> (vec3<u32>(var_1.d.x, 5913u, var_1.a.x) % vec3<u32>(32u)))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(7536i, 1i, -1i, -1i), ~vec4<i32>(41467i, 24967i, 21748i, -15916i)) ^ vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(79710i, 2147483647i, 31362i, 73684i), vec4<i32>(-5577i, 5618i, 2147483647i, 20265i)), i32(-1i) * -23390i, ~(-2147483647i))));
    var var_5 = Struct_3(~(~((u_input.a.yz >> (u_input.b % vec2<u32>(32u))) << (~vec2<u32>(20601u, u_input.b.x) % vec2<u32>(32u)))), Struct_2(var_4.b.a), var_1.c, ~_wgslsmith_add_vec3_u32(u_input.a, max(_wgslsmith_mult_vec3_u32(var_1.d, vec3<u32>(37533u, 64546u, u_input.a.x)), u_input.a)));
    var_2 = ~abs(-1i);
    var var_6 = global0[_wgslsmith_index_u32(~select(~1u, _wgslsmith_div_u32(74367u, var_5.a.x), false), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(var_5.a.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(404f))));
}

