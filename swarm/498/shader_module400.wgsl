struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(25240u, 91004u, 48886u, 6740u, 4294967295u, 44494u, 22457u, 67503u, 12661u, 1u, 1u, 4294967295u, 27210u, 33143u, 70740u, 71158u, 0u, 1u, 28493u, 12860u, 7911u, 1u, 1u, 83670u, 7605u, 30142u, 27832u);

var<private> global1: array<i32, 4> = array<i32, 4>(22775i, -1i, 0i, 0i);

var<private> global2: bool;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = 15556u;
    let var_1 = Struct_3(u_input.a.zx, arg_1.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.b, 379f, var_1.b.b), vec3<f32>(1674f, -383f, 571f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-731f, arg_1.a.b, -1935f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b, global3.b.b, 650f) * vec3<f32>(-751f, var_1.b.b, arg_1.a.b)))), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), true)))), vec3<f32>(_wgslsmith_f_op_f32(var_1.b.b + var_1.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1544f), global3.b.b), select(!vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(any(vec2<bool>(false, false)) != any(vec3<bool>(true, false, true)), (-579f > arg_1.a.b) && true, all(vec2<bool>(false, true))), true)));
    let var_3 = firstLeadingBit(select(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_1.a.c, 4u)], var_1.b.a.x), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.x, 27u)], 4u)]), var_1.b.a.yz), var_1.b.a.xw, (true || all(vec4<bool>(true, false, true, true))) & true));
    global3 = var_1;
    return (4294967295u > (abs(_wgslsmith_clamp_u32(4478u, global3.a.x, var_1.a.x)) << (~var_1.b.c % 32u))) & any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true), _wgslsmith_f_op_f32(-var_1.b.b) < -1000f));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-global3.b.b);
    global2 = true & (arg_2 || func_3(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 8272u), u_input.a.x, 65707u & global3.b.c), Struct_2(global3.b)));
    global3 = Struct_3(vec2<u32>(global0[_wgslsmith_index_u32((firstTrailingBit(4294967295u) >> (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(46848u, 23233u), 27u)] % 32u)) | (abs(global3.a.x) >> (u_input.a.x % 32u)), 27u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global3.b.c) << (vec4<u32>(arg_1, 1257u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), max(vec4<u32>(41323u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)], 1u, global0[_wgslsmith_index_u32(1u, 27u)], 1u))), arg_1, ~u_input.a.x >> (select(arg_1, 0u, arg_2) % 32u))), global3.b);
    let var_1 = u_input.e;
    let var_2 = global3.b.b;
    return _wgslsmith_f_op_f32(max(216f, 2541f));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: u32) -> vec3<bool> {
    global0 = array<u32, 27>();
    let var_0 = true;
    var var_1 = vec3<bool>(!(((-15111i >= u_input.e.x) & true) & arg_2), arg_2, (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~15890u, 27u)], _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) << (u_input.a.x % 32u)) != 35623u);
    global3 = Struct_3(vec2<u32>(39620u, 1u), global3.b);
    global0 = array<u32, 27>();
    return !select(select(vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))), !(!vec3<bool>(var_1.x, var_0, var_0)), false), vec3<bool>(true, true, true), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = false;
    var_0 = arg_0.x;
    global1 = array<i32, 4>();
    var_0 = false;
    var_0 = arg_1.x;
    return Struct_3(u_input.a.yx, Struct_1(reverseBits(abs(vec4<i32>(67874i, arg_2.a.x, -1i, 2147483647i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(177f * _wgslsmith_div_f32(-338f, arg_2.b)))), _wgslsmith_dot_vec2_u32(select(~global3.a, ~u_input.a.yx, arg_1.xx), min(vec2<u32>(51862u, arg_2.c), global3.a >> (vec2<u32>(u_input.a.x, 22480u) % vec2<u32>(32u))))));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec4<u32> {
    global0 = array<u32, 27>();
    global3 = Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.a, arg_0.yz), func_5(vec2<bool>(true, true), vec3<bool>(true, false, true), global3.b).a | global3.a, global3.a), func_5(vec2<bool>(func_3(~4294967295u, Struct_2(arg_1.b)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), vec3<bool>(true, select(global1[_wgslsmith_index_u32(global3.b.c, 4u)], global3.b.a.x, false) < -arg_3.x, false), Struct_1(vec4<i32>(arg_2.x, 1i, arg_3.x ^ global1[_wgslsmith_index_u32(27612u, 4u)], _wgslsmith_div_i32(arg_3.x, 0i)), 1565f, 4294967295u)).b);
    global0 = array<u32, 27>();
    let var_0 = arg_1;
    global1 = array<i32, 4>();
    return ~arg_0;
}

fn func_1() -> f32 {
    var var_0 = true;
    let var_1 = func_6(firstTrailingBit(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1733u, 1u, global3.a.x), vec4<u32>(10568u, global3.a.x, 26587u, 24583u)) & select(vec4<u32>(global3.b.c, global0[_wgslsmith_index_u32(4294967295u, 27u)], 1u, 0u), vec4<u32>(1u, global3.b.c, global3.a.x, u_input.a.x), true))), func_5(vec2<bool>(_wgslsmith_f_op_f32(global3.b.b - global3.b.b) > _wgslsmith_f_op_f32(global3.b.b + global3.b.b), false), select(vec3<bool>(false, all(vec2<bool>(true, false)), true), func_4(global3.b.b, _wgslsmith_f_op_f32(func_2(global3.b.a.x, global3.a.x, false, vec3<i32>(2147483647i, -26587i, 45541i))), true, 0u), u_input.a.x > 1u), Struct_1(global3.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1204f - -986f), -974f)), 0u)), vec3<i32>(countOneBits(global3.b.a.x), ~(~abs(global1[_wgslsmith_index_u32(global3.a.x, 4u)])), global3.b.a.x), -func_5(vec2<bool>(true, true), vec3<bool>(true, true, true), global3.b).b.a.zww);
    return 492f;
}

fn func_7(arg_0: bool, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> StorageBuffer {
    global3 = Struct_3(u_input.a.xy, global3.b);
    var var_0 = Struct_4(func_5(vec2<bool>(select(true, func_4(-453f, 1000f, false, 0u).x, true), false), func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-105f)))), _wgslsmith_f_op_f32(global3.b.b - -1372f), arg_1.x, func_5(arg_1.yx, arg_1, func_5(vec2<bool>(true, true), arg_1, Struct_1(vec4<i32>(-10711i, -2919i, 2147483647i, arg_3), 1450f, 4294967295u)).b).b.c), func_5(vec2<bool>(arg_0, arg_2), arg_1, func_5(vec2<bool>(arg_2, arg_0), vec3<bool>(arg_0, true, false), global3.b).b).b), vec3<u32>(30347u, global0[_wgslsmith_index_u32(func_6(vec4<u32>(37935u, 4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) & vec4<u32>(global3.b.c, global3.b.c, global3.a.x, 17265u), func_5(vec2<bool>(true, true), arg_1, Struct_1(global3.b.a, global3.b.b, 4294967295u)), -vec3<i32>(16358i, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.e.x), ~vec3<i32>(arg_3, 3877i, -22840i)).x, 27u)], 0u) & vec3<u32>(_wgslsmith_clamp_u32(global3.b.c, firstTrailingBit(80397u), _wgslsmith_mult_u32(1u, u_input.a.x)), global3.b.c, 0u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(func_5(func_4(global3.b.b, 1535f, arg_0, 1u).zy, vec3<bool>(arg_1.x, true, arg_0), Struct_1(global3.b.a, 283f, 0u)).b.c, 30190u, global0[_wgslsmith_index_u32(u_input.a.x, 27u)] << (abs(u_input.a.x) % 32u)), 1u), u_input.a);
    let var_1 = select(~(~(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.a.a.x, 27u)], 4294967295u), vec3<u32>(1u, 1u, 24750u)) | var_0.b)), var_0.b, !(!arg_1));
    let var_2 = var_0.a.b.b;
    global0 = array<u32, 27>();
    return StorageBuffer(~0i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(77768u, global3.a.x, global0[_wgslsmith_index_u32(44145u, 27u)], u_input.a.x))), vec4<u32>(4294967295u, abs(72006u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global3.a.x, 5316u) ^ vec4<u32>(global0[_wgslsmith_index_u32(global3.a.x, 27u)], global3.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b.c, 27u)], 27u)], 42234u, 0u, 0u)))), 4u)] != -global1[_wgslsmith_index_u32(global3.b.c >> (6932u % 32u), 4u)];
    let var_0 = Struct_3(vec2<u32>(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(8422u, ~u_input.a.x), 27u)], ~firstLeadingBit(1u), 55819u <= global0[_wgslsmith_index_u32(global3.a.x, 27u)]), abs(1u)), Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6043u, 27u)], 4u)], global1[_wgslsmith_index_u32(25055u, 4u)], -21900i, 2147483647i), countOneBits(vec4<i32>(0i, u_input.e.x, 2147483647i, 0i))), global3.b.a, reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.e.x, 49597i, global3.b.a.x), vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(1u, 4u)], -29907i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18535u, 27u)], 4u)])))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.b, global3.b.b)))), 1396u));
    let x = u_input.a;
    s_output = func_7(true, vec3<bool>(!(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a.x, 4294967295u), 27u)] > abs(82903u)), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)), !any(vec2<bool>(true, true))), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-411f * global3.b.b), _wgslsmith_f_op_f32(1193f * var_0.b.b), true)) < _wgslsmith_f_op_f32(func_1())), 39007i);
}

