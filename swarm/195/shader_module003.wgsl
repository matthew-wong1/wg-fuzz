struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

var<private> global1: vec4<i32>;

var<private> global2: vec2<i32> = vec2<i32>(23662i, -4024i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    return Struct_1(true, 52682u, ~(-vec4<i32>(1i, ~(-44515i), ~2147483647i, countOneBits(0i))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2058f)) - 237f);
    var var_1 = all(vec4<bool>(true, true, -1i >= ~global2.x, false));
    var_1 = !arg_1.a;
    var var_2 = Struct_3(472f, countOneBits(select(arg_0.d.c.ywz, global1.wwy, select(all(vec2<bool>(arg_0.d.a, true)), true, true))), arg_1.a);
    var var_3 = 87908u;
    return max(min(-_wgslsmith_dot_vec4_i32(arg_1.c, arg_1.c), arg_0.a.c.x), ~2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> Struct_5 {
    let var_0 = ~(~(firstTrailingBit(arg_1.b.xw << (arg_1.b.xx % vec2<u32>(32u))) << (vec2<u32>(~4294967295u, 12328u) % vec2<u32>(32u))));
    var var_1 = vec2<i32>(firstTrailingBit(countOneBits(global2.x)), 15889i);
    let var_2 = global0[_wgslsmith_index_u32(2367u, 20u)];
    var_1 = arg_0.c.zw;
    let var_3 = _wgslsmith_sub_u32(countOneBits(40382u), var_2.a.b);
    return Struct_5(Struct_1(true, 0u, ~(~arg_0.c)), var_2.b);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(2147483647i | global1.x, _wgslsmith_sub_i32(global1.x, -1i)), ~abs(global1.x), ~global1.x, -38082i), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(global2.x, global2.x, global2.x, 4325i), ~vec4<i32>(-86542i, -55742i, global2.x, global2.x)), ~vec4<i32>(global2.x, global1.x, 0i, global1.x))), global2.x, i32(-1i) * -select(42687i | global2.x, _wgslsmith_add_i32(2661i, global1.x), true), global2.x);
    var var_1 = true;
    let var_2 = select(select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), !vec2<bool>(arg_0, false)), !vec2<bool>(var_0.x != -8834i, 1u <= u_input.a), vec2<bool>(_wgslsmith_sub_u32(u_input.a, u_input.a) != _wgslsmith_dot_vec3_u32(vec3<u32>(44442u, u_input.a, 17275u), vec3<u32>(26688u, 23808u, 4294967295u)), global2.x == -1i)), vec2<bool>(arg_1, !(!all(vec4<bool>(arg_1, arg_1, arg_0, true)))), vec2<bool>(!arg_1, arg_0));
    let var_3 = func_4(Struct_1(any(vec2<bool>(true, u_input.a == u_input.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(4294967295u, u_input.a, 157326u)), vec3<u32>(25126u, u_input.a, u_input.a) & vec3<u32>(1u, 7735u, 12285u)), vec3<u32>(59089u, 0u, u_input.a) << (max(vec3<u32>(17153u, 13161u, 0u), vec3<u32>(u_input.a, 0u, 47118u)) % vec3<u32>(32u))), vec4<i32>(global2.x, func_3(Struct_2(Struct_1(false, 4294967295u, vec4<i32>(1i, 18663i, global2.x, global2.x)), 0u, global1.zwx, Struct_1(true, 106958u, vec4<i32>(1i, -66429i, global1.x, 13554i)), vec2<u32>(u_input.a, u_input.a)), func_2()), max(5175i, func_2().c.x), abs(global2.x))), Struct_4(Struct_1(arg_0 || var_2.x, ~u_input.a, vec4<i32>(global1.x, firstLeadingBit(global1.x), -31587i & var_0.x, global1.x)), ~vec4<u32>(firstTrailingBit(0u), 0u, u_input.a, u_input.a >> (4294967295u % 32u))), ~(~0i));
    let var_4 = -var_0;
    return Struct_1(true, 4294967295u, ~((var_3.a.c >> (vec4<u32>(3032u, 20523u, 32249u, u_input.a) % vec4<u32>(32u))) << (var_3.b % vec4<u32>(32u))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = 647u;
    let var_1 = 1i;
    var var_2 = -vec3<i32>(func_2().c.x, arg_2.c.x, 0i);
    let var_3 = arg_2;
    let var_4 = arg_1.c == false;
    return arg_1;
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1760f))), _wgslsmith_f_op_f32(sign(arg_2.a)), arg_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, 707f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1204f, arg_2.a, var_0.a))))))));
    let var_2 = Struct_2(func_4(Struct_1(arg_2.c, _wgslsmith_div_u32(~6401u, 4294967295u), -(vec4<i32>(44882i, -23276i, arg_2.b.x, -1i) | vec4<i32>(9466i, arg_2.b.x, -14639i, arg_0.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_1) ^ vec2<u32>(0u, 10946u), ~vec2<u32>(u_input.a, 4294967295u) | (vec2<u32>(77908u, 4294967295u) << (vec2<u32>(arg_1, 1u) % vec2<u32>(32u)))), 20u)], global2.x).a, arg_1, -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-global1.yww, vec3<i32>(-1i, -1i, -8427i)), vec3<i32>(global2.x, global2.x, arg_0.x >> (arg_1 % 32u))), func_1(false && arg_2.c, !func_2().a), max(_wgslsmith_sub_vec2_u32(reverseBits(countOneBits(vec2<u32>(arg_1, u_input.a))), ~vec2<u32>(u_input.a, arg_1)), _wgslsmith_sub_vec2_u32(vec2<u32>(46313u, arg_1 << (arg_1 % 32u)), select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 0u), false) | vec2<u32>(1u, 85047u))));
    let var_3 = var_0;
    let var_4 = ~abs(~_wgslsmith_mult_vec4_u32(~vec4<u32>(57563u, u_input.a, 0u, var_2.e.x), min(vec4<u32>(4294967295u, 1u, 15510u, u_input.a), vec4<u32>(30128u, var_2.e.x, u_input.a, var_2.a.b))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1901f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1692f * 556f), -1523f))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(global1.zxx << (firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 30369u)) % vec3<u32>(32u)), ~min(19427u, u_input.a), func_5(_wgslsmith_add_vec4_i32(vec4<i32>(-15154i, 0i, global2.x, 27657i), vec4<i32>(2147483647i, -2147483647i, -6214i, global1.x)), Struct_3(-2279f, global1.yyz, true), func_1(false, true), vec2<u32>(4294967295u, u_input.a))))));
    global0 = array<Struct_4, 20>();
    global0 = array<Struct_4, 20>();
    global1 = (vec4<i32>(func_5(~vec4<i32>(global1.x, global1.x, global1.x, global2.x), func_5(vec4<i32>(global1.x, 1i, global2.x, global1.x), Struct_3(-335f, vec3<i32>(2147483647i, -48434i, 0i), true), Struct_1(true, u_input.a, vec4<i32>(global1.x, 2147483647i, global1.x, 1i)), vec2<u32>(0u, u_input.a)), Struct_1(true, u_input.a, vec4<i32>(global1.x, -6396i, 23620i, global1.x)), ~vec2<u32>(u_input.a, u_input.a)).b.x, firstLeadingBit(-2147483647i), global1.x, global1.x) & select(vec4<i32>(-2147483647i, -global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global1.x, -2147483647i), global1.zzw), i32(-1i) * -1i), func_2().c, !(683f <= var_0.x))) >> (countOneBits(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(select(1890f, 381f, true)) < -571f;
    var var_2 = -func_2().c.x;
    var var_3 = global0[_wgslsmith_index_u32(min(~0u, _wgslsmith_sub_u32(select(0u, u_input.a, select(var_0.x == -1010f, global1.x == global1.x, -304f == var_0.x)), ~(~(~u_input.a)))), 20u)];
    var_2 = func_3(Struct_2(Struct_1(var_3.a.a, ~37590u, var_3.a.c), _wgslsmith_div_u32(u_input.a, ~var_3.b.x), vec3<i32>(-1i) * -func_4(var_3.a, global0[_wgslsmith_index_u32(u_input.a, 20u)], 2147483647i).a.c.zwx, Struct_1(func_4(var_3.a, global0[_wgslsmith_index_u32(~4294967295u, 20u)], 2147483647i).a.a, func_4(var_3.a, global0[_wgslsmith_index_u32(66521u, 20u)], 13444i).a.b, var_3.a.c), min(var_3.b.yz, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 78192u), var_3.b.ww)))), func_2());
    var_3 = Struct_4(Struct_1(all(!(!vec2<bool>(false, var_3.a.a))), ~1u, abs(abs(vec4<i32>(1i, -22456i, var_3.a.c.x, 0i)))), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 539f, _wgslsmith_f_op_f32(ceil(-329f)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 131f), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(178f * var_0.x))), var_0.x), var_0.x, 4294967295u);
}

