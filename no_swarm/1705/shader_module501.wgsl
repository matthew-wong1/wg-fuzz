struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_3,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, -43472i);

var<private> global1: array<Struct_4, 28>;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<u32>(0u, 0u), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(21799u, 5929u), vec3<bool>(false, false, false)), 387f), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec3<bool>(true, false, true)), Struct_1(vec2<u32>(0u, 45511u), vec3<bool>(true, false, false)), -829f), Struct_2(Struct_1(vec2<u32>(0u, 22091u), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(0u, 36573u), vec3<bool>(true, false, true)), -399f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = abs(vec3<i32>(40686i, -2147483647i, 0i));
    var var_1 = vec4<bool>(false, ~(~(~arg_0)) <= ~(~_wgslsmith_sub_u32(arg_0, arg_0)), true, !(!(11431u > arg_0) | true));
    var var_2 = select(!(!vec4<bool>(arg_0 != 27677u, any(vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true, false)), vec4<bool>(var_1.x, var_1.x, !(1i == -var_0.x), false), vec4<bool>(true, any(!var_1.xw), all(var_1.yx), var_1.x));
    var var_3 = global1[_wgslsmith_index_u32(arg_0, 28u)];
    let var_4 = ~(~_wgslsmith_div_vec2_u32(var_3.b.a.a, countOneBits(~var_3.b.b.a)));
    return true;
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> bool {
    global0 = min(select(u_input.d.ww, _wgslsmith_sub_vec2_i32(abs(u_input.d.zz), _wgslsmith_mod_vec2_i32(~u_input.d.zx, -u_input.a.zx)), !(!select(vec2<bool>(false, true), arg_1.a.a.b.xx, arg_1.a.a.b.x))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(arg_0, 2605i) & u_input.a.zx), abs(-u_input.a.ww)));
    global0 = min(vec2<i32>(2147483647i, arg_0), vec2<i32>(~select(~28022i, u_input.d.x, arg_1.a.a.b.x), _wgslsmith_div_i32(_wgslsmith_div_i32(select(u_input.c, 0i, false), u_input.d.x | -2147483647i), arg_1.b)));
    let var_0 = Struct_5(global1[_wgslsmith_index_u32(~(~4294967295u), 28u)], Struct_2(Struct_1(abs(abs(arg_1.a.a.a)), arg_1.a.b.b), Struct_1(arg_1.a.a.a, select(!arg_1.a.b.b, !arg_1.a.b.b, vec3<bool>(arg_1.a.b.b.x, arg_1.a.a.b.x, false))), 737f), Struct_3(arg_1.a, global0.x), global1[_wgslsmith_index_u32(22886u, 28u)], arg_1.a.b);
    global0 = ~_wgslsmith_mult_vec2_i32(u_input.a.wy, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 71368i, arg_0, global0.x), u_input.d), u_input.a), -_wgslsmith_mod_i32(var_0.a.a, global0.x)));
    let var_1 = !arg_1.a.a.b;
    return false;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_4(~(-(~global0.x)) & ~(_wgslsmith_div_i32(2147483647i, 18780i) | u_input.b), Struct_2(arg_1.a.b.b, Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_1.e.a.x), abs(vec2<u32>(0u, 0u))), vec3<bool>(func_3(arg_0.x, arg_1.c), arg_1.b.b.b.x | false, arg_1.c.a.a.b.x)), _wgslsmith_f_op_f32(step(arg_1.d.b.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1320f * -724f), -897f))))), arg_1.a.c);
    global1 = array<Struct_4, 28>();
    let var_1 = 4294967295u;
    let var_2 = -69400i;
    let var_3 = Struct_2(arg_1.a.b.a, arg_1.d.b.b, _wgslsmith_f_op_f32(round(-396f)));
    return 21780u;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = ~_wgslsmith_mult_i32(global0.x, u_input.b);
    var var_1 = global2[_wgslsmith_index_u32(func_4(~abs(_wgslsmith_mult_vec3_i32(~u_input.a.ywz, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, global0.x, global0.x), u_input.a.xwx))), Struct_5(Struct_4(global0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 0u, 20357u), ~vec4<u32>(4294967295u, 196u, 4294967295u, 31365u)), 3u)], all(vec3<bool>(true, false, false)) | true), Struct_2(Struct_1(~vec2<u32>(21925u, 46539u), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), Struct_1(abs(vec2<u32>(0u, 8976u)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(199f * -1000f)))), Struct_3(global2[_wgslsmith_index_u32(countOneBits(37324u), 3u)], _wgslsmith_mod_i32(min(u_input.c, global0.x), arg_0)), global1[_wgslsmith_index_u32(1u, 28u)], Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), select(vec2<u32>(1u, 0u), vec2<u32>(43383u, 56318u), true)), vec3<bool>(true, true, true))), vec4<bool>(true, true, func_3(_wgslsmith_add_i32(global0.x, global0.x), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 3u)], arg_0)) | true, 9298i < firstTrailingBit(abs(u_input.b)))), 3u)];
    let var_2 = Struct_5(Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -34621i), vec2<i32>(-1i) * -u_input.d.wz), global2[_wgslsmith_index_u32(var_1.b.a.x, 3u)], !(any(vec3<bool>(true, var_1.a.b.x, true)) & any(vec3<bool>(var_1.b.b.x, var_1.b.b.x, var_1.a.b.x)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(var_1.a.a.x, 0u, 0u, 0u))), vec4<u32>(4294967295u, ~var_1.a.a.x, var_1.a.a.x, 43020u)), 3u)], Struct_3(global2[_wgslsmith_index_u32(min(0u, ~_wgslsmith_div_u32(4294967295u, var_1.b.a.x)), 3u)], 1i), Struct_4(abs(~(5289i >> (var_1.b.a.x % 32u))), Struct_2(var_1.b, Struct_1(~vec2<u32>(var_1.a.a.x, var_1.b.a.x), vec3<bool>(var_1.b.b.x, var_1.b.b.x, var_1.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), all(vec4<bool>(!var_1.a.b.x, true, var_1.b.b.x & false, true))), var_1.a);
    let var_3 = var_2.c;
    var var_4 = true;
    return var_3.a.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(1u), !(select(func_2(global0.x), 1u, select(false, true, true)) != 1u), true);
    var var_1 = global0.x;
    global2 = array<Struct_2, 3>();
    var var_2 = min(global0.x, 0i) > _wgslsmith_add_i32(~(-10677i), global0.x);
    var_1 = abs(-17626i);
    global1 = array<Struct_4, 28>();
    global1 = array<Struct_4, 28>();
    let var_3 = Struct_5(Struct_4(_wgslsmith_add_i32(-u_input.d.x, abs(global0.x)), Struct_2(Struct_1(min(vec2<u32>(37952u, 0u), vec2<u32>(1u, 33351u)), !var_0), Struct_1(vec2<u32>(1u, 1u), vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -293f)), true), Struct_2(Struct_1(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(38201u, 1u), vec2<u32>(48336u, 34484u))), vec3<bool>(!var_0.x, var_0.x, false)), Struct_1(_wgslsmith_mod_vec2_u32(select(vec2<u32>(24307u, 1u), vec2<u32>(1u, 4294967295u), false), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4499u), vec2<u32>(29375u, 1u))), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f))), Struct_3(global2[_wgslsmith_index_u32(firstTrailingBit(~0u) & ~_wgslsmith_clamp_u32(1u, 1u, 4294967295u), 3u)], abs(_wgslsmith_mult_i32(firstTrailingBit(-21200i), ~u_input.d.x))), global1[_wgslsmith_index_u32(func_2((_wgslsmith_add_i32(u_input.d.x, 1i) | 2147483647i) & _wgslsmith_mod_i32(9866i, -global0.x)), 28u)], Struct_1(vec2<u32>(~_wgslsmith_mult_u32(1u, 33872u), 29133u), vec3<bool>(!(0i == u_input.d.x), true, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.b.c));
}

