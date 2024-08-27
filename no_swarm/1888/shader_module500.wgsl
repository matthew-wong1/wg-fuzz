struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: f32 = -608f;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    global3 = array<Struct_2, 22>();
    let var_0 = 598f;
    let var_1 = abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.a.x << (1u % 32u), countOneBits(82980u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 5448u, u_input.c) << (u_input.a.zyz % vec3<u32>(32u)), reverseBits(vec3<u32>(1654u, u_input.a.x, 70391u)))), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), u_input.a.wyy, vec3<u32>(u_input.a.x, 54389u, 0u)), countOneBits(vec3<u32>(u_input.c, u_input.c, 1u))) | vec3<u32>(~15901u, abs(1u), _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yy))));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(countOneBits(~abs(vec3<i32>(arg_0, u_input.b, 2147483647i))), -vec3<i32>(1i, u_input.b, u_input.b)), arg_0);
    global2 = Struct_2(select(vec4<bool>(true, select(true, var_0 <= var_0, !global2.a.x), all(vec4<bool>(arg_1, false, global2.a.x, true)), global2.a.x), select(select(global2.a, global2.a, select(global2.a, vec4<bool>(arg_1, false, global2.a.x, global2.a.x), vec4<bool>(false, false, global2.a.x, global2.a.x))), select(select(global2.a, global2.a, global2.a), vec4<bool>(arg_1, arg_1, global2.a.x, global2.a.x), global2.a), vec4<bool>(true, any(global2.a.xy), true, !arg_1)), arg_1 & !any(vec2<bool>(false, arg_1))));
    return ~(~select(0u, firstLeadingBit(reverseBits(34783u)), all(global2.a.yxw)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    let var_0 = arg_1;
    let var_1 = global3[_wgslsmith_index_u32(0u, 22u)];
    global0 = u_input.b;
    var var_2 = min(_wgslsmith_sub_vec3_u32(max(max(u_input.a.zwz, u_input.a.yxz), vec3<u32>(8863u, u_input.a.x, 19831u)), vec3<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, 67410u), u_input.c)) >> (arg_0.ywy % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(firstLeadingBit(arg_0.x)), 0u, u_input.a.x));
    var var_3 = any(vec3<bool>(any(vec2<bool>(any(global2.a), var_2.x == 0u)), any(select(vec2<bool>(global2.a.x, true), !arg_1.b.xz, var_0.b.zy)), false));
    return var_0.a;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> vec4<bool> {
    global2 = Struct_2(global2.a);
    global0 = u_input.b;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1467f)));
    var var_1 = Struct_2(select(global2.a, global2.a, !global2.a));
    var_1 = Struct_2(vec4<bool>(func_4(vec4<u32>(func_3(14577i, global2.a.x), 6026u, firstTrailingBit(1u), ~1u), Struct_3(false, !var_1.a.wyz)), any(vec2<bool>(global2.a.x, false)) & var_1.a.x, false, global2.a.x));
    return global2.a;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global2 = Struct_2(select(func_2(1u, ~select(vec4<u32>(1u, u_input.c, 14160u, u_input.a.x), vec4<u32>(0u, u_input.c, u_input.c, 30214u), true)), global2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-802f)), _wgslsmith_f_op_f32(f32(-1f) * -497f), global2.a.x)) <= 149f));
    var var_0 = -(~select(~max(vec3<i32>(18363i, u_input.b, u_input.b), vec3<i32>(-28922i, -2506i, 14218i)), -vec3<i32>(u_input.b, u_input.b, u_input.b) | abs(vec3<i32>(18550i, 46236i, -9680i)), all(arg_0.b.xy)));
    var var_1 = u_input.c;
    global3 = array<Struct_2, 22>();
    let var_2 = true && global2.a.x;
    return global3[_wgslsmith_index_u32(u_input.c, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, 1u), 1u) <= firstLeadingBit(~u_input.a.x), select(global2.a.wyy, vec3<bool>(false, any(vec4<bool>(global2.a.x, global2.a.x, true, true)), global2.a.x), vec3<bool>(global2.a.x, global2.a.x, false))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1048i, -2147483647i, u_input.b, -27842i), vec4<i32>(-26874i, -1i, -28996i, u_input.b)) >> (vec4<u32>(u_input.c, 0u, u_input.c << (u_input.a.x % 32u), ~4294967295u) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 8092i, u_input.b, -16453i), vec4<i32>(u_input.b, u_input.b, 27921i, u_input.b))) << (u_input.a % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, select(i32(-1i) * -47080i, 2147483647i ^ u_input.b, all(var_0.a.wx)), -13352i)) << (_wgslsmith_mod_vec4_u32(max(max(~u_input.a, u_input.a), ~(u_input.a & vec4<u32>(u_input.c, 5593u, 22303u, u_input.a.x))), u_input.a) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer((var_2.ywz ^ select(_wgslsmith_div_vec3_i32(var_2.wwx, vec3<i32>(2147483647i, u_input.b, 21975i)), -vec3<i32>(-8634i, u_input.b, var_2.x), vec3<bool>(var_0.a.x, var_0.a.x, true))) | -_wgslsmith_div_vec3_i32(vec3<i32>(-4912i, -11920i, u_input.b), var_2.yzz), _wgslsmith_dot_vec4_i32(~(-select(vec4<i32>(0i, 1i, -30408i, 2147483647i), vec4<i32>(13009i, 0i, u_input.b, u_input.b), var_1.a.x)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(-12792i, var_2.x, u_input.b, 25058i), vec4<i32>(-39979i, 2147483647i, u_input.b, 17899i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-842f + -495f), _wgslsmith_f_op_f32(f32(-1f) * -1709f))), _wgslsmith_f_op_f32(-1f))), -3914i);
}

