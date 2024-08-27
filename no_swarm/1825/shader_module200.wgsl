struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec4<u32>(14410u, 22280u, 4294967295u, 1u)), Struct_3(vec4<u32>(4294967295u, 18887u, 13313u, 1u)), Struct_3(vec4<u32>(32032u, 53503u, 1u, 1u)), Struct_3(vec4<u32>(43928u, 1u, 49835u, 4294967295u)), Struct_3(vec4<u32>(57436u, 0u, 27725u, 18156u)), Struct_3(vec4<u32>(1u, 0u, 33095u, 0u)), Struct_3(vec4<u32>(40377u, 3798u, 10733u, 22552u)), Struct_3(vec4<u32>(68888u, 7069u, 1u, 8563u)), Struct_3(vec4<u32>(1u, 0u, 0u, 1u)), Struct_3(vec4<u32>(1u, 30979u, 1u, 115087u)), Struct_3(vec4<u32>(65091u, 9299u, 72145u, 0u)), Struct_3(vec4<u32>(4294967295u, 26779u, 0u, 33610u)), Struct_3(vec4<u32>(11632u, 77092u, 18995u, 1u)), Struct_3(vec4<u32>(1u, 43106u, 7151u, 62729u)), Struct_3(vec4<u32>(4294967295u, 0u, 49297u, 1u)), Struct_3(vec4<u32>(1u, 74004u, 84958u, 1u)), Struct_3(vec4<u32>(11339u, 53622u, 0u, 4294967295u)), Struct_3(vec4<u32>(0u, 82044u, 1u, 59476u)), Struct_3(vec4<u32>(0u, 45933u, 32764u, 32101u)), Struct_3(vec4<u32>(68345u, 56994u, 4294967295u, 66538u)), Struct_3(vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_3(vec4<u32>(55937u, 78351u, 0u, 21591u)), Struct_3(vec4<u32>(63872u, 56928u, 46346u, 4294967295u)), Struct_3(vec4<u32>(20634u, 0u, 8775u, 29975u)), Struct_3(vec4<u32>(50574u, 0u, 4294967295u, 4294967295u)), Struct_3(vec4<u32>(26528u, 31326u, 6465u, 1u)), Struct_3(vec4<u32>(73070u, 47007u, 0u, 0u)), Struct_3(vec4<u32>(38674u, 23629u, 1u, 15305u)), Struct_3(vec4<u32>(54175u, 0u, 4294967295u, 0u)));

var<private> global1: vec4<i32>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<vec3<i32>, 32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global3 = Struct_1(global2.a, global3.b, ~_wgslsmith_sub_u32(4294967295u, arg_0.b.c));
    global3 = Struct_1(vec3<u32>(78011u, _wgslsmith_mod_u32(~firstTrailingBit(1u), 38741u), 63021u), all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(~u_input.a & u_input.a, _wgslsmith_mod_vec2_u32(u_input.a, abs(vec2<u32>(48054u, u_input.a.x)))) | (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.a.x, 110487u, 27953u), u_input.a.x) >> (global3.c % 32u)));
    global2 = arg_0.a;
    global0 = array<Struct_3, 29>();
    var var_0 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(~26406u, 22792u << (global2.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.c, 1u, global2.a.x), vec4<u32>(0u, arg_0.a.a.x, global3.a.x, 66738u))), 1u), _wgslsmith_sub_u32(u_input.a.x, arg_0.b.a.x));
    return ~vec3<u32>(_wgslsmith_sub_u32(arg_0.b.a.x, global3.a.x), abs(0u), firstLeadingBit(global3.c) >> (u_input.a.x % 32u)) | (global3.a | global3.a);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_2(Struct_1(select(max(global2.a, vec3<u32>(9852u, global3.c, global2.a.x)) >> (~vec3<u32>(arg_0.x, 4294967295u, global2.a.x) % vec3<u32>(32u)), vec3<u32>(select(0u, 1u, arg_1.x), u_input.a.x & 23529u, ~4294967295u), vec3<bool>(any(vec3<bool>(global2.b, arg_1.x, global2.b)), arg_1.x == global2.b, all(vec2<bool>(global2.b, global3.b)))), u_input.b.x <= 14123i, abs(arg_0.x)), Struct_1(func_3(Struct_2(Struct_1(vec3<u32>(85805u, 29853u, u_input.a.x), global2.b, u_input.a.x), Struct_1(vec3<u32>(0u, 50622u, 18027u), global2.b, global2.c), u_input.b, u_input.b)), !(any(vec2<bool>(true, arg_1.x)) || (15892u >= arg_2.x)), ~_wgslsmith_dot_vec2_u32(global2.a.yy, arg_0.xy ^ vec2<u32>(0u, 0u))), vec4<i32>(14530i, -u_input.b.x, ~firstTrailingBit(firstLeadingBit(-31526i)), ~_wgslsmith_dot_vec2_i32(-u_input.b.xw, global1.yw >> (vec2<u32>(29697u, global3.a.x) % vec2<u32>(32u)))), firstTrailingBit(abs(~u_input.b)));
    let var_1 = Struct_4(select(select(arg_1, arg_1, !(!vec2<bool>(false, var_0.b.b))), !select(vec2<bool>(false, false), !arg_1, select(arg_1, vec2<bool>(arg_1.x, global2.b), vec2<bool>(var_0.b.b, arg_1.x))), select(select(vec2<bool>(global2.b, global3.b), select(arg_1, vec2<bool>(true, global3.b), false), arg_1), select(vec2<bool>(true, true), !vec2<bool>(var_0.a.b, global2.b), !global3.b), !(74564u <= global2.a.x))), 34290u, Struct_2(Struct_1(~firstLeadingBit(vec3<u32>(arg_0.x, 4294967295u, 4294967295u)), all(select(vec3<bool>(true, false, true), vec3<bool>(var_0.b.b, false, true), var_0.b.b)), abs(global3.c) ^ (global3.a.x | 1u)), var_0.a, vec4<i32>(u_input.b.x, 36759i, 1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global1.yy, vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_mult_i32(-1i, u_input.b.x), select(-1i, -1i, arg_1.x))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c, firstTrailingBit(u_input.b)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -9771i, -26227i), vec4<i32>(u_input.b.x, u_input.b.x, var_0.d.x, u_input.b.x)), -vec4<i32>(var_0.d.x, global1.x, 0i, 1i)))));
    var var_2 = ~vec2<u32>(var_1.b, arg_0.x & ~1u);
    global0 = array<Struct_3, 29>();
    let var_3 = global0[_wgslsmith_index_u32(39697u, 29u)];
    return any(vec3<bool>(var_0.a.b, var_0.b.b, global3.c != arg_2.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    let var_0 = 19559u;
    var var_1 = select(1i, global1.x, any(vec3<bool>(func_2(vec3<u32>(25190u, 11117u, arg_0.x), vec2<bool>(global2.b, true), vec3<u32>(52926u, 0u, global2.a.x)), all(vec4<bool>(false, global3.b, global2.b, global3.b)), !global2.b))) >> ((arg_0.x << (reverseBits(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, arg_0.x))) % 32u)) % 32u);
    let var_2 = Struct_1(global2.a & abs(global2.a), func_2(countOneBits(vec3<u32>(_wgslsmith_add_u32(0u, arg_0.x), 1u | u_input.a.x, _wgslsmith_add_u32(global2.a.x, global2.a.x))), vec2<bool>(false, true), vec3<u32>(~(~var_0), (11835u << (0u % 32u)) ^ global3.a.x, 0u)), 0u);
    let var_3 = _wgslsmith_sub_u32(~global2.a.x, max(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global3.a, global2.a), reverseBits(vec3<u32>(var_0, 0u, 4294967295u))), abs(_wgslsmith_add_u32(arg_0.x << (u_input.a.x % 32u), 1u))));
    var var_4 = ~(~((_wgslsmith_div_vec4_u32(arg_0, arg_0) >> (~arg_0 % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global3.a.x, 4294967295u, 1u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, u_input.a.x, 15460u, global3.a.x), arg_0)) % vec4<u32>(32u))));
    return countOneBits(u_input.b.x);
}

fn func_4(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = -329f;
    var var_1 = (global3.b && false) || all(vec3<bool>(global2.b, global2.b, !any(vec3<bool>(true, false, global2.b))));
    global4 = array<vec3<i32>, 32>();
    let var_2 = Struct_4(!vec2<bool>(func_2(global2.a, select(vec2<bool>(global2.b, global3.b), vec2<bool>(true, true), vec2<bool>(global2.b, global2.b)), global2.a), false), 19570u, Struct_2(Struct_1(global3.a, select(global2.b, true, !global2.b), ~(34144u << (global2.a.x % 32u))), Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_u32(global2.a, global3.a)), !(global2.b && true), 11919u), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(1i, arg_0.x | u_input.b.x, u_input.b.x, -27786i), select(u_input.b & u_input.b, u_input.b, true)), ~(vec4<i32>(-1i) * -u_input.b)));
    var var_3 = global0[_wgslsmith_index_u32(~global2.c, 29u)];
    return !(!(!(!(!vec4<bool>(false, false, false, global2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 32>();
    global4 = array<vec3<i32>, 32>();
    var var_0 = global0[_wgslsmith_index_u32(52642u, 29u)];
    global3 = Struct_1(global2.a, true, 1u);
    var var_1 = !vec4<bool>(_wgslsmith_mult_i32(~(-1i), select(global1.x, 77765i, global2.b)) == 2147483647i, false, select(-303f < _wgslsmith_f_op_f32(step(-1000f, -395f)), global3.b, !(!global3.b)), !any(select(vec3<bool>(true, true, true), vec3<bool>(global2.b, false, global3.b), global3.b)));
    var_1 = select(!vec4<bool>(any(select(vec4<bool>(false, global3.b, false, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(global2.b, global2.b, global2.b, global2.b))), true, var_1.x, global2.b), func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, func_1(var_0.a, global2.b)), ~(vec2<i32>(-13414i, u_input.b.x) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-446f, 1647f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1361f, -708f) + _wgslsmith_f_op_f32(sign(1000f))), 1f, func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(33201u, global2.a.x, global2.c), global3.a, var_0.a.xxz), var_1.xx, countOneBits(vec3<u32>(86435u, u_input.a.x, global3.a.x)))))), firstLeadingBit(global1.x));
}

