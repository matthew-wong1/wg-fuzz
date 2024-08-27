struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, vec2<bool>(true, true));

var<private> global1: array<bool, 9>;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(36470i, vec2<bool>(false, false));

var<private> global4: array<i32, 15>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(global2.a, _wgslsmith_clamp_vec4_i32(max(abs(vec4<i32>(17751i, global2.c, global4[_wgslsmith_index_u32(20788u, 15u)], u_input.c.x)), abs(u_input.c) | vec4<i32>(2147483647i, 3879i, -2147483647i, u_input.d.x)), max(_wgslsmith_mult_vec4_i32(min(vec4<i32>(34814i, global0.a, global3.a, 2147483647i), vec4<i32>(global0.a, -2147483647i, u_input.c.x, u_input.c.x)), abs(vec4<i32>(global0.a, 15937i, global2.b.x, global4[_wgslsmith_index_u32(29631u, 15u)]))), -vec4<i32>(global2.b.x, global2.b.x, 7986i, -2147483647i)), u_input.d), select(_wgslsmith_dot_vec2_i32(global2.b.yx, global2.b.xx), _wgslsmith_sub_i32((i32(-1i) * -9708i) | u_input.a.x, _wgslsmith_mult_i32(~global0.a, countOneBits(u_input.c.x))), global1[_wgslsmith_index_u32(~(global2.a >> (firstTrailingBit(u_input.b.x) % 32u)), 9u)]));
    let var_1 = !global0.b;
    let var_2 = reverseBits(~global2.a);
    global1 = array<bool, 9>();
    global0 = Struct_2(select(_wgslsmith_dot_vec3_i32(var_0.b.xyz, u_input.c.xyw) ^ global2.c, _wgslsmith_mult_i32(u_input.a.x, 2147483647i), true), var_1);
    return 0u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global3 = Struct_2(u_input.d.x, !select(vec2<bool>(arg_0.b.x, global0.b.x | false), select(select(global0.b, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), arg_1.b.x), select(global3.b, arg_0.b, vec2<bool>(true, true)), vec2<bool>(global0.b.x, arg_1.b.x)), !(!arg_1.b)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)) * -140f)) - 217f);
    var var_1 = select(vec3<bool>(all(select(select(vec3<bool>(true, global3.b.x, true), vec3<bool>(true, arg_0.b.x, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false, false)), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], true, global3.b.x), vec3<bool>(true, true, true))), true, true), !vec3<bool>(false, false, global0.b.x), vec3<bool>(any(!(!vec3<bool>(true, arg_1.b.x, false))), !(!global3.b.x) | global1[_wgslsmith_index_u32(~min(global2.a, global2.a), 9u)], !all(select(vec4<bool>(arg_0.b.x, true, global3.b.x, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(global2.a, 9u)], false), arg_0.b.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, var_0)))) * vec2<f32>(115f, _wgslsmith_f_op_f32(abs(var_0)))))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return ~u_input.b.x;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    let var_0 = global2.b;
    global4 = array<i32, 15>();
    let var_1 = Struct_2(~(-32695i), global3.b);
    global3 = Struct_2(_wgslsmith_mod_i32(global0.a, 0i), select(vec2<bool>(all(!vec3<bool>(global0.b.x, false, var_1.b.x)), false & all(var_1.b)), select(!vec2<bool>(true, global3.b.x), select(vec2<bool>(global0.b.x, var_1.b.x), !var_1.b, true), true), global1[_wgslsmith_index_u32(firstLeadingBit(1u << (~arg_1 % 32u)), 9u)]));
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1560f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 324f, global0.b.x)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(-26004i, vec2<bool>(!global0.b.x, global1[_wgslsmith_index_u32(func_2(), 9u)]));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(674f)), _wgslsmith_f_op_f32(func_4(countOneBits(~_wgslsmith_mult_u32(global2.a, global2.a)), ~select(func_3(Struct_2(-2147483647i, var_0.b), Struct_2(global0.a, vec2<bool>(global0.b.x, var_0.b.x))), 1u, true), ~vec2<i32>(min(1i, var_0.a), global3.a)))));
    global2 = Struct_1(max(~(~firstTrailingBit(8629u)), func_2()), (vec4<i32>(firstLeadingBit(-1i), firstTrailingBit(u_input.a.x), select(u_input.c.x, 2108i, true), ~global4[_wgslsmith_index_u32(u_input.b.x, 15u)]) ^ u_input.a) << ((_wgslsmith_div_vec4_u32(vec4<u32>(10540u, 21796u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, global2.a, 1u, global2.a)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(29430u, global2.a, 0u, 0u), vec4<u32>(u_input.b.x, global2.a, global2.a, u_input.b.x), vec4<u32>(global2.a, 71129u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_i32(~global2.b.x, 44035i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-140f, -462f)), -410f)))));
    let var_3 = Struct_1(global2.a, ~u_input.d, ~_wgslsmith_sub_i32(43895i, _wgslsmith_mult_i32(1i, -global0.a)));
    return Struct_2(1i, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<bool, 9>();
    global3 = var_0;
    let var_1 = _wgslsmith_div_vec4_u32(select(~(~vec4<u32>(u_input.b.x, global2.a, global2.a, u_input.b.x) & firstLeadingBit(vec4<u32>(global2.a, global2.a, 12213u, u_input.b.x))), max(vec4<u32>(abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(23371u, u_input.b.x, u_input.b.x), u_input.b), u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, min(global2.a, 1u), ~global2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(59169u, 1u, global2.a, global2.a), vec4<u32>(1u, global2.a, 1u, 4294967295u)))), !(!(!vec4<bool>(global0.b.x, global3.b.x, global0.b.x, false)))), ~(vec4<u32>(global2.a, 0u, global2.a, u_input.b.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(global2.a, global2.a, 14536u, 66416u), abs(vec4<u32>(global2.a, 40593u, 0u, global2.a)))));
    global2 = Struct_1(1u, global2.b, _wgslsmith_sub_i32(-global4[_wgslsmith_index_u32(~(~var_1.x), 15u)], _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, global3.a, u_input.c.x), vec3<i32>(-27348i, 0i, 1i)), global3.a) | reverseBits(_wgslsmith_div_i32(11838i, 34743i))));
    let var_2 = Struct_2(-7403i, vec2<bool>(any(vec2<bool>(false, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.b.x, true, global1[_wgslsmith_index_u32(u_input.b.x, 9u)])))), false));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~1u))), ~_wgslsmith_mod_u32(1u | func_3(Struct_2(1i, vec2<bool>(var_0.b.x, var_2.b.x)), var_2), 1u), _wgslsmith_clamp_u32(~global2.a, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.x, var_1.x), vec2<u32>(u_input.b.x, 12805u), var_1.yz), u_input.b.xz), 1u), ~(_wgslsmith_add_vec2_u32(~u_input.b.yy, ~vec2<u32>(4294967295u, global2.a)) ^ ~u_input.b.yz), u_input.c.x);
}

