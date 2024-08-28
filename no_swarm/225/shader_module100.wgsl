struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 4> = array<bool, 4>(false, false, true, true);

var<private> global4: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> Struct_2 {
    return Struct_2(global0[_wgslsmith_index_u32(u_input.b, 8u)]);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = !vec4<bool>(all(!select(vec2<bool>(global3[_wgslsmith_index_u32(global2.c, 4u)], global3[_wgslsmith_index_u32(arg_2.a.d.a.c, 4u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(30134u, 4u)]), false)), all(select(!vec2<bool>(global3[_wgslsmith_index_u32(global2.c, 4u)], arg_0), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 4u)], arg_0), !vec2<bool>(true, global3[_wgslsmith_index_u32(arg_2.a.a.c, 4u)]))), false, false);
    let var_1 = var_0.xw;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -2034i, global2.b.x), _wgslsmith_mult_i32(select(global2.b.x, (i32(-1i) * -43316i) ^ global1.x, true), func_1().a.b.x));
    let var_3 = !select(!select(!vec4<bool>(false, true, true, var_1.x), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(var_0.x, global3[_wgslsmith_index_u32(9252u, 4u)], true, true), !vec4<bool>(false, false, false, var_0.x), !vec4<bool>(global3[_wgslsmith_index_u32(arg_2.a.a.c, 4u)], var_1.x, false, true)), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(true, global3[_wgslsmith_index_u32(54387u, 4u)], false, true), vec4<bool>(false, true, true, false), true), all(vec4<bool>(false, arg_0, var_1.x, var_1.x))));
    global0 = array<Struct_1, 8>();
    return func_1();
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 8>();
    let var_0 = Struct_5(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.a, global2.a)))), ~countOneBits(_wgslsmith_mod_vec3_i32(global2.b, u_input.a.zyx)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(func_3(false, vec4<i32>(global1.x, 2147483647i, -2147483647i, arg_2.a.b.x), Struct_4(Struct_3(arg_2.a, arg_2.a.a, vec2<i32>(-12468i, 0i), arg_2), 1u)).a.c, 50703u, 31110u), 0u)), ~firstTrailingBit(u_input.a), arg_2.a.b.xy | _wgslsmith_add_vec2_i32(global2.b.xy, vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, -11584i), countOneBits(1i))), arg_0, Struct_3(func_1().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), max(-(~vec2<i32>(13128i, arg_2.a.b.x)), _wgslsmith_sub_vec2_i32(min(vec2<i32>(27756i, -19364i), vec2<i32>(-65099i, -1i)), _wgslsmith_mult_vec2_i32(global2.b.yx, global2.b.xy))), func_3(true, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_2.a.b.x, global2.b.x, 2147483647i), vec4<i32>(global2.b.x, global2.b.x, -21323i, global2.b.x)) >> (~vec4<u32>(4294967295u, 4294967295u, 39733u, 4294967295u) % vec4<u32>(32u)), Struct_4(Struct_3(global0[_wgslsmith_index_u32(u_input.b, 8u)], -808f, u_input.a.yz, arg_2), arg_3.x))));
    global2 = arg_2.a;
    var var_1 = select(select(vec3<bool>(var_0.d, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_3, arg_3), 4u)], all(vec2<bool>(true, true))), select(vec3<bool>(global3[_wgslsmith_index_u32(~arg_2.a.c, 4u)], arg_2.a.b.x == 0i, var_0.d), select(!vec3<bool>(false, global3[_wgslsmith_index_u32(39960u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)]), vec3<bool>(false, arg_0, arg_0), 0u != var_0.e.d.a.c), false), vec3<bool>(_wgslsmith_f_op_f32(-1051f + arg_1.x) >= _wgslsmith_f_op_f32(1442f * 1000f), any(vec2<bool>(true, false)) && false, true)), select(vec3<bool>(select(false, true, all(vec4<bool>(arg_0, global3[_wgslsmith_index_u32(23166u, 4u)], var_0.d, true))), all(select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 4u)], false, arg_0), vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(u_input.b, 4u)])), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(arg_0, false, var_0.d)), any(vec2<bool>(var_0.d && arg_0, all(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_2.a.c, 4u)], true))))), arg_0);
    global3 = array<bool, 4>();
    return var_0.e.a.c;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    let var_0 = -1145f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-292f)));
    var var_2 = Struct_4(Struct_3(func_1().a, arg_1.a.a, global2.b.yx, arg_1), func_4(select(true, true, !(true || global3[_wgslsmith_index_u32(u_input.b, 4u)])), vec2<f32>(arg_1.a.a, _wgslsmith_f_op_f32(-global2.a)), func_3(true, select(u_input.a, u_input.a & u_input.a, all(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(arg_0, 4u)], false))), Struct_4(Struct_3(arg_1.a, var_0, vec2<i32>(-1i, 8019i), Struct_2(global0[_wgslsmith_index_u32(arg_1.a.c, 8u)])), 1u)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(16949u, 0u, 4294967295u, u_input.b)), max(select(vec4<u32>(59782u, 13943u, 4294967295u, u_input.b), vec4<u32>(arg_1.a.c, 1u, 0u, u_input.b), global3[_wgslsmith_index_u32(arg_0, 4u)]), ~vec4<u32>(10092u, global2.c, 34637u, 0u)))));
    var var_3 = Struct_2(var_2.a.a);
    let var_4 = 1u;
    return Struct_4(var_2.a, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.a * global2.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1393f)) + global2.a)) - _wgslsmith_f_op_f32(-global2.a));
    var var_1 = func_2(~(~(~(~u_input.b))), func_1());
    let var_2 = func_2(var_1.b, Struct_2(func_1().a));
    var var_3 = Struct_3(func_1().a, _wgslsmith_div_f32(235f, func_3(all(!vec3<bool>(global3[_wgslsmith_index_u32(34885u, 4u)], global3[_wgslsmith_index_u32(var_2.a.a.c, 4u)], false)), reverseBits(u_input.a), var_2).a.a), func_3(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 4u)], firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(global1.x, -1i, var_2.a.d.a.b.x, 47820i)), var_2).a.b.yy, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f * -420f)) < func_2(11120u, func_1()).a.d.a.a, u_input.a, Struct_4(var_2.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 17935u, global2.c, var_1.b), vec4<u32>(0u, u_input.b, 4294967295u, 0u)))));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~vec2<u32>(var_3.a.c, 4294967295u) | _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.a.c, 39051u), vec2<u32>(28213u, var_3.d.a.c)))), global2.b.xx);
}

