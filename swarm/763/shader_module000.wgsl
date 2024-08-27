struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(44026u, 7139u, 10737u, 1u, 1u, 1u, 23819u, 1u, 1u, 0u, 18410u, 54488u, 0u, 0u, 19299u, 0u, 18568u, 52393u, 4294967295u, 0u, 0u, 48541u, 15594u, 15965u, 43786u, 105205u, 58175u, 34401u, 18992u);

var<private> global1: Struct_2 = Struct_2(Struct_1(-1135i, vec3<u32>(12444u, 102630u, 33284u), vec3<u32>(1u, 44457u, 0u), vec2<bool>(false, false), false), vec4<i32>(1i, 57054i, -1i, 33144i), vec2<u32>(1u, 10627u));

var<private> global2: i32 = -16297i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> vec4<i32> {
    global1 = arg_1;
    return arg_1.b;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(global1.a.a, select(~(vec3<u32>(global1.c.x, global0[_wgslsmith_index_u32(5110u, 29u)], u_input.d.x) & u_input.c), u_input.d.yyw, true), u_input.d.zzz ^ global1.a.b, select(global1.a.d, vec2<bool>(global1.a.a == global1.a.a, global1.a.d.x), vec2<bool>(global1.a.d.x, global1.c.x <= u_input.d.x)), global1.a.e), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.a, _wgslsmith_dot_vec2_i32(global1.b.yx, vec2<i32>(32504i, global1.a.a)) >> ((u_input.e & u_input.b) % 32u), global1.b.x, -global1.a.a << (~global0[_wgslsmith_index_u32(global1.c.x, 29u)] % 32u)), -func_3(!vec3<bool>(true, global1.a.d.x, true), Struct_2(Struct_1(global1.b.x, u_input.c, vec3<u32>(global0[_wgslsmith_index_u32(1u, 29u)], 4294967295u, global0[_wgslsmith_index_u32(49319u, 29u)]), global1.a.d, true), vec4<i32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec2<u32>(33328u, 1u)))), (abs(select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], global0[_wgslsmith_index_u32(45486u, 29u)]), vec2<u32>(u_input.a.x, global1.a.c.x), vec2<bool>(true, global1.a.d.x))) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) >> ((_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22740u, 29u)], 29u)]) << (vec2<u32>(global1.a.b.x, global1.c.x) % vec2<u32>(32u)), ~u_input.c.zx, ~vec2<u32>(global1.c.x, 31828u)) ^ u_input.a.xy) % vec2<u32>(32u)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -187f), vec4<f32>(872f, -1105f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -706f)) - 1585f)), var_0.a.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-814f * -1553f), -596f)))));
    var var_2 = Struct_1(~(~(~_wgslsmith_div_i32(-18283i, 26069i))), firstTrailingBit(_wgslsmith_sub_vec3_u32(min(~vec3<u32>(global1.a.b.x, 1u, 4294967295u), ~vec3<u32>(var_0.a.b.x, 0u, 4294967295u)), reverseBits(u_input.a.zxz))), _wgslsmith_clamp_vec3_u32(~firstTrailingBit(global1.a.b), ~u_input.c, vec3<u32>(14235u, 1u, abs(global1.a.b.x))) ^ global1.a.c, !var_0.a.d, !(false && (~0u >= global1.c.x)));
    global1 = Struct_2(global1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global1.b.x, var_0.b.x), abs(-37895i), 1i, 1i << (u_input.b % 32u)) >> (vec4<u32>(select(18155u, 15839u, false), 1u, global0[_wgslsmith_index_u32(var_0.a.b.x, 29u)], ~1u) % vec4<u32>(32u)), select(max(vec4<i32>(-1i, var_0.b.x, -7702i, var_2.a), abs(var_0.b)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_0.b, var_0.b), var_0.b), !(!vec4<bool>(true, var_2.e, global1.a.d.x, var_0.a.e)))), vec2<u32>(18906u, abs(firstLeadingBit(global1.c.x))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(-150f, 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -578f), false)), var_1.d);
    return ~vec2<u32>(~(~select(var_0.a.b.x, 28294u, global1.a.e)), 0u);
}

fn func_1() -> Struct_2 {
    global2 = select(_wgslsmith_sub_i32(1i, global1.a.a), _wgslsmith_dot_vec2_i32(~global1.b.wz, vec2<i32>(global1.b.x, 0i)), global1.a.e || !all(select(vec4<bool>(true, global1.a.e, false, global1.a.e), vec4<bool>(true, global1.a.e, global1.a.d.x, global1.a.d.x), vec4<bool>(global1.a.d.x, true, global1.a.d.x, global1.a.e))));
    global1 = Struct_2(Struct_1(-(~global1.b.x >> (~u_input.c.x % 32u)), u_input.a.yyz, abs(u_input.c), !vec2<bool>(!global1.a.d.x, any(global1.a.d)), global1.a.e), global1.b, select(~vec2<u32>(~global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 39670u), vec2<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(114545u, 29u)] << (0u % 32u)), select(22995u, 8648u, all(vec4<bool>(false, false, true, global1.a.e)))), global1.a.d));
    var var_0 = ~func_2();
    let var_1 = Struct_3(-select(_wgslsmith_mod_i32(~global1.b.x, ~global1.b.x), ~global1.a.a, all(vec2<bool>(global1.a.e, global1.a.d.x))), u_input.a);
    let var_2 = global1.a;
    return Struct_2(Struct_1(max(var_1.a, (0i & var_1.a) | select(var_2.a, 14875i, var_2.d.x)), var_1.b.yyx, vec3<u32>(var_1.b.x, ~60591u, _wgslsmith_mult_u32(max(63393u, 0u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], var_2.b.x))), vec2<bool>(false & global1.a.e, true), select(true, (var_2.d.x | global1.a.e) != global1.a.e, any(vec3<bool>(false, var_2.d.x, true)))), ~(-(vec4<i32>(1i, global1.b.x, global1.b.x, 1i) ^ global1.b) << ((var_1.b & ~vec4<u32>(10683u, var_1.b.x, var_1.b.x, 1u)) % vec4<u32>(32u))), select(vec2<u32>(var_1.b.x, global0[_wgslsmith_index_u32(reverseBits(var_2.c.x) & 1768u, 29u)]), ~var_1.b.yz, all(!(!vec4<bool>(global1.a.d.x, global1.a.d.x, var_2.e, var_2.d.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = global1.a;
    global0 = array<u32, 29>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1556f, -154f, func_1().a.e))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(725f + 337f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - -437f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-212f)), _wgslsmith_f_op_f32(min(1525f, 2562f))))))));
    var var_2 = arg_0.a.d;
    global2 = arg_1.a.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_2(func_1().a, global1.b, vec2<u32>(1u, ~max(global1.c.x, u_input.b))), Struct_3(~global1.b.x, firstLeadingBit(_wgslsmith_mult_vec4_u32(~u_input.d, _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 108808u, 4294967295u), u_input.d)))));
    var var_1 = Struct_3(var_0.a.a, u_input.d << (vec4<u32>(~(~1u), 45477u, 4294967295u, ~global0[_wgslsmith_index_u32(1u, 29u)]) % vec4<u32>(32u)));
    var_1 = Struct_3(var_1.a, _wgslsmith_mult_vec4_u32(var_1.b, ~u_input.a));
    var var_2 = all(!vec3<bool>(!all(vec4<bool>(var_0.a.e, false, global1.a.d.x, true)), any(vec3<bool>(true, global1.a.e, global1.a.e)), !global1.a.e));
    var var_3 = Struct_4(-2473f, vec4<f32>(_wgslsmith_f_op_f32(-855f - 1001f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1079f, -285f, var_0.a.e)))), -1123f)), -846f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(676f * 1678f), _wgslsmith_f_op_f32(sign(-549f)), any(vec4<bool>(true, var_0.a.e, true, true)))), _wgslsmith_f_op_f32(floor(1f)))), global1.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(636f * -441f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-106f, 1930f)), -1009f)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(select(vec3<bool>(var_3.c, global1.a.e, global1.a.d.x), vec3<bool>(var_0.a.e, var_0.a.e, var_3.c), true), func_1()).yzx & func_3(select(vec3<bool>(false, global1.a.d.x, true), vec3<bool>(true, true, true), vec3<bool>(global1.a.d.x, var_0.a.d.x, var_0.a.d.x)), func_1()).zww, -var_0.b.x, 986f, 750f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(-var_3.b.x)) - 702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2146f * _wgslsmith_f_op_f32(sign(var_3.d))))));
}

