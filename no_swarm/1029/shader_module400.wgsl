struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_4(global0.c);
    var var_1 = Struct_4(var_0.a);
    var var_2 = -_wgslsmith_div_i32(global0.b.x, ~(~_wgslsmith_sub_i32(global0.b.x, global0.b.x)));
    let var_3 = Struct_4(var_0.a);
    let var_4 = arg_0.zy;
    return false;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> bool {
    var var_0 = select(vec3<u32>(abs(reverseBits(~u_input.a.x)), ~abs(98495u), 1u), ~u_input.a, true);
    var_0 = countOneBits(_wgslsmith_sub_vec3_u32(abs(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 0u) >> (vec3<u32>(global0.d.x, u_input.a.x, 1u) % vec3<u32>(32u)))), global0.d));
    let var_1 = Struct_1(false, firstTrailingBit(u_input.a.yx), global0.a.c);
    var var_2 = !arg_2;
    global0 = Struct_3(var_1, vec3<i32>(1i, 13434i, 84772i), var_1, global0.d, select(!var_2.xx, vec2<bool>(true, !select(arg_0, false, true)), true));
    return var_1.a | false;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0.e.x;
    let var_1 = select(arg_3, vec4<bool>(arg_3.x, !(!arg_3.x) & !all(arg_3), arg_0.e.x, any(!(!vec4<bool>(arg_1.a.a, arg_1.a.a, true, arg_0.e.x)))), all(arg_3.xzw));
    let var_2 = any(vec4<bool>(select(true, true, func_2(vec4<f32>(526f, 510f, -860f, -1000f))), false, func_3(true, vec2<f32>(1f, 1f), arg_3.yxy, vec4<i32>(global0.b.x, ~21365i, global0.b.x, ~(-34975i))), arg_1.a.a));
    var var_3 = -(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, arg_1.b, 10238i, arg_0.b.x), vec4<i32>(-45771i, 1i, global0.b.x, -25343i)), firstTrailingBit(vec4<i32>(arg_0.b.x, -1i, 18i, arg_1.b))), reverseBits(vec4<i32>(global0.b.x, 1i, -37268i, -23702i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.x, arg_1.b, 0i, global0.b.x), vec4<i32>(-19986i, -17373i, arg_0.b.x, 27129i), vec4<i32>(-1i, arg_0.b.x, -2900i, 52783i))) >> (max(min(vec4<u32>(43447u, global0.a.b.x, 4294967295u, 4294967295u), firstLeadingBit(vec4<u32>(1u, arg_0.d.x, 1139u, arg_0.a.b.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 3947u, global0.c.b.x, arg_1.a.b.x), vec4<u32>(0u, 0u, arg_0.d.x, u_input.a.x)), vec4<u32>(arg_1.a.b.x, 17751u, 0u, arg_1.a.b.x))) % vec4<u32>(32u)));
    global1 = -747f;
    return Struct_1(!any(vec4<bool>(true, arg_3.x, true, func_3(false, vec2<f32>(574f, 1934f), vec3<bool>(false, true, false), vec4<i32>(6801i, 11742i, 39426i, global0.b.x)))), arg_0.a.b, arg_2.b.x);
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = Struct_3(Struct_1(false, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.b.x, arg_0.a.b.x | arg_0.a.c), select(global0.d.yx, vec2<u32>(0u, global0.c.c), global0.e)), ~(~0u)), min(global0.b, ~vec3<i32>(select(global0.b.x, global0.b.x, true), _wgslsmith_div_i32(arg_0.b.x, 2147483647i), firstTrailingBit(arg_0.b.x))), Struct_1(!arg_0.c.a, u_input.a.zx, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24584u, countOneBits(u_input.a.x), global0.d.x >> (global0.a.c % 32u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(global0.d.x, arg_0.c.c, 1u, u_input.a.x), vec4<u32>(1u, 0u, 39397u, u_input.a.x))))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(19597u, 4294967295u, 1u), _wgslsmith_sub_vec3_u32(global0.d, vec3<u32>(4294967295u, 4294967295u, u_input.a.x)))) >> (global0.d % vec3<u32>(32u)), !arg_0.e);
    let var_0 = 1119f;
    let var_1 = Struct_2(Struct_1(all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(global0.e.x, global0.a.a, arg_0.c.a, global0.c.a)), select(vec4<bool>(true, global0.c.a, arg_0.e.x, true), vec4<bool>(false, arg_0.e.x, arg_0.a.a, false), false), select(arg_0.c.a, false, arg_0.c.a))), _wgslsmith_mod_vec2_u32(~u_input.a.xy, global0.d.zz) ^ ~arg_0.c.b, min(arg_0.a.c, ~(~u_input.a.x))), global0.b.x, -(reverseBits(global0.b.x) ^ arg_0.b.x));
    var var_2 = _wgslsmith_dot_vec3_i32(arg_0.b, global0.b);
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1072f, 2670f)));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = ~(-reverseBits(max(vec4<i32>(global0.b.x, 1i, global0.b.x, global0.b.x), vec4<i32>(global0.b.x, arg_0, global0.b.x, global0.b.x)))) & firstLeadingBit(-vec4<i32>(global0.b.x, arg_0, arg_0, 68404i) | firstTrailingBit(vec4<i32>(global0.b.x, arg_0, global0.b.x, arg_0)));
    global1 = arg_2;
    global0 = Struct_3(Struct_1(select(true, any(vec2<bool>(arg_1, arg_1)), any(vec3<bool>(global0.a.a, false, false))), _wgslsmith_sub_vec2_u32(global0.d.zz, ~u_input.a.yx), ~global0.d.x), global0.b, func_1(Struct_3(global0.a, vec3<i32>(~46438i, arg_0 & 2147483647i, _wgslsmith_add_i32(1i, -1i)), Struct_1(all(vec3<bool>(true, global0.e.x, global0.e.x)), select(global0.a.b, vec2<u32>(global0.c.b.x, u_input.a.x), arg_1), global0.a.c), _wgslsmith_div_vec3_u32(vec3<u32>(global0.c.b.x, 4294967295u, 0u), u_input.a), !global0.e), Struct_2(Struct_1(global0.e.x, global0.a.b, ~23165u), ~(-1i), ~var_0.x), global0.c, !select(!vec4<bool>(false, global0.a.a, true, global0.e.x), select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, arg_1, global0.c.a, global0.a.a)), arg_1)), ~firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x ^ 0u, _wgslsmith_mult_u32(u_input.a.x, global0.c.c))), select(global0.e, global0.e, global0.e));
    let var_1 = _wgslsmith_clamp_u32(~(~85021u), countOneBits(65828u), ~0u);
    let var_2 = ~(~(min(global0.b ^ var_0.yyw, var_0.yyw) & min(vec3<i32>(0i, var_0.x, arg_0), _wgslsmith_div_vec3_i32(var_0.wyx, vec3<i32>(64758i, var_0.x, 54994i)))));
    return ~47040u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var var_1 = func_5(global0.b.x, all(select(select(!vec3<bool>(true, global0.a.a, false), vec3<bool>(false, true, global0.c.a), vec3<bool>(global0.e.x, global0.e.x, global0.c.a)), !(!vec3<bool>(false, global0.c.a, false)), vec3<bool>(7007u > global0.a.b.x, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(func_1(Struct_3(Struct_1(global0.c.a, global0.a.b, u_input.a.x), global0.b, global0.c, vec3<u32>(70825u, 52583u, u_input.a.x), vec2<bool>(global0.c.a, true)), Struct_2(global0.a, -6398i, -2147483647i), Struct_1(false, global0.c.b, 4294967295u), vec4<bool>(true, global0.e.x, global0.e.x, global0.c.a)), vec3<i32>(global0.b.x, global0.b.x, global0.b.x), Struct_1(false, u_input.a.zx, u_input.a.x), ~u_input.a, vec2<bool>(true, global0.a.a))))));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~firstTrailingBit(42138u), func_1(Struct_3(global0.a, global0.b, Struct_1(global0.c.a, u_input.a.zy, 0u), vec3<u32>(23305u, 1u, global0.d.x), vec2<bool>(false, true)), Struct_2(global0.c, global0.b.x, global0.b.x), global0.c, select(vec4<bool>(global0.a.a, global0.c.a, global0.e.x, false), vec4<bool>(global0.a.a, global0.c.a, false, false), global0.c.a)).c), ~(u_input.a.x ^ _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(119690u, global0.c.b.x)))), ~(~vec2<u32>(24110u | global0.c.b.x, min(0u, 1u))));
    let var_3 = Struct_2(global0.c, global0.b.x, -27843i);
    let var_4 = global0.b.x;
    var_2 = _wgslsmith_add_vec2_u32(func_1(Struct_3(Struct_1(true, vec2<u32>(var_2.x, global0.c.c), global0.d.x), firstTrailingBit(global0.b), Struct_1(false, firstLeadingBit(global0.d.zy), var_2.x), _wgslsmith_mod_vec3_u32(global0.d, abs(global0.d)), vec2<bool>(any(vec3<bool>(false, global0.c.a, false)), true)), Struct_2(Struct_1(func_3(true, vec2<f32>(-498f, 905f), vec3<bool>(var_3.a.a, false, false), vec4<i32>(-2147483647i, global0.b.x, -2147483647i, var_3.c)), vec2<u32>(0u, 368u), 31632u), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-16945i, 1i, global0.b.x), vec3<i32>(var_3.b, -18704i, global0.b.x)), global0.b.x ^ -4017i), var_3.c), func_1(Struct_3(func_1(Struct_3(Struct_1(false, global0.c.b, 4294967295u), global0.b, global0.c, vec3<u32>(u_input.a.x, u_input.a.x, 46130u), vec2<bool>(false, true)), var_3, Struct_1(false, vec2<u32>(1u, 0u), 4294967295u), vec4<bool>(global0.a.a, var_3.a.a, true, global0.e.x)), global0.b, func_1(Struct_3(global0.c, global0.b, Struct_1(false, u_input.a.yy, u_input.a.x), vec3<u32>(1u, 0u, global0.d.x), vec2<bool>(false, global0.e.x)), var_3, var_3.a, vec4<bool>(var_3.a.a, var_3.a.a, global0.e.x, false)), firstTrailingBit(vec3<u32>(4294967295u, var_2.x, var_3.a.b.x)), vec2<bool>(global0.e.x, false)), Struct_2(var_3.a, global0.b.x << (global0.a.c % 32u), 18647i), func_1(Struct_3(Struct_1(global0.c.a, vec2<u32>(var_2.x, 38967u), global0.d.x), vec3<i32>(-1i, 0i, -1i), Struct_1(true, u_input.a.yy, 1u), u_input.a, vec2<bool>(false, var_3.a.a)), var_3, func_1(Struct_3(Struct_1(false, var_3.a.b, 12971u), global0.b, Struct_1(var_3.a.a, vec2<u32>(u_input.a.x, var_2.x), var_3.a.b.x), vec3<u32>(var_3.a.c, var_2.x, var_2.x), vec2<bool>(false, var_3.a.a)), Struct_2(var_3.a, global0.b.x, var_3.c), global0.a, vec4<bool>(global0.e.x, var_3.a.a, global0.a.a, false)), !vec4<bool>(global0.a.a, false, false, true)), vec4<bool>(false, true, !global0.c.a, var_3.a.a)), vec4<bool>(var_3.a.a, true, all(!vec4<bool>(true, var_3.a.a, var_3.a.a, true)), any(!vec3<bool>(global0.e.x, true, true)))).b, global0.a.b);
    let var_5 = select(vec3<i32>(global0.b.x, ~min(-38094i, global0.b.x), global0.b.x) ^ ~global0.b, firstTrailingBit(global0.b), func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(var_2.x, 20785u, 4294967295u, var_2.x)) % 32u), 12328i, _wgslsmith_add_i32(43227i ^ var_3.b, firstLeadingBit(global0.b.x))), (abs(var_5) << (firstLeadingBit(vec3<u32>(var_2.x, global0.d.x, 67688u)) % vec3<u32>(32u))) << (vec3<u32>(var_2.x, u_input.a.x, ~0u) % vec3<u32>(32u))), var_5.yz, global0.b.zz);
}

