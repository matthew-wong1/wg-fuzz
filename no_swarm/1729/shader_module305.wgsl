struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 15> = array<f32, 15>(1057f, -1454f, -195f, -1055f, 470f, -913f, 901f, 1008f, 952f, 3457f, 483f, -141f, -324f, -1000f, -718f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(all(!select(!vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), u_input.a != 1u)), arg_1.b, u_input.b);
    var var_1 = vec3<bool>((u_input.c << (~_wgslsmith_mod_u32(u_input.a, 1u) % 32u)) > 8241u, false, true);
    global0 = 38829i;
    var var_2 = var_0.a;
    var var_3 = abs(_wgslsmith_add_vec3_i32(abs(-firstTrailingBit(vec3<i32>(0i, -20948i, 44592i))), arg_1.c.yzz));
    return var_0.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    let var_0 = func_3(vec3<i32>(~_wgslsmith_mod_i32(-1i, arg_2.x), 1i | _wgslsmith_clamp_i32(59048i, 1i, 0i), u_input.b.x) & (vec3<i32>(-1i) * -min(vec3<i32>(arg_0.c.x, 1i, -1i), vec3<i32>(-36181i, arg_2.x, -1i))), Struct_1(false, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.b.x), arg_0.c));
    var var_1 = 1538f;
    global1 = array<f32, 15>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(countOneBits(~arg_3), 15u)])), global1[_wgslsmith_index_u32(select(reverseBits(~arg_3), 4294967295u, all(vec4<bool>(false, arg_1, false, arg_1))), 15u)])));
    global0 = u_input.b.x;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 526f)))));
}

fn func_4(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_1(any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_div_i32(u_input.b.x, countOneBits(-2147483647i) << (firstTrailingBit(u_input.a) % 32u)) & _wgslsmith_add_i32(-1i, min(-1i, u_input.b.x) & ~u_input.b.x), select(u_input.b, vec4<i32>(-u_input.b.x, 6672i, 13876i, u_input.b.x), false));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622f + arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))) > arg_0.x, var_0.c.x << (abs(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, 1u, 56516u))) % 32u), firstLeadingBit(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(i32(-1i) * -43260i, var_0.b & 2147483647i, u_input.b.x, 0i))));
    global0 = _wgslsmith_add_i32(u_input.b.x, 1i);
    var_0 = var_1;
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u) | max((vec3<u32>(u_input.a, u_input.c, 0u) >> (vec3<u32>(u_input.a, u_input.c, u_input.a) % vec3<u32>(32u))) ^ (vec3<u32>(u_input.a, u_input.c, 4294967295u) >> (vec3<u32>(6326u, u_input.a, u_input.c) % vec3<u32>(32u))), vec3<u32>(u_input.c, _wgslsmith_div_u32(0u, u_input.a), 1u)), ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.c), vec3<u32>(u_input.a, 30893u, 0u)), firstTrailingBit(vec3<u32>(u_input.c, 0u, 1u))) << (~vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)));
    return select(!select(!vec3<bool>(false, false, var_0.a), !(!vec3<bool>(true, false, var_1.a)), var_0.a), vec3<bool>(true, var_1.a, !(!var_0.a == false)), true);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = ~abs(~(~reverseBits(arg_2.yyy)));
    let var_3 = 267f;
    let var_4 = func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3, 299f)) * vec3<f32>(var_3, -1702f, -1114f)))), vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(var_1.a, 2147483647i, var_1.c), select(arg_0.a, var_0.a, true), abs(vec2<i32>(var_1.b, 1i)), 4294967295u)), global1[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_f_op_f32(-var_3)))));
    return Struct_1(_wgslsmith_dot_vec4_i32(arg_0.c, firstLeadingBit(vec4<i32>(var_0.b, -10428i, var_0.b, var_1.b))) != ~(-13284i), -arg_1, ~(~(~vec4<i32>(arg_1, -14953i, 2147483647i, 16965i)) >> ((~vec4<u32>(4294967295u, 26934u, 20174u, 100736u) >> (arg_2 % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = arg_2;
    let var_1 = arg_1.c.x;
    var var_2 = Struct_1(select(false, all(!select(vec4<bool>(false, true, arg_1.a, arg_0.a), vec4<bool>(true, arg_2.a, arg_3.x, false), vec4<bool>(arg_1.a, arg_2.a, arg_2.a, false))), any(select(vec4<bool>(true, arg_2.a, false, false), vec4<bool>(true, arg_0.a, false, false), !vec4<bool>(arg_2.a, false, var_0.a, arg_2.a)))), func_1(func_1(func_1(arg_0, -2147483647i, ~vec4<u32>(u_input.c, 1u, 1u, u_input.a)), _wgslsmith_clamp_i32(2147483647i, -2147483647i, u_input.b.x), min(~vec4<u32>(4294967295u, 4294967295u, 33143u, u_input.c), countOneBits(vec4<u32>(4294967295u, 39993u, u_input.a, 32958u)))), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(16765i, arg_2.b), vec2<i32>(-16700i, 27401i)), -vec2<i32>(1i, arg_2.c.x)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, 1u, 69421u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(29301u, 0u, u_input.c, u_input.a) >> (vec4<u32>(u_input.a, u_input.c, 28833u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)))).b, arg_0.c << (abs(~(vec4<u32>(u_input.c, 4294967295u, u_input.a, 14318u) ^ vec4<u32>(u_input.a, u_input.c, 1u, u_input.a))) % vec4<u32>(32u)));
    var_2 = func_1(Struct_1(arg_0.a, var_1, vec4<i32>(_wgslsmith_mod_i32(-1i, var_1 | 37087i), select(-arg_2.b, 23457i ^ arg_1.b, any(arg_3)), ~arg_1.c.x << (u_input.c % 32u), _wgslsmith_mod_i32(var_0.b, -arg_2.b))), firstTrailingBit(~arg_1.c.x), min(vec4<u32>(_wgslsmith_add_u32(u_input.c, 1u), abs(~0u), _wgslsmith_sub_u32(~u_input.c, ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(14634u, 101490u, u_input.a), vec3<u32>(1u, 23929u, u_input.a) ^ vec3<u32>(u_input.c, u_input.c, 35575u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, max(0u, 4294967295u), u_input.a), select(~vec4<u32>(2387u, 54617u, u_input.c, 1u), abs(vec4<u32>(u_input.a, 8621u, u_input.a, u_input.a)), func_4(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)])).x))));
    var_2 = arg_0;
    return select(vec4<bool>(_wgslsmith_add_i32(abs(-11892i), reverseBits(-23279i)) >= u_input.b.x, any(!vec3<bool>(var_2.a, false, false)), !(!arg_2.a), true && arg_2.a), !vec4<bool>(func_1(func_1(Struct_1(arg_2.a, 8984i, var_0.c), -13194i, vec4<u32>(63339u, 132380u, 1u, u_input.a)), _wgslsmith_dot_vec3_i32(arg_1.c.wzy, var_2.c.xwy), vec4<u32>(u_input.c, u_input.c, 1u, 0u) >> (vec4<u32>(u_input.a, 0u, u_input.a, 26722u) % vec4<u32>(32u))).a, true, _wgslsmith_sub_i32(var_1, 30136i) < _wgslsmith_add_i32(var_2.b, arg_1.c.x), arg_0.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(select(u_input.a, 34829u, any(!func_5(Struct_1(false, u_input.b.x, u_input.b), func_1(Struct_1(true, u_input.b.x, vec4<i32>(7439i, 33650i, u_input.b.x, u_input.b.x)), -1i, vec4<u32>(u_input.c, u_input.a, 0u, 4294967295u)), func_1(Struct_1(true, u_input.b.x, u_input.b), -20726i, vec4<u32>(1u, u_input.c, 4294967295u, u_input.a)), vec2<bool>(true, false)))), 15u)];
    global0 = u_input.b.x;
    let var_1 = func_1(Struct_1(all(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), 182f == global1[_wgslsmith_index_u32(40628u, 15u)])), -func_1(func_1(Struct_1(true, -1i, vec4<i32>(31860i, u_input.b.x, -23952i, u_input.b.x)), u_input.b.x, vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.c)), u_input.b.x, vec4<u32>(u_input.a, 1u, u_input.c, u_input.a) << (vec4<u32>(u_input.a, 68154u, 18858u, 21033u) % vec4<u32>(32u))).c.x, _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(firstTrailingBit(u_input.b.x), -1i, _wgslsmith_mult_i32(u_input.b.x, 27742i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)))), _wgslsmith_mult_i32(-30758i, 1i), abs(~min(~vec4<u32>(u_input.a, 46362u, u_input.a, 17111u), vec4<u32>(50911u, u_input.a, 0u, u_input.c))));
    global1 = array<f32, 15>();
    let var_2 = func_1(Struct_1(all(!func_5(Struct_1(false, -1i, vec4<i32>(2147483647i, 2147483647i, var_1.c.x, var_1.b)), Struct_1(true, -1i, var_1.c), var_1, vec2<bool>(var_1.a, var_1.a))), 30996i ^ ~_wgslsmith_mod_i32(-2147483647i, u_input.b.x), vec4<i32>(_wgslsmith_dot_vec4_i32(-var_1.c, vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x)), 34432i, -(~24189i), 0i)), -(-8480i | _wgslsmith_div_i32(var_1.c.x, 1i)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u << (0u % 32u), 0u << (1u % 32u), u_input.a, ~u_input.c), ~(~vec4<u32>(u_input.c, u_input.a, u_input.c, 7291u))) << (~max(vec4<u32>(u_input.c, u_input.a, 36270u, u_input.a) >> (vec4<u32>(1u, u_input.c, 26293u, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(1u, 27331u, 4294967295u, u_input.a)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(~var_1.c.x), ~select(-1i, 39029i, false)), 1000f);
}

