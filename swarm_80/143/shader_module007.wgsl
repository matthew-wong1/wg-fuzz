struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(73645u, 25041u, 1u, 4294967295u);

var<private> global1: Struct_4 = Struct_4(Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648))), vec2<i32>(339i, -4149i), Struct_2(vec2<i32>(-42880i, -76438i)));

var<private> global2: f32;

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(!(global3.x == global1.b.x), select(vec4<bool>(true, !(global0.x == 12418u), select(true, true, true) || select(false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global0.x != max(global0.x, global0.x)), all(vec2<bool>(all(vec2<bool>(false, true)), true))));
    global3 = ~(~(abs(u_input.a & vec3<i32>(2147483647i, u_input.b.x, -67456i)) ^ ~(vec3<i32>(1i, -1i, 37989i) >> (vec3<u32>(global0.x, 20515u, global0.x) % vec3<u32>(32u)))));
    var var_1 = -u_input.a;
    var_1 = _wgslsmith_div_vec3_i32(~min(countOneBits(vec3<i32>(46369i, -15047i, 16220i)), ~vec3<i32>(-38367i, var_1.x, var_1.x)) & (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, var_1.x, global1.b.x), vec3<i32>(3905i, -26874i, global3.x))), _wgslsmith_mult_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(global3.x, global1.c.a.x, 0i), max(vec3<i32>(-1i, var_1.x, global3.x), u_input.a))), u_input.a));
    global0 = min(vec4<u32>(~global0.x >> (_wgslsmith_dot_vec3_u32(global0.xwx, firstTrailingBit(global0.zxy)) % 32u), global0.x, 0u, global0.x), vec4<u32>(1u, firstLeadingBit(global0.x & _wgslsmith_div_u32(global0.x, global0.x)), 4294967295u, global0.x));
    return !var_0.b;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_3(true, select(func_3(), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(func_3(), vec4<bool>(true, true, true, true), true)));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(208f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 539f)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-961f, 1420f, false)), -1310f, _wgslsmith_f_op_f32(1086f * 1288f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-180f * -622f), _wgslsmith_f_op_f32(-1755f * 1065f), _wgslsmith_f_op_f32(748f + -820f))), var_1.a)));
    var var_4 = global0.x;
    return Struct_1(var_2, 1u, _wgslsmith_div_vec4_i32(reverseBits(reverseBits(~vec4<i32>(global3.x, 1i, global3.x, 2147483647i))), vec4<i32>(~arg_0.b.x, var_0.c.a.x << (min(46266u, global0.x) % 32u), 0i, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, arg_0.c.a.x), _wgslsmith_sub_i32(global3.x, 1i)))), all(!select(!vec4<bool>(true, false, true, var_2), select(var_1.b, var_1.b, var_2), var_1.a == false)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_4(Struct_2(firstLeadingBit(~arg_0.c.zw) ^ arg_0.c.xw), global1.c.a, global1.a);
    let var_0 = _wgslsmith_add_u32(~(~global0.x), ~(~func_2(Struct_4(Struct_2(vec2<i32>(u_input.d, global3.x)), vec2<i32>(40877i, 3705i), global1.a)).b) >> (firstLeadingBit(func_2(Struct_4(global1.a, global3.zy, global1.c)).b) % 32u));
    global1 = Struct_4(Struct_2(-(vec2<i32>(1i, global1.c.a.x) | -arg_0.c.zy)), -countOneBits(-global3.yx), global1.c);
    var var_1 = select(!vec3<bool>(arg_0.c.x >= (global3.x | global3.x), arg_0.a, arg_0.d), select(vec3<bool>(arg_0.b > arg_0.b, func_3().x, true), vec3<bool>(false, (true | arg_0.d) == select(arg_0.d, false, false), func_2(Struct_4(global1.c, global1.b, Struct_2(vec2<i32>(global3.x, 3699i)))).a || (arg_0.d | false)), !arg_0.d), true);
    var_1 = select(func_3().xyz, func_3().xxw, !vec3<bool>(func_2(Struct_4(Struct_2(arg_0.c.xy), vec2<i32>(28708i, u_input.c), Struct_2(vec2<i32>(-2147483647i, 11984i)))).a, !(var_1.x || false), true));
    return func_2(Struct_4(Struct_2(~vec2<i32>(-4300i, -15790i) & -arg_0.c.ww), select(arg_0.c.zy, -min(arg_0.c.zz, vec2<i32>(0i, global1.b.x)), any(select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(false, var_1.x, false, arg_0.d), vec4<bool>(true, false, var_1.x, false)))), Struct_2(global3.zx)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = -(~_wgslsmith_mod_i32(global3.x, _wgslsmith_mult_i32(u_input.c, global3.x))) >> (arg_1.b % 32u);
    let var_1 = Struct_3(arg_1.d, !(!vec4<bool>(arg_1.a, !arg_1.d, func_4(arg_1).d, true & arg_1.d)));
    let var_2 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(232f, 904f, var_1.b.x)) - _wgslsmith_div_f32(-248f, 244f)));
    var var_3 = var_1.b.xzz;
    let var_4 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~arg_1.b, countOneBits(arg_2.b), 1003u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(12656u, arg_2.b), arg_0.x | 16918u)), countOneBits(~countOneBits(vec4<u32>(arg_0.x, 3034u, arg_1.b, 0u))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(exp2(1f))), var_2, 1f));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_5(global0.wyx, Struct_1(true, ~arg_0.x, reverseBits(vec4<i32>(37224i, global1.c.a.x, -8696i, global1.b.x)), true), func_4(func_2(Struct_4(global1.a, u_input.b, Struct_2(vec2<i32>(global1.b.x, 0i))))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(1250f * _wgslsmith_f_op_f32(510f - -1225f)), _wgslsmith_f_op_f32(f32(-1f) * -351f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, -1506f, -159f))))), vec3<bool>(true, any(vec3<bool>(true, true, true)), true)));
    var var_1 = global1.a;
    var var_2 = ~(global1.b.x >> (_wgslsmith_mult_u32(firstLeadingBit(27499u), ~arg_0.x) % 32u)) >= abs((0i & var_1.a.x) ^ -1i);
    let var_3 = Struct_4(global1.c, _wgslsmith_mult_vec2_i32(global1.a.a, countOneBits(u_input.a.xx)) | -(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -2147483647i), global1.b) | -u_input.a.xy), global1.a);
    var_1 = var_3.a;
    return 57195u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.ww) << (global0.x % 32u);
    var var_1 = vec4<u32>(func_2(Struct_4(global1.c, select(firstTrailingBit(vec2<i32>(-31517i, global1.b.x)), global1.c.a, true), global1.a)).b, global0.x, global0.x, _wgslsmith_sub_u32(global0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0.x, global0.x), ~(global0.yxz << (vec3<u32>(36614u, 90814u, 4294967295u) % vec3<u32>(32u))))));
    var var_2 = Struct_2(select(~(abs(vec2<i32>(u_input.d, u_input.b.x)) & ~vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(-global3.x & ~global1.a.a.x, ~(-33846i)), func_3().ww));
    var var_3 = func_2(Struct_4(Struct_2(vec2<i32>(firstLeadingBit(global3.x), ~u_input.a.x)), _wgslsmith_mod_vec2_i32((vec2<i32>(-1i, global3.x) << (var_1.wz % vec2<u32>(32u))) & firstTrailingBit(vec2<i32>(-10984i, global3.x)), var_2.a), global1.c));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(754f, 268f), _wgslsmith_f_op_vec3_f32(func_5(firstTrailingBit(min(vec3<u32>(global0.x, 4294967295u, global0.x), vec3<u32>(4294967295u, 23067u, 200395u))) >> (~global0.zyy % vec3<u32>(32u)), Struct_1(!all(vec3<bool>(var_3.a, var_3.a, var_3.a)), 4294967295u, vec4<i32>(_wgslsmith_add_i32(var_3.c.x, u_input.b.x), -2147483647i, abs(0i), i32(-1i) * -2147483647i), !(!var_3.d)), Struct_1(any(!vec2<bool>(var_3.d, false)), 4294967295u, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(var_3.c, vec4<i32>(2147483647i, var_3.c.x, -7425i, global1.c.a.x)), vec4<i32>(1i, global1.c.a.x, -2147483647i, var_3.c.x), var_3.c), !func_3().x))).x));
    var var_4 = Struct_3(!(!var_3.a), !select(!select(vec4<bool>(true, false, true, var_3.a), vec4<bool>(false, var_3.d, true, false), false), !func_3(), any(!vec4<bool>(var_3.d, var_3.d, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-16111i), min(vec3<i32>(func_2(Struct_4(global1.c, vec2<i32>(48261i, var_3.c.x), Struct_2(vec2<i32>(-1i, var_2.a.x)))).c.x, ~var_3.c.x, firstTrailingBit(global3.x)) >> (_wgslsmith_mult_vec3_u32(select(global0.xzz, vec3<u32>(0u, 1u, 18724u), true), ~global0.zww) % vec3<u32>(32u)), u_input.a), vec3<i32>(abs(-(var_3.c.x | 0i)), 35257i, _wgslsmith_mult_i32(var_3.c.x, _wgslsmith_mult_i32(8284i, -global3.x))));
}

