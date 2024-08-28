struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(-147f, vec3<i32>(20945i, 11524i, 1i), vec3<f32>(-2057f, -121f, -911f), Struct_2(-36780i, vec4<u32>(4294967295u, 0u, 1u, 0u)));

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_2(-20335i, vec4<u32>(68498u, 29082u, 4294967295u, 96313u)), vec4<i32>(2147483647i, 0i, -17756i, -12201i), -68656i, Struct_1(4294967295u, 1u, vec4<u32>(0u, 4294967295u, 4294967295u, 47717u))), Struct_4(Struct_2(-1i, vec4<u32>(1u, 4294967295u, 0u, 21238u)), vec4<i32>(-1i, 2147483647i, 26925i, 0i), 34515i, Struct_1(0u, 4083u, vec4<u32>(58475u, 4294967295u, 0u, 14505u))), Struct_4(Struct_2(39374i, vec4<u32>(14280u, 4294967295u, 15562u, 4294967295u)), vec4<i32>(16895i, -17919i, -1i, 53536i), 25036i, Struct_1(4294967295u, 4294967295u, vec4<u32>(12225u, 42746u, 10557u, 1u))), Struct_4(Struct_2(1i, vec4<u32>(1u, 4704u, 1u, 772u)), vec4<i32>(i32(-2147483648), 1i, -33633i, 0i), i32(-2147483648), Struct_1(0u, 1u, vec4<u32>(3328u, 0u, 4294967295u, 4294967295u))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(522f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(358f - -327f), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(880f * global1.c.x), global2.x))))), global2.x, _wgslsmith_f_op_f32(select(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1.c.x) * global1.a)), true)));
    return i32(-1i) * -30829i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_5) -> vec2<u32> {
    global1 = Struct_3(arg_1.c.x, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_3(), 1i, ~1i), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.x, global1.b.x, global1.b.x), u_input.e), -(~vec3<i32>(-59204i, arg_1.d.a, arg_2.c.a))), vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(27123i), 15316i), ~1i, -arg_2.d.d.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-251f, -732f, _wgslsmith_f_op_f32(arg_1.a * global2.x)))), Struct_2(-_wgslsmith_add_i32(arg_2.d.d.a, u_input.d), vec4<u32>((arg_1.d.b.x ^ arg_1.d.b.x) ^ (93057u & arg_1.d.b.x), arg_2.d.d.b.x, ~81501u, _wgslsmith_dot_vec3_u32(u_input.a.xzw << (vec3<u32>(90678u, arg_1.d.b.x, arg_1.d.b.x) % vec3<u32>(32u)), vec3<u32>(arg_1.d.b.x, 61140u, global1.d.b.x)))));
    let var_0 = vec4<bool>(false | (~u_input.b == (u_input.d ^ 0i)), !(!any(vec3<bool>(false, arg_2.b, arg_2.b)) && true), arg_2.b, select(any(select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(true, false, true, arg_2.b), !vec4<bool>(arg_2.b, arg_2.b, arg_2.b, true))), firstTrailingBit(~0u) > 1u, arg_2.b));
    global0 = Struct_1(~(~(~25202u)), 0u, global0.c << (abs(~global0.c) % vec4<u32>(32u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1468f) + 1652f) * _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-global2.x), any(var_0.wzx)))) - _wgslsmith_f_op_f32(floor(arg_0.x))), 1257f);
    global1 = arg_1;
    return global1.d.b.wy;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec4<i32>) -> i32 {
    global1 = Struct_3(1451f, vec3<i32>(-(-arg_3.x ^ arg_0.a), _wgslsmith_add_i32(~_wgslsmith_div_i32(-2147483647i, 42580i), -2147483647i), _wgslsmith_sub_i32(arg_0.a, _wgslsmith_dot_vec2_i32(global1.b.xx, vec2<i32>(0i, -1i))) >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(global1.c + global1.c), arg_2.a);
    global3 = array<Struct_4, 4>();
    var var_0 = Struct_2(0i, ~global0.c);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) + 337f), global2.x))), vec3<i32>(-43723i, -13212i, _wgslsmith_mod_i32(var_0.a, _wgslsmith_mod_i32(-2147483647i, -2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.c, vec3<f32>(_wgslsmith_f_op_f32(global1.c.x + 921f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(global2.x))), !all(vec3<bool>(true, false, true))))), Struct_2(-_wgslsmith_clamp_i32(var_0.a, u_input.e.x, -28234i) << (arg_0.b.x % 32u), ~_wgslsmith_mod_vec4_u32(select(global0.c, vec4<u32>(0u, 4294967295u, 101601u, 14259u), vec4<bool>(false, false, false, false)), ~arg_2.d.c)));
    var var_2 = i32(-1i) * -1i;
    return -(~arg_2.c) >> (var_1.d.b.x % 32u);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = func_4(global1.d, ~(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, -521f, 302f)), Struct_3(-1344f, vec3<i32>(u_input.e.x, global1.d.a, u_input.d), vec3<f32>(558f, global1.c.x, arg_1), global1.d), Struct_5(vec4<i32>(global1.d.a, 13208i, 1i, 20624i), false, global1.d, Struct_3(182f, u_input.e, global1.c, global1.d), Struct_3(global2.x, vec3<i32>(u_input.b, u_input.b, global1.d.a), vec3<f32>(global1.a, 1768f, arg_1), Struct_2(1i, vec4<u32>(0u, arg_0.x, global0.a, 0u))))) ^ vec2<u32>(_wgslsmith_sub_u32(0u, 0u), global0.c.x)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~4294967295u, ~_wgslsmith_mult_u32(0u, 35634u) | arg_0.x), 4u)], _wgslsmith_sub_vec4_i32(vec4<i32>(~43999i, u_input.d, firstLeadingBit(22i), u_input.d), ~(~(~vec4<i32>(u_input.b, global1.d.a, u_input.e.x, u_input.d)))));
    var var_1 = 2147483647i;
    var var_2 = global1.d;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global2.x, arg_1)), 767f, true))))), global1.c.x);
    let var_3 = 854f;
    return Struct_2(_wgslsmith_dot_vec2_i32(u_input.e.yx | vec2<i32>(global1.b.x, u_input.e.x), firstLeadingBit(global1.b.xx ^ select(vec2<i32>(1i, 34624i), vec2<i32>(var_0, -26209i), arg_2))), vec4<u32>(arg_0.x, _wgslsmith_sub_u32(79502u, _wgslsmith_div_u32(62011u, 80919u)) & max(_wgslsmith_mod_u32(u_input.a.x, 43758u), 661u), ~(~global0.b), 277u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d;
    var var_1 = Struct_5(~(~vec4<i32>(1i, _wgslsmith_mult_i32(global1.b.x, global1.d.a), u_input.d, ~(-2147483647i))), reverseBits(global1.d.a) < (i32(-1i) * -u_input.d), func_1(global1.d.b.zxy << (select(~var_0.b.wwy, var_0.b.yzw, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-875f, -292f) + global2.x) - _wgslsmith_f_op_f32(exp2(global2.x))), !any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false))), Struct_3(-2481f, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.e.x >> (var_0.b.x % 32u), var_0.a), ~vec3<i32>(2147483647i, u_input.b, u_input.d) | vec3<i32>(2147483647i, 2147483647i, u_input.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-845f, global2.x, -782f), _wgslsmith_f_op_vec3_f32(global1.c * global1.c), all(vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a, global2.x, global1.a)))), Struct_2(-72528i, (vec4<u32>(12096u, var_0.b.x, u_input.c.x, u_input.a.x) ^ vec4<u32>(global1.d.b.x, 14968u, var_0.b.x, global1.d.b.x)) >> (~vec4<u32>(global1.d.b.x, 16220u, var_0.b.x, global1.d.b.x) % vec4<u32>(32u)))), Struct_3(global2.x, vec3<i32>(-28751i, u_input.d, ~(-1i)), _wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(_wgslsmith_f_op_f32(sign(global1.a)), 2919f, -882f)), Struct_2(-4402i, vec4<u32>(~u_input.c.x, ~global0.b, firstLeadingBit(u_input.a.x), u_input.a.x))));
    global3 = array<Struct_4, 4>();
    var_0 = var_1.d.d;
    var_0 = global1.d;
    global1 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(327f, var_1.e.d.b.x);
}

