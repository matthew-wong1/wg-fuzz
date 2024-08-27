struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 0u;

var<private> global2: Struct_2;

var<private> global3: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = ~global2.b.b.x & _wgslsmith_mod_u32(0u, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 55702u), 1u));
    global1 = global2.d.x;
    global0 = _wgslsmith_dot_vec4_i32(select(select(-_wgslsmith_mod_vec4_i32(arg_0.a.e.a, vec4<i32>(9350i, u_input.c.x, -1i, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -35031i, -22841i, arg_0.a.e.a.x), global2.a.a), -26964i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(0i, -34251i)), global2.e.d), all(vec2<bool>(false, global2.c))), arg_0.a.e.a, vec4<bool>(false, false, true, global2.b.c)), abs(firstTrailingBit(arg_0.a.b.a)));
    global1 = _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(global2.b.e ^ 4294967295u, ~30135u, global2.b.b.x, 0u), vec4<u32>(select(arg_0.a.e.e, 46854u, arg_0.a.b.c), _wgslsmith_mod_u32(9561u, arg_0.a.a.e), 7181u, 1u)), vec4<u32>(global2.a.e, abs(global2.d.x), arg_0.a.d.x, _wgslsmith_clamp_u32(1u, 35270u, global2.d.x)) & arg_0.a.e.b, vec4<bool>(true, false, arg_0.a.c, !(arg_0.a.e.c || false))), arg_0.a.a.b);
    var_0 = 0u;
    return global2.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = ~(_wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.d, arg_0, arg_0), vec3<i32>(1i, 2147483647i, -1i)), vec3<i32>(55387i, 13624i, -16821i), false), vec3<i32>(-1i, firstLeadingBit(arg_1.a.x), ~(-2147483647i))) ^ ~u_input.a.x);
    global3 = false;
    global2 = Struct_2(Struct_1(abs(vec4<i32>(arg_0, min(u_input.c.x, -5880i), 27019i, _wgslsmith_add_i32(95589i, -1i))), ~(~vec4<u32>(66210u, arg_1.b.x, 1u, arg_1.b.x)) >> (~select(global2.e.b, vec4<u32>(0u, global2.e.e, global2.a.e, 14422u), true) % vec4<u32>(32u)), (all(vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c)) & arg_1.c) == arg_1.c, ~1i | ~(~u_input.a.x), ~u_input.b.x), global2.b, !any(select(vec4<bool>(arg_1.c, global2.c, true, false), vec4<bool>(false, global2.e.c, false, global2.a.c), true)), abs((firstLeadingBit(vec3<u32>(973u, 11712u, 0u)) & ~arg_1.b.wxz) >> (global2.d % vec3<u32>(32u))), global2.e);
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(arg_1.a, arg_1.a), (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 62142u, 4294967295u, u_input.b.x) >> (vec4<u32>(1u, 122383u, u_input.b.x, 13935u) % vec4<u32>(32u)), abs(vec4<u32>(96936u, arg_1.e, 4294967295u, u_input.b.x))) >> (reverseBits(vec4<u32>(89425u, global2.d.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_clamp_u32(~arg_1.e, firstLeadingBit(global2.b.e), _wgslsmith_dot_vec2_u32(global2.a.b.xz, vec2<u32>(0u, 69690u))), global2.b.e, _wgslsmith_clamp_u32(1u | global2.d.x, abs(38379u), 61138u), 4294967295u), true, global2.a.a.x, ~(((u_input.b.x >> (8625u % 32u)) >> (_wgslsmith_add_u32(u_input.b.x, global2.a.b.x) % 32u)) ^ _wgslsmith_add_u32(u_input.b.x & u_input.b.x, ~16464u)));
    global2 = Struct_2(global2.e, func_2(Struct_3(Struct_2(Struct_1(vec4<i32>(arg_1.d, global2.e.d, arg_1.a.x, 0i), vec4<u32>(arg_1.b.x, 53945u, 49280u, 60416u), var_0.c, arg_1.a.x, 65942u), Struct_1(vec4<i32>(arg_0, arg_1.d, arg_1.a.x, u_input.a.x), global2.e.b, var_0.c, -2147483647i, arg_1.b.x), func_2(Struct_3(Struct_2(var_0, global2.e, arg_1.c, vec3<u32>(var_0.b.x, 1u, 30866u), Struct_1(vec4<i32>(-28405i, -2147483647i, u_input.c.x, u_input.c.x), vec4<u32>(global2.a.e, 120416u, 3650u, 4294967295u), false, arg_1.a.x, var_0.e)), arg_1.a.wzz, 2147483647i)).c, global2.e.b.xww, Struct_1(arg_1.a, vec4<u32>(71830u, global2.b.b.x, global2.b.e, global2.e.e), false, 0i, 14894u)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(global2.e.a.yxz, var_0.a.yxz), global2.a.a.yyz >> (var_0.b.wxy % vec3<u32>(32u))), -22934i)), !var_0.c, arg_1.b.yxy | ~var_0.b.yxw, global2.b);
    return var_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    global2 = arg_1;
    let var_0 = max(arg_1.b.d, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.d, u_input.c.x), vec2<i32>(global2.b.a.x, u_input.c.x))), -(~arg_1.e.a.x)));
    global2 = Struct_2(func_3(14351i, func_2(Struct_3(arg_2.a, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 33985i, arg_2.c), vec3<i32>(global2.a.d, 3248i, 60037i)), var_0 | var_0))), func_3(u_input.c.x, arg_2.a.e), true, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_1.e.b.x, global2.d.x), func_2(Struct_3(arg_2.a, global2.b.a.zwz, var_0)).e, 66u), ~_wgslsmith_mult_vec3_u32(arg_1.d, vec3<u32>(arg_2.a.e.e, 25866u, 80921u)), _wgslsmith_div_vec3_u32(arg_2.a.b.b.wyw, firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.b.e, arg_2.a.d.x, 3161u), vec3<u32>(arg_1.e.b.x, 0u, 1u))))), arg_1.e);
    var var_1 = true;
    let var_2 = arg_1.e.b;
    return Struct_4(global2.b.a.x < -1i, arg_0.xw);
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(vec4<bool>(true, global2.e.c, global2.e.c, any(vec2<bool>(false, true))), Struct_2(func_3(u_input.c.x ^ (i32(-1i) * -68322i), func_2(Struct_3(Struct_2(global2.b, global2.e, false, vec3<u32>(4294967295u, 69270u, u_input.b.x), Struct_1(vec4<i32>(-6708i, 26488i, u_input.a.x, u_input.a.x), vec4<u32>(8383u, u_input.b.x, global2.d.x, 105826u), global2.b.c, global2.e.d, 81971u)), vec3<i32>(-6335i, -59498i, global2.a.d), -1i))), Struct_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a.d, global2.b.d, global2.a.d, global2.a.d), global2.b.a), vec4<u32>(~43335u, _wgslsmith_mod_u32(5617u, global2.d.x), select(14877u, 28511u, false), _wgslsmith_div_u32(global2.d.x, global2.b.e)), false, -47802i, global2.b.e), func_2(Struct_3(Struct_2(global2.b, global2.a, false, global2.e.b.yxw, global2.b), vec3<i32>(0i, global2.e.d, -23880i), -41233i)).c && !(!global2.b.c), _wgslsmith_div_vec3_u32(vec3<u32>(global2.d.x, _wgslsmith_div_u32(u_input.b.x, global2.e.b.x), u_input.b.x), vec3<u32>(_wgslsmith_clamp_u32(24449u, 32633u, global2.b.e), u_input.b.x, 1u)), Struct_1(global2.b.a, vec4<u32>(0u, _wgslsmith_add_u32(1430u, u_input.b.x), select(u_input.b.x, 0u, global2.b.c), abs(global2.d.x)), global2.e.c, u_input.c.x, min(53654u, 0u))), Struct_3(Struct_2(func_3(61762i, global2.e), Struct_1(-global2.b.a, _wgslsmith_add_vec4_u32(global2.a.b, global2.a.b), true, max(global2.e.d, -1i), 13526u), select(all(vec2<bool>(false, true)), !global2.e.c, true), ~vec3<u32>(0u, u_input.b.x, 5953u), Struct_1(vec4<i32>(2147483647i, u_input.a.x, -5282i, 2147483647i), _wgslsmith_sub_vec4_u32(global2.b.b, global2.b.b), global2.a.c | global2.b.c, 25735i, firstLeadingBit(global2.e.b.x))), min(global2.e.a.xwy, vec3<i32>(12300i, u_input.c.x, 49295i)), global2.a.a.x), _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(select(1u, ~u_input.b.x, global2.b.c), _wgslsmith_mult_u32(u_input.b.x, 1u) << (~u_input.b.x % 32u))));
    return func_4(!vec4<bool>(!global2.c, true, _wgslsmith_f_op_f32(f32(-1f) * -423f) > _wgslsmith_f_op_f32(select(555f, 891f, global2.b.c)), false), Struct_2(global2.a, func_3(abs(-2147483647i), Struct_1(select(global2.e.a, vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, 72693i), vec4<bool>(var_0.b.x, false, false, var_0.a)), global2.e.b, var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.a.x, -42172i, -4679i, 33917i), global2.b.a), u_input.b.x)), global2.c, vec3<u32>(30669u, 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global2.d.x, global2.a.e), vec3<u32>(global2.e.b.x, 0u, global2.e.e))), global2.a), Struct_3(Struct_2(Struct_1(-vec4<i32>(-25089i, global2.b.d, -1i, u_input.c.x), vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.b.x), true, -1i, ~u_input.b.x), Struct_1(abs(vec4<i32>(6135i, u_input.c.x, u_input.a.x, global2.a.a.x)), global2.b.b, true, _wgslsmith_dot_vec2_i32(global2.b.a.zy, u_input.a), global2.e.e), false, abs(vec3<u32>(1u, 29562u, global2.a.b.x)), Struct_1(global2.e.a, vec4<u32>(global2.b.b.x, global2.a.b.x, global2.e.b.x, 51232u), global2.c, max(49548i, 71696i), max(global2.a.b.x, global2.b.b.x))), global2.a.a.wwy, _wgslsmith_sub_i32(-2147483647i & global2.b.a.x, 0i) << (~global2.e.e % 32u)), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(global2.e.e, 0u)) & ~func_2(Struct_3(Struct_2(Struct_1(global2.b.a, vec4<u32>(u_input.b.x, 0u, global2.d.x, global2.d.x), global2.e.c, 1i, global2.a.e), Struct_1(global2.e.a, vec4<u32>(0u, global2.d.x, 4294967295u, 4294967295u), true, 26855i, global2.e.b.x), var_0.b.x, vec3<u32>(72750u, 1u, 67922u), global2.a), vec3<i32>(u_input.c.x, 8549i, u_input.c.x), -22509i)).b.wy, _wgslsmith_clamp_vec2_u32(global2.e.b.xz, _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(23674u, u_input.b.x)), vec2<u32>(reverseBits(28606u), global2.b.e))));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_2 {
    global2 = Struct_2(Struct_1(abs(-global2.b.a) >> (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(max(0u, 81255u), ~u_input.b.x, u_input.b.x >> (1u % 32u), u_input.b.x)), !arg_1.b.x || any(arg_1.b), 1i, func_2(Struct_3(Struct_2(Struct_1(vec4<i32>(1i, 25186i, u_input.a.x, u_input.c.x), global2.e.b, global2.c, 0i, 53639u), global2.b, global2.b.c, global2.a.b.zwx, global2.e), _wgslsmith_mod_vec3_i32(global2.b.a.xxw, global2.b.a.xxy), -20645i)).e), global2.a, !(arg_1.a | func_2(Struct_3(Struct_2(Struct_1(global2.a.a, vec4<u32>(25001u, 4294967295u, global2.e.b.x, global2.e.e), arg_1.b.x, global2.e.a.x, global2.d.x), Struct_1(vec4<i32>(global2.b.d, -52297i, u_input.c.x, 834i), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 63298u), global2.c, 1i, global2.e.b.x), global2.a.c, global2.e.b.xyy, global2.b), global2.a.a.wwy, -4230i)).c), vec3<u32>(u_input.b.x & ~0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.b.x, 1u, u_input.b.x, global2.a.e), vec4<u32>(u_input.b.x, u_input.b.x, 1u, global2.e.e)), 19731u, 0u), 4294967295u), ~(~func_3(-2147483647i, Struct_1(vec4<i32>(u_input.c.x, arg_0, -15411i, -28325i), global2.a.b, arg_1.b.x, u_input.c.x, 1u)).b.x)), global2.e);
    let var_0 = _wgslsmith_f_op_f32(-212f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))), 1104f)) * _wgslsmith_div_f32(-1361f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-232f, 1935f), _wgslsmith_f_op_f32(step(1282f, -289f)))))));
    global1 = ~(~8557u);
    global2 = Struct_2(Struct_1(-global2.b.a, vec4<u32>(18490u, u_input.b.x, u_input.b.x, _wgslsmith_mult_u32(~4294967295u, ~u_input.b.x)), arg_1.a, firstTrailingBit(1i), u_input.b.x), Struct_1(global2.a.a, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(global2.b.b | vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u), ~global2.e.b, firstLeadingBit(vec4<u32>(u_input.b.x, 0u, u_input.b.x, global2.d.x))), countOneBits(vec4<u32>(u_input.b.x, 6102u, 1u, 4294967295u))), !all(arg_1.b) & false, _wgslsmith_mult_i32(arg_0, 2147483647i), ~1u), global2.e.c, vec3<u32>(countOneBits(90143u), 1u, global2.e.e), func_3(i32(-1i) * -17515i, global2.a));
    global3 = false;
    return Struct_2(global2.a, global2.e, arg_1.b.x, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 35467u), _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(58843u), _wgslsmith_mult_u32(global2.d.x, 1u), 11400u | global2.b.b.x), ~(~global2.b.b.xzy), global2.a.b.wzz)), global2.e);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = func_4(!(!(!vec4<bool>(arg_0.a.e.c, global2.e.c, false, arg_0.a.e.c))), Struct_2(func_3(firstTrailingBit(select(-25397i, global2.a.a.x, arg_1.a.c)), func_5(-29992i, func_1(), _wgslsmith_div_vec2_i32(vec2<i32>(3746i, 1i), vec2<i32>(1i, arg_1.a.d))).b), Struct_1(abs(firstLeadingBit(arg_1.a.a)), ~func_5(global2.b.d, Struct_4(arg_0.a.e.c, vec2<bool>(true, arg_0.a.b.c)), vec2<i32>(-50048i, global2.b.d)).e.b, func_2(arg_0).c, _wgslsmith_add_i32(0i & u_input.a.x, _wgslsmith_dot_vec2_i32(arg_1.b.a.xw, vec2<i32>(global2.a.d, 34739i))), ~arg_1.d.x), arg_1.b.c, vec3<u32>(abs(_wgslsmith_div_u32(global2.a.e, 4294967295u)), 0u, ~(~47678u)), func_2(arg_0)), Struct_3(func_5(reverseBits(43363i), Struct_4(true, !vec2<bool>(false, global2.e.c)), arg_0.b.yx), arg_1.a.a.zzy, 65161i), ~(arg_0.a.e.e & 82816u));
    global0 = 19180i;
    var_0 = func_1();
    var_0 = func_1();
    var var_1 = arg_0;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(Struct_3(func_5(global2.e.d, func_1(), -(global2.b.a.zx ^ vec2<i32>(u_input.a.x, 1i))), vec3<i32>(_wgslsmith_add_i32(u_input.c.x | 2147483647i, u_input.a.x), -17526i, -(~0i)), -(~abs(u_input.c.x))), func_5(-_wgslsmith_mod_i32(global2.b.d, -u_input.a.x), Struct_4(any(vec3<bool>(global2.a.c, false, false)), func_4(select(vec4<bool>(false, global2.b.c, global2.e.c, global2.c), vec4<bool>(global2.e.c, true, true, true), vec4<bool>(true, global2.a.c, global2.e.c, true)), Struct_2(global2.e, global2.a, false, vec3<u32>(1u, u_input.b.x, 1u), global2.b), Struct_3(Struct_2(global2.b, Struct_1(vec4<i32>(u_input.a.x, 100613i, 2147483647i, global2.b.a.x), vec4<u32>(global2.b.e, 45096u, u_input.b.x, u_input.b.x), true, -39067i, u_input.b.x), false, global2.d, Struct_1(global2.a.a, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), global2.b.c, -40843i, 4294967295u)), vec3<i32>(-1i, global2.a.a.x, 66311i), -1i), global2.d.x).b), _wgslsmith_mod_vec2_i32(-vec2<i32>(global2.b.d, global2.e.d), firstLeadingBit(global2.e.a.wx))), global2.b.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(191f, _wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(-1000f - 2041f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 502f), 245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f * 765f))))));
    var var_0 = vec2<i32>(-abs(_wgslsmith_sub_i32(u_input.c.x, u_input.a.x)), global2.e.a.x) | ((_wgslsmith_div_vec2_i32(-vec2<i32>(0i, -32706i), -vec2<i32>(global2.e.a.x, -14572i)) | countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -36127i), vec2<i32>(u_input.c.x, 15624i)))) | u_input.a);
    global3 = func_5(func_5(abs(-var_0.x), Struct_4(!global2.b.c, vec2<bool>(true, global2.e.c)), vec2<i32>(select(47355i, -2147483647i, true), _wgslsmith_dot_vec3_i32(global2.a.a.ywz, global2.e.a.yyy))).a.a.x, Struct_4(!any(vec3<bool>(true, global2.b.c, global2.c)), !(!vec2<bool>(global2.e.c, global2.c))), global2.b.a.zx).e.c || false;
    global2 = Struct_2(func_2(Struct_3(func_5(var_0.x, func_1(), ~u_input.a), global2.b.a.zyx, func_6(Struct_3(Struct_2(global2.a, global2.b, true, global2.e.b.zzz, global2.a), global2.a.a.xww, -34051i), func_5(-2147483647i, Struct_4(global2.a.c, vec2<bool>(true, global2.c)), u_input.a), vec4<u32>(49748u, u_input.b.x, 18270u, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(248f, 1185f, 553f, 2083f))).b.d)), func_3(~(~(-46485i)), func_3(firstTrailingBit(0i), func_2(Struct_3(Struct_2(global2.a, global2.e, global2.b.c, global2.a.b.ywx, global2.e), global2.a.a.xzw, u_input.c.x)))), any(vec4<bool>(global2.a.c, true, true, func_1().a)), ~global2.d, func_2(Struct_3(Struct_2(global2.e, Struct_1(vec4<i32>(34817i, var_0.x, u_input.c.x, var_0.x), global2.a.b, global2.a.c, var_0.x, 0u), true, reverseBits(global2.b.b.xyy), Struct_1(vec4<i32>(-2147483647i, -43343i, -3408i, 42412i), global2.a.b, global2.c, -1i, 4294967295u)), func_2(Struct_3(Struct_2(global2.e, Struct_1(vec4<i32>(var_0.x, -30381i, global2.b.d, 15769i), vec4<u32>(36224u, 33594u, 1u, global2.b.e), global2.c, -3298i, global2.a.e), global2.b.c, vec3<u32>(global2.e.e, global2.b.e, global2.a.e), Struct_1(global2.e.a, vec4<u32>(1u, 0u, u_input.b.x, 5508u), false, 24350i, 75571u)), vec3<i32>(0i, 0i, u_input.c.x), -29474i)).a.ywy, -26484i)));
    let var_1 = global2.c;
    global3 = all(select(!(!vec4<bool>(true, true, true, global2.b.c)), !(!select(vec4<bool>(global2.e.c, false, false, false), vec4<bool>(global2.b.c, global2.b.c, global2.b.c, false), global2.a.c)), true));
    var var_2 = 40189u;
    let var_3 = Struct_1(vec4<i32>(i32(-1i) * -2147483647i, 1i, u_input.a.x, 1i), vec4<u32>(reverseBits(~countOneBits(global2.d.x)), ~3774u, u_input.b.x, _wgslsmith_mult_u32(1u, u_input.b.x)), !((true && global2.b.c) || ((global2.e.e >= u_input.b.x) && all(vec4<bool>(false, global2.a.c, false, false)))), func_3(i32(-1i) * -5875i, Struct_1(global2.b.a, global2.a.b, any(vec3<bool>(global2.c, true, global2.c)), u_input.c.x, 4294967295u)).d, global2.b.b.x);
    var_2 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

