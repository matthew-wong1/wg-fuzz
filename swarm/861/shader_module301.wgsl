struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2 = Struct_2(false, vec4<u32>(1u, 4294967295u, 45896u, 4294967295u), vec3<i32>(10158i, -51323i, 1i));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(23319i, -25462i, -32447i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    global2 = Struct_1(_wgslsmith_add_vec3_i32(countOneBits(u_input.d.xzw), _wgslsmith_add_vec3_i32((u_input.d.ywy << (vec3<u32>(32007u, arg_1.b.x, u_input.c) % vec3<u32>(32u))) | min(arg_1.c, vec3<i32>(1i, 32751i, global2.a.x)), vec3<i32>(abs(arg_2.c.x), global2.a.x & arg_1.c.x, ~(-2147483647i)))));
    let var_0 = Struct_2(~arg_1.b.x != arg_1.b.x, ~reverseBits(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.b.x, arg_1.b.x, 1u, arg_2.b.x)), vec4<u32>(18509u, u_input.c, 4294967295u, arg_1.b.x))), vec3<i32>(-12757i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, -11853i), vec3<i32>(-1i) * -global1.c)));
    global1 = arg_2;
    return _wgslsmith_add_vec2_u32(arg_1.b.zz, arg_2.b.zw) << (vec2<u32>(select(_wgslsmith_clamp_u32(global1.b.x, arg_2.b.x, 77756u), abs(arg_1.b.x), arg_2.b.x <= 0u) << (0u % 32u), ~(~(~var_0.b.x))) % vec2<u32>(32u));
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~func_3(293f, Struct_2(false, vec4<u32>(4294967295u, 7330u, 0u, u_input.c), global1.c), Struct_2(global1.a, global1.b, vec3<i32>(-47830i, global2.a.x, u_input.a.x))), ~(~(~global1.b.wy))), firstLeadingBit(global1.b.yz) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4190u, u_input.c), u_input.c), firstLeadingBit(vec2<u32>(global1.b.x, u_input.c))) % vec2<u32>(32u)));
    global0 = ~(~u_input.c);
    var var_0 = vec4<i32>(~_wgslsmith_dot_vec3_i32(-(global3.a ^ global2.a), vec3<i32>(~u_input.a.x, _wgslsmith_mult_i32(u_input.d.x, u_input.a.x), ~0i)), global3.a.x, _wgslsmith_add_i32(2147483647i, -56349i), (u_input.d.x | 16934i) | global2.a.x);
    var var_1 = global3.a;
    let var_2 = Struct_3(global1.c.x, global1.a, Struct_1(abs(vec3<i32>(-16781i, 0i & global3.a.x, _wgslsmith_mult_i32(25112i, u_input.b.x)))));
    return !select(select(!vec4<bool>(true, var_2.b, true, global1.a), !vec4<bool>(global1.a, var_2.b, false, false), vec4<bool>(select(false, false, global1.a), true, var_2.b, all(vec2<bool>(false, global1.a)))), select(vec4<bool>(true, select(false, true, var_2.b), global1.a, true), vec4<bool>(all(vec2<bool>(global1.a, global1.a)), global1.a, var_2.b, true), var_2.b), any(select(vec3<bool>(global1.a, false, false), !vec3<bool>(var_2.b, var_2.b, false), select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(true, global1.a, false), global1.a))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_mod_i32(14485i, -_wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -13633i, arg_2.x), global3.a))), true, Struct_1(-_wgslsmith_div_vec3_i32(global3.a, arg_3.zzw)));
    var var_1 = vec4<u32>(firstTrailingBit(~(~359u)) | _wgslsmith_div_u32(reverseBits(func_3(295f, Struct_2(false, vec4<u32>(1u, u_input.c, arg_1, 22966u), vec3<i32>(arg_3.x, arg_3.x, global3.a.x)), Struct_2(arg_0.x, global1.b, vec3<i32>(var_0.c.a.x, global2.a.x, 1i))).x), 0u), ~_wgslsmith_clamp_u32(firstTrailingBit(arg_1 ^ 78332u), arg_1, 64084u), global1.b.x, abs(~firstLeadingBit(_wgslsmith_div_u32(global1.b.x, u_input.c))));
    var var_2 = vec3<bool>(true, any(select(!arg_0, !arg_0, func_2())), all(arg_0.zx));
    var var_3 = _wgslsmith_mult_vec4_i32(select(arg_3, arg_3, select(func_2(), !arg_0, any(vec2<bool>(arg_0.x, false)))) & ~select(arg_3, vec4<i32>(arg_2.x, 56828i, arg_3.x, global2.a.x), select(vec4<bool>(true, var_2.x, arg_0.x, global1.a), arg_0, global1.a)), ~vec4<i32>(_wgslsmith_mod_i32(0i, reverseBits(-22335i)), _wgslsmith_dot_vec3_i32(vec3<i32>(25404i, 0i, 3236i), vec3<i32>(global3.a.x, var_0.c.a.x, -3660i)) << (~var_1.x % 32u), -reverseBits(0i), u_input.b.x));
    let var_4 = ~firstLeadingBit(abs(countOneBits(global1.b.x)) >> (arg_1 % 32u));
    return Struct_2(any(!(!vec2<bool>(var_2.x, true))), max(vec4<u32>(1u, _wgslsmith_mod_u32(~global1.b.x, firstLeadingBit(16443u)), arg_1, 1u), global1.b), (vec3<i32>(0i, -var_3.x, -31912i) >> (firstLeadingBit(global1.b.zxz) % vec3<u32>(32u))) ^ -(~(vec3<i32>(1i, -2147483647i, 65510i) >> (vec3<u32>(arg_1, 42669u, u_input.c) % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = func_4(func_2(), 47368u, vec3<i32>(~(~(24621i << (u_input.c % 32u))), -1i, arg_0.x ^ _wgslsmith_mult_i32(select(-2147483647i, u_input.b.x, global1.a), ~global3.a.x)), select(~vec4<i32>(arg_0.x, -2147483647i, global3.a.x, -2147483647i), max(countOneBits(-vec4<i32>(-1i, 6466i, 75305i, 1i)), u_input.d), !(!(!vec4<bool>(global1.a, global1.a, true, true)))));
    return Struct_3(0i & global3.a.x, global1.a || !select(any(vec2<bool>(global1.a, false)), all(vec4<bool>(true, global1.a, global1.a, global1.a)), var_0.a), Struct_1(vec3<i32>(-2147483647i, -var_0.c.x, ~(-23750i))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = 11590u;
    var var_1 = 1032f;
    global0 = global1.b.x;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(global1.b.xy, select(global1.b.zz, global1.b.xx, !select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_1.b, global1.a), vec2<bool>(global1.a, true)))), ~9469u, func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-739f)) + 1734f))), func_4(!select(vec4<bool>(arg_1.b, true, arg_1.b, global1.a), vec4<bool>(arg_0.b, arg_1.b, arg_1.b, true), vec4<bool>(true, arg_1.b, arg_1.b, true)), 0u << ((global1.b.x << (u_input.c % 32u)) % 32u), _wgslsmith_sub_vec3_i32(arg_1.c.a, -global2.a), u_input.d), Struct_2(false, ~select(global1.b, global1.b, arg_0.b), _wgslsmith_mult_vec3_i32(arg_0.c.a, global3.a))).x, var_0);
    var_1 = 1336f;
    return Struct_1(abs(global3.a >> (abs(~vec3<u32>(37275u, u_input.c, 70597u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(min(global1.b.x, global1.b.x | global1.b.x) <= _wgslsmith_div_u32(~u_input.c, ~1u), true);
    global0 = 39336u ^ abs(u_input.c);
    let var_1 = var_0.x;
    global2 = func_5(func_1(global1.c), Struct_3(~45407i, false, func_1(func_1(vec3<i32>(-51612i, 0i, 10011i)).c.a | -u_input.d.xyy).c));
    global3 = Struct_1(select(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), global3.a.x | -41474i), 1i, _wgslsmith_mult_i32(global2.a.x, global1.c.x)), -vec3<i32>(1i, ~global1.c.x, 1i ^ global2.a.x), (all(vec2<bool>(false, var_0.x)) | var_0.x) != var_0.x));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1374f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, ~(-28744i));
}

