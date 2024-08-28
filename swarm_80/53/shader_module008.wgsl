struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, false, true, false, true, false, true, false, true, false, true, false, false, false);

var<private> global1: vec4<u32> = vec4<u32>(1u, 28048u, 69657u, 4294967295u);

var<private> global2: array<Struct_2, 28>;

var<private> global3: vec2<i32> = vec2<i32>(-4674i, 11738i);

var<private> global4: vec3<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_f_op_f32(global4.x - 302f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(1379f, _wgslsmith_f_op_f32(-global4.x)), global4.x), _wgslsmith_f_op_f32(f32(-1f) * -1837f))), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global4.x)))) - 1143f)));
    var var_2 = global3.x;
    return vec2<bool>(true, true);
}

fn func_3(arg_0: i32) -> vec3<f32> {
    var var_0 = Struct_1(firstTrailingBit(global1.xy));
    let var_1 = Struct_1(select(countOneBits(vec2<u32>(0u ^ global1.x, global1.x)), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global1.x), abs(var_0.a))), false));
    var var_2 = Struct_2(!(!((var_1.a.x >> (global1.x % 32u)) != ~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.x)))), func_1(var_0.a.x, Struct_1(_wgslsmith_mult_vec2_u32(select(vec2<u32>(global1.x, 24337u), var_0.a, global0[_wgslsmith_index_u32(var_1.a.x, 15u)]), global1.xy))), Struct_1(~var_0.a));
    var_0 = Struct_1(vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, global1.x, global1.x, 1u), vec4<u32>(6630u, global1.x, global1.x, global1.x))), global1.x) & ~global1.xw);
    var var_3 = any(vec2<bool>((global3.x < -15766i) != true, select(select(false, true, true), !var_2.a, var_2.c.x) && !any(vec3<bool>(false, false, true))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * -874f) - var_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-184f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(234f, -563f))))), -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global4.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-595f - 341f), 1549f)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = arg_0.d;
    global1 = vec4<u32>(var_0.a.x, arg_0.d.a.x, ~1u, ~arg_1.x);
    global4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-772f, global4.x, arg_2.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(860f, arg_0.b, arg_0.b) * vec3<f32>(arg_0.b, -941f, arg_2.x)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(global3.x << (1u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_0.b, -758f))), vec3<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(63719u, 15u)], true, true)), arg_3 && arg_3))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 224f, 1182f) + vec3<f32>(-1476f, arg_0.b, -165f)) - vec3<f32>(182f, arg_2.x, 1284f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 113f, global4.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, arg_2.x, global4.x))))))));
    let var_1 = true;
    var var_2 = Struct_2(!arg_0.c.x, 1008f, !vec2<bool>(arg_3 == false, countOneBits(var_0.a.x) > _wgslsmith_dot_vec2_u32(var_0.a, arg_1)), Struct_1(arg_1));
    return Struct_1(vec2<u32>(_wgslsmith_add_u32(~arg_1.x & select(0u, var_2.d.a.x, arg_0.c.x), max(arg_1.x, arg_1.x)), 44802u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_3;
    let var_1 = ~vec4<i32>(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(-1i, arg_0.x, global3.x, global3.x)), -global3.x), _wgslsmith_add_i32(-1i, -(~arg_0.x)), 1i, -_wgslsmith_div_i32(-1i, ~global3.x));
    var var_2 = arg_1.d;
    global3 = ~(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), arg_0), arg_0 >> (_wgslsmith_sub_vec2_u32(arg_3.a, vec2<u32>(var_2.a.x, global1.x)) % vec2<u32>(32u))) << (~(vec2<u32>(9425u, 5308u) >> ((arg_1.d.a ^ arg_2.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = select(vec3<u32>(~arg_3.a.x | ~global1.x, var_2.a.x, 45875u) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(46209u, arg_3.a.x, arg_3.a.x), global1.zww, vec3<u32>(13771u, arg_2.a.x, 4294967295u) & ~vec3<u32>(25622u, 0u, arg_1.d.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~global1.zyz, vec3<u32>(var_2.a.x, 0u, 52478u)) >> (max(vec3<u32>(69144u, arg_3.a.x, 90676u), _wgslsmith_add_vec3_u32(global1.yxw, global1.xwz)) % vec3<u32>(32u)), vec3<u32>(arg_3.a.x, 5906u, _wgslsmith_clamp_u32(1u, var_0.a.x, ~arg_3.a.x))), false);
    return reverseBits(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = min(-vec2<i32>(global3.x, 1i), ~((firstLeadingBit(vec2<i32>(-2147483647i, 0i)) ^ select(vec2<i32>(9844i, global3.x), vec2<i32>(global3.x, -13917i), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.x, 15u)]))) >> (~vec2<u32>(10463u, u_input.a) % vec2<u32>(32u))));
    let var_0 = u_input.a;
    global3 = vec2<i32>(-1i, abs(-global3.x));
    var var_1 = ~(_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(global1.x, 4294967295u, u_input.a)), countOneBits(global1.zzy)) >> (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.a, global1.x))) % 32u));
    let var_2 = func_1(u_input.b, Struct_1(abs(_wgslsmith_mod_vec2_u32(max(global1.zw, vec2<u32>(18973u, 16867u)), ~vec2<u32>(16426u, 0u)))));
    global3 = func_4(-vec2<i32>(-127i, ~37807i >> (_wgslsmith_mult_u32(4294967295u, var_0) % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~(~_wgslsmith_add_u32(1u, u_input.a))), 28u)], Struct_1(vec2<u32>(~(~4294967295u), ~0u)), func_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, abs(firstLeadingBit(var_0))), 28u)], max(global1.zz, ~vec2<u32>(var_0, 66448u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.zy) + global4.xz), var_2.x));
    let var_3 = func_2(global2[_wgslsmith_index_u32(25431u, 28u)], countOneBits(func_2(Struct_2(any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true, true, global0[_wgslsmith_index_u32(var_0, 15u)])), _wgslsmith_f_op_f32(exp2(global4.x)), select(var_2, vec2<bool>(global0[_wgslsmith_index_u32(var_0, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)]), vec2<bool>(true, false)), func_2(global2[_wgslsmith_index_u32(0u, 28u)], vec2<u32>(1u, var_0), vec2<f32>(609f, 555f), var_2.x)), vec2<u32>(firstTrailingBit(1u), ~1u), global4.xy, global0[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1.x), 28u)], vec2<u32>(18223u, global1.x) >> (vec2<u32>(45276u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -903f) - vec2<f32>(1512f, global4.x)), true).a.x, 15u)]).a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.xz) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(159f + global4.x)), _wgslsmith_f_op_f32(ceil(-2071f)))), all(!select(select(vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(true, var_2.x, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)]), true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], false, var_2.x), vec4<bool>(global0[_wgslsmith_index_u32(94u, 15u)], var_2.x, false, global0[_wgslsmith_index_u32(u_input.a, 15u)]))));
    let var_4 = global2[_wgslsmith_index_u32(global1.x, 28u)];
    var_1 = _wgslsmith_div_u32(firstLeadingBit(func_2(Struct_2(true, var_4.b, vec2<bool>(var_4.a, var_2.x), var_3), global1.zy, global4.yx, any(vec4<bool>(var_4.c.x, false, true, var_4.a))).a.x), var_0) & _wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(u_input.a, var_0) | var_4.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global3.x, global3.x, 2147483647i, 10901i)), -vec4<i32>(43625i, global3.x, -2147483647i, global3.x)), -max(vec4<i32>(21517i, global3.x, 0i, 69981i), vec4<i32>(global3.x, -39665i, -1i, global3.x))), _wgslsmith_add_i32(global3.x, 1i), ~2147483647i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-762f, -835f, var_4.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.b, global4.x, -1078f)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1231f, -1619f, var_4.b))))));
}

