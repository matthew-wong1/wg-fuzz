struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_4 = Struct_4(-1i, vec2<bool>(false, false));

var<private> global2: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(i32(-2147483648), 22008i, -52168i), vec3<i32>(-67879i, -34709i, -38804i), vec3<i32>(793i, i32(-2147483648), 0i), vec3<i32>(19679i, 60416i, i32(-2147483648)), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(589i, 5625i, -8223i), vec3<i32>(-57494i, 29428i, 15348i), vec3<i32>(-39936i, -16789i, 2147483647i), vec3<i32>(0i, -1i, 2147483647i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    let var_0 = 30686u;
    global1 = Struct_4(global0.x, select(!(!select(vec2<bool>(global1.b.x, arg_2), vec2<bool>(false, true), false)), vec2<bool>(all(vec3<bool>(arg_2, arg_2, arg_2)), ~arg_1.a.b.x != (arg_1.a.b.x | 4294967295u)), any(vec4<bool>(false, arg_2, !global1.b.x, select(true, true, arg_1.a.c)))));
    let var_1 = !vec3<bool>(global1.b.x, any(!vec4<bool>(global1.b.x, true, false, global1.b.x)), false);
    let var_2 = Struct_4(reverseBits(10973i), vec2<bool>(global1.b.x, all(select(!vec4<bool>(false, false, arg_1.a.c, arg_2), select(vec4<bool>(false, false, false, false), vec4<bool>(var_1.x, arg_1.a.c, var_1.x, true), false), all(vec3<bool>(global1.b.x, false, false))))));
    var var_3 = Struct_5(arg_1.a.a);
    return -2147483647i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = false;
    var var_1 = firstTrailingBit(global0.xz);
    global2 = array<vec3<i32>, 9>();
    global2 = array<vec3<i32>, 9>();
    global2 = array<vec3<i32>, 9>();
    return vec4<bool>((_wgslsmith_sub_i32(func_3(vec4<i32>(2147483647i, -2147483647i, -48907i, var_1.x), Struct_2(arg_0.a), true, vec3<u32>(0u, arg_2.a.b.x, 1u)), _wgslsmith_add_i32(u_input.b, arg_1.a)) <= -43054i) | true, arg_2.a.c, select(true, false, true), any(vec2<bool>(global1.b.x, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = !select(!(!func_2(Struct_2(Struct_1(613f, u_input.a.yy, false)), Struct_4(2147483647i, vec2<bool>(global1.b.x, false)), Struct_2(Struct_1(-1803f, u_input.a.yw, false)), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), vec4<bool>(global1.b.x, true, true, global1.b.x), func_2(Struct_2(Struct_1(-1566f, vec2<u32>(u_input.a.x, u_input.a.x), global1.b.x)), Struct_4(firstTrailingBit(global0.x), vec2<bool>(true, false)), Struct_2(Struct_1(-723f, u_input.a.zw, global1.b.x)), vec3<u32>(6021u, u_input.a.x, _wgslsmith_clamp_u32(1u, u_input.a.x, 1u))).x);
    global1 = Struct_4(global0.x, global1.b);
    var var_1 = Struct_4(~(-_wgslsmith_clamp_i32(~33523i, 2147483647i, 2147483647i)), vec2<bool>(any(!(!vec3<bool>(false, true, var_0.x))), global1.b.x));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(258u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, 0u), min(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xx), vec2<bool>(false, false)), u_input.a.zw), ~countOneBits(abs(u_input.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(1u, max(u_input.a.x, u_input.a.x), u_input.a.x)), max(max(vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_div_u32(0u, 4294967295u)), u_input.a.xzw), abs(vec3<u32>(17755u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 452u, 1u), u_input.a), u_input.a.x))));
    let var_3 = ~(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyw, u_input.a.wzw), _wgslsmith_div_u32(u_input.a.x, 59407u), ~u_input.a.x, 15116u)) >> (u_input.a % vec4<u32>(32u)));
    return Struct_1(1577f, ~vec2<u32>(var_2.x, 4294967295u), global1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1());
    let var_1 = min(~(~select(var_0.a.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0.a.b.x), vec2<u32>(var_0.a.b.x, 125983u), u_input.a.wy), func_1().c)), ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.b.x, 76547u), vec2<u32>(u_input.a.x, 35521u)), _wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(var_0.a.b.x, 0u)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1236f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a.a, var_0.a.a)), _wgslsmith_f_op_f32(select(-838f, var_0.a.a, var_0.a.c)))), vec2<u32>(var_0.a.b.x, 1u), global1.b.x & !(global1.a != 1i)));
    var_0 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mod_vec3_i32(-global2[_wgslsmith_index_u32(123069u, 9u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 9u)]), vec3<i32>(func_3(vec4<i32>(-22215i, 21840i, global1.a, -2147483647i), Struct_2(var_0.a), global1.b.x, u_input.a.ywy), ~u_input.c, -704i), !global1.b.x && all(vec3<bool>(true, false, global1.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-156f, 1618f, 1170f) + vec3<f32>(var_0.a.a, -857f, 310f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1062f, var_0.a.a, var_0.a.a))) * vec3<f32>(func_1().a, var_0.a.a, _wgslsmith_f_op_f32(var_0.a.a + -1619f)))), _wgslsmith_div_vec4_i32(reverseBits(-(~vec4<i32>(global1.a, -2147483647i, u_input.b, -13325i))), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b, global1.a, u_input.b), vec4<i32>(-24809i, 2147483647i, global1.a, global0.x) | vec4<i32>(u_input.c, global0.x, u_input.c, -20587i)))), ~(~vec2<u32>(1u, 15452u) & ~_wgslsmith_sub_vec2_u32(var_0.a.b, var_1)));
}

