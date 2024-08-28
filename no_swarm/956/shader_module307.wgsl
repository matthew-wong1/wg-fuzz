struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1129f, 335f, 2157f);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(true, vec4<u32>(1u, 17784u, 7985u, 1u), Struct_1(604f, vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec3<f32>(-182f, 1994f, 269f), vec4<u32>(46965u, 22523u, 2659u, 33933u)), Struct_4(true, vec4<u32>(20747u, 0u, 4294967295u, 816u), Struct_1(-1738f, vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec3<f32>(770f, -1360f, -1621f), vec4<u32>(1u, 0u, 98887u, 7482u)), Struct_4(true, vec4<u32>(0u, 4294967295u, 26350u, 0u), Struct_1(607f, vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec3<f32>(165f, 962f, -871f), vec4<u32>(7807u, 4294967295u, 1u, 113469u)), Struct_4(true, vec4<u32>(1u, 4294967295u, 64473u, 1u), Struct_1(-1000f, vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec3<f32>(-1000f, 1000f, -699f), vec4<u32>(0u, 0u, 122680u, 13821u)), Struct_4(false, vec4<u32>(1u, 4294967295u, 115610u, 105831u), Struct_1(683f, vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec3<f32>(-704f, -1000f, 189f), vec4<u32>(4294967295u, 0u, 8306u, 0u)), Struct_4(false, vec4<u32>(1u, 4294967295u, 36184u, 26861u), Struct_1(-910f, vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec3<f32>(-2041f, 1000f, -195f), vec4<u32>(4294967295u, 16487u, 1u, 86293u)), Struct_4(false, vec4<u32>(1u, 4294967295u, 4294967295u, 1u), Struct_1(1000f, vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec3<f32>(107f, -323f, -1691f), vec4<u32>(1u, 48062u, 4294967295u, 4294967295u)), Struct_4(false, vec4<u32>(12642u, 1u, 0u, 17863u), Struct_1(1000f, vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec3<f32>(638f, 1276f, 1274f), vec4<u32>(41222u, 14382u, 0u, 0u)), Struct_4(true, vec4<u32>(39523u, 1u, 1u, 0u), Struct_1(169f, vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec3<f32>(815f, 2858f, -1161f), vec4<u32>(1u, 1u, 811u, 1u)), Struct_4(false, vec4<u32>(4294967295u, 100892u, 9831u, 1u), Struct_1(-464f, vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec3<f32>(-3368f, -979f, 379f), vec4<u32>(0u, 0u, 66921u, 34785u)), Struct_4(false, vec4<u32>(43479u, 21728u, 1u, 0u), Struct_1(-1800f, vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec3<f32>(380f, 576f, 1000f), vec4<u32>(1u, 4294967295u, 33908u, 1u)), Struct_4(false, vec4<u32>(4294967295u, 11848u, 106517u, 54946u), Struct_1(-288f, vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec3<f32>(-1000f, -1546f, -852f), vec4<u32>(48941u, 10031u, 135590u, 1u)), Struct_4(false, vec4<u32>(0u, 27017u, 1u, 0u), Struct_1(344f, vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec3<f32>(983f, -401f, -1237f), vec4<u32>(331u, 55963u, 4294967295u, 33998u)), Struct_4(false, vec4<u32>(61686u, 0u, 0u, 1u), Struct_1(-232f, vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec3<f32>(-592f, 602f, 356f), vec4<u32>(47761u, 4294967295u, 24380u, 1u)), Struct_4(true, vec4<u32>(33975u, 0u, 1u, 4294967295u), Struct_1(-1000f, vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec3<f32>(911f, 256f, 452f), vec4<u32>(23555u, 1u, 1u, 4294967295u)), Struct_4(true, vec4<u32>(4294967295u, 87360u, 1u, 4294967295u), Struct_1(-315f, vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec3<f32>(-685f, -910f, 1192f), vec4<u32>(2666u, 0u, 1u, 47744u)), Struct_4(false, vec4<u32>(1u, 7255u, 44779u, 72449u), Struct_1(-947f, vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec3<f32>(1622f, -1749f, 1119f), vec4<u32>(19345u, 23839u, 14431u, 4294967295u)), Struct_4(true, vec4<u32>(84884u, 0u, 43428u, 70491u), Struct_1(-2706f, vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec3<f32>(570f, -302f, -968f), vec4<u32>(4732u, 29463u, 4294967295u, 4294967295u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -2767f, global0.x), vec3<f32>(global0.x, -326f, -221f)))), vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(select(871f, global0.x, true)), _wgslsmith_f_op_f32(-408f * 549f)))));
    let var_0 = ~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u), ~u_input.d.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)), !vec4<bool>((30512u | u_input.d.x) >= select(30128u, var_0.x, global1.x), global1.x, true, true), vec4<bool>(true, global1.x, all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), true), !vec4<bool>(global1.x, global1.x, global1.x, true), !global1.x)), true));
    let var_2 = global0.zz;
    return 264f;
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> vec4<i32> {
    global2 = array<Struct_4, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()), select(vec4<bool>(!(arg_1.c == 82555u), true, true, global1.x | arg_0), vec4<bool>(true, true, true, arg_0 & true), vec4<bool>((false & arg_0) | true, all(select(global1.wyz, vec3<bool>(true, arg_0, global1.x), vec3<bool>(arg_0, global1.x, true))), global1.x, all(select(global1.wy, vec2<bool>(global1.x, true), global1.zz)))), select(!select(!vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, false, global1.x, false), vec4<bool>(arg_0, arg_0, global1.x, arg_0)), vec4<bool>(any(vec2<bool>(arg_0, arg_0)), true, arg_0, !arg_0), (u_input.d.x >> (_wgslsmith_sub_u32(arg_1.c, 49089u) % 32u)) > _wgslsmith_dot_vec3_u32(max(u_input.d, vec3<u32>(arg_1.c, 4294967295u, 90333u)), vec3<u32>(0u, arg_1.c, 4294967295u))));
    let var_1 = var_0.b.yw;
    var var_2 = global2[_wgslsmith_index_u32(u_input.d.x, 18u)];
    let var_3 = Struct_1(-1682f, vec4<bool>(all(!global1.xwx), true, !all(select(var_0.b.zz, var_0.b.wz, global1.x)), all(vec3<bool>(var_1.x, var_0.c.x, var_2.a)) && true), var_0.b);
    return vec4<i32>(-u_input.c.x, u_input.c.x >> (var_2.b.x % 32u), _wgslsmith_sub_i32(-15238i, u_input.b), -u_input.c.x);
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_i32(u_input.c, min(func_2(arg_0.c.b.x, Struct_3(-u_input.c.wz, Struct_2(vec4<i32>(u_input.c.x, 4813i, u_input.c.x, u_input.b), u_input.c, vec3<i32>(-5989i, -12296i, u_input.b), u_input.c.x), arg_0.b.x, min(0i, u_input.c.x))), -u_input.c));
    var var_1 = _wgslsmith_sub_u32(u_input.a.x, 68643u);
    let var_2 = select(-min(-firstTrailingBit(u_input.c.zzw), u_input.c.xww), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, var_0.xx), _wgslsmith_mult_i32(u_input.b, -22597i), ~var_0.x), countOneBits(vec3<i32>(-2147483647i, var_0.x, 0i))), func_2(true, Struct_3(-vec2<i32>(8366i, u_input.b), Struct_2(u_input.c, vec4<i32>(u_input.b, var_0.x, var_0.x, var_0.x), u_input.c.xww, -9384i), ~4294967295u, u_input.b)).ywz), global1.x);
    let var_3 = vec2<i32>(_wgslsmith_div_i32(u_input.c.x, func_2(any(!vec3<bool>(global1.x, false, arg_0.c.b.x)), Struct_3(~var_2.xz, Struct_2(vec4<i32>(-2147483647i, var_0.x, var_0.x, 2147483647i), u_input.c, var_2, var_2.x), ~arg_0.b.x, i32(-1i) * -1i)).x), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-13721i, -1i, var_0.x, var_2.x), u_input.c | vec4<i32>(u_input.c.x, -2098i, -36649i, var_0.x)), _wgslsmith_dot_vec2_i32(var_0.yz, -min(var_0.yy, var_2.zz)), -22164i));
    var var_4 = firstTrailingBit(abs(select(vec4<u32>(4294967295u, 1u, 1u, 110403u), ~u_input.a, true) ^ abs(~u_input.a)));
    return Struct_2(u_input.c, _wgslsmith_add_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_3.x, -1772i, 3313i, -51115i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, var_0.x, var_0.x, var_2.x), u_input.c), var_0.x >= -3488i), vec4<i32>(-38489i, -2147483647i, _wgslsmith_div_i32(var_0.x, -2147483647i), 2147483647i))), -var_0.wwz, var_0.x);
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = global2[_wgslsmith_index_u32(1u, 18u)];
    let var_1 = Struct_3(-_wgslsmith_mod_vec2_i32(~u_input.c.yz, vec2<i32>(arg_0.d, arg_0.c.x)), func_1(global2[_wgslsmith_index_u32(firstTrailingBit(var_0.e.x), 18u)]), 95431u, -arg_0.a.x);
    var var_2 = func_1(Struct_4(global1.x, countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.e.x, 1u), var_0.e), ~vec4<u32>(1u, 41801u, 8927u, u_input.d.x))), var_0.c, vec3<f32>(var_0.c.a, -2574f, _wgslsmith_f_op_f32(f32(-1f) * -1556f)), var_0.b));
    var var_3 = ~(~_wgslsmith_clamp_u32(var_0.e.x, _wgslsmith_div_u32(19736u >> (var_1.c % 32u), var_1.c), ~(~4294967295u)));
    var_0 = Struct_4(any(var_0.c.b.yy), vec4<u32>(0u, var_1.c | 7338u, ~_wgslsmith_add_u32(var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 7410u, u_input.d.x), var_0.e.zyz)), 78265u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1113f), !vec4<bool>(var_0.a & var_0.c.c.x, global1.x, global1.x == var_0.c.b.x, global1.x), select(vec4<bool>(global1.x, global1.x & global1.x, true, true), select(vec4<bool>(global1.x, true, true, false), select(vec4<bool>(var_0.a, true, true, global1.x), vec4<bool>(global1.x, global1.x, false, var_0.c.c.x), false), var_0.c.b), !global1.x | (global1.x | true))), _wgslsmith_f_op_vec3_f32(exp2(var_0.d)), _wgslsmith_add_vec4_u32(~var_0.b, reverseBits(~_wgslsmith_sub_vec4_u32(var_0.b, u_input.a))));
    return _wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(-207f)), _wgslsmith_f_op_f32(func_3()), var_0.c.a), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1221f, 354f, -1688f), var_0.d), var_0.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, _wgslsmith_div_f32(-296f, 475f), _wgslsmith_f_op_f32(trunc(-1760f))) - var_0.d), _wgslsmith_mult_u32(u_input.d.x >> (u_input.d.x % 32u), ~651u) > ~var_0.e.x)), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(471f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f), -104f))) > _wgslsmith_f_op_f32(trunc(global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_4(global1.x | global1.x, ~(vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.a.x) & u_input.a), Struct_1(global0.x, !vec4<bool>(false, false, true, global1.x), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, global1.x, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -174f, global0.x), vec3<f32>(global0.x, global0.x, 1180f))), vec4<u32>(44094u, 4294967295u, u_input.d.x, 1u) ^ u_input.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1355f, global0.x)), vec3<f32>(global0.x, 534f, global0.x)), vec3<f32>(-1258f, global0.x, global0.x), !select(vec3<bool>(true, false, false), global1.xxz, global1.x)))));
    var var_3 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c)), _wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_sub_vec4_i32(func_2(global1.x, Struct_3(u_input.c.wx, Struct_2(u_input.c, vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b), vec3<i32>(u_input.c.x, u_input.c.x, u_input.b), u_input.b), u_input.d.x, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, 57749i, -6502i), u_input.c))) | select(~(-u_input.c), _wgslsmith_clamp_vec4_i32(-u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, 1i, 41879i) | vec4<i32>(u_input.b, -58585i, u_input.b, u_input.c.x), firstLeadingBit(vec4<i32>(u_input.b, 2147483647i, 0i, 0i))), select(select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, true, global1.x, false)), !vec4<bool>(false, global1.x, false, false), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global1.x, global1.x, false), global1.x))), vec3<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(u_input.b, u_input.c.x, u_input.b) << (u_input.d % vec3<u32>(32u))) & _wgslsmith_div_vec3_i32(vec3<i32>(-29044i, -10570i, u_input.b), vec3<i32>(-44552i, 1i, u_input.b)), vec3<i32>(u_input.c.x, select(13804i, 9715i, global1.x), -2147483647i)), _wgslsmith_dot_vec3_i32(~u_input.c.wxz, u_input.c.zzx), 0i), -30829i);
    var var_4 = true;
    global2 = array<Struct_4, 18>();
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 1308f)) * -961f), -1i, ~u_input.d.x, var_3.a, global0.yx);
}

