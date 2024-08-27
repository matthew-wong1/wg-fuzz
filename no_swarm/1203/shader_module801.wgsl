struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648));

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: vec4<u32> = vec4<u32>(76538u, 1u, 33011u, 1u);

var<private> global3: vec3<u32> = vec3<u32>(1u, 4372u, 0u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = -631f;
    let var_1 = -307f;
    var var_2 = Struct_1(!any(!select(vec4<bool>(arg_3.x, true, true, false), vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), arg_3.x)), global3.x);
    global1 = array<vec3<bool>, 26>();
    global0 = u_input.c.wxy;
    return Struct_1(false, 1u);
}

fn func_3() -> Struct_1 {
    var var_0 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), 78014u <= u_input.b)) == all(vec2<bool>(true, true)), ~(~4294967295u));
    global0 = u_input.c.wyw;
    global1 = array<vec3<bool>, 26>();
    global3 = global2.xzz | vec3<u32>(var_0.b, ~countOneBits(4294967295u), _wgslsmith_sub_u32(var_0.b, u_input.b));
    var var_1 = global3.x;
    return func_2(global2.yz, _wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_div_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(1503i, -6264i), u_input.a), countOneBits(-global0.zz)) << ((~vec2<u32>(u_input.d, var_0.b) | max(firstTrailingBit(global3.yx), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)), vec3<bool>(var_0.a, true, all(select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), true))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = select(select(!(!select(vec2<bool>(false, arg_1.a), vec2<bool>(true, true), vec2<bool>(arg_3.a, arg_3.a))), !(!vec2<bool>(true, arg_1.a)), select(!select(vec2<bool>(arg_3.a, true), vec2<bool>(arg_1.a, arg_1.a), true), !vec2<bool>(arg_3.a, arg_1.a), false)), select(!vec2<bool>(arg_3.a, any(vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a))), !select(vec2<bool>(false, arg_3.a), vec2<bool>(false, false), vec2<bool>(arg_2.a, false)), !arg_3.a), vec2<bool>(~arg_1.b == global2.x, arg_1.a));
    global0 = _wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(~abs(u_input.c.wwy), _wgslsmith_mod_vec3_i32(-u_input.c.xyy, vec3<i32>(arg_0, 39479i, -1i))), _wgslsmith_mult_vec3_i32(u_input.c.zzx, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(global0.x, 3400i, -38386i)), _wgslsmith_mult_vec3_i32(u_input.c.zyw, u_input.c.xxy)), -(u_input.c.yyy >> (vec3<u32>(arg_1.b, arg_3.b, 11132u) % vec3<u32>(32u))))));
    let var_1 = func_3();
    var var_2 = Struct_2(func_3());
    let var_3 = func_3();
    return 4294967295u;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global2 = select(vec4<u32>(global2.x, global2.x, func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -17163i), vec2<i32>(global0.x, 42976i)), ~u_input.c.yw), Struct_1(true, global2.x), func_2(~global2.xz, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), ~global0.zx, vec3<bool>(true, true, true)), func_3()), abs(0u)), select(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, global3.x, global3.x, global3.x), vec4<u32>(5686u, global3.x, u_input.b, u_input.d)), vec4<u32>(~global2.x, ~global3.x, global2.x, global2.x), !vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), arg_0.x > -461f)), select(vec4<bool>(1f >= arg_0.x, false, _wgslsmith_f_op_f32(select(arg_0.x, -1081f, false)) >= -277f, func_2(_wgslsmith_div_vec2_u32(global3.zx, vec2<u32>(43989u, global3.x)), _wgslsmith_f_op_f32(floor(1653f)), ~vec2<i32>(-7349i, u_input.e.x), vec3<bool>(true, true, true)).a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_2(vec2<u32>(79277u, 9786u), 417f, u_input.a, vec3<bool>(true, false, false)).a, true)), true));
    var var_0 = _wgslsmith_dot_vec2_i32(global0.xz, abs(vec2<i32>(global0.x, 1i)));
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(abs(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.x, 4294967295u, global3.x) >> (vec4<u32>(global3.x, 9443u, global3.x, u_input.d) % vec4<u32>(32u)), vec4<u32>(25689u, global2.x, u_input.d, global2.x)), global2.x, ~(~u_input.b)), firstLeadingBit(vec4<u32>(1u, 1u << (1u % 32u), _wgslsmith_mult_u32(global2.x, 3135u), global2.x))), vec4<u32>(14552u, global3.x, 1u, 38831u));
    var var_2 = Struct_2(func_2(var_1.xx, _wgslsmith_f_op_f32(-arg_0.x), u_input.c.yz, global1[_wgslsmith_index_u32(u_input.b, 26u)]));
    var_0 = ~2147483647i;
    return global2.x;
}

fn func_5(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(true, abs(arg_0.x)));
    let var_1 = func_2(global2.yx, 334f, countOneBits(global0.zz), vec3<bool>(all(vec2<bool>(var_0.a.a, !var_0.a.a)), var_0.a.a, true));
    var var_2 = !vec3<bool>(_wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.a) > reverseBits(global0.x), var_0.a.a, var_1.a);
    let var_3 = var_0;
    let var_4 = Struct_1(true, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.b, ~0u), min(~1u | func_1(vec2<f32>(-1000f, -520f)), min(521u, ~arg_0.x)), 1u << (var_1.b % 32u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_vec2_u32(select(vec2<u32>(global3.x, global2.x), _wgslsmith_add_vec2_u32(vec2<u32>(global3.x, global2.x), vec2<u32>(u_input.b, global2.x)), vec2<bool>(true, false)), vec2<u32>(50675u, 1u)) << (select(vec2<u32>(~global3.x, func_1(vec2<f32>(1538f, -2068f))), global3.zx, true) % vec2<u32>(32u)));
    var var_1 = var_0;
    let var_2 = global2.x;
    let var_3 = _wgslsmith_add_vec3_u32(abs(global2.wyy) | _wgslsmith_div_vec3_u32(abs(select(global2.zzx, global2.zzx, var_0.a.a)), vec3<u32>(var_0.a.b | 1u, func_2(global3.zz, -1678f, vec2<i32>(1i, u_input.e.x), global1[_wgslsmith_index_u32(u_input.b, 26u)]).b, var_0.a.b)), global2.xxz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~countOneBits(5379u), ~_wgslsmith_add_u32(~var_1.a.b, func_2(vec2<u32>(var_3.x, 0u), -752f, vec2<i32>(global0.x, -8303i), vec3<bool>(false, true, var_1.a.a)).b)), 1u ^ ~(~var_0.a.b), global2.x | var_1.a.b);
}

