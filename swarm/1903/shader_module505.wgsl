struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 298f;

var<private> global1: array<f32, 8>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(18225u, true, 4294967295u), Struct_1(22138u, true, 7313u), Struct_1(1u, true, 4294967295u), Struct_1(0u, false, 43564u), Struct_1(4294967295u, false, 0u), Struct_1(4294967295u, true, 0u), Struct_1(48934u, true, 51570u), Struct_1(1u, false, 68658u), Struct_1(25311u, false, 62177u), Struct_1(1u, false, 19591u), Struct_1(0u, true, 70418u), Struct_1(350u, true, 23411u), Struct_1(1u, true, 2601u), Struct_1(0u, true, 4294967295u), Struct_1(52088u, true, 18574u), Struct_1(65081u, false, 4294967295u), Struct_1(0u, true, 4299u), Struct_1(32951u, true, 1u), Struct_1(4506u, false, 7493u), Struct_1(1u, true, 31577u), Struct_1(1u, false, 26122u), Struct_1(0u, true, 32658u));

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_1 = Struct_1(~max(1u, 37406u), !(!global3.b), ~var_0.c);
    let var_2 = select(!(!select(!vec4<bool>(false, true, true, arg_0.b), select(vec4<bool>(var_0.b, true, false, global3.b), vec4<bool>(true, false, global3.b, true), true), select(vec4<bool>(var_0.b, false, true, false), vec4<bool>(false, true, false, true), var_0.b))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, global3.b, arg_2.b), !any(vec2<bool>(true, true))), !var_0.b);
    var var_3 = var_1;
    let var_4 = -58971i;
    return 1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    global3 = Struct_1(0u, !all(vec4<bool>(arg_1.b, true, arg_1.b, all(vec2<bool>(global3.b, true)))), ~_wgslsmith_mult_u32(22772u, firstLeadingBit(u_input.e & u_input.d.x)));
    let var_0 = vec2<f32>(global1[_wgslsmith_index_u32(~global3.c, 8u)], -1000f);
    var var_1 = ~countOneBits(~vec4<u32>(global3.a, 1u, 4294967295u, 43317u) ^ (select(vec4<u32>(4294967295u, arg_1.a, global3.c, 4294967295u), vec4<u32>(arg_1.a, arg_1.c, u_input.d.x, 56903u), global3.b) & vec4<u32>(arg_0.x, u_input.b.x, 75625u, 65938u)));
    var var_2 = vec3<i32>(u_input.c, -1i, u_input.c ^ -u_input.c);
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, ~arg_0.x), 23419u, abs(4294967295u)), ~firstLeadingBit(var_1.yxy))), 8u)];
    return vec4<bool>(1103f != _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~(~8409u), 8u)], _wgslsmith_f_op_f32(var_0.x - global1[_wgslsmith_index_u32(global3.c, 8u)]))), false, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.c, 0u, arg_0.x, arg_1.a)), ~vec4<u32>(4294967295u, 46155u, var_1.x, var_1.x)), 1u) <= (~_wgslsmith_clamp_u32(1u, 1u, 54541u) & ~(~var_1.x)), any(select(!(!vec2<bool>(arg_1.b, global3.b)), !select(vec2<bool>(true, arg_1.b), vec2<bool>(false, true), false), 1u < global3.a)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(~global3.c, 22u)];
    let var_0 = Struct_2(vec2<bool>(global3.b, any(!vec2<bool>(true, global3.b))), select(select(select(select(vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), vec4<bool>(false, global3.b, true, true), vec4<bool>(false, arg_0.b, true, global3.b)), select(vec4<bool>(global3.b, global3.b, true, true), vec4<bool>(global3.b, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(true, false, false, global3.b), vec4<bool>(arg_0.b, global3.b, arg_0.b, true))), !vec4<bool>(false, arg_0.b, global3.b, false), vec4<bool>(true && global3.b, !arg_0.b, true, any(vec3<bool>(false, false, false)))), func_4(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, u_input.b.x), u_input.b.yx), Struct_1(_wgslsmith_add_u32(43590u, 0u), !arg_0.b, func_3(Struct_1(global3.a, false, global3.a), vec3<i32>(-2147483647i, 9832i, -18026i), Struct_1(53935u, false, global3.c), 11468i)), vec3<i32>(u_input.a.x, u_input.c, 2147483647i) & vec3<i32>(u_input.c, -63731i, 32581i)), global3.b));
    var var_1 = global2[_wgslsmith_index_u32(9898u, 22u)];
    let var_2 = -u_input.c;
    var var_3 = any(var_0.b.zyz);
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, max(69767u, 44589u), _wgslsmith_mod_u32(global3.c, u_input.b.x), ~4294967295u), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, var_1.a, global3.c, 56820u), vec4<u32>(u_input.e, 70927u, u_input.e, arg_0.c))), ~_wgslsmith_mod_u32(4294967295u, 19947u)), 22u)];
}

fn func_5(arg_0: Struct_1) -> u32 {
    global2 = array<Struct_1, 22>();
    var var_0 = vec4<u32>(~0u, func_3(func_2(Struct_1(arg_0.c ^ u_input.b.x, any(vec4<bool>(arg_0.b, arg_0.b, true, false)), _wgslsmith_add_u32(u_input.e, 1u))), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, -1i, u_input.c) | vec3<i32>(-20847i, u_input.c, 6625i)), vec3<i32>(54253i & u_input.c, u_input.a.x, ~u_input.a.x)), global2[_wgslsmith_index_u32(~(~77220u), 22u)], u_input.a.x), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1251u, arg_0.a, arg_0.c), u_input.b)), u_input.e);
    let var_1 = -2147483647i;
    let var_2 = Struct_2(select(select(!vec2<bool>(true, arg_0.b), !func_4(u_input.b.zy, Struct_1(0u, global3.b, 1u), vec3<i32>(u_input.c, 36816i, 1i)).zx, !select(vec2<bool>(arg_0.b, true), vec2<bool>(false, true), vec2<bool>(arg_0.b, arg_0.b))), vec2<bool>(true, true), any(vec4<bool>(arg_0.b, true, true, global1[_wgslsmith_index_u32(0u, 8u)] >= -1000f))), select(!func_4(~vec2<u32>(1u, 0u), Struct_1(arg_0.a, arg_0.b, var_0.x), -vec3<i32>(u_input.a.x, 1i, u_input.a.x)), func_4(vec2<u32>(var_0.x, 3361u) << (var_0.yy % vec2<u32>(32u)), Struct_1(~0u, global3.b, ~global3.a), -(~vec3<i32>(u_input.a.x, u_input.c, 29327i))), func_4(_wgslsmith_clamp_vec2_u32(~var_0.yy, var_0.zw, var_0.zx << (vec2<u32>(65626u, u_input.e) % vec2<u32>(32u))), func_2(arg_0), vec3<i32>(-6455i & u_input.c, -11723i, -19210i))));
    let var_3 = func_2(Struct_1(u_input.e, global3.b, min(37057u, ~(~4294967295u))));
    return u_input.b.x;
}

fn func_1() -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.c, u_input.b.x) ^ ~func_5(func_2(Struct_1(7509u, global3.b, u_input.e))), 8u)];
    var var_0 = Struct_2(vec2<bool>(global3.b, global3.b), !select(!(!vec4<bool>(global3.b, global3.b, global3.b, global3.b)), !(!vec4<bool>(global3.b, global3.b, global3.b, global3.b)), !global3.b));
    var var_1 = vec3<bool>(all(!var_0.b.yzw), false, var_0.a.x & (u_input.a.x == firstTrailingBit(-1i << (u_input.e % 32u))));
    var var_2 = Struct_1(global3.a, false, global3.a);
    var_1 = !select(select(!(!vec3<bool>(var_0.b.x, true, true)), !func_4(vec2<u32>(global3.a, 20438u), global2[_wgslsmith_index_u32(3418u, 22u)], vec3<i32>(u_input.c, -2147483647i, u_input.a.x)).wyy, false), select(vec3<bool>(global1[_wgslsmith_index_u32(42709u, 8u)] > global1[_wgslsmith_index_u32(global3.c, 8u)], false, true), !(!var_0.b.xwy), select(vec3<bool>(false, var_0.a.x, var_1.x), var_0.b.zwy, true)), !all(var_0.b) & ((u_input.d.x >> (var_2.c % 32u)) > 1u));
    return global2[_wgslsmith_index_u32(~u_input.d.x, 22u)];
}

fn func_6(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = func_1();
    var var_1 = u_input.b;
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    let var_2 = Struct_2(!select(select(vec2<bool>(var_0.b, true), vec2<bool>(global3.b, var_0.b), select(vec2<bool>(var_0.b, arg_3.b), vec2<bool>(arg_3.b, true), vec2<bool>(var_0.b, arg_3.b))), func_4(~var_1.zz, Struct_1(0u, false, 85166u), arg_1.xwy).zw, false), !vec4<bool>(arg_3.c >= var_0.c, !global3.b, all(func_4(vec2<u32>(30245u, 0u), Struct_1(global3.c, arg_3.b, 4294967295u), arg_2).xw), !(!global3.b)));
    return ((~1u & reverseBits(arg_3.c)) & arg_3.a) | (_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(var_1.yx, vec2<u32>(var_1.x, 4294967295u)), min(vec2<u32>(98911u, 22732u), vec2<u32>(1u, 5950u))) >> (~_wgslsmith_sub_u32(1u, func_3(arg_3, arg_1.yxx, global2[_wgslsmith_index_u32(var_0.a, 22u)], 2147483647i)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<bool>(u_input.e == func_6(26974u, -vec4<i32>(-42704i, -2755i, -54297i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.c, 0i) << (vec3<u32>(global3.c, u_input.e, 1u) % vec3<u32>(32u)), func_1()), false), func_4(~abs(u_input.d ^ u_input.d), func_2(Struct_1(~1u, !global3.b, u_input.e)), vec3<i32>(-8705i, _wgslsmith_clamp_i32(~(-2147483647i), u_input.c >> (u_input.e % 32u), 49994i << (u_input.b.x % 32u)), _wgslsmith_sub_i32(~1i, -92444i))));
    global3 = func_1();
    var var_1 = reverseBits(~(min(u_input.d, vec2<u32>(u_input.d.x, 37106u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(4830u, global3.a), ~vec2<u32>(global3.c, 1u)) % vec2<u32>(32u))));
    var var_2 = var_0;
    let var_3 = abs(49542u);
    var var_4 = 1329f;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i) << (((_wgslsmith_div_u32(3498u, 1u) >> (firstLeadingBit(5418u) % 32u)) ^ func_2(func_1()).a) % 32u), 18479u, 1i, func_3(Struct_1(var_1.x, global3.b, func_6(u_input.b.x, vec4<i32>(u_input.c, u_input.c, u_input.c, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.c, 0i, u_input.c)), func_1())), ~select(countOneBits(vec3<i32>(0i, 0i, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c, -73503i), vec3<i32>(49871i, -36469i, u_input.a.x)), all(vec3<bool>(var_0.a.x, var_5.b.x, var_2.a.x))), func_2(func_2(global2[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_div_i32(u_input.c, u_input.a.x)));
}

