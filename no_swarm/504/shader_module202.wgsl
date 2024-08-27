struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, -1132f, 128f, -1427f);

var<private> global1: vec4<f32> = vec4<f32>(364f, 634f, 1528f, -1000f);

var<private> global2: Struct_5;

var<private> global3: array<u32, 14>;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-global2.c)) * _wgslsmith_f_op_f32(global0.x + 564f)), global2.b.c.a.x, global1.x));
    var var_1 = vec4<f32>(1331f, _wgslsmith_f_op_f32(floor(-599f)), global1.x, _wgslsmith_f_op_f32(max(-1204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)))));
    global3 = array<u32, 14>();
    global1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(449f, global1.x, 203f, -813f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, -673f, -735f, global0.x), vec4<f32>(global1.x, var_0.a.x, var_0.a.x, -711f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(992f, _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-754f + global0.x), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-972f, 328f, 724f, 552f))), vec4<f32>(951f, var_1.x, global0.x, global0.x)))) * vec4<f32>(119f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), var_1.x), var_0.a.x, var_1.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global0.x - global2.b.c.a.x)), -1561f, -1175f), vec4<f32>(1932f, global1.x, _wgslsmith_f_op_f32(-global0.x), var_0.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1.x, -215f, var_0.a.x), vec4<f32>(948f, var_0.a.x, 103f, var_1.x)), vec4<f32>(-272f, global2.c, -420f, global1.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_1.x, _wgslsmith_div_f32(global1.x, -1281f), _wgslsmith_f_op_f32(f32(-1f) * -369f)))));
    return min(1u, 4294967295u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = false;
    global3 = array<u32, 14>();
    var var_1 = global2.c;
    var var_2 = Struct_4(Struct_3(vec2<bool>((u_input.e.x & 11834u) == ~3120u, true), Struct_1(global1.xxx)));
    let var_3 = Struct_5(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(global2.a, vec3<u32>(0u, 2862u, 35096u)), vec3<u32>(func_3(), 0u, _wgslsmith_clamp_u32(0u, 0u, 4294967295u))), _wgslsmith_sub_vec3_u32(vec3<u32>(~global4.x, 37908u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(4294967295u), 14u)], 14u)]), vec3<u32>(4294967295u ^ arg_3.e.x, global4.x ^ global3[_wgslsmith_index_u32(global4.x, 14u)], func_3()))), global2.b, global1.x, 1i & select(max(firstLeadingBit(48761i), 31315i), ~(~0i), false), u_input.c);
    return !(!(!vec3<bool>(true, false, any(vec3<bool>(true, false, false)))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - arg_2))), 1317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-376f, 273f))))));
    let var_0 = select(any(arg_1), !all(arg_1.yy), false);
    var var_1 = Struct_5(vec3<u32>(~global4.x, global4.x, global2.b.e.x), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-global1.x))))), select(-20139i, -5334i, arg_1.x), -max(_wgslsmith_mult_vec3_i32(u_input.c, u_input.c), vec3<i32>(20807i, global2.b.d.x, 0i)) ^ global2.e);
    var var_2 = Struct_4(Struct_3(arg_1.xx, Struct_1(_wgslsmith_f_op_vec3_f32(select(global2.b.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, -1890f, global1.x) - global0.xzz), arg_2 > arg_2)))));
    var var_3 = arg_1.zz;
    return !(global1.x >= var_2.a.b.a.x);
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = func_4(arg_1, !func_2(vec2<f32>(-1062f, _wgslsmith_div_f32(-1000f, global2.c)), Struct_3(!vec2<bool>(arg_1, arg_1), Struct_1(global1.wyw)), all(vec2<bool>(arg_1, arg_1)), global2.b), -2065f);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 894f, 122f, -282f), vec4<f32>(213f, -1264f, global2.c, global0.x)) * vec4<f32>(375f, -1370f, arg_0, 1000f))))));
    let var_1 = global0.x;
    var var_2 = Struct_5(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 14u)], 35925u, global3[_wgslsmith_index_u32(296u, 14u)]), ~global4.x, u_input.b), _wgslsmith_div_vec3_u32(select(vec3<u32>(global2.a.x, global2.a.x, global3[_wgslsmith_index_u32(u_input.e.x, 14u)]), u_input.d, arg_1), ~u_input.d), vec3<u32>(abs(global4.x), u_input.d.x, u_input.b))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -1115f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(457f, global1.x)), _wgslsmith_f_op_f32(global2.b.a.a.x + arg_0)))), global2.b.b, _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(global2.b.b, global2.b.b, u_input.c.x), countOneBits(global2.e)), min(max(vec3<i32>(u_input.a.x, -1i, global2.e.x) ^ vec3<i32>(u_input.c.x, global2.d, 23601i), u_input.c), global2.e)));
    var var_3 = u_input.a.x;
    return ~1u;
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_1(_wgslsmith_f_op_f32(global0.x + -1173f), true), ~6602u, ~(~(~global2.a.x)), ~(~(~u_input.d.x))), ~min(countOneBits(abs(vec4<u32>(4294967295u, 1u, 28092u, 19336u))), firstLeadingBit(vec4<u32>(u_input.b, global2.b.e.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], arg_0))));
    global3 = array<u32, 14>();
    var var_1 = ~select(-_wgslsmith_mod_vec3_i32(-u_input.c, _wgslsmith_div_vec3_i32(vec3<i32>(-13574i, u_input.c.x, arg_1.b.b), vec3<i32>(12837i, -2147483647i, arg_1.b.b))), (vec3<i32>(-1i) * -u_input.c) & reverseBits(u_input.c), func_4(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(-global0.x))));
    let var_2 = arg_1.b;
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<u32>(~(~(~1u)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(46946u, 36421u, 79779u, global4.x) | select(vec4<u32>(global2.a.x, 1u, global3[_wgslsmith_index_u32(global2.b.e.x, 14u)], 1484u), vec4<u32>(0u, u_input.b, global4.x, 11555u), vec4<bool>(true, true, true, false))), _wgslsmith_div_vec4_u32(vec4<u32>(~39623u, ~global3[_wgslsmith_index_u32(49749u, 14u)], _wgslsmith_sub_u32(1u, u_input.b), global2.b.e.x << (u_input.b % 32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, global3[_wgslsmith_index_u32(global4.x, 14u)], u_input.d.x, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, global4.x)))));
    var var_0 = func_5(_wgslsmith_add_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1502f * global2.b.a.a.x)), true), reverseBits(~1u)), Struct_5(global2.a, global2.b, _wgslsmith_f_op_f32(-global2.c), _wgslsmith_mult_i32(max(25451i, -6715i), -1i), ~vec3<i32>(global2.b.d.x, u_input.a.x, -71927i)));
    let var_1 = true;
    global2 = Struct_5(countOneBits(firstLeadingBit(u_input.d >> (~vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 14u)], global4.x, global3[_wgslsmith_index_u32(69597u, 14u)]) % vec3<u32>(32u)))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global2.c + 206f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.a.x, global1.x) * global2.b.c.a.x))), _wgslsmith_sub_i32(-(~func_5(0u, Struct_5(vec3<u32>(49783u, 4294967295u, 1u), global2.b, global1.x, u_input.a.x, global2.e)).d.x), i32(-1i) * -12847i), vec3<i32>(var_0.d.x, var_0.b, global2.e.x));
    var var_2 = _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_0.d.x, 0i, var_0.b, -1i)), vec4<i32>(0i, global2.d, var_0.b, 24407i)) | (vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.d.x, -2147483647i, 31637i), vec4<i32>(0i, var_0.d.x, -1038i, 1i))), ~reverseBits(vec4<i32>(global2.e.x << (global4.x % 32u), reverseBits(2147483647i), select(-2147483647i, global2.e.x, var_1), min(global2.e.x, -2147483647i))));
    global2 = Struct_5(vec3<u32>(~(~var_0.e.x >> (global3[_wgslsmith_index_u32(func_3(), 14u)] % 32u)), ~(~(global4.x & u_input.d.x)), _wgslsmith_div_u32(var_0.e.x, global3[_wgslsmith_index_u32(4294967295u, 14u)])), func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global2.b.e.x, global4.x), var_0.e.x & 7278u), _wgslsmith_add_vec2_u32(var_0.e << (vec2<u32>(u_input.e.x, 78025u) % vec2<u32>(32u)), u_input.e.xz)), Struct_5(~min(vec3<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(u_input.e.x, 14u)]), vec3<u32>(8448u, 29494u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 14u)], 14u)])), global2.b, _wgslsmith_f_op_f32(-1000f - var_0.c.a.x), ~var_2.x, vec3<i32>(-u_input.c.x, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(34601i, global2.b.d.x), vec2<i32>(global2.d, -28595i))))), _wgslsmith_f_op_f32(ceil(1116f)), ~abs(var_2.x), abs(vec3<i32>(-3801i, -1i, var_0.d.x)));
    var var_3 = Struct_5(u_input.e, func_5(72075u, Struct_5(select(_wgslsmith_mult_vec3_u32(global2.a, vec3<u32>(var_0.e.x, global4.x, global2.b.e.x)), reverseBits(global2.a), true), Struct_2(func_5(global3[_wgslsmith_index_u32(64510u, 14u)], Struct_5(global2.a, global2.b, -295f, var_2.x, vec3<i32>(8686i, 2147483647i, var_0.d.x))).c, var_2.x, func_5(4294967295u, Struct_5(vec3<u32>(7532u, u_input.d.x, 4294967295u), Struct_2(var_0.c, 0i, Struct_1(global0.yxx), global2.e.yy, u_input.d.zz), global0.x, -1i, vec3<i32>(var_0.d.x, var_2.x, 51897i))).a, vec2<i32>(global2.b.d.x, -20746i), ~u_input.d.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2148f * var_0.a.a.x) + _wgslsmith_f_op_f32(-global2.c)), -62184i, vec3<i32>(-1i, _wgslsmith_add_i32(var_2.x, 1i), -21995i))), _wgslsmith_div_f32(223f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(var_0.a.a.x * _wgslsmith_f_op_f32(max(-803f, -1338f))))), 1i, -(firstLeadingBit(vec3<i32>(29390i, 2147483647i, u_input.a.x) ^ vec3<i32>(-13451i, u_input.a.x, var_2.x)) ^ (vec3<i32>(var_0.d.x, 42i, -1i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, -31288i, -11901i), vec3<i32>(-17491i, var_0.d.x, 1i), vec3<i32>(2147483647i, 62504i, -2147483647i)))));
    let var_4 = Struct_5(countOneBits(u_input.e), var_3.b, var_0.c.a.x, abs(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mult_i32(0i, global2.b.d.x)), -1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(8840i, 1i, 90685i), abs(var_3.d)))), -vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_2.x, 2147483647i, u_input.c.x), vec4<i32>(var_0.b, 21381i, u_input.c.x, 0i)), -1i, global2.b.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(global2.e, _wgslsmith_f_op_vec3_f32(-func_5(u_input.e.x, Struct_5(_wgslsmith_clamp_vec3_u32(var_3.a, vec3<u32>(global2.b.e.x, 27659u, var_4.b.e.x), global2.a), var_3.b, _wgslsmith_f_op_f32(global2.b.c.a.x * global0.x), -1i, vec3<i32>(u_input.a.x, 2147483647i, -2147483647i))).c.a), select(-(countOneBits(vec2<i32>(1i, var_2.x)) ^ ~vec2<i32>(0i, 2147483647i)), (var_2.xy >> (vec2<u32>(29103u, global2.a.x) % vec2<u32>(32u))) >> (vec2<u32>(6213u, ~47142u) % vec2<u32>(32u)), var_1), vec4<u32>(19461u, 17088u, 1u, 0u));
}

