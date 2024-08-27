struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, true, false, true, false, false, true, false, false, true, true, true, true, true, false, true, false, true, false, true, false, true, false, false, true, false, false, false, false);

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> i32 {
    var var_0 = true;
    let var_1 = u_input.b.wwz;
    var var_2 = !vec2<bool>(!global0[_wgslsmith_index_u32(~39971u, 30u)], all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 30u)], false, global3.x), vec4<bool>(true, false, global3.x, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], false, global3.x, global0[_wgslsmith_index_u32(global1.a, 30u)]))) & any(!vec4<bool>(global3.x, false, true, true)));
    var var_3 = countOneBits(~u_input.a);
    var var_4 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~global1.a, 25655u, min(u_input.a, global1.a) | 0u), vec3<u32>(abs(u_input.a) ^ 36506u, u_input.a, 7310u));
    return -1i;
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(Struct_1(~u_input.a), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true, false), vec3<bool>(global3.x, global3.x, global0[_wgslsmith_index_u32(0u, 30u)]), true)), Struct_1(u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, 0u, global1.a, 28034u), vec4<u32>(global1.a, 10945u, u_input.a, 1u)) >> (countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a, u_input.a, 24952u, u_input.a), vec4<u32>(global1.a, 65332u, 0u, u_input.a), vec4<u32>(63037u, 4294967295u, 17999u, global1.a))) % vec4<u32>(32u))), vec2<bool>(true, _wgslsmith_add_i32(u_input.c | u_input.c, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)) != _wgslsmith_sub_i32(5631i, u_input.b.x)));
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 14423i), u_input.b.wwy), u_input.b.zyw);
    global1 = var_0.a.c;
    var var_2 = arg_0.x;
    var var_3 = Struct_3(Struct_2(Struct_1(1u), select(vec3<bool>(true, any(vec4<bool>(true, true, var_0.a.b.x, global0[_wgslsmith_index_u32(27231u, 30u)])), !global3.x), vec3<bool>(true, all(var_0.a.b), false), global3.x), Struct_1(_wgslsmith_add_u32(min(var_0.a.a.a, var_0.a.d.x), ~global1.a)), ~var_0.a.d), var_0.a.b.yz);
    return var_3.a.b;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = -(~_wgslsmith_sub_i32(countOneBits(u_input.b.x), -52412i));
    var var_1 = 0u;
    global1 = Struct_1(1u);
    var var_2 = Struct_2(Struct_1(0u), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1246f, 282f) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)))), Struct_1(~(~countOneBits(global1.a))), select(vec4<u32>(1u, 1u >> (_wgslsmith_sub_u32(arg_2, 1u) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, u_input.a, global1.a), vec3<u32>(arg_1.a, 97066u, u_input.a)), firstTrailingBit(20416u)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 24498u, 30841u), vec3<u32>(arg_1.a, 98310u, u_input.a)))), ~(reverseBits(vec4<u32>(0u, 83252u, 61666u, u_input.a)) >> (~vec4<u32>(0u, 4294967295u, 8740u, 879u) % vec4<u32>(32u))), all(vec4<bool>(true, true, true, true))));
    var var_3 = select(!select(func_3(vec2<f32>(1058f, arg_0)).yx, vec2<bool>(global0[_wgslsmith_index_u32(~arg_1.a, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), var_0 >= 0i), vec2<bool>(true, false), var_2.b.yx);
    return Struct_2(var_2.c, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-793f, -726f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, -1126f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1107f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, 617f), vec2<bool>(global3.x, false)))))), Struct_1(~_wgslsmith_clamp_u32(select(45691u, arg_1.a, false), _wgslsmith_mod_u32(u_input.a, global1.a), _wgslsmith_div_u32(4294967295u, arg_1.a))), var_2.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_i32(u_input.c, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-52822i, u_input.c, u_input.c, 2147483647i), reverseBits(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x))), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-6117i, u_input.c, -14789i, u_input.b.x))) >> (4294967295u % 32u));
    global1 = arg_0.a;
    var_0 = abs(firstLeadingBit(1i) & ~u_input.c);
    let var_1 = select(-_wgslsmith_div_vec4_i32(vec4<i32>(min(-20661i, -17909i), firstTrailingBit(u_input.c), u_input.c, select(53941i, 45457i, global3.x)), reverseBits(~vec4<i32>(u_input.b.x, -68799i, -5283i, 1i))), abs(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.c, 29856i), u_input.b ^ u_input.b)), any(select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -296f), func_2(-771f, arg_1, arg_3.c.a).a, 1u).b.xx, select(global3.xy, vec2<bool>(false, false), true), false)));
    return countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, ~global1.a), u_input.a) >> (~_wgslsmith_clamp_u32(~global1.a, arg_2.x, countOneBits(1u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.a, 39592u) | vec2<u32>(~(0u | global1.a) ^ firstTrailingBit(1u), 1u);
    let var_1 = var_0.x << (~var_0.x % 32u);
    let var_2 = ~(~func_1());
    global0 = array<bool, 30>();
    global1 = Struct_1((func_4(func_2(-1926f, Struct_1(103501u), var_1), func_2(1262f, Struct_1(u_input.a), 95337u).a, vec3<u32>(u_input.a, 39159u, global1.a) & vec3<u32>(0u, global1.a, global1.a), Struct_2(Struct_1(global1.a), vec3<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.a, 30u)], global3.x), Struct_1(73103u), vec4<u32>(4294967295u, 1u, var_0.x, 1u))) & var_0.x) ^ select(~var_1 >> (~global1.a % 32u), _wgslsmith_mult_u32(func_4(Struct_2(Struct_1(var_0.x), vec3<bool>(false, global3.x, global0[_wgslsmith_index_u32(global1.a, 30u)]), Struct_1(1u), vec4<u32>(1u, var_1, 1u, 0u)), Struct_1(var_0.x), vec3<u32>(u_input.a, global1.a, var_0.x), Struct_2(Struct_1(1u), vec3<bool>(true, true, false), Struct_1(var_0.x), vec4<u32>(u_input.a, 0u, 1u, var_0.x))), _wgslsmith_mult_u32(global1.a, 0u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(max(0u | global1.a, _wgslsmith_clamp_u32(1u, global1.a, 0u)), u_input.a, _wgslsmith_sub_u32(30071u, var_1) << (4294967295u % 32u), ~15264u), ~vec4<u32>(~1u, _wgslsmith_clamp_u32(1u, var_0.x, u_input.a), ~67197u, var_0.x)), var_0.x);
}

